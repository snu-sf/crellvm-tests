; ModuleID = 'cfgcleanup.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%union.tree_node = type opaque
%struct.attribute_spec = type opaque
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@label_value_list = external global %struct.rtx_def*, align 8
@tail_recursion_label_list = external global %struct.rtx_def*, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@targetm = external global %struct.gcc_target, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"\0A\0Atry_optimize_cfg iteration %i\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Deleting block %i.\0A\00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str.2 = private unnamed_addr constant [28 x i8] c"Deleted label in block %i.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Deleting fallthru block %i.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Merged %d and %d without moving.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"cfgcleanup.c\00", align 1
@__FUNCTION__.merge_blocks_move_successor_nojumps = private unnamed_addr constant [36 x i8] c"merge_blocks_move_successor_nojumps\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Moved block %d after %d and merged.\0A\00", align 1
@__FUNCTION__.merge_blocks_move_predecessor_nojumps = private unnamed_addr constant [38 x i8] c"merge_blocks_move_predecessor_nojumps\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Moved block %d before %d and merged.\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"Simplifying condjump %i around jump %i\0A\00", align 1
@__FUNCTION__.try_forward_edges = private unnamed_addr constant [18 x i8] c"try_forward_edges\00", align 1
@rtx_class = external constant [153 x i8], align 16
@.str.9 = private unnamed_addr constant [25 x i8] c"Infinite loop in BB %i.\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"Conditionals threaded.\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Forwarding edge %i->%i to %i failed.\0A\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@.str.12 = private unnamed_addr constant [33 x i8] c"Splitting bb %i before %i insns\0A\00", align 1
@.str.13 = private unnamed_addr constant [52 x i8] c"Cross jumping from bb %i to bb %i; %i common insns\0A\00", align 1
@optimize_size = external global i32, align 4
@.str.14 = private unnamed_addr constant [60 x i8] c"Outcomes of branch in bb %i and %i differs to much (%i %i)\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"Conditionals in bb %i and %i match.\0A\00", align 1
@reload_completed = external global i32, align 4

; Function Attrs: nounwind uwtable
define zeroext i1 @cleanup_cfg(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %changed = alloca i8, align 1
  store i32 %mode, i32* %mode.addr, align 4
  store i8 0, i8* %changed, align 1
  call void @timevar_push(i32 4)
  %call = call zeroext i1 @delete_unreachable_blocks()
  %frombool = zext i1 %call to i8
  store i8 %frombool, i8* %changed, align 1
  %0 = load i32, i32* %mode.addr, align 4
  %call1 = call zeroext i1 @try_optimize_cfg(i32 %0)
  br i1 %call1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call zeroext i1 @delete_unreachable_blocks()
  store i8 1, i8* %changed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @free_EXPR_LIST_list(%struct.rtx_def** @label_value_list)
  call void @free_EXPR_LIST_list(%struct.rtx_def** @tail_recursion_label_list)
  call void @timevar_pop(i32 4)
  %1 = load i8, i8* %changed, align 1
  %tobool = trunc i8 %1 to i1
  ret i1 %tobool
}

declare void @timevar_push(i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @delete_unreachable_blocks() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %changed = alloca i8, align 1
  %b = alloca %struct.basic_block_def*, align 8
  store i8 0, i8* %changed, align 1
  call void @find_unreachable_blocks()
  store i32 0, i32* %j, align 4
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
  store %struct.basic_block_def* %4, %struct.basic_block_def** %b, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 15
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call = call i32 @flow_delete_block_noexpunge(%struct.basic_block_def* %7)
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  call void @expunge_block_nocompact(%struct.basic_block_def* %8)
  store i8 1, i8* %changed, align 1
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %10 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data2 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb3 = bitcast %union.varray_data_tag* %data2 to [1 x %struct.basic_block_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb3, i32 0, i64 %idxprom1
  store %struct.basic_block_def* %9, %struct.basic_block_def** %arrayidx4, align 8
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  store i32 %12, i32* %index, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc5 = add nsw i32 %14, 1
  store i32 %inc5, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %j, align 4
  store i32 %15, i32* @n_basic_blocks, align 4
  %16 = load i32, i32* %j, align 4
  %conv = sext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 0
  store i64 %conv, i64* %num_elements, align 8
  %18 = load i8, i8* %changed, align 1
  %tobool6 = trunc i8 %18 to i1
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %for.end
  call void @tidy_fallthru_edges()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %for.end
  %19 = load i8, i8* %changed, align 1
  %tobool9 = trunc i8 %19 to i1
  ret i1 %tobool9
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_optimize_cfg(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %changed_overall = alloca i8, align 1
  %changed = alloca i8, align 1
  %iterations = alloca i32, align 4
  %blocks = alloca %struct.simple_bitmap_def*, align 8
  %c = alloca %struct.basic_block_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %s = alloca %struct.edge_def*, align 8
  %changed_here = alloca i8, align 1
  %label = alloca %struct.rtx_def*, align 8
  %found = alloca i8, align 1
  store i32 %mode, i32* %mode.addr, align 4
  store i8 0, i8* %changed_overall, align 1
  store i32 0, i32* %iterations, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @add_noreturn_fake_exit_edges()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  call void @update_forwarder_flag(%struct.basic_block_def* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i1 ()*, i1 ()** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 15), align 8
  %call = call zeroext i1 %7()
  br i1 %call, label %if.end.203, label %if.then.1

if.then.1:                                        ; preds = %for.end
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.1
  store i8 0, i8* %changed, align 1
  %8 = load i32, i32* %iterations, align 4
  %inc2 = add nsw i32 %8, 1
  store i32 %inc2, i32* %iterations, align 4
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %do.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %11 = load i32, i32* %iterations, align 4
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %11)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %do.body
  store i32 0, i32* %i, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %if.end.187, %if.end.6
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* @n_basic_blocks, align 4
  %cmp8 = icmp slt i32 %12, %13
  br i1 %cmp8, label %for.body.9, label %for.end.188

for.body.9:                                       ; preds = %for.cond.7
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb12 = bitcast %union.varray_data_tag* %data11 to [1 x %struct.basic_block_def*]*
  %arrayidx13 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb12, i32 0, i64 %idxprom10
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx13, align 8
  store %struct.basic_block_def* %16, %struct.basic_block_def** %b, align 8
  store i8 0, i8* %changed_here, align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %for.body.9
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 4
  %18 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp14 = icmp eq %struct.edge_def* %18, null
  br i1 %cmp14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %20, 1
  %idxprom15 = sext i32 %sub to i64
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data16 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data16 to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom15
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  store %struct.basic_block_def* %22, %struct.basic_block_def** %c, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool19 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %while.body
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index21, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 %26)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %while.body
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call24 = call i32 @flow_delete_block(%struct.basic_block_def* %27)
  store i8 1, i8* %changed, align 1
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  store %struct.basic_block_def* %28, %struct.basic_block_def** %b, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 4
  %30 = load %struct.edge_def*, %struct.edge_def** %pred25, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 0
  %31 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp26 = icmp eq %struct.edge_def* %31, null
  br i1 %cmp26, label %land.lhs.true, label %if.end.67

land.lhs.true:                                    ; preds = %while.end
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 4
  %33 = load %struct.edge_def*, %struct.edge_def** %pred27, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 6
  %34 = load i32, i32* %flags, align 4
  %and28 = and i32 %34, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.67

land.lhs.true.30:                                 ; preds = %land.lhs.true
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 4
  %36 = load %struct.edge_def*, %struct.edge_def** %pred31, align 8
  %flags32 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 6
  %37 = load i32, i32* %flags32, align 4
  %and33 = and i32 %37, 14
  %tobool34 = icmp ne i32 %and33, 0
  br i1 %tobool34, label %if.end.67, label %land.lhs.true.35

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 0
  %39 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load = load i32, i32* %40, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp36 = icmp eq i32 %bf.clear, 36
  br i1 %cmp36, label %land.lhs.true.37, label %if.end.67

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %41 = load i32, i32* %mode.addr, align 4
  %and38 = and i32 %41, 8
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %lor.lhs.false, label %land.lhs.true.42

lor.lhs.false:                                    ; preds = %land.lhs.true.37
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 0
  %43 = load %struct.rtx_def*, %struct.rtx_def** %head40, align 8
  %call41 = call zeroext i1 @tail_recursion_label_p(%struct.rtx_def* %43)
  br i1 %call41, label %if.end.67, label %land.lhs.true.42

land.lhs.true.42:                                 ; preds = %lor.lhs.false, %land.lhs.true.37
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred43 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 4
  %45 = load %struct.edge_def*, %struct.edge_def** %pred43, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 2
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp44 = icmp eq %struct.basic_block_def* %46, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp44, label %if.then.57, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.42
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 4
  %48 = load %struct.edge_def*, %struct.edge_def** %pred46, align 8
  %src47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 2
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %src47, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 1
  %50 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load48 = load i32, i32* %51, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp ne i32 %bf.clear49, 33
  br i1 %cmp50, label %if.then.57, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.45
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 0
  %53 = load %struct.rtx_def*, %struct.rtx_def** %head52, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 4
  %55 = load %struct.edge_def*, %struct.edge_def** %pred53, align 8
  %src54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 2
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %src54, align 8
  %end55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 1
  %57 = load %struct.rtx_def*, %struct.rtx_def** %end55, align 8
  %call56 = call zeroext i1 @label_is_jump_target_p(%struct.rtx_def* %53, %struct.rtx_def* %57)
  br i1 %call56, label %if.end.67, label %if.then.57

if.then.57:                                       ; preds = %lor.lhs.false.51, %lor.lhs.false.45, %land.lhs.true.42
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %head58, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %label, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 0
  %61 = load %struct.rtx_def*, %struct.rtx_def** %head59, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %62 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 0
  store %struct.rtx_def* %62, %struct.rtx_def** %head61, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @delete_insn_chain(%struct.rtx_def* %64, %struct.rtx_def* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool62 = icmp ne %struct._IO_FILE* %66, null
  br i1 %tobool62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.then.57
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index64, align 4
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %69)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.then.57
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %lor.lhs.false.51, %lor.lhs.false, %land.lhs.true.35, %land.lhs.true.30, %land.lhs.true, %while.end
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 4
  %71 = load %struct.edge_def*, %struct.edge_def** %pred68, align 8
  %pred_next69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 0
  %72 = load %struct.edge_def*, %struct.edge_def** %pred_next69, align 8
  %cmp70 = icmp eq %struct.edge_def* %72, null
  br i1 %cmp70, label %land.lhs.true.71, label %if.end.108

land.lhs.true.71:                                 ; preds = %if.end.67
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 4
  %74 = load %struct.edge_def*, %struct.edge_def** %pred72, align 8
  %flags73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 6
  %75 = load i32, i32* %flags73, align 4
  %and74 = and i32 %75, 1
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.108

land.lhs.true.76:                                 ; preds = %land.lhs.true.71
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head77 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 0
  %77 = load %struct.rtx_def*, %struct.rtx_def** %head77, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load78 = load i32, i32* %78, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp ne i32 %bf.clear79, 36
  br i1 %cmp80, label %land.lhs.true.81, label %if.end.108

land.lhs.true.81:                                 ; preds = %land.lhs.true.76
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i32 0, i32 10
  %80 = load i8*, i8** %aux, align 8
  %81 = ptrtoint i8* %80 to i32
  %and82 = and i32 %81, 2
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %land.lhs.true.84, label %if.end.108

land.lhs.true.84:                                 ; preds = %land.lhs.true.81
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %82, i32 0, i32 5
  %83 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %flags85 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i32 0, i32 6
  %84 = load i32, i32* %flags85, align 4
  %and86 = and i32 %84, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %land.lhs.true.88, label %if.end.108

land.lhs.true.88:                                 ; preds = %land.lhs.true.84
  %85 = load i32, i32* @n_basic_blocks, align 4
  %cmp89 = icmp sgt i32 %85, 1
  br i1 %cmp89, label %if.then.90, label %if.end.108

if.then.90:                                       ; preds = %land.lhs.true.88
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool91 = icmp ne %struct._IO_FILE* %86, null
  br i1 %tobool91, label %if.then.92, label %if.end.95

if.then.92:                                       ; preds = %if.then.90
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index93 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 11
  %89 = load i32, i32* %index93, align 4
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i32 %89)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.92, %if.then.90
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index96 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i32 0, i32 11
  %91 = load i32, i32* %index96, align 4
  %tobool97 = icmp ne i32 %91, 0
  br i1 %tobool97, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.95
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index98 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 11
  %93 = load i32, i32* %index98, align 4
  %sub99 = sub nsw i32 %93, 1
  br label %cond.end

cond.false:                                       ; preds = %if.end.95
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub99, %cond.true ], [ 1, %cond.false ]
  %idxprom100 = sext i32 %cond to i64
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data101 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 4
  %bb102 = bitcast %union.varray_data_tag* %data101 to [1 x %struct.basic_block_def*]*
  %arrayidx103 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb102, i32 0, i64 %idxprom100
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx103, align 8
  store %struct.basic_block_def* %95, %struct.basic_block_def** %c, align 8
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 4
  %97 = load %struct.edge_def*, %struct.edge_def** %pred104, align 8
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 5
  %99 = load %struct.edge_def*, %struct.edge_def** %succ105, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i32 0, i32 3
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call106 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %97, %struct.basic_block_def* %100)
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call107 = call i32 @flow_delete_block(%struct.basic_block_def* %101)
  store i8 1, i8* %changed, align 1
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  store %struct.basic_block_def* %102, %struct.basic_block_def** %b, align 8
  br label %if.end.108

if.end.108:                                       ; preds = %cond.end, %land.lhs.true.88, %land.lhs.true.84, %land.lhs.true.81, %land.lhs.true.76, %land.lhs.true.71, %if.end.67
  br label %while.cond.109

while.cond.109:                                   ; preds = %while.body.137, %if.end.108
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ110 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 5
  %104 = load %struct.edge_def*, %struct.edge_def** %succ110, align 8
  store %struct.edge_def* %104, %struct.edge_def** %s, align 8
  %cmp111 = icmp ne %struct.edge_def* %104, null
  br i1 %cmp111, label %land.lhs.true.112, label %land.end

land.lhs.true.112:                                ; preds = %while.cond.109
  %105 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %105, i32 0, i32 1
  %106 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp113 = icmp eq %struct.edge_def* %106, null
  br i1 %cmp113, label %land.lhs.true.114, label %land.end

land.lhs.true.114:                                ; preds = %land.lhs.true.112
  %107 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %flags115 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %107, i32 0, i32 6
  %108 = load i32, i32* %flags115, align 4
  %and116 = and i32 %108, 14
  %tobool117 = icmp ne i32 %and116, 0
  br i1 %tobool117, label %land.end, label %land.lhs.true.118

land.lhs.true.118:                                ; preds = %land.lhs.true.114
  %109 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest119 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i32 0, i32 3
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %dest119, align 8
  store %struct.basic_block_def* %110, %struct.basic_block_def** %c, align 8
  %cmp120 = icmp ne %struct.basic_block_def* %110, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp120, label %land.lhs.true.121, label %land.end

land.lhs.true.121:                                ; preds = %land.lhs.true.118
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %pred122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %111, i32 0, i32 4
  %112 = load %struct.edge_def*, %struct.edge_def** %pred122, align 8
  %pred_next123 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 0
  %113 = load %struct.edge_def*, %struct.edge_def** %pred_next123, align 8
  %cmp124 = icmp eq %struct.edge_def* %113, null
  br i1 %cmp124, label %land.lhs.true.125, label %land.end

land.lhs.true.125:                                ; preds = %land.lhs.true.121
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %cmp126 = icmp ne %struct.basic_block_def* %114, %115
  br i1 %cmp126, label %land.lhs.true.127, label %land.end

land.lhs.true.127:                                ; preds = %land.lhs.true.125
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end128 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %116, i32 0, i32 1
  %117 = load %struct.rtx_def*, %struct.rtx_def** %end128, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load129 = load i32, i32* %118, align 8
  %bf.clear130 = and i32 %bf.load129, 65535
  %cmp131 = icmp ne i32 %bf.clear130, 33
  br i1 %cmp131, label %land.rhs, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %land.lhs.true.127
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end133 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 1
  %120 = load %struct.rtx_def*, %struct.rtx_def** %end133, align 8
  %call134 = call i32 @onlyjump_p(%struct.rtx_def* %120)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.132, %land.lhs.true.127
  %121 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %c, align 8
  %124 = load i32, i32* %mode.addr, align 4
  %call136 = call zeroext i1 @merge_blocks(%struct.edge_def* %121, %struct.basic_block_def* %122, %struct.basic_block_def* %123, i32 %124)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.132, %land.lhs.true.125, %land.lhs.true.121, %land.lhs.true.118, %land.lhs.true.114, %land.lhs.true.112, %while.cond.109
  %125 = phi i1 [ false, %lor.lhs.false.132 ], [ false, %land.lhs.true.125 ], [ false, %land.lhs.true.121 ], [ false, %land.lhs.true.118 ], [ false, %land.lhs.true.114 ], [ false, %land.lhs.true.112 ], [ false, %while.cond.109 ], [ %call136, %land.rhs ]
  br i1 %125, label %while.body.137, label %while.end.138

while.body.137:                                   ; preds = %land.end
  store i8 1, i8* %changed_here, align 1
  br label %while.cond.109

while.end.138:                                    ; preds = %land.end
  %126 = load i32, i32* %mode.addr, align 4
  %and139 = and i32 %126, 1
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %land.lhs.true.141, label %if.end.146

land.lhs.true.141:                                ; preds = %while.end.138
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call142 = call zeroext i1 @try_simplify_condjump(%struct.basic_block_def* %127)
  br i1 %call142, label %if.then.143, label %if.end.146

if.then.143:                                      ; preds = %land.lhs.true.141
  %128 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %128, i32 0, i32 10
  %129 = load i8*, i8** %aux144, align 8
  %130 = ptrtoint i8* %129 to i32
  %or = or i32 %130, 1
  %conv = zext i32 %or to i64
  %131 = inttoptr i64 %conv to i8*
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux145 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 10
  store i8* %131, i8** %aux145, align 8
  store i8 1, i8* %changed_here, align 1
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.143, %land.lhs.true.141, %while.end.138
  %133 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ147 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %133, i32 0, i32 5
  %134 = load %struct.edge_def*, %struct.edge_def** %succ147, align 8
  %tobool148 = icmp ne %struct.edge_def* %134, null
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.173

land.lhs.true.149:                                ; preds = %if.end.146
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ150 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i32 0, i32 5
  %136 = load %struct.edge_def*, %struct.edge_def** %succ150, align 8
  %succ_next151 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %136, i32 0, i32 1
  %137 = load %struct.edge_def*, %struct.edge_def** %succ_next151, align 8
  %tobool152 = icmp ne %struct.edge_def* %137, null
  br i1 %tobool152, label %if.end.173, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %land.lhs.true.149
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i32 0, i32 5
  %139 = load %struct.edge_def*, %struct.edge_def** %succ154, align 8
  %dest155 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %139, i32 0, i32 3
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %dest155, align 8
  %cmp156 = icmp ne %struct.basic_block_def* %140, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.173

land.lhs.true.158:                                ; preds = %land.lhs.true.153
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end159 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %141, i32 0, i32 1
  %142 = load %struct.rtx_def*, %struct.rtx_def** %end159, align 8
  %call160 = call i32 @onlyjump_p(%struct.rtx_def* %142)
  %tobool161 = icmp ne i32 %call160, 0
  br i1 %tobool161, label %land.lhs.true.162, label %if.end.173

land.lhs.true.162:                                ; preds = %land.lhs.true.158
  %143 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ163 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %143, i32 0, i32 5
  %144 = load %struct.edge_def*, %struct.edge_def** %succ163, align 8
  %145 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ164 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %145, i32 0, i32 5
  %146 = load %struct.edge_def*, %struct.edge_def** %succ164, align 8
  %dest165 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %146, i32 0, i32 3
  %147 = load %struct.basic_block_def*, %struct.basic_block_def** %dest165, align 8
  %call166 = call zeroext i1 @redirect_edge_and_branch(%struct.edge_def* %144, %struct.basic_block_def* %147)
  br i1 %call166, label %if.then.168, label %if.end.173

if.then.168:                                      ; preds = %land.lhs.true.162
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux169 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 10
  %149 = load i8*, i8** %aux169, align 8
  %150 = ptrtoint i8* %149 to i32
  %or170 = or i32 %150, 1
  %conv171 = zext i32 %or170 to i64
  %151 = inttoptr i64 %conv171 to i8*
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux172 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %152, i32 0, i32 10
  store i8* %151, i8** %aux172, align 8
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  call void @update_forwarder_flag(%struct.basic_block_def* %153)
  store i8 1, i8* %changed_here, align 1
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.168, %land.lhs.true.162, %land.lhs.true.158, %land.lhs.true.153, %land.lhs.true.149, %if.end.146
  %154 = load i32, i32* %mode.addr, align 4
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call174 = call zeroext i1 @try_forward_edges(i32 %154, %struct.basic_block_def* %155)
  br i1 %call174, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.173
  store i8 1, i8* %changed_here, align 1
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.175, %if.end.173
  %156 = load i32, i32* %mode.addr, align 4
  %and177 = and i32 %156, 2
  %tobool178 = icmp ne i32 %and177, 0
  br i1 %tobool178, label %land.lhs.true.179, label %if.end.183

land.lhs.true.179:                                ; preds = %if.end.176
  %157 = load i32, i32* %mode.addr, align 4
  %158 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call180 = call zeroext i1 @try_crossjump_bb(i32 %157, %struct.basic_block_def* %158)
  br i1 %call180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %land.lhs.true.179
  store i8 1, i8* %changed_here, align 1
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %land.lhs.true.179, %if.end.176
  %159 = load i8, i8* %changed_here, align 1
  %tobool184 = trunc i8 %159 to i1
  br i1 %tobool184, label %if.else, label %if.then.185

if.then.185:                                      ; preds = %if.end.183
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index186 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %160, i32 0, i32 11
  %161 = load i32, i32* %index186, align 4
  %add = add nsw i32 %161, 1
  store i32 %add, i32* %i, align 4
  br label %if.end.187

if.else:                                          ; preds = %if.end.183
  store i8 1, i8* %changed, align 1
  br label %if.end.187

if.end.187:                                       ; preds = %if.else, %if.then.185
  br label %for.cond.7

for.end.188:                                      ; preds = %for.cond.7
  %162 = load i32, i32* %mode.addr, align 4
  %and189 = and i32 %162, 2
  %tobool190 = icmp ne i32 %and189, 0
  br i1 %tobool190, label %land.lhs.true.191, label %if.end.195

land.lhs.true.191:                                ; preds = %for.end.188
  %163 = load i32, i32* %mode.addr, align 4
  %call192 = call zeroext i1 @try_crossjump_bb(i32 %163, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1))
  br i1 %call192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %land.lhs.true.191
  store i8 1, i8* %changed, align 1
  br label %if.end.195

if.end.195:                                       ; preds = %if.then.194, %land.lhs.true.191, %for.end.188
  %164 = load i8, i8* %changed, align 1
  %tobool196 = trunc i8 %164 to i1
  %conv197 = zext i1 %tobool196 to i32
  %165 = load i8, i8* %changed_overall, align 1
  %tobool198 = trunc i8 %165 to i1
  %conv199 = zext i1 %tobool198 to i32
  %or200 = or i32 %conv199, %conv197
  %tobool201 = icmp ne i32 %or200, 0
  %frombool = zext i1 %tobool201 to i8
  store i8 %frombool, i8* %changed_overall, align 1
  br label %do.cond

do.cond:                                          ; preds = %if.end.195
  %166 = load i8, i8* %changed, align 1
  %tobool202 = trunc i8 %166 to i1
  br i1 %tobool202, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.203

if.end.203:                                       ; preds = %do.end, %for.end
  %167 = load i32, i32* %mode.addr, align 4
  %and204 = and i32 %167, 2
  %tobool205 = icmp ne i32 %and204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.end.203
  call void @remove_fake_edges()
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.206, %if.end.203
  %168 = load i32, i32* %mode.addr, align 4
  %and208 = and i32 %168, 32
  %tobool209 = icmp ne i32 %and208, 0
  br i1 %tobool209, label %land.lhs.true.210, label %if.end.237

land.lhs.true.210:                                ; preds = %if.end.207
  %169 = load i8, i8* %changed_overall, align 1
  %tobool211 = trunc i8 %169 to i1
  br i1 %tobool211, label %if.then.213, label %if.end.237

if.then.213:                                      ; preds = %land.lhs.true.210
  store i8 0, i8* %found, align 1
  %170 = load i32, i32* @n_basic_blocks, align 4
  %call214 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %170)
  store %struct.simple_bitmap_def* %call214, %struct.simple_bitmap_def** %blocks, align 8
  %171 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %171)
  store i32 0, i32* %i, align 4
  br label %for.cond.215

for.cond.215:                                     ; preds = %for.inc.231, %if.then.213
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* @n_basic_blocks, align 4
  %cmp216 = icmp slt i32 %172, %173
  br i1 %cmp216, label %for.body.218, label %for.end.233

for.body.218:                                     ; preds = %for.cond.215
  %174 = load i32, i32* %i, align 4
  %idxprom219 = sext i32 %174 to i64
  %175 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data220 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %175, i32 0, i32 4
  %bb221 = bitcast %union.varray_data_tag* %data220 to [1 x %struct.basic_block_def*]*
  %arrayidx222 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb221, i32 0, i64 %idxprom219
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx222, align 8
  %aux223 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %176, i32 0, i32 10
  %177 = load i8*, i8** %aux223, align 8
  %178 = ptrtoint i8* %177 to i32
  %and224 = and i32 %178, 1
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.230

if.then.226:                                      ; preds = %for.body.218
  store i8 1, i8* %found, align 1
  %179 = load i32, i32* %i, align 4
  %rem = urem i32 %179, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %180 = load i32, i32* %i, align 4
  %div = udiv i32 %180, 64
  %idxprom227 = zext i32 %div to i64
  %181 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %181, i32 0, i32 3
  %arrayidx228 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom227
  %182 = load i64, i64* %arrayidx228, align 8
  %or229 = or i64 %182, %shl
  store i64 %or229, i64* %arrayidx228, align 8
  br label %if.end.230

if.end.230:                                       ; preds = %if.then.226, %for.body.218
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %183 = load i32, i32* %i, align 4
  %inc232 = add nsw i32 %183, 1
  store i32 %inc232, i32* %i, align 4
  br label %for.cond.215

for.end.233:                                      ; preds = %for.cond.215
  %184 = load i8, i8* %found, align 1
  %tobool234 = trunc i8 %184 to i1
  br i1 %tobool234, label %if.then.235, label %if.end.236

if.then.235:                                      ; preds = %for.end.233
  %185 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  call void @update_life_info(%struct.simple_bitmap_def* %185, i32 1, i32 25)
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.235, %for.end.233
  %186 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks, align 8
  %187 = bitcast %struct.simple_bitmap_def* %186 to i8*
  call void @free(i8* %187) #5
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %land.lhs.true.210, %if.end.207
  store i32 0, i32* %i, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.247, %if.end.237
  %188 = load i32, i32* %i, align 4
  %189 = load i32, i32* @n_basic_blocks, align 4
  %cmp239 = icmp slt i32 %188, %189
  br i1 %cmp239, label %for.body.241, label %for.end.249

for.body.241:                                     ; preds = %for.cond.238
  %190 = load i32, i32* %i, align 4
  %idxprom242 = sext i32 %190 to i64
  %191 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data243 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %191, i32 0, i32 4
  %bb244 = bitcast %union.varray_data_tag* %data243 to [1 x %struct.basic_block_def*]*
  %arrayidx245 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb244, i32 0, i64 %idxprom242
  %192 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx245, align 8
  %aux246 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %192, i32 0, i32 10
  store i8* null, i8** %aux246, align 8
  br label %for.inc.247

for.inc.247:                                      ; preds = %for.body.241
  %193 = load i32, i32* %i, align 4
  %inc248 = add nsw i32 %193, 1
  store i32 %inc248, i32* %i, align 4
  br label %for.cond.238

for.end.249:                                      ; preds = %for.cond.238
  %194 = load i8, i8* %changed_overall, align 1
  %tobool250 = trunc i8 %194 to i1
  ret i1 %tobool250
}

declare void @free_EXPR_LIST_list(%struct.rtx_def**) #1

declare void @timevar_pop(i32) #1

declare void @find_unreachable_blocks() #1

declare i32 @flow_delete_block_noexpunge(%struct.basic_block_def*) #1

declare void @expunge_block_nocompact(%struct.basic_block_def*) #1

declare void @tidy_fallthru_edges() #1

declare void @add_noreturn_fake_exit_edges() #1

; Function Attrs: nounwind uwtable
define internal void @update_forwarder_flag(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %0)
  br i1 %call, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 10
  %2 = load i8*, i8** %aux, align 8
  %3 = ptrtoint i8* %2 to i32
  %or = or i32 %3, 2
  %conv = zext i32 %or to i64
  %4 = inttoptr i64 %conv to i8*
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  store i8* %4, i8** %aux1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 10
  %7 = load i8*, i8** %aux2, align 8
  %8 = ptrtoint i8* %7 to i32
  %and = and i32 %8, -3
  %conv3 = zext i32 %and to i64
  %9 = inttoptr i64 %conv3 to i8*
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 10
  store i8* %9, i8** %aux4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @flow_delete_block(%struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @tail_recursion_label_p(%struct.rtx_def* %label) #0 {
entry:
  %retval = alloca i1, align 1
  %label.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** @tail_recursion_label_list, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i1, i1* %retval
  ret i1 %7
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @label_is_jump_target_p(%struct.rtx_def* %label, %struct.rtx_def* %jump_insn) #0 {
entry:
  %retval = alloca i1, align 1
  %label.addr = alloca %struct.rtx_def*, align 8
  %jump_insn.addr = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %vec = alloca %struct.rtvec_def*, align 8
  %i = alloca i32, align 4
  %veclen = alloca i32, align 4
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %jump_insn, %struct.rtx_def** %jump_insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump_insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %tmp, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %cmp = icmp eq %struct.rtx_def* %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %cmp1 = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp1, label %land.lhs.true, label %if.end.38

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %tmp, align 8
  %cmp5 = icmp ne %struct.rtx_def* %6, null
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.38

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp7 = icmp eq i32 %bf.clear, 33
  br i1 %cmp7, label %land.lhs.true.8, label %if.end.38

land.lhs.true.8:                                  ; preds = %land.lhs.true.6
  %9 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %tmp, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load12 = load i32, i32* %12, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 44
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load15 = load i32, i32* %14, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 45
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.8
  %15 = phi i1 [ true, %land.lhs.true.8 ], [ %cmp17, %lor.rhs ]
  br i1 %15, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %lor.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load20 = load i32, i32* %17, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 45
  %conv = zext i1 %cmp22 to i32
  %idxprom = sext i32 %conv to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 %idxprom
  %rtvec = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %19, %struct.rtvec_def** %vec, align 8
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 0
  %21 = load i32, i32* %num_elem, align 4
  store i32 %21, i32* %veclen, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %veclen, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %24 to i64
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom29
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx30, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %cmp34 = icmp eq %struct.rtx_def* %27, %28
  br i1 %cmp34, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  store i1 true, i1* %retval
  br label %return

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %lor.end, %land.lhs.true.6, %land.lhs.true, %if.end
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then.36, %if.then
  %30 = load i1, i1* %retval
  ret i1 %30
}

declare void @delete_insn_chain(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def*, %struct.basic_block_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @merge_blocks(%struct.edge_def* %e, %struct.basic_block_def* %b, %struct.basic_block_def* %c, i32 %mode) #0 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca %struct.edge_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %c.addr = alloca %struct.basic_block_def*, align 8
  %mode.addr = alloca i32, align 4
  %b_index = alloca i32, align 4
  %c_index = alloca i32, align 4
  %tmp_edge = alloca %struct.edge_def*, align 8
  %b_fallthru_edge = alloca %struct.edge_def*, align 8
  %c_has_outgoing_fallthru = alloca i8, align 1
  %b_has_incoming_fallthru = alloca i8, align 1
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store %struct.basic_block_def* %c, %struct.basic_block_def** %c.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %and = and i32 %0, 8
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %land.lhs.true.1, label %if.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %head2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head2, align 8
  %call = call zeroext i1 @tail_recursion_label_p(%struct.rtx_def* %5)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.1
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.1, %land.lhs.true, %entry
  %6 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 6
  %7 = load i32, i32* %flags, align 4
  %and3 = and i32 %7, 1
  %tobool4 = icmp ne i32 %and3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index, align 4
  store i32 %9, i32* %b_index, align 4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index6, align 4
  store i32 %11, i32* %c_index, align 4
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 10
  %13 = load i8*, i8** %aux, align 8
  %14 = ptrtoint i8* %13 to i32
  %and7 = and i32 %14, 1
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load9 = load i32, i32* %17, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 33
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.5
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 10
  %19 = load i8*, i8** %aux13, align 8
  %20 = ptrtoint i8* %19 to i32
  %or = or i32 %20, 1
  %conv = zext i32 %or to i64
  %21 = inttoptr i64 %conv to i8*
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 10
  store i8* %21, i8** %aux14, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %lor.lhs.false
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %23, %struct.basic_block_def* %24)
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @update_forwarder_flag(%struct.basic_block_def* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool16 = icmp ne %struct._IO_FILE* %26, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %28 = load i32, i32* %b_index, align 4
  %29 = load i32, i32* %c_index, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), i32 %28, i32 %29)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.15
  store i1 true, i1* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %30 = load i32, i32* %mode.addr, align 4
  %and20 = and i32 %30, 1
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.74

if.then.22:                                       ; preds = %if.else
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 10
  %32 = load i8*, i8** %aux23, align 8
  %33 = ptrtoint i8* %32 to i32
  %and24 = and i32 %33, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.then.22
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %aux27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 10
  %35 = load i8*, i8** %aux27, align 8
  %36 = ptrtoint i8* %35 to i32
  %and28 = and i32 %36, 2
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false.26, %if.then.22
  store i1 false, i1* %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false.26
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 5
  %38 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %38, %struct.edge_def** %tmp_edge, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.31
  %39 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %tobool32 = icmp ne %struct.edge_def* %39, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %flags33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 6
  %41 = load i32, i32* %flags33, align 4
  %and34 = and i32 %41, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %for.body
  br label %for.end

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %42 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 1
  %43 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %43, %struct.edge_def** %tmp_edge, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.36, %for.cond
  %44 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %cmp38 = icmp ne %struct.edge_def* %44, null
  %frombool = zext i1 %cmp38 to i8
  store i8 %frombool, i8* %c_has_outgoing_fallthru, align 1
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 4
  %46 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %46, %struct.edge_def** %tmp_edge, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.48, %for.end
  %47 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %tobool41 = icmp ne %struct.edge_def* %47, null
  br i1 %tobool41, label %for.body.42, label %for.end.49

for.body.42:                                      ; preds = %for.cond.40
  %48 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %flags43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 6
  %49 = load i32, i32* %flags43, align 4
  %and44 = and i32 %49, 1
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.body.42
  br label %for.end.49

if.end.47:                                        ; preds = %for.body.42
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %50 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 0
  %51 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %51, %struct.edge_def** %tmp_edge, align 8
  br label %for.cond.40

for.end.49:                                       ; preds = %if.then.46, %for.cond.40
  %52 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  %cmp50 = icmp ne %struct.edge_def* %52, null
  %frombool52 = zext i1 %cmp50 to i8
  store i8 %frombool52, i8* %b_has_incoming_fallthru, align 1
  %53 = load %struct.edge_def*, %struct.edge_def** %tmp_edge, align 8
  store %struct.edge_def* %53, %struct.edge_def** %b_fallthru_edge, align 8
  %54 = load i8, i8* %c_has_outgoing_fallthru, align 1
  %tobool53 = trunc i8 %54 to i1
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %for.end.49
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  call void @merge_blocks_move_successor_nojumps(%struct.basic_block_def* %55, %struct.basic_block_def* %56)
  store i1 true, i1* %retval
  br label %return

if.end.55:                                        ; preds = %for.end.49
  %57 = load i8, i8* %b_has_incoming_fallthru, align 1
  %tobool56 = trunc i8 %57 to i1
  br i1 %tobool56, label %if.then.57, label %if.end.73

if.then.57:                                       ; preds = %if.end.55
  %58 = load %struct.edge_def*, %struct.edge_def** %b_fallthru_edge, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 2
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp58 = icmp eq %struct.basic_block_def* %59, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.57
  store i1 false, i1* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.57
  %60 = load %struct.edge_def*, %struct.edge_def** %b_fallthru_edge, align 8
  %call62 = call %struct.basic_block_def* @force_nonfallthru(%struct.edge_def* %60)
  store %struct.basic_block_def* %call62, %struct.basic_block_def** %bb, align 8
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %tobool63 = icmp ne %struct.basic_block_def* %61, null
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @notice_new_block(%struct.basic_block_def* %62)
  br label %if.end.72

if.else.65:                                       ; preds = %if.end.61
  %63 = load %struct.edge_def*, %struct.edge_def** %b_fallthru_edge, align 8
  %src66 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 2
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src66, align 8
  %aux67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 10
  %65 = load i8*, i8** %aux67, align 8
  %66 = ptrtoint i8* %65 to i32
  %or68 = or i32 %66, 1
  %conv69 = zext i32 %or68 to i64
  %67 = inttoptr i64 %conv69 to i8*
  %68 = load %struct.edge_def*, %struct.edge_def** %b_fallthru_edge, align 8
  %src70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i32 0, i32 2
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %src70, align 8
  %aux71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 10
  store i8* %67, i8** %aux71, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.end.55
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %c.addr, align 8
  call void @merge_blocks_move_predecessor_nojumps(%struct.basic_block_def* %70, %struct.basic_block_def* %71)
  store i1 true, i1* %retval
  br label %return

if.end.74:                                        ; preds = %if.else
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.end.73, %if.then.60, %if.then.54, %if.then.30, %if.end.19, %if.then
  %72 = load i1, i1* %retval
  ret i1 %72
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_simplify_condjump(%struct.basic_block_def* %cbranch_block) #0 {
entry:
  %retval = alloca i1, align 1
  %cbranch_block.addr = alloca %struct.basic_block_def*, align 8
  %jump_block = alloca %struct.basic_block_def*, align 8
  %jump_dest_block = alloca %struct.basic_block_def*, align 8
  %cbranch_dest_block = alloca %struct.basic_block_def*, align 8
  %cbranch_jump_edge = alloca %struct.edge_def*, align 8
  %cbranch_fallthru_edge = alloca %struct.edge_def*, align 8
  %cbranch_insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %cbranch_block, %struct.basic_block_def** %cbranch_block.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 5
  %3 = load %struct.edge_def*, %struct.edge_def** %succ1, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 1
  %4 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool2 = icmp ne %struct.edge_def* %4, null
  br i1 %tobool2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  %succ_next5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 1
  %7 = load %struct.edge_def*, %struct.edge_def** %succ_next5, align 8
  %succ_next6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 1
  %8 = load %struct.edge_def*, %struct.edge_def** %succ_next6, align 8
  %tobool7 = icmp ne %struct.edge_def* %8, null
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %cbranch_insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %cbranch_insn, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %11)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 5
  %13 = load %struct.edge_def*, %struct.edge_def** %succ11, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 6
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 1
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.10
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 5
  %16 = load %struct.edge_def*, %struct.edge_def** %succ13, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.10
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 5
  %18 = load %struct.edge_def*, %struct.edge_def** %succ14, align 8
  %succ_next15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 1
  %19 = load %struct.edge_def*, %struct.edge_def** %succ_next15, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %16, %cond.true ], [ %19, %cond.false ]
  store %struct.edge_def* %cond, %struct.edge_def** %cbranch_fallthru_edge, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 5
  %21 = load %struct.edge_def*, %struct.edge_def** %succ16, align 8
  %flags17 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 6
  %22 = load i32, i32* %flags17, align 4
  %and18 = and i32 %22, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.23

cond.true.20:                                     ; preds = %cond.end
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 5
  %24 = load %struct.edge_def*, %struct.edge_def** %succ21, align 8
  %succ_next22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 1
  %25 = load %struct.edge_def*, %struct.edge_def** %succ_next22, align 8
  br label %cond.end.25

cond.false.23:                                    ; preds = %cond.end
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %succ24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 5
  %27 = load %struct.edge_def*, %struct.edge_def** %succ24, align 8
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.false.23, %cond.true.20
  %cond26 = phi %struct.edge_def* [ %25, %cond.true.20 ], [ %27, %cond.false.23 ]
  store %struct.edge_def* %cond26, %struct.edge_def** %cbranch_jump_edge, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %cbranch_fallthru_edge, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %29, %struct.basic_block_def** %jump_block, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 4
  %31 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 0
  %32 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool27 = icmp ne %struct.edge_def* %32, null
  br i1 %tobool27, label %if.then.32, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %cond.end.25
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 11
  %34 = load i32, i32* %index, align 4
  %35 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %35, 1
  %cmp = icmp eq i32 %34, %sub
  br i1 %cmp, label %if.then.32, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.28
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 10
  %37 = load i8*, i8** %aux, align 8
  %38 = ptrtoint i8* %37 to i32
  %and30 = and i32 %38, 2
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false.28, %cond.end.25
  store i1 false, i1* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.29
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %succ34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 5
  %40 = load %struct.edge_def*, %struct.edge_def** %succ34, align 8
  %dest35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 3
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest35, align 8
  store %struct.basic_block_def* %41, %struct.basic_block_def** %jump_dest_block, align 8
  %42 = load %struct.edge_def*, %struct.edge_def** %cbranch_jump_edge, align 8
  %dest36 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 3
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %dest36, align 8
  store %struct.basic_block_def* %43, %struct.basic_block_def** %cbranch_dest_block, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_dest_block, align 8
  %call37 = call zeroext i1 @can_fallthru(%struct.basic_block_def* %44, %struct.basic_block_def* %45)
  br i1 %call37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.33
  store i1 false, i1* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.33
  %46 = load %struct.rtx_def*, %struct.rtx_def** %cbranch_insn, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_dest_block, align 8
  %call40 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %47)
  %call41 = call i32 @invert_jump(%struct.rtx_def* %46, %struct.rtx_def* %call40, i32 0)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.39
  store i1 false, i1* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.39
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool45 = icmp ne %struct._IO_FILE* %48, null
  br i1 %tobool45, label %if.then.46, label %if.end.52

if.then.46:                                       ; preds = %if.end.44
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %cbranch_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %51 = load i32, i32* %rtint, align 4
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %end47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %end47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtint50 = bitcast %union.rtunion_def* %arrayidx49 to i32*
  %54 = load i32, i32* %rtint50, align 4
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i32 0, i32 0), i32 %51, i32 %54)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.46, %if.end.44
  %55 = load %struct.edge_def*, %struct.edge_def** %cbranch_jump_edge, align 8
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_dest_block, align 8
  %call53 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %55, %struct.basic_block_def* %56)
  store %struct.edge_def* %call53, %struct.edge_def** %cbranch_jump_edge, align 8
  %57 = load %struct.edge_def*, %struct.edge_def** %cbranch_fallthru_edge, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_dest_block, align 8
  %call54 = call %struct.edge_def* @redirect_edge_succ_nodup(%struct.edge_def* %57, %struct.basic_block_def* %58)
  store %struct.edge_def* %call54, %struct.edge_def** %cbranch_fallthru_edge, align 8
  %59 = load %struct.edge_def*, %struct.edge_def** %cbranch_jump_edge, align 8
  %flags55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 6
  %60 = load i32, i32* %flags55, align 4
  %or = or i32 %60, 1
  store i32 %or, i32* %flags55, align 4
  %61 = load %struct.edge_def*, %struct.edge_def** %cbranch_fallthru_edge, align 8
  %flags56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %61, i32 0, i32 6
  %62 = load i32, i32* %flags56, align 4
  %and57 = and i32 %62, -2
  store i32 %and57, i32* %flags56, align 4
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %63)
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %jump_block, align 8
  %call58 = call i32 @flow_delete_block(%struct.basic_block_def* %64)
  %65 = load %struct.edge_def*, %struct.edge_def** %cbranch_jump_edge, align 8
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_block.addr, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %cbranch_dest_block, align 8
  call void @tidy_fallthru_edge(%struct.edge_def* %65, %struct.basic_block_def* %66, %struct.basic_block_def* %67)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.43, %if.then.38, %if.then.32, %if.then.9, %if.then
  %68 = load i1, i1* %retval
  ret i1 %68
}

declare zeroext i1 @redirect_edge_and_branch(%struct.edge_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_forward_edges(i32 %mode, %struct.basic_block_def* %b) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %b.addr = alloca %struct.basic_block_def*, align 8
  %changed = alloca i8, align 1
  %e = alloca %struct.edge_def*, align 8
  %next = alloca %struct.edge_def*, align 8
  %threaded_edges = alloca %struct.edge_def**, align 8
  %target = alloca %struct.basic_block_def*, align 8
  %first = alloca %struct.basic_block_def*, align 8
  %counter = alloca i32, align 4
  %threaded = alloca i8, align 1
  %nthreaded_edges = alloca i32, align 4
  %new_target = alloca %struct.basic_block_def*, align 8
  %new_target_threaded = alloca i8, align 1
  %t = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %edge_count = alloca i64, align 8
  %edge_probability = alloca i32, align 4
  %edge_frequency = alloca i32, align 4
  %n = alloca i32, align 4
  %t166 = alloca %struct.edge_def*, align 8
  %e186 = alloca %struct.edge_def*, align 8
  %prob = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store i8 0, i8* %changed, align 1
  store %struct.edge_def** null, %struct.edge_def*** %threaded_edges, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %1, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.266, %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %2, null
  br i1 %tobool, label %for.body, label %for.end.267

for.body:                                         ; preds = %for.cond
  store i8 0, i8* %threaded, align 1
  store i32 0, i32* %nthreaded_edges, align 4
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 1
  %4 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %4, %struct.edge_def** %next, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 6
  %6 = load i32, i32* %flags, align 4
  %and = and i32 %6, 14
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.266

if.end:                                           ; preds = %for.body
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %first, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %target, align 8
  store i32 0, i32* %counter, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.106, %if.end
  %9 = load i32, i32* %counter, align 4
  %10 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store %struct.basic_block_def* null, %struct.basic_block_def** %new_target, align 8
  store i8 0, i8* %new_target_threaded, align 1
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 10
  %12 = load i8*, i8** %aux, align 8
  %13 = ptrtoint i8* %12 to i32
  %and2 = and i32 %13, 2
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 5
  %15 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 3
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8
  %cmp6 = icmp ne %struct.basic_block_def* %16, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %land.lhs.true
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %succ8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 5
  %19 = load %struct.edge_def*, %struct.edge_def** %succ8, align 8
  %dest9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 3
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest9, align 8
  %cmp10 = icmp eq %struct.basic_block_def* %17, %20
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  %21 = load i32, i32* @n_basic_blocks, align 4
  store i32 %21, i32* %counter, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.then.7
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %succ13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 5
  %23 = load %struct.edge_def*, %struct.edge_def** %succ13, align 8
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 3
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8
  store %struct.basic_block_def* %24, %struct.basic_block_def** %new_target, align 8
  br label %if.end.52

if.else:                                          ; preds = %land.lhs.true, %while.body
  %25 = load i32, i32* %mode.addr, align 4
  %and15 = and i32 %25, 64
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.51

if.then.17:                                       ; preds = %if.else
  %26 = load i32, i32* %mode.addr, align 4
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %call = call %struct.edge_def* @thread_jump(i32 %26, %struct.edge_def* %27, %struct.basic_block_def* %28)
  store %struct.edge_def* %call, %struct.edge_def** %t, align 8
  %29 = load %struct.edge_def*, %struct.edge_def** %t, align 8
  %tobool18 = icmp ne %struct.edge_def* %29, null
  br i1 %tobool18, label %if.then.19, label %if.end.50

if.then.19:                                       ; preds = %if.then.17
  %30 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %tobool20 = icmp ne %struct.edge_def** %30, null
  br i1 %tobool20, label %if.else.23, label %if.then.21

if.then.21:                                       ; preds = %if.then.19
  %31 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %31 to i64
  %mul = mul i64 8, %conv
  %call22 = call noalias i8* @xmalloc(i64 %mul)
  %32 = bitcast i8* %call22 to %struct.edge_def**
  store %struct.edge_def** %32, %struct.edge_def*** %threaded_edges, align 8
  br label %if.end.36

if.else.23:                                       ; preds = %if.then.19
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc, %if.else.23
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %nthreaded_edges, align 4
  %cmp25 = icmp slt i32 %33, %34
  br i1 %cmp25, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %for.cond.24
  %35 = load i32, i32* %i, align 4
  %idxprom = sext i32 %35 to i64
  %36 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %36, i64 %idxprom
  %37 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %38 = load %struct.edge_def*, %struct.edge_def** %t, align 8
  %cmp28 = icmp eq %struct.edge_def* %37, %38
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.27
  br label %for.end

if.end.31:                                        ; preds = %for.body.27
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.24

for.end:                                          ; preds = %if.then.30, %for.cond.24
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %nthreaded_edges, align 4
  %cmp32 = icmp slt i32 %40, %41
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.end
  %42 = load i32, i32* @n_basic_blocks, align 4
  store i32 %42, i32* %counter, align 4
  br label %while.end

if.end.35:                                        ; preds = %for.end
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.21
  %43 = load %struct.edge_def*, %struct.edge_def** %t, align 8
  %dest37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 3
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest37, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %cmp38 = icmp eq %struct.basic_block_def* %44, %45
  br i1 %cmp38, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.36
  br label %while.end

if.end.41:                                        ; preds = %if.end.36
  %46 = load i32, i32* %nthreaded_edges, align 4
  %47 = load i32, i32* @n_basic_blocks, align 4
  %cmp42 = icmp sge i32 %46, %47
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.41
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 441, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.try_forward_edges, i32 0, i32 0)) #6
  unreachable

if.end.45:                                        ; preds = %if.end.41
  %48 = load %struct.edge_def*, %struct.edge_def** %t, align 8
  %49 = load i32, i32* %nthreaded_edges, align 4
  %inc46 = add nsw i32 %49, 1
  store i32 %inc46, i32* %nthreaded_edges, align 4
  %idxprom47 = sext i32 %49 to i64
  %50 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %arrayidx48 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %50, i64 %idxprom47
  store %struct.edge_def* %48, %struct.edge_def** %arrayidx48, align 8
  %51 = load %struct.edge_def*, %struct.edge_def** %t, align 8
  %dest49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 3
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %dest49, align 8
  store %struct.basic_block_def* %52, %struct.basic_block_def** %new_target, align 8
  store i8 1, i8* %new_target_threaded, align 1
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.45, %if.then.17
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.else
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.12
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %new_target, align 8
  %tobool53 = icmp ne %struct.basic_block_def* %53, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.52
  br label %while.end

if.end.55:                                        ; preds = %if.end.52
  %54 = load i32, i32* %mode.addr, align 4
  %and56 = and i32 %54, 16
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.106

if.then.58:                                       ; preds = %if.end.55
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %succ59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i32 0, i32 5
  %56 = load %struct.edge_def*, %struct.edge_def** %succ59, align 8
  %flags60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 6
  %57 = load i32, i32* %flags60, align 4
  %and61 = and i32 %57, 1
  %tobool62 = icmp ne i32 %and61, 0
  br i1 %tobool62, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.58
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.58
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 1
  %61 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call63 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %61)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %59, %cond.true ], [ %call63, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load = load i32, i32* %63, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp64 = icmp ne i32 %bf.clear, 37
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %cond.end
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %insn, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %cond.end
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.95, %if.end.68
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool70 = icmp ne %struct.rtx_def* %66, null
  br i1 %tobool70, label %land.lhs.true.71, label %land.end

land.lhs.true.71:                                 ; preds = %for.cond.69
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load72 = load i32, i32* %68, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp ne i32 %bf.clear73, 36
  br i1 %cmp74, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.71
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load76 = load i32, i32* %70, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %idxprom78 = sext i32 %bf.clear77 to i64
  %arrayidx79 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom78
  %71 = load i8, i8* %arrayidx79, align 1
  %conv80 = sext i8 %71 to i32
  %cmp81 = icmp eq i32 %conv80, 105
  %lnot = xor i1 %cmp81, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.71, %for.cond.69
  %72 = phi i1 [ false, %land.lhs.true.71 ], [ false, %for.cond.69 ], [ %lnot, %land.rhs ]
  br i1 %72, label %for.body.83, label %for.end.99

for.body.83:                                      ; preds = %land.end
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load84 = load i32, i32* %74, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 37
  br i1 %cmp86, label %land.lhs.true.88, label %if.end.94

land.lhs.true.88:                                 ; preds = %for.body.83
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %76 = load i32, i32* %rtint, align 4
  %cmp91 = icmp eq i32 %76, -96
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %land.lhs.true.88
  br label %for.end.99

if.end.94:                                        ; preds = %land.lhs.true.88, %for.body.83
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 2
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %78, %struct.rtx_def** %insn, align 8
  br label %for.cond.69

for.end.99:                                       ; preds = %if.then.93, %land.end
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load100 = load i32, i32* %80, align 8
  %bf.clear101 = and i32 %bf.load100, 65535
  %cmp102 = icmp eq i32 %bf.clear101, 37
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.end.99
  br label %while.end

if.end.105:                                       ; preds = %for.end.99
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.end.55
  %81 = load i32, i32* %counter, align 4
  %inc107 = add nsw i32 %81, 1
  store i32 %inc107, i32* %counter, align 4
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %new_target, align 8
  store %struct.basic_block_def* %82, %struct.basic_block_def** %target, align 8
  %83 = load i8, i8* %new_target_threaded, align 1
  %tobool108 = trunc i8 %83 to i1
  %conv109 = zext i1 %tobool108 to i32
  %84 = load i8, i8* %threaded, align 1
  %tobool110 = trunc i8 %84 to i1
  %conv111 = zext i1 %tobool110 to i32
  %or = or i32 %conv111, %conv109
  %tobool112 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool112 to i8
  store i8 %frombool, i8* %threaded, align 1
  br label %while.cond

while.end:                                        ; preds = %if.then.104, %if.then.54, %if.then.40, %if.then.34, %while.cond
  %85 = load i32, i32* %counter, align 4
  %86 = load i32, i32* @n_basic_blocks, align 4
  %cmp113 = icmp sge i32 %85, %86
  br i1 %cmp113, label %if.then.115, label %if.else.120

if.then.115:                                      ; preds = %while.end
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool116 = icmp ne %struct._IO_FILE* %87, null
  br i1 %tobool116, label %if.then.117, label %if.end.119

if.then.117:                                      ; preds = %if.then.115
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 11
  %90 = load i32, i32* %index, align 4
  %call118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i32 %90)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.117, %if.then.115
  br label %if.end.265

if.else.120:                                      ; preds = %while.end
  %91 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %cmp121 = icmp eq %struct.basic_block_def* %91, %92
  br i1 %cmp121, label %if.then.123, label %if.else.124

if.then.123:                                      ; preds = %if.else.120
  br label %if.end.264

if.else.124:                                      ; preds = %if.else.120
  %93 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %93, i32 0, i32 8
  %94 = load i64, i64* %count, align 8
  store i64 %94, i64* %edge_count, align 8
  %95 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %95, i32 0, i32 7
  %96 = load i32, i32* %probability, align 4
  store i32 %96, i32* %edge_probability, align 4
  store i32 0, i32* %n, align 4
  %97 = load i8, i8* %threaded, align 1
  %tobool125 = trunc i8 %97 to i1
  br i1 %tobool125, label %land.lhs.true.127, label %if.else.136

land.lhs.true.127:                                ; preds = %if.else.124
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %cmp128 = icmp ne %struct.basic_block_def* %98, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp128, label %if.then.130, label %if.else.136

if.then.130:                                      ; preds = %land.lhs.true.127
  %99 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %call131 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %99, %struct.basic_block_def* %100)
  call void @notice_new_block(%struct.basic_block_def* %call131)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool132 = icmp ne %struct._IO_FILE* %101, null
  br i1 %tobool132, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.then.130
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.then.130
  br label %if.end.148

if.else.136:                                      ; preds = %land.lhs.true.127, %if.else.124
  %103 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %call137 = call zeroext i1 @redirect_edge_and_branch(%struct.edge_def* %103, %struct.basic_block_def* %104)
  br i1 %call137, label %if.end.147, label %if.then.138

if.then.138:                                      ; preds = %if.else.136
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool139 = icmp ne %struct._IO_FILE* %105, null
  br i1 %tobool139, label %if.then.140, label %if.end.146

if.then.140:                                      ; preds = %if.then.138
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index141 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 11
  %108 = load i32, i32* %index141, align 4
  %109 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest142 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i32 0, i32 3
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %dest142, align 8
  %index143 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %110, i32 0, i32 11
  %111 = load i32, i32* %index143, align 4
  %112 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %index144 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %112, i32 0, i32 11
  %113 = load i32, i32* %index144, align 4
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 %108, i32 %111, i32 %113)
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.140, %if.then.138
  br label %for.inc.266

if.end.147:                                       ; preds = %if.else.136
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.147, %if.end.135
  %114 = load i32, i32* %edge_probability, align 4
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i32 0, i32 14
  %116 = load i32, i32* %frequency, align 4
  %mul149 = mul nsw i32 %114, %116
  %add = add nsw i32 %mul149, 5000
  %div = sdiv i32 %add, 10000
  store i32 %div, i32* %edge_frequency, align 4
  %117 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux150 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %117, i32 0, i32 10
  %118 = load i8*, i8** %aux150, align 8
  %119 = ptrtoint i8* %118 to i32
  %and151 = and i32 %119, 2
  %tobool152 = icmp ne i32 %and151, 0
  br i1 %tobool152, label %if.end.161, label %land.lhs.true.153

land.lhs.true.153:                                ; preds = %if.end.148
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %call154 = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %120)
  br i1 %call154, label %if.then.156, label %if.end.161

if.then.156:                                      ; preds = %land.lhs.true.153
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %121, i32 0, i32 10
  %122 = load i8*, i8** %aux157, align 8
  %123 = ptrtoint i8* %122 to i32
  %or158 = or i32 %123, 2
  %conv159 = zext i32 %or158 to i64
  %124 = inttoptr i64 %conv159 to i8*
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux160 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %125, i32 0, i32 10
  store i8* %124, i8** %aux160, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.156, %land.lhs.true.153, %if.end.148
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux162 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i32 0, i32 10
  %127 = load i8*, i8** %aux162, align 8
  %128 = ptrtoint i8* %127 to i32
  %or163 = or i32 %128, 1
  %conv164 = zext i32 %or163 to i64
  %129 = inttoptr i64 %conv164 to i8*
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %aux165 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %130, i32 0, i32 10
  store i8* %129, i8** %aux165, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.161
  %131 = load i64, i64* %edge_count, align 8
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %count167 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %132, i32 0, i32 13
  %133 = load i64, i64* %count167, align 8
  %sub = sub nsw i64 %133, %131
  store i64 %sub, i64* %count167, align 8
  %134 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %count168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %134, i32 0, i32 13
  %135 = load i64, i64* %count168, align 8
  %cmp169 = icmp slt i64 %135, 0
  br i1 %cmp169, label %if.then.171, label %if.end.173

if.then.171:                                      ; preds = %do.body
  %136 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %count172 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %136, i32 0, i32 13
  store i64 0, i64* %count172, align 8
  br label %if.end.173

if.end.173:                                       ; preds = %if.then.171, %do.body
  %137 = load i32, i32* %edge_frequency, align 4
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %frequency174 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i32 0, i32 14
  %139 = load i32, i32* %frequency174, align 4
  %sub175 = sub nsw i32 %139, %137
  store i32 %sub175, i32* %frequency174, align 4
  %140 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %frequency176 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %140, i32 0, i32 14
  %141 = load i32, i32* %frequency176, align 4
  %cmp177 = icmp slt i32 %141, 0
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %if.end.173
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %frequency180 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %142, i32 0, i32 14
  store i32 0, i32* %frequency180, align 4
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %if.end.173
  %143 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %succ182 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %143, i32 0, i32 5
  %144 = load %struct.edge_def*, %struct.edge_def** %succ182, align 8
  %succ_next183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %144, i32 0, i32 1
  %145 = load %struct.edge_def*, %struct.edge_def** %succ_next183, align 8
  %tobool184 = icmp ne %struct.edge_def* %145, null
  br i1 %tobool184, label %if.then.185, label %if.else.239

if.then.185:                                      ; preds = %if.end.181
  %146 = load i32, i32* %n, align 4
  %147 = load i32, i32* %nthreaded_edges, align 4
  %cmp187 = icmp sge i32 %146, %147
  br i1 %cmp187, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.185
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 539, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.try_forward_edges, i32 0, i32 0)) #6
  unreachable

if.end.190:                                       ; preds = %if.then.185
  %148 = load i32, i32* %n, align 4
  %inc191 = add nsw i32 %148, 1
  store i32 %inc191, i32* %n, align 4
  %idxprom192 = sext i32 %148 to i64
  %149 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %arrayidx193 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %149, i64 %idxprom192
  %150 = load %struct.edge_def*, %struct.edge_def** %arrayidx193, align 8
  store %struct.edge_def* %150, %struct.edge_def** %t166, align 8
  %151 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 2
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %cmp194 = icmp ne %struct.basic_block_def* %152, %153
  br i1 %cmp194, label %if.then.196, label %if.end.197

if.then.196:                                      ; preds = %if.end.190
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 542, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.try_forward_edges, i32 0, i32 0)) #6
  unreachable

if.end.197:                                       ; preds = %if.end.190
  %154 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %frequency198 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %154, i32 0, i32 14
  %155 = load i32, i32* %frequency198, align 4
  %tobool199 = icmp ne i32 %155, 0
  br i1 %tobool199, label %if.then.200, label %if.else.204

if.then.200:                                      ; preds = %if.end.197
  %156 = load i32, i32* %edge_frequency, align 4
  %mul201 = mul nsw i32 %156, 10000
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %frequency202 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 14
  %158 = load i32, i32* %frequency202, align 4
  %div203 = sdiv i32 %mul201, %158
  store i32 %div203, i32* %prob, align 4
  br label %if.end.205

if.else.204:                                      ; preds = %if.end.197
  store i32 0, i32* %prob, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %if.then.200
  %159 = load i32, i32* %prob, align 4
  %160 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %probability206 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %160, i32 0, i32 7
  %161 = load i32, i32* %probability206, align 4
  %cmp207 = icmp sgt i32 %159, %161
  br i1 %cmp207, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.205
  %162 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %probability210 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %162, i32 0, i32 7
  %163 = load i32, i32* %probability210, align 4
  store i32 %163, i32* %prob, align 4
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.end.205
  %164 = load i32, i32* %prob, align 4
  %165 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %probability212 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %165, i32 0, i32 7
  %166 = load i32, i32* %probability212, align 4
  %sub213 = sub nsw i32 %166, %164
  store i32 %sub213, i32* %probability212, align 4
  %167 = load i32, i32* %prob, align 4
  %sub214 = sub nsw i32 10000, %167
  store i32 %sub214, i32* %prob, align 4
  %168 = load i32, i32* %prob, align 4
  %cmp215 = icmp sle i32 %168, 0
  br i1 %cmp215, label %if.then.217, label %if.else.223

if.then.217:                                      ; preds = %if.end.211
  %169 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %succ218 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %169, i32 0, i32 5
  %170 = load %struct.edge_def*, %struct.edge_def** %succ218, align 8
  %probability219 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %170, i32 0, i32 7
  store i32 10000, i32* %probability219, align 4
  %171 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %succ220 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %171, i32 0, i32 5
  %172 = load %struct.edge_def*, %struct.edge_def** %succ220, align 8
  %succ_next221 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %172, i32 0, i32 1
  %173 = load %struct.edge_def*, %struct.edge_def** %succ_next221, align 8
  %probability222 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %173, i32 0, i32 7
  store i32 0, i32* %probability222, align 4
  br label %if.end.238

if.else.223:                                      ; preds = %if.end.211
  %174 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %succ224 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %174, i32 0, i32 5
  %175 = load %struct.edge_def*, %struct.edge_def** %succ224, align 8
  store %struct.edge_def* %175, %struct.edge_def** %e186, align 8
  br label %for.cond.225

for.cond.225:                                     ; preds = %for.inc.235, %if.else.223
  %176 = load %struct.edge_def*, %struct.edge_def** %e186, align 8
  %tobool226 = icmp ne %struct.edge_def* %176, null
  br i1 %tobool226, label %for.body.227, label %for.end.237

for.body.227:                                     ; preds = %for.cond.225
  %177 = load %struct.edge_def*, %struct.edge_def** %e186, align 8
  %probability228 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %177, i32 0, i32 7
  %178 = load i32, i32* %probability228, align 4
  %mul229 = mul nsw i32 %178, 10000
  %conv230 = sitofp i32 %mul229 to double
  %179 = load i32, i32* %prob, align 4
  %conv231 = sitofp i32 %179 to double
  %div232 = fdiv double %conv230, %conv231
  %conv233 = fptosi double %div232 to i32
  %180 = load %struct.edge_def*, %struct.edge_def** %e186, align 8
  %probability234 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %180, i32 0, i32 7
  store i32 %conv233, i32* %probability234, align 4
  br label %for.inc.235

for.inc.235:                                      ; preds = %for.body.227
  %181 = load %struct.edge_def*, %struct.edge_def** %e186, align 8
  %succ_next236 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %181, i32 0, i32 1
  %182 = load %struct.edge_def*, %struct.edge_def** %succ_next236, align 8
  store %struct.edge_def* %182, %struct.edge_def** %e186, align 8
  br label %for.cond.225

for.end.237:                                      ; preds = %for.cond.225
  br label %if.end.238

if.end.238:                                       ; preds = %for.end.237, %if.then.217
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %183)
  br label %if.end.252

if.else.239:                                      ; preds = %if.end.181
  %184 = load i32, i32* %n, align 4
  %185 = load i32, i32* %nthreaded_edges, align 4
  %cmp240 = icmp slt i32 %184, %185
  br i1 %cmp240, label %land.lhs.true.242, label %if.end.250

land.lhs.true.242:                                ; preds = %if.else.239
  %186 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %187 = load i32, i32* %n, align 4
  %idxprom243 = sext i32 %187 to i64
  %188 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %arrayidx244 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %188, i64 %idxprom243
  %189 = load %struct.edge_def*, %struct.edge_def** %arrayidx244, align 8
  %src245 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %189, i32 0, i32 2
  %190 = load %struct.basic_block_def*, %struct.basic_block_def** %src245, align 8
  %cmp246 = icmp eq %struct.basic_block_def* %186, %190
  br i1 %cmp246, label %if.then.248, label %if.end.250

if.then.248:                                      ; preds = %land.lhs.true.242
  %191 = load i32, i32* %n, align 4
  %inc249 = add nsw i32 %191, 1
  store i32 %inc249, i32* %n, align 4
  br label %if.end.250

if.end.250:                                       ; preds = %if.then.248, %land.lhs.true.242, %if.else.239
  %192 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %succ251 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %192, i32 0, i32 5
  %193 = load %struct.edge_def*, %struct.edge_def** %succ251, align 8
  store %struct.edge_def* %193, %struct.edge_def** %t166, align 8
  br label %if.end.252

if.end.252:                                       ; preds = %if.end.250, %if.end.238
  %194 = load i64, i64* %edge_count, align 8
  %195 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %count253 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %195, i32 0, i32 8
  %196 = load i64, i64* %count253, align 8
  %sub254 = sub nsw i64 %196, %194
  store i64 %sub254, i64* %count253, align 8
  %197 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %count255 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %197, i32 0, i32 8
  %198 = load i64, i64* %count255, align 8
  %cmp256 = icmp slt i64 %198, 0
  br i1 %cmp256, label %if.then.258, label %if.end.260

if.then.258:                                      ; preds = %if.end.252
  %199 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %count259 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %199, i32 0, i32 8
  store i64 0, i64* %count259, align 8
  br label %if.end.260

if.end.260:                                       ; preds = %if.then.258, %if.end.252
  %200 = load %struct.edge_def*, %struct.edge_def** %t166, align 8
  %dest261 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %200, i32 0, i32 3
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %dest261, align 8
  store %struct.basic_block_def* %201, %struct.basic_block_def** %first, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.260
  %202 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %203 = load %struct.basic_block_def*, %struct.basic_block_def** %target, align 8
  %cmp262 = icmp ne %struct.basic_block_def* %202, %203
  br i1 %cmp262, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i8 1, i8* %changed, align 1
  br label %if.end.264

if.end.264:                                       ; preds = %do.end, %if.then.123
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.end.119
  br label %for.inc.266

for.inc.266:                                      ; preds = %if.end.265, %if.end.146, %if.then
  %204 = load %struct.edge_def*, %struct.edge_def** %next, align 8
  store %struct.edge_def* %204, %struct.edge_def** %e, align 8
  br label %for.cond

for.end.267:                                      ; preds = %for.cond
  %205 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %tobool268 = icmp ne %struct.edge_def** %205, null
  br i1 %tobool268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %for.end.267
  %206 = load %struct.edge_def**, %struct.edge_def*** %threaded_edges, align 8
  %207 = bitcast %struct.edge_def** %206 to i8*
  call void @free(i8* %207) #5
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.269, %for.end.267
  %208 = load i8, i8* %changed, align 1
  %tobool271 = trunc i8 %208 to i1
  ret i1 %tobool271
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_crossjump_bb(i32 %mode, %struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca i1, align 1
  %mode.addr = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %e2 = alloca %struct.edge_def*, align 8
  %nexte2 = alloca %struct.edge_def*, align 8
  %nexte = alloca %struct.edge_def*, align 8
  %fallthru = alloca %struct.edge_def*, align 8
  %changed = alloca i8, align 1
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 4
  %1 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 4
  %3 = load %struct.edge_def*, %struct.edge_def** %pred1, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 0
  %4 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool2 = icmp ne %struct.edge_def* %4, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 4
  %6 = load %struct.edge_def*, %struct.edge_def** %pred3, align 8
  store %struct.edge_def* %6, %struct.edge_def** %fallthru, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %tobool4 = icmp ne %struct.edge_def* %7, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 6
  %9 = load i32, i32* %flags, align 4
  %and = and i32 %9, 1
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.body
  br label %for.end

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %10 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %pred_next8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 0
  %11 = load %struct.edge_def*, %struct.edge_def** %pred_next8, align 8
  store %struct.edge_def* %11, %struct.edge_def** %fallthru, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  store i8 0, i8* %changed, align 1
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 4
  %13 = load %struct.edge_def*, %struct.edge_def** %pred9, align 8
  store %struct.edge_def* %13, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.48, %for.end
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool11 = icmp ne %struct.edge_def* %14, null
  br i1 %tobool11, label %for.body.12, label %for.end.49

for.body.12:                                      ; preds = %for.cond.10
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 0
  %16 = load %struct.edge_def*, %struct.edge_def** %pred_next13, align 8
  store %struct.edge_def* %16, %struct.edge_def** %nexte, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %tobool14 = icmp ne %struct.edge_def* %17, null
  br i1 %tobool14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %for.body.12
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %19 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %cmp = icmp eq %struct.edge_def* %18, %19
  br i1 %cmp, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.15
  br label %for.inc.48

if.end.17:                                        ; preds = %if.then.15
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %call = call zeroext i1 @try_crossjump_to_edge(i32 %20, %struct.edge_def* %21, %struct.edge_def* %22)
  br i1 %call, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.17
  store i8 1, i8* %changed, align 1
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 4
  %24 = load %struct.edge_def*, %struct.edge_def** %pred19, align 8
  store %struct.edge_def* %24, %struct.edge_def** %nexte, align 8
  br label %for.inc.48

if.end.20:                                        ; preds = %if.end.17
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %for.body.12
  %25 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 2
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 5
  %27 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp22 = icmp ne %struct.edge_def* %27, %28
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  br label %for.inc.48

if.end.24:                                        ; preds = %if.end.21
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 4
  %30 = load %struct.edge_def*, %struct.edge_def** %pred25, align 8
  store %struct.edge_def* %30, %struct.edge_def** %e2, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.46, %if.end.24
  %31 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %tobool27 = icmp ne %struct.edge_def* %31, null
  br i1 %tobool27, label %for.body.28, label %for.end.47

for.body.28:                                      ; preds = %for.cond.26
  %32 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %pred_next29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 0
  %33 = load %struct.edge_def*, %struct.edge_def** %pred_next29, align 8
  store %struct.edge_def* %33, %struct.edge_def** %nexte2, align 8
  %34 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp30 = icmp eq %struct.edge_def* %34, %35
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.28
  br label %for.inc.46

if.end.32:                                        ; preds = %for.body.28
  %36 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %37 = load %struct.edge_def*, %struct.edge_def** %fallthru, align 8
  %cmp33 = icmp eq %struct.edge_def* %36, %37
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.32
  br label %for.inc.46

if.end.35:                                        ; preds = %if.end.32
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src36 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 2
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %src36, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 11
  %40 = load i32, i32* %index, align 4
  %41 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %src37 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 2
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %src37, align 8
  %index38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index38, align 4
  %cmp39 = icmp sgt i32 %40, %43
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.35
  br label %for.inc.46

if.end.41:                                        ; preds = %if.end.35
  %44 = load i32, i32* %mode.addr, align 4
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %46 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %call42 = call zeroext i1 @try_crossjump_to_edge(i32 %44, %struct.edge_def* %45, %struct.edge_def* %46)
  br i1 %call42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.41
  store i8 1, i8* %changed, align 1
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 4
  %48 = load %struct.edge_def*, %struct.edge_def** %pred44, align 8
  store %struct.edge_def* %48, %struct.edge_def** %nexte, align 8
  br label %for.end.47

if.end.45:                                        ; preds = %if.end.41
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45, %if.then.40, %if.then.34, %if.then.31
  %49 = load %struct.edge_def*, %struct.edge_def** %nexte2, align 8
  store %struct.edge_def* %49, %struct.edge_def** %e2, align 8
  br label %for.cond.26

for.end.47:                                       ; preds = %if.then.43, %for.cond.26
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.end.47, %if.then.23, %if.then.18, %if.then.16
  %50 = load %struct.edge_def*, %struct.edge_def** %nexte, align 8
  store %struct.edge_def* %50, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.end.49:                                       ; preds = %for.cond.10
  %51 = load i8, i8* %changed, align 1
  %tobool50 = trunc i8 %51 to i1
  store i1 %tobool50, i1* %retval
  br label %return

return:                                           ; preds = %for.end.49, %if.then
  %52 = load i1, i1* %retval
  ret i1 %52
}

declare void @remove_fake_edges() #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

declare zeroext i1 @forwarder_block_p(%struct.basic_block_def*) #1

declare void @merge_blocks_nomove(%struct.basic_block_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal void @merge_blocks_move_successor_nojumps(%struct.basic_block_def* %a, %struct.basic_block_def* %b) #0 {
entry:
  %a.addr = alloca %struct.basic_block_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %barrier = alloca %struct.rtx_def*, align 8
  %real_b_end = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %a, %struct.basic_block_def** %a.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %real_b_end, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 1
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %barrier, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 2
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %tobool6 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 33
  br i1 %cmp13, label %land.lhs.true.14, label %if.end

land.lhs.true.14:                                 ; preds = %land.lhs.true.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 44
  br i1 %cmp23, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.14
  %17 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load30 = load i32, i32* %20, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 45
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.14
  %21 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 2
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 1
  store %struct.rtx_def* %22, %struct.rtx_def** %end36, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 1
  %25 = load %struct.rtx_def*, %struct.rtx_def** %end37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %barrier, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %land.lhs.true.7, %land.lhs.true.2, %land.lhs.true, %entry
  %27 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %tobool41 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %if.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load43 = load i32, i32* %29, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 35
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.42
  %30 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %call = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %30)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %land.lhs.true.42, %if.end
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 0
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 1
  %call49 = call zeroext i1 @squeeze_notes(%struct.rtx_def** %head, %struct.rtx_def** %end48)
  br i1 %call49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 724, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__FUNCTION__.merge_blocks_move_successor_nojumps, i32 0, i32 0)) #6
  unreachable

if.end.51:                                        ; preds = %if.end.47
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %head52, align 8
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 1
  %36 = load %struct.rtx_def*, %struct.rtx_def** %end53, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** %end54, align 8
  call void @reorder_insns_nobb(%struct.rtx_def* %34, %struct.rtx_def* %36, %struct.rtx_def* %38)
  %39 = load %struct.rtx_def*, %struct.rtx_def** %real_b_end, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 1
  store %struct.rtx_def* %39, %struct.rtx_def** %end55, align 8
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %41, %struct.basic_block_def* %42)
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 10
  %44 = load i8*, i8** %aux, align 8
  %45 = ptrtoint i8* %44 to i32
  %or = or i32 %45, 1
  %conv = zext i32 %or to i64
  %46 = inttoptr i64 %conv to i8*
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %aux56 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 10
  store i8* %46, i8** %aux56, align 8
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool57 = icmp ne %struct._IO_FILE* %48, null
  br i1 %tobool57, label %if.then.58, label %if.end.61

if.then.58:                                       ; preds = %if.end.51
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index, align 4
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %index59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 11
  %53 = load i32, i32* %index59, align 4
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %51, i32 %53)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.58, %if.end.51
  ret void
}

declare %struct.basic_block_def* @force_nonfallthru(%struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define internal void @notice_new_block(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.7

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 10
  %2 = load i8*, i8** %aux, align 8
  %3 = ptrtoint i8* %2 to i32
  %or = or i32 %3, 1
  %conv = zext i32 %or to i64
  %4 = inttoptr i64 %conv to i8*
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 10
  store i8* %4, i8** %aux1, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %6)
  br i1 %call, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 10
  %8 = load i8*, i8** %aux3, align 8
  %9 = ptrtoint i8* %8 to i32
  %or4 = or i32 %9, 2
  %conv5 = zext i32 %or4 to i64
  %10 = inttoptr i64 %conv5 to i8*
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %aux6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 10
  store i8* %10, i8** %aux6, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @merge_blocks_move_predecessor_nojumps(%struct.basic_block_def* %a, %struct.basic_block_def* %b) #0 {
entry:
  %a.addr = alloca %struct.basic_block_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %barrier = alloca %struct.rtx_def*, align 8
  %index = alloca i32, align 4
  store %struct.basic_block_def* %a, %struct.basic_block_def** %a.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %barrier, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 650, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__FUNCTION__.merge_blocks_move_predecessor_nojumps, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %call1 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %4)
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 0
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 1
  %call3 = call zeroext i1 @squeeze_notes(%struct.rtx_def** %head, %struct.rtx_def** %end2)
  br i1 %call3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i32 661, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__FUNCTION__.merge_blocks_move_predecessor_nojumps, i32 0, i32 0)) #6
  unreachable

if.end.5:                                         ; preds = %if.end
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end6, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head7, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp8 = icmp ne %struct.rtx_def* %8, %11
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.5
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %head10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 0
  %13 = load %struct.rtx_def*, %struct.rtx_def** %head10, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %end11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 1
  %15 = load %struct.rtx_def*, %struct.rtx_def** %end11, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 0
  %17 = load %struct.rtx_def*, %struct.rtx_def** %head12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  call void @reorder_insns_nobb(%struct.rtx_def* %13, %struct.rtx_def* %15, %struct.rtx_def* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.9, %if.end.5
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 10
  %20 = load i8*, i8** %aux, align 8
  %21 = ptrtoint i8* %20 to i32
  %or = or i32 %21, 1
  %conv = zext i32 %or to i64
  %22 = inttoptr i64 %conv to i8*
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %aux17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 10
  store i8* %22, i8** %aux17, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %24, null
  br i1 %tobool, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.end.16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %index19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index19, align 4
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 11
  %29 = load i32, i32* %index20, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0), i32 %27, i32 %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.end.16
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index23, align 4
  %idxprom = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx24 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  store %struct.basic_block_def* %30, %struct.basic_block_def** %arrayidx24, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index25, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data27 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %bb28 = bitcast %union.varray_data_tag* %data27 to [1 x %struct.basic_block_def*]*
  %arrayidx29 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb28, i32 0, i64 %idxprom26
  store %struct.basic_block_def* %34, %struct.basic_block_def** %arrayidx29, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %index30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 11
  %39 = load i32, i32* %index30, align 4
  store i32 %39, i32* %index, align 4
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 11
  %41 = load i32, i32* %index31, align 4
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  store i32 %41, i32* %index32, align 4
  %43 = load i32, i32* %index, align 4
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  store i32 %43, i32* %index33, align 4
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %a.addr, align 8
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %45, %struct.basic_block_def* %46)
  ret void
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare zeroext i1 @squeeze_notes(%struct.rtx_def**, %struct.rtx_def**) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare void @reorder_insns_nobb(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare zeroext i1 @can_fallthru(%struct.basic_block_def*, %struct.basic_block_def*) #1

declare i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @block_label(%struct.basic_block_def*) #1

declare void @update_br_prob_note(%struct.basic_block_def*) #1

declare void @tidy_fallthru_edge(%struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.edge_def* @thread_jump(i32 %mode, %struct.edge_def* %e, %struct.basic_block_def* %b) #0 {
entry:
  %retval = alloca %struct.edge_def*, align 8
  %mode.addr = alloca i32, align 4
  %e.addr = alloca %struct.edge_def*, align 8
  %b.addr = alloca %struct.basic_block_def*, align 8
  %set1 = alloca %struct.rtx_def*, align 8
  %set2 = alloca %struct.rtx_def*, align 8
  %cond1 = alloca %struct.rtx_def*, align 8
  %cond2 = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %reversed_code2 = alloca i32, align 4
  %reverse1 = alloca i8, align 1
  %i = alloca i32, align 4
  %nonequal = alloca %struct.bitmap_head_def*, align 8
  %failed = alloca i8, align 1
  %pat = alloca %struct.rtx_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store i8 0, i8* %reverse1, align 1
  store i8 0, i8* %failed, align 1
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 5
  %2 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 1
  %3 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool = icmp ne %struct.edge_def* %3, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %succ2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ2, align 8
  %succ_next3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 1
  %7 = load %struct.edge_def*, %struct.edge_def** %succ_next3, align 8
  %succ_next4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 1
  %8 = load %struct.edge_def*, %struct.edge_def** %succ_next4, align 8
  %tobool5 = icmp ne %struct.edge_def* %8, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 5
  %10 = load %struct.edge_def*, %struct.edge_def** %succ6, align 8
  %tobool7 = icmp ne %struct.edge_def* %10, null
  br i1 %tobool7, label %lor.lhs.false.8, label %if.then.17

lor.lhs.false.8:                                  ; preds = %if.end
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 5
  %12 = load %struct.edge_def*, %struct.edge_def** %succ9, align 8
  %succ_next10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next10, align 8
  %tobool11 = icmp ne %struct.edge_def* %13, null
  br i1 %tobool11, label %lor.lhs.false.12, label %if.then.17

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 5
  %15 = load %struct.edge_def*, %struct.edge_def** %succ13, align 8
  %succ_next14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 1
  %16 = load %struct.edge_def*, %struct.edge_def** %succ_next14, align 8
  %succ_next15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 1
  %17 = load %struct.edge_def*, %struct.edge_def** %succ_next15, align 8
  %tobool16 = icmp ne %struct.edge_def* %17, null
  br i1 %tobool16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.12, %lor.lhs.false.8, %if.end
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.18:                                        ; preds = %lor.lhs.false.12
  %18 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 2
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %src19, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 1
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %20)
  %tobool20 = icmp ne i32 %call, 0
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.29

lor.lhs.false.21:                                 ; preds = %if.end.18
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end22, align 8
  %call23 = call i32 @any_condjump_p(%struct.rtx_def* %22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.29

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %end26, align 8
  %call27 = call i32 @onlyjump_p(%struct.rtx_def* %24)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.25, %lor.lhs.false.21, %if.end.18
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false.25
  %25 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 2
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src31, align 8
  %end32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 1
  %27 = load %struct.rtx_def*, %struct.rtx_def** %end32, align 8
  %call33 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %27)
  store %struct.rtx_def* %call33, %struct.rtx_def** %set1, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end34, align 8
  %call35 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %29)
  store %struct.rtx_def* %call35, %struct.rtx_def** %set2, align 8
  %30 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 6
  %31 = load i32, i32* %flags, align 4
  %and = and i32 %31, 1
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  %32 = load %struct.rtx_def*, %struct.rtx_def** %set1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp39 = icmp eq %struct.rtx_def* %34, %35
  %conv40 = zext i1 %cmp39 to i32
  %cmp41 = icmp ne i32 %conv, %conv40
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.30
  store i8 1, i8* %reverse1, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.30
  %36 = load %struct.rtx_def*, %struct.rtx_def** %set1, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %cond1, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %cond2, align 8
  %42 = load i8, i8* %reverse1, align 1
  %tobool57 = trunc i8 %42 to i1
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.44
  %43 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %44 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src59 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i32 0, i32 2
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %src59, align 8
  %end60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 1
  %46 = load %struct.rtx_def*, %struct.rtx_def** %end60, align 8
  %call61 = call i32 @reversed_comparison_code(%struct.rtx_def* %43, %struct.rtx_def* %46)
  store i32 %call61, i32* %code1, align 4
  br label %if.end.62

if.else:                                          ; preds = %if.end.44
  %47 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load = load i32, i32* %48, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code1, align 4
  br label %if.end.62

if.end.62:                                        ; preds = %if.else, %if.then.58
  %49 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load63 = load i32, i32* %50, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  store i32 %bf.clear64, i32* %code2, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %end65, align 8
  %call66 = call i32 @reversed_comparison_code(%struct.rtx_def* %51, %struct.rtx_def* %53)
  store i32 %call66, i32* %reversed_code2, align 4
  %54 = load i32, i32* %code1, align 4
  %55 = load i32, i32* %code2, align 4
  %call67 = call i32 @comparison_dominates_p(i32 %54, i32 %55)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.72, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.62
  %56 = load i32, i32* %code1, align 4
  %57 = load i32, i32* %reversed_code2, align 4
  %call69 = call i32 @comparison_dominates_p(i32 %56, i32 %57)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.end.72, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.72:                                        ; preds = %land.lhs.true, %if.end.62
  %58 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %call79 = call i32 @rtx_equal_p(%struct.rtx_def* %59, %struct.rtx_def* %61)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %lor.lhs.false.81, label %if.then.90

lor.lhs.false.81:                                 ; preds = %if.end.72
  %62 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %call88 = call i32 @rtx_equal_p(%struct.rtx_def* %63, %struct.rtx_def* %65)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %lor.lhs.false.81, %if.end.72
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.91:                                        ; preds = %lor.lhs.false.81
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 0
  %67 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 2
  %rtx94 = bitcast %union.rtunion_def* %arrayidx93 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx94, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.91
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 1
  %71 = load %struct.rtx_def*, %struct.rtx_def** %end95, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 2
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %cmp99 = icmp ne %struct.rtx_def* %69, %72
  br i1 %cmp99, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load101 = load i32, i32* %74, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %idxprom = sext i32 %bf.clear102 to i64
  %arrayidx103 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %75 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %75 to i32
  %cmp105 = icmp eq i32 %conv104, 105
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.114

land.lhs.true.107:                                ; preds = %for.body
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 3
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %call111 = call i32 @side_effects_p(%struct.rtx_def* %77)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.107
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

if.end.114:                                       ; preds = %land.lhs.true.107, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.114
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 2
  %rtx117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx117, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @cselib_init()
  %80 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %80, i32 0, i32 2
  %81 = load %struct.basic_block_def*, %struct.basic_block_def** %src118, align 8
  %head119 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %81, i32 0, i32 0
  %82 = load %struct.rtx_def*, %struct.rtx_def** %head119, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 2
  %rtx122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx122, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %insn, align 8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.141, %for.end
  %84 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %85 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src124 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %85, i32 0, i32 2
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %src124, align 8
  %end125 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %86, i32 0, i32 1
  %87 = load %struct.rtx_def*, %struct.rtx_def** %end125, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 2
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  %cmp129 = icmp ne %struct.rtx_def* %84, %88
  br i1 %cmp129, label %for.body.131, label %for.end.145

for.body.131:                                     ; preds = %for.cond.123
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %90 = bitcast %struct.rtx_def* %89 to i32*
  %bf.load132 = load i32, i32* %90, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %idxprom134 = sext i32 %bf.clear133 to i64
  %arrayidx135 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom134
  %91 = load i8, i8* %arrayidx135, align 1
  %conv136 = sext i8 %91 to i32
  %cmp137 = icmp eq i32 %conv136, 105
  br i1 %cmp137, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %for.body.131
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @cselib_process_insn(%struct.rtx_def* %92)
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.139, %for.body.131
  br label %for.inc.141

for.inc.141:                                      ; preds = %if.end.140
  %93 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 2
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %insn, align 8
  br label %for.cond.123

for.end.145:                                      ; preds = %for.cond.123
  %call146 = call noalias i8* @xmalloc(i64 24)
  %95 = bitcast i8* %call146 to %struct.bitmap_head_def*
  %call147 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %95)
  store %struct.bitmap_head_def* %call147, %struct.bitmap_head_def** %nonequal, align 8
  %96 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %96)
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %head148 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %97, i32 0, i32 0
  %98 = load %struct.rtx_def*, %struct.rtx_def** %head148, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 2
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %insn, align 8
  br label %for.cond.152

for.cond.152:                                     ; preds = %for.inc.205, %for.end.145
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %end153 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 1
  %102 = load %struct.rtx_def*, %struct.rtx_def** %end153, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 2
  %rtx156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx156, align 8
  %cmp157 = icmp ne %struct.rtx_def* %100, %103
  br i1 %cmp157, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.152
  %104 = load i8, i8* %failed, align 1
  %tobool159 = trunc i8 %104 to i1
  %lnot = xor i1 %tobool159, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.152
  %105 = phi i1 [ false, %for.cond.152 ], [ %lnot, %land.rhs ]
  br i1 %105, label %for.body.160, label %for.end.209

for.body.160:                                     ; preds = %land.end
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load161 = load i32, i32* %107, align 8
  %bf.clear162 = and i32 %bf.load161, 65535
  %idxprom163 = sext i32 %bf.clear162 to i64
  %arrayidx164 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom163
  %108 = load i8, i8* %arrayidx164, align 1
  %conv165 = sext i8 %108 to i32
  %cmp166 = icmp eq i32 %conv165, 105
  br i1 %cmp166, label %if.then.168, label %if.end.204

if.then.168:                                      ; preds = %for.body.160
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld169 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld169, i32 0, i64 3
  %rtx171 = bitcast %union.rtunion_def* %arrayidx170 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx171, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %pat, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load172 = load i32, i32* %112, align 8
  %bf.clear173 = and i32 %bf.load172, 65535
  %cmp174 = icmp eq i32 %bf.clear173, 39
  br i1 %cmp174, label %if.then.176, label %if.else.195

if.then.176:                                      ; preds = %if.then.168
  store i32 0, i32* %i, align 4
  br label %for.cond.177

for.cond.177:                                     ; preds = %for.inc.193, %if.then.176
  %113 = load i32, i32* %i, align 4
  %114 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtvec_def**
  %115 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %115, i32 0, i32 0
  %116 = load i32, i32* %num_elem, align 4
  %cmp180 = icmp slt i32 %113, %116
  br i1 %cmp180, label %for.body.182, label %for.end.194

for.body.182:                                     ; preds = %for.cond.177
  %117 = load i32, i32* %i, align 4
  %idxprom183 = sext i32 %117 to i64
  %118 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 0
  %rtvec186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtvec_def**
  %119 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec186, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %119, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom183
  %120 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx187, align 8
  %121 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %call188 = call zeroext i1 @mark_effect(%struct.rtx_def* %120, %struct.bitmap_head_def* %121)
  %conv189 = zext i1 %call188 to i32
  %122 = load i8, i8* %failed, align 1
  %tobool190 = trunc i8 %122 to i1
  %conv191 = zext i1 %tobool190 to i32
  %or = or i32 %conv191, %conv189
  %tobool192 = icmp ne i32 %or, 0
  %frombool = zext i1 %tobool192 to i8
  store i8 %frombool, i8* %failed, align 1
  br label %for.inc.193

for.inc.193:                                      ; preds = %for.body.182
  %123 = load i32, i32* %i, align 4
  %inc = add nsw i32 %123, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.177

for.end.194:                                      ; preds = %for.cond.177
  br label %if.end.203

if.else.195:                                      ; preds = %if.then.168
  %124 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %125 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %call196 = call zeroext i1 @mark_effect(%struct.rtx_def* %124, %struct.bitmap_head_def* %125)
  %conv197 = zext i1 %call196 to i32
  %126 = load i8, i8* %failed, align 1
  %tobool198 = trunc i8 %126 to i1
  %conv199 = zext i1 %tobool198 to i32
  %or200 = or i32 %conv199, %conv197
  %tobool201 = icmp ne i32 %or200, 0
  %frombool202 = zext i1 %tobool201 to i8
  store i8 %frombool202, i8* %failed, align 1
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.195, %for.end.194
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %for.body.160
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @cselib_process_insn(%struct.rtx_def* %127)
  br label %for.inc.205

for.inc.205:                                      ; preds = %if.end.204
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 2
  %rtx208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx208, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %insn, align 8
  br label %for.cond.152

for.end.209:                                      ; preds = %land.end
  %130 = load i8, i8* %failed, align 1
  %tobool210 = trunc i8 %130 to i1
  br i1 %tobool210, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %for.end.209
  br label %failed_exit

if.end.212:                                       ; preds = %for.end.209
  %131 = load i32, i32* %mode.addr, align 4
  %and213 = and i32 %131, 32
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.215, label %if.end.217

if.then.215:                                      ; preds = %if.end.212
  %132 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %133 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %134 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %134, i32 0, i32 9
  %135 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %call216 = call i32 @bitmap_operation(%struct.bitmap_head_def* %132, %struct.bitmap_head_def* %133, %struct.bitmap_head_def* %135, i32 0)
  br label %if.end.217

if.end.217:                                       ; preds = %if.then.215, %if.end.212
  br label %do.body

do.body:                                          ; preds = %if.end.217
  %136 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %136, i32 0, i32 0
  %137 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %137, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %138 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp218 = icmp ne %struct.bitmap_element_def* %138, null
  br i1 %cmp218, label %land.rhs.220, label %land.end.223

land.rhs.220:                                     ; preds = %while.cond
  %139 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %139, i32 0, i32 2
  %140 = load i32, i32* %indx, align 4
  %141 = load i32, i32* %indx_, align 4
  %cmp221 = icmp ult i32 %140, %141
  br label %land.end.223

land.end.223:                                     ; preds = %land.rhs.220, %while.cond
  %142 = phi i1 [ false, %while.cond ], [ %cmp221, %land.rhs.220 ]
  br i1 %142, label %while.body, label %while.end

while.body:                                       ; preds = %land.end.223
  %143 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %143, i32 0, i32 0
  %144 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %144, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end.223
  %145 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp224 = icmp ne %struct.bitmap_element_def* %145, null
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.231

land.lhs.true.226:                                ; preds = %while.end
  %146 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx227 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %146, i32 0, i32 2
  %147 = load i32, i32* %indx227, align 4
  %148 = load i32, i32* %indx_, align 4
  %cmp228 = icmp ne i32 %147, %148
  br i1 %cmp228, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %land.lhs.true.226
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %land.lhs.true.226, %while.end
  br label %for.cond.232

for.cond.232:                                     ; preds = %for.inc.265, %if.end.231
  %149 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp233 = icmp ne %struct.bitmap_element_def* %149, null
  br i1 %cmp233, label %for.body.235, label %for.end.267

for.body.235:                                     ; preds = %for.cond.232
  br label %for.cond.236

for.cond.236:                                     ; preds = %for.inc.262, %for.body.235
  %150 = load i32, i32* %word_num_, align 4
  %cmp237 = icmp ult i32 %150, 2
  br i1 %cmp237, label %for.body.239, label %for.end.264

for.body.239:                                     ; preds = %for.cond.236
  %151 = load i32, i32* %word_num_, align 4
  %idxprom240 = zext i32 %151 to i64
  %152 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %152, i32 0, i32 3
  %arrayidx241 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom240
  %153 = load i64, i64* %arrayidx241, align 8
  store i64 %153, i64* %word_, align 8
  %154 = load i64, i64* %word_, align 8
  %cmp242 = icmp ne i64 %154, 0
  br i1 %cmp242, label %if.then.244, label %if.end.261

if.then.244:                                      ; preds = %for.body.239
  br label %for.cond.245

for.cond.245:                                     ; preds = %for.inc.258, %if.then.244
  %155 = load i32, i32* %bit_num_, align 4
  %cmp246 = icmp ult i32 %155, 64
  br i1 %cmp246, label %for.body.248, label %for.end.260

for.body.248:                                     ; preds = %for.cond.245
  %156 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %156 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %157 = load i64, i64* %word_, align 8
  %158 = load i64, i64* %mask_, align 8
  %and249 = and i64 %157, %158
  %cmp250 = icmp ne i64 %and249, 0
  br i1 %cmp250, label %if.then.252, label %if.end.257

if.then.252:                                      ; preds = %for.body.248
  %159 = load i64, i64* %mask_, align 8
  %neg = xor i64 %159, -1
  %160 = load i64, i64* %word_, align 8
  %and253 = and i64 %160, %neg
  store i64 %and253, i64* %word_, align 8
  %161 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx254 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %161, i32 0, i32 2
  %162 = load i32, i32* %indx254, align 4
  %mul = mul i32 %162, 128
  %163 = load i32, i32* %word_num_, align 4
  %mul255 = mul i32 %163, 64
  %add = add i32 %mul, %mul255
  %164 = load i32, i32* %bit_num_, align 4
  %add256 = add i32 %add, %164
  store i32 %add256, i32* %i, align 4
  br label %failed_exit

if.end.257:                                       ; preds = %for.body.248
  br label %for.inc.258

for.inc.258:                                      ; preds = %if.end.257
  %165 = load i32, i32* %bit_num_, align 4
  %inc259 = add i32 %165, 1
  store i32 %inc259, i32* %bit_num_, align 4
  br label %for.cond.245

for.end.260:                                      ; preds = %for.cond.245
  br label %if.end.261

if.end.261:                                       ; preds = %for.end.260, %for.body.239
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.262

for.inc.262:                                      ; preds = %if.end.261
  %166 = load i32, i32* %word_num_, align 4
  %inc263 = add i32 %166, 1
  store i32 %inc263, i32* %word_num_, align 4
  br label %for.cond.236

for.end.264:                                      ; preds = %for.cond.236
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.265

for.inc.265:                                      ; preds = %for.end.264
  %167 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next266 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %167, i32 0, i32 0
  %168 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next266, align 8
  store %struct.bitmap_element_def* %168, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.232

for.end.267:                                      ; preds = %for.cond.232
  br label %do.end

do.end:                                           ; preds = %for.end.267
  br label %do.body.268

do.body.268:                                      ; preds = %do.end
  %169 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %tobool269 = icmp ne %struct.bitmap_head_def* %169, null
  br i1 %tobool269, label %if.then.270, label %if.end.271

if.then.270:                                      ; preds = %do.body.268
  %170 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %170)
  %171 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %172 = bitcast %struct.bitmap_head_def* %171 to i8*
  call void @free(i8* %172) #5
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %nonequal, align 8
  br label %if.end.271

if.end.271:                                       ; preds = %if.then.270, %do.body.268
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  call void @cselib_finish()
  %173 = load i32, i32* %code1, align 4
  %174 = load i32, i32* %code2, align 4
  %call273 = call i32 @comparison_dominates_p(i32 %173, i32 %174)
  %cmp274 = icmp ne i32 %call273, 0
  %conv275 = zext i1 %cmp274 to i32
  %175 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld276, i32 0, i64 1
  %rtx278 = bitcast %union.rtunion_def* %arrayidx277 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx278, align 8
  %fld279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld279, i32 0, i64 1
  %rtx281 = bitcast %union.rtunion_def* %arrayidx280 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx281, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp282 = icmp eq %struct.rtx_def* %177, %178
  %conv283 = zext i1 %cmp282 to i32
  %cmp284 = icmp ne i32 %conv275, %conv283
  br i1 %cmp284, label %if.then.286, label %if.else.294

if.then.286:                                      ; preds = %do.end.272
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ287 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 5
  %180 = load %struct.edge_def*, %struct.edge_def** %succ287, align 8
  %flags288 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %180, i32 0, i32 6
  %181 = load i32, i32* %flags288, align 4
  %and289 = and i32 %181, 1
  %tobool290 = icmp ne i32 %and289, 0
  br i1 %tobool290, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.286
  %182 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ291 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %182, i32 0, i32 5
  %183 = load %struct.edge_def*, %struct.edge_def** %succ291, align 8
  %succ_next292 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %183, i32 0, i32 1
  %184 = load %struct.edge_def*, %struct.edge_def** %succ_next292, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.286
  %185 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ293 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %185, i32 0, i32 5
  %186 = load %struct.edge_def*, %struct.edge_def** %succ293, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %184, %cond.true ], [ %186, %cond.false ]
  store %struct.edge_def* %cond, %struct.edge_def** %retval
  br label %return

if.else.294:                                      ; preds = %do.end.272
  %187 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ295 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %187, i32 0, i32 5
  %188 = load %struct.edge_def*, %struct.edge_def** %succ295, align 8
  %flags296 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %188, i32 0, i32 6
  %189 = load i32, i32* %flags296, align 4
  %and297 = and i32 %189, 1
  %tobool298 = icmp ne i32 %and297, 0
  br i1 %tobool298, label %cond.true.299, label %cond.false.301

cond.true.299:                                    ; preds = %if.else.294
  %190 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ300 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %190, i32 0, i32 5
  %191 = load %struct.edge_def*, %struct.edge_def** %succ300, align 8
  br label %cond.end.304

cond.false.301:                                   ; preds = %if.else.294
  %192 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %succ302 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %192, i32 0, i32 5
  %193 = load %struct.edge_def*, %struct.edge_def** %succ302, align 8
  %succ_next303 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %193, i32 0, i32 1
  %194 = load %struct.edge_def*, %struct.edge_def** %succ_next303, align 8
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.301, %cond.true.299
  %cond305 = phi %struct.edge_def* [ %191, %cond.true.299 ], [ %194, %cond.false.301 ]
  store %struct.edge_def* %cond305, %struct.edge_def** %retval
  br label %return

failed_exit:                                      ; preds = %if.then.252, %if.then.211
  br label %do.body.306

do.body.306:                                      ; preds = %failed_exit
  %195 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %tobool307 = icmp ne %struct.bitmap_head_def* %195, null
  br i1 %tobool307, label %if.then.308, label %if.end.309

if.then.308:                                      ; preds = %do.body.306
  %196 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %196)
  %197 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal, align 8
  %198 = bitcast %struct.bitmap_head_def* %197 to i8*
  call void @free(i8* %198) #5
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %nonequal, align 8
  br label %if.end.309

if.end.309:                                       ; preds = %if.then.308, %do.body.306
  br label %do.end.310

do.end.310:                                       ; preds = %if.end.309
  call void @cselib_finish()
  store %struct.edge_def* null, %struct.edge_def** %retval
  br label %return

return:                                           ; preds = %do.end.310, %cond.end.304, %cond.end, %if.then.113, %if.then.90, %if.then.71, %if.then.29, %if.then.17, %if.then
  %199 = load %struct.edge_def*, %struct.edge_def** %retval
  ret %struct.edge_def* %199
}

declare noalias i8* @xmalloc(i64) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def*, %struct.basic_block_def*) #1

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

declare i32 @reversed_comparison_code(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @comparison_dominates_p(i32, i32) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

declare void @cselib_init() #1

declare void @cselib_process_insn(%struct.rtx_def*) #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @mark_effect(%struct.rtx_def* %exp, %struct.bitmap_head_def* %nonequal) #0 {
entry:
  %retval = alloca i1, align 1
  %exp.addr = alloca %struct.rtx_def*, align 8
  %nonequal.addr = alloca %struct.bitmap_head_def*, align 8
  %regno = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  %n = alloca i32, align 4
  %n98 = alloca i32, align 4
  store %struct.rtx_def* %exp, %struct.rtx_def** %exp.addr, align 8
  store %struct.bitmap_head_def* %nonequal, %struct.bitmap_head_def** %nonequal.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 49, label %sw.bb
    i32 47, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp eq i32 %bf.clear2, 61
  br i1 %cmp, label %if.then, label %if.end.68

if.then:                                          ; preds = %sw.bb
  %5 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %dest, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %8 = load i32, i32* %rtuint, align 4
  store i32 %8, i32* %regno, align 4
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal.addr, align 8
  %10 = load i32, i32* %regno, align 4
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %9, i32 %10)
  %11 = load i32, i32* %regno, align 4
  %cmp8 = icmp slt i32 %11, 53
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %12 = load i32, i32* %regno, align 4
  %cmp10 = icmp sge i32 %12, 8
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.9
  %13 = load i32, i32* %regno, align 4
  %cmp11 = icmp sle i32 %13, 15
  br i1 %cmp11, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.9
  %14 = load i32, i32* %regno, align 4
  %cmp12 = icmp sge i32 %14, 21
  br i1 %cmp12, label %land.lhs.true.13, label %lor.lhs.false.15

land.lhs.true.13:                                 ; preds = %lor.lhs.false
  %15 = load i32, i32* %regno, align 4
  %cmp14 = icmp sle i32 %15, 28
  br i1 %cmp14, label %cond.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %land.lhs.true.13, %lor.lhs.false
  %16 = load i32, i32* %regno, align 4
  %cmp16 = icmp sge i32 %16, 45
  br i1 %cmp16, label %land.lhs.true.17, label %lor.lhs.false.19

land.lhs.true.17:                                 ; preds = %lor.lhs.false.15
  %17 = load i32, i32* %regno, align 4
  %cmp18 = icmp sle i32 %17, 52
  br i1 %cmp18, label %cond.true, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %land.lhs.true.17, %lor.lhs.false.15
  %18 = load i32, i32* %regno, align 4
  %cmp20 = icmp sge i32 %18, 29
  br i1 %cmp20, label %land.lhs.true.21, label %cond.false

land.lhs.true.21:                                 ; preds = %lor.lhs.false.19
  %19 = load i32, i32* %regno, align 4
  %cmp22 = icmp sle i32 %19, 36
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.21, %land.lhs.true.17, %land.lhs.true.13, %land.lhs.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load23 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load23, 16
  %bf.clear24 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear24 to i64
  %arrayidx25 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp eq i32 %22, 5
  br i1 %cmp26, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load27 = load i32, i32* %24, align 8
  %bf.lshr28 = lshr i32 %bf.load27, 16
  %bf.clear29 = and i32 %bf.lshr28, 255
  %idxprom30 = sext i32 %bf.clear29 to i64
  %arrayidx31 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom30
  %25 = load i32, i32* %arrayidx31, align 4
  %cmp32 = icmp eq i32 %25, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %26 = phi i1 [ true, %cond.true ], [ %cmp32, %lor.rhs ]
  %cond = select i1 %26, i32 2, i32 1
  br label %cond.end.63

cond.false:                                       ; preds = %land.lhs.true.21, %lor.lhs.false.19
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load33 = load i32, i32* %28, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  %cmp36 = icmp eq i32 %bf.clear35, 18
  br i1 %cmp36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %cond.false
  %29 = load i32, i32* @target_flags, align 4
  %and = and i32 %29, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond38 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.61

cond.false.39:                                    ; preds = %cond.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load40 = load i32, i32* %31, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  %cmp43 = icmp eq i32 %bf.clear42, 24
  br i1 %cmp43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.false.39
  %32 = load i32, i32* @target_flags, align 4
  %and45 = and i32 %32, 33554432
  %tobool46 = icmp ne i32 %and45, 0
  %cond47 = select i1 %tobool46, i32 4, i32 6
  br label %cond.end

cond.false.48:                                    ; preds = %cond.false.39
  %33 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load49 = load i32, i32* %34, align 8
  %bf.lshr50 = lshr i32 %bf.load49, 16
  %bf.clear51 = and i32 %bf.lshr50, 255
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom52
  %35 = load i8, i8* %arrayidx53, align 1
  %conv = zext i8 %35 to i32
  %36 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %36, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 8, i32 4
  %add = add nsw i32 %conv, %cond56
  %sub = sub nsw i32 %add, 1
  %37 = load i32, i32* @target_flags, align 4
  %and57 = and i32 %37, 33554432
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
  store i32 %cond64, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end.63
  %38 = load i32, i32* %n, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %n, align 4
  %cmp65 = icmp sgt i32 %dec, 0
  br i1 %cmp65, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal.addr, align 8
  %40 = load i32, i32* %regno, align 4
  %41 = load i32, i32* %n, align 4
  %add67 = add nsw i32 %40, %41
  call void @bitmap_clear_bit(%struct.bitmap_head_def* %39, i32 %add67)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  br label %if.end.68

if.end.68:                                        ; preds = %if.end, %sw.bb
  store i1 false, i1* %retval
  br label %return

sw.bb.69:                                         ; preds = %entry
  %42 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 1
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %call = call i32 @rtx_equal_for_cselib_p(%struct.rtx_def* %43, %struct.rtx_def* %45)
  %tobool76 = icmp ne i32 %call, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %sw.bb.69
  store i1 false, i1* %retval
  br label %return

if.end.78:                                        ; preds = %sw.bb.69
  %46 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %dest, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp82 = icmp eq %struct.rtx_def* %48, %49
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.78
  store i1 false, i1* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.78
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load86 = load i32, i32* %51, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 61
  br i1 %cmp88, label %if.end.91, label %if.then.90

if.then.90:                                       ; preds = %if.end.85
  store i1 true, i1* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.85
  %52 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtuint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %53 = load i32, i32* %rtuint94, align 4
  store i32 %53, i32* %regno, align 4
  %54 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal.addr, align 8
  %55 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %54, i32 %55)
  %56 = load i32, i32* %regno, align 4
  %cmp95 = icmp slt i32 %56, 53
  br i1 %cmp95, label %if.then.97, label %if.end.189

if.then.97:                                       ; preds = %if.end.91
  %57 = load i32, i32* %regno, align 4
  %cmp99 = icmp sge i32 %57, 8
  br i1 %cmp99, label %land.lhs.true.101, label %lor.lhs.false.104

land.lhs.true.101:                                ; preds = %if.then.97
  %58 = load i32, i32* %regno, align 4
  %cmp102 = icmp sle i32 %58, 15
  br i1 %cmp102, label %cond.true.122, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %land.lhs.true.101, %if.then.97
  %59 = load i32, i32* %regno, align 4
  %cmp105 = icmp sge i32 %59, 21
  br i1 %cmp105, label %land.lhs.true.107, label %lor.lhs.false.110

land.lhs.true.107:                                ; preds = %lor.lhs.false.104
  %60 = load i32, i32* %regno, align 4
  %cmp108 = icmp sle i32 %60, 28
  br i1 %cmp108, label %cond.true.122, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.107, %lor.lhs.false.104
  %61 = load i32, i32* %regno, align 4
  %cmp111 = icmp sge i32 %61, 45
  br i1 %cmp111, label %land.lhs.true.113, label %lor.lhs.false.116

land.lhs.true.113:                                ; preds = %lor.lhs.false.110
  %62 = load i32, i32* %regno, align 4
  %cmp114 = icmp sle i32 %62, 52
  br i1 %cmp114, label %cond.true.122, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %land.lhs.true.113, %lor.lhs.false.110
  %63 = load i32, i32* %regno, align 4
  %cmp117 = icmp sge i32 %63, 29
  br i1 %cmp117, label %land.lhs.true.119, label %cond.false.140

land.lhs.true.119:                                ; preds = %lor.lhs.false.116
  %64 = load i32, i32* %regno, align 4
  %cmp120 = icmp sle i32 %64, 36
  br i1 %cmp120, label %cond.true.122, label %cond.false.140

cond.true.122:                                    ; preds = %land.lhs.true.119, %land.lhs.true.113, %land.lhs.true.107, %land.lhs.true.101
  %65 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load123 = load i32, i32* %66, align 8
  %bf.lshr124 = lshr i32 %bf.load123, 16
  %bf.clear125 = and i32 %bf.lshr124, 255
  %idxprom126 = sext i32 %bf.clear125 to i64
  %arrayidx127 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom126
  %67 = load i32, i32* %arrayidx127, align 4
  %cmp128 = icmp eq i32 %67, 5
  br i1 %cmp128, label %lor.end.138, label %lor.rhs.130

lor.rhs.130:                                      ; preds = %cond.true.122
  %68 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load131 = load i32, i32* %69, align 8
  %bf.lshr132 = lshr i32 %bf.load131, 16
  %bf.clear133 = and i32 %bf.lshr132, 255
  %idxprom134 = sext i32 %bf.clear133 to i64
  %arrayidx135 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom134
  %70 = load i32, i32* %arrayidx135, align 4
  %cmp136 = icmp eq i32 %70, 6
  br label %lor.end.138

lor.end.138:                                      ; preds = %lor.rhs.130, %cond.true.122
  %71 = phi i1 [ true, %cond.true.122 ], [ %cmp136, %lor.rhs.130 ]
  %cond139 = select i1 %71, i32 2, i32 1
  br label %cond.end.180

cond.false.140:                                   ; preds = %land.lhs.true.119, %lor.lhs.false.116
  %72 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load141 = load i32, i32* %73, align 8
  %bf.lshr142 = lshr i32 %bf.load141, 16
  %bf.clear143 = and i32 %bf.lshr142, 255
  %cmp144 = icmp eq i32 %bf.clear143, 18
  br i1 %cmp144, label %cond.true.146, label %cond.false.150

cond.true.146:                                    ; preds = %cond.false.140
  %74 = load i32, i32* @target_flags, align 4
  %and147 = and i32 %74, 33554432
  %tobool148 = icmp ne i32 %and147, 0
  %cond149 = select i1 %tobool148, i32 2, i32 3
  br label %cond.end.178

cond.false.150:                                   ; preds = %cond.false.140
  %75 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load151 = load i32, i32* %76, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 16
  %bf.clear153 = and i32 %bf.lshr152, 255
  %cmp154 = icmp eq i32 %bf.clear153, 24
  br i1 %cmp154, label %cond.true.156, label %cond.false.160

cond.true.156:                                    ; preds = %cond.false.150
  %77 = load i32, i32* @target_flags, align 4
  %and157 = and i32 %77, 33554432
  %tobool158 = icmp ne i32 %and157, 0
  %cond159 = select i1 %tobool158, i32 4, i32 6
  br label %cond.end.176

cond.false.160:                                   ; preds = %cond.false.150
  %78 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load161 = load i32, i32* %79, align 8
  %bf.lshr162 = lshr i32 %bf.load161, 16
  %bf.clear163 = and i32 %bf.lshr162, 255
  %idxprom164 = sext i32 %bf.clear163 to i64
  %arrayidx165 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom164
  %80 = load i8, i8* %arrayidx165, align 1
  %conv166 = zext i8 %80 to i32
  %81 = load i32, i32* @target_flags, align 4
  %and167 = and i32 %81, 33554432
  %tobool168 = icmp ne i32 %and167, 0
  %cond169 = select i1 %tobool168, i32 8, i32 4
  %add170 = add nsw i32 %conv166, %cond169
  %sub171 = sub nsw i32 %add170, 1
  %82 = load i32, i32* @target_flags, align 4
  %and172 = and i32 %82, 33554432
  %tobool173 = icmp ne i32 %and172, 0
  %cond174 = select i1 %tobool173, i32 8, i32 4
  %div175 = sdiv i32 %sub171, %cond174
  br label %cond.end.176

cond.end.176:                                     ; preds = %cond.false.160, %cond.true.156
  %cond177 = phi i32 [ %cond159, %cond.true.156 ], [ %div175, %cond.false.160 ]
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.end.176, %cond.true.146
  %cond179 = phi i32 [ %cond149, %cond.true.146 ], [ %cond177, %cond.end.176 ]
  br label %cond.end.180

cond.end.180:                                     ; preds = %cond.end.178, %lor.end.138
  %cond181 = phi i32 [ %cond139, %lor.end.138 ], [ %cond179, %cond.end.178 ]
  store i32 %cond181, i32* %n98, align 4
  br label %while.cond.182

while.cond.182:                                   ; preds = %while.body.186, %cond.end.180
  %83 = load i32, i32* %n98, align 4
  %dec183 = add nsw i32 %83, -1
  store i32 %dec183, i32* %n98, align 4
  %cmp184 = icmp sgt i32 %dec183, 0
  br i1 %cmp184, label %while.body.186, label %while.end.188

while.body.186:                                   ; preds = %while.cond.182
  %84 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %nonequal.addr, align 8
  %85 = load i32, i32* %regno, align 4
  %86 = load i32, i32* %n98, align 4
  %add187 = add nsw i32 %85, %86
  call void @bitmap_set_bit(%struct.bitmap_head_def* %84, i32 %add187)
  br label %while.cond.182

while.end.188:                                    ; preds = %while.cond.182
  br label %if.end.189

if.end.189:                                       ; preds = %while.end.188, %if.end.91
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %sw.default, %if.end.189, %if.then.90, %if.then.84, %if.then.77, %if.end.68
  %87 = load i1, i1* %retval
  ret i1 %87
}

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare void @cselib_finish() #1

declare void @bitmap_clear_bit(%struct.bitmap_head_def*, i32) #1

declare i32 @rtx_equal_for_cselib_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal zeroext i1 @try_crossjump_to_edge(i32 %mode, %struct.edge_def* %e1, %struct.edge_def* %e2) #0 {
entry:
  %retval = alloca i1, align 1
  %mode.addr = alloca i32, align 4
  %e1.addr = alloca %struct.edge_def*, align 8
  %e2.addr = alloca %struct.edge_def*, align 8
  %nmatch = alloca i32, align 4
  %src1 = alloca %struct.basic_block_def*, align 8
  %src2 = alloca %struct.basic_block_def*, align 8
  %redirect_to = alloca %struct.basic_block_def*, align 8
  %newpos1 = alloca %struct.rtx_def*, align 8
  %newpos2 = alloca %struct.rtx_def*, align 8
  %s = alloca %struct.edge_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %s2 = alloca %struct.edge_def*, align 8
  %d = alloca %struct.basic_block_def*, align 8
  %d2 = alloca %struct.basic_block_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.edge_def* %e1, %struct.edge_def** %e1.addr, align 8
  store %struct.edge_def* %e2, %struct.edge_def** %e2.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e1.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 2
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %src1, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %e2.addr, align 8
  %src3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 2
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src3, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %src2, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 4
  %5 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %tobool = icmp ne %struct.edge_def* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 10
  %7 = load i8*, i8** %aux, align 8
  %8 = ptrtoint i8* %7 to i32
  %and = and i32 %8, 2
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %pred5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 4
  %10 = load %struct.edge_def*, %struct.edge_def** %pred5, align 8
  store %struct.edge_def* %10, %struct.edge_def** %e1.addr, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e1.addr, align 8
  %src6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src6, align 8
  store %struct.basic_block_def* %12, %struct.basic_block_def** %src1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %pred7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 4
  %14 = load %struct.edge_def*, %struct.edge_def** %pred7, align 8
  %tobool8 = icmp ne %struct.edge_def* %14, null
  br i1 %tobool8, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %aux10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 10
  %16 = load i8*, i8** %aux10, align 8
  %17 = ptrtoint i8* %16 to i32
  %and11 = and i32 %17, 2
  %tobool12 = icmp ne i32 %and11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.9
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %pred14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 4
  %19 = load %struct.edge_def*, %struct.edge_def** %pred14, align 8
  store %struct.edge_def* %19, %struct.edge_def** %e2.addr, align 8
  %20 = load %struct.edge_def*, %struct.edge_def** %e2.addr, align 8
  %src15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 2
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src15, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %src2, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.9, %if.end
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %cmp = icmp eq %struct.basic_block_def* %22, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %cmp17 = icmp eq %struct.basic_block_def* %23, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.16
  store i1 false, i1* %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %cmp20 = icmp eq %struct.basic_block_def* %24, %25
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i1 false, i1* %retval
  br label %return

if.end.22:                                        ; preds = %if.end.19
  %26 = load %struct.edge_def*, %struct.edge_def** %e1.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 3
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %aux23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 10
  %28 = load i8*, i8** %aux23, align 8
  %29 = ptrtoint i8* %28 to i32
  %and24 = and i32 %29, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.33

land.lhs.true.26:                                 ; preds = %if.end.22
  %30 = load %struct.edge_def*, %struct.edge_def** %e1.addr, align 8
  %dest27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 3
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest27, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 5
  %32 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %dest28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 3
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest28, align 8
  %aux29 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 10
  %34 = load i8*, i8** %aux29, align 8
  %35 = ptrtoint i8* %34 to i32
  %and30 = and i32 %35, 2
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.26
  store i1 false, i1* %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.26, %if.end.22
  %36 = load %struct.edge_def*, %struct.edge_def** %e2.addr, align 8
  %dest34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 3
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest34, align 8
  %aux35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 10
  %38 = load i8*, i8** %aux35, align 8
  %39 = ptrtoint i8* %38 to i32
  %and36 = and i32 %39, 2
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.46

land.lhs.true.38:                                 ; preds = %if.end.33
  %40 = load %struct.edge_def*, %struct.edge_def** %e2.addr, align 8
  %dest39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 3
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %dest39, align 8
  %succ40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 5
  %42 = load %struct.edge_def*, %struct.edge_def** %succ40, align 8
  %dest41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 3
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %dest41, align 8
  %aux42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 10
  %44 = load i8*, i8** %aux42, align 8
  %45 = ptrtoint i8* %44 to i32
  %and43 = and i32 %45, 2
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.38
  store i1 false, i1* %retval
  br label %return

if.end.46:                                        ; preds = %land.lhs.true.38, %if.end.33
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %pred47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 4
  %47 = load %struct.edge_def*, %struct.edge_def** %pred47, align 8
  %tobool48 = icmp ne %struct.edge_def* %47, null
  br i1 %tobool48, label %lor.lhs.false.49, label %if.then.52

lor.lhs.false.49:                                 ; preds = %if.end.46
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %pred50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 4
  %49 = load %struct.edge_def*, %struct.edge_def** %pred50, align 8
  %tobool51 = icmp ne %struct.edge_def* %49, null
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %lor.lhs.false.49, %if.end.46
  store i1 false, i1* %retval
  br label %return

if.end.53:                                        ; preds = %lor.lhs.false.49
  %50 = load i32, i32* %mode.addr, align 4
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %call = call zeroext i1 @outgoing_edges_match(i32 %50, %struct.basic_block_def* %51, %struct.basic_block_def* %52)
  br i1 %call, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.53
  store i1 false, i1* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.53
  %53 = load i32, i32* %mode.addr, align 4
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %call56 = call i32 @flow_find_cross_jump(i32 %53, %struct.basic_block_def* %54, %struct.basic_block_def* %55, %struct.rtx_def** %newpos1, %struct.rtx_def** %newpos2)
  store i32 %call56, i32* %nmatch, align 4
  %56 = load i32, i32* %nmatch, align 4
  %tobool57 = icmp ne i32 %56, 0
  br i1 %tobool57, label %if.end.59, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  store i1 false, i1* %retval
  br label %return

if.end.59:                                        ; preds = %if.end.55
  %57 = load %struct.rtx_def*, %struct.rtx_def** %newpos2, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 0
  %59 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp60 = icmp eq %struct.rtx_def* %57, %59
  br i1 %cmp60, label %if.then.61, label %if.else

if.then.61:                                       ; preds = %if.end.59
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  store %struct.basic_block_def* %60, %struct.basic_block_def** %redirect_to, align 8
  br label %if.end.68

if.else:                                          ; preds = %if.end.59
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool62 = icmp ne %struct._IO_FILE* %61, null
  br i1 %tobool62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.else
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 11
  %64 = load i32, i32* %index, align 4
  %65 = load i32, i32* %nmatch, align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), i32 %64, i32 %65)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.else
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %newpos2, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call66 = call %struct.edge_def* @split_block(%struct.basic_block_def* %66, %struct.rtx_def* %68)
  %dest67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call66, i32 0, i32 3
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %dest67, align 8
  store %struct.basic_block_def* %69, %struct.basic_block_def** %redirect_to, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.65, %if.then.61
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool69 = icmp ne %struct._IO_FILE* %70, null
  br i1 %tobool69, label %if.then.70, label %if.end.74

if.then.70:                                       ; preds = %if.end.68
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %index71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 11
  %73 = load i32, i32* %index71, align 4
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 11
  %75 = load i32, i32* %index72, align 4
  %76 = load i32, i32* %nmatch, align 4
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.13, i32 0, i32 0), i32 %73, i32 %75, i32 %76)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.70, %if.end.68
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 13
  %78 = load i64, i64* %count, align 8
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %count75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i32 0, i32 13
  %80 = load i64, i64* %count75, align 8
  %add = add nsw i64 %80, %78
  store i64 %add, i64* %count75, align 8
  %81 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %81, i32 0, i32 14
  %82 = load i32, i32* %frequency, align 4
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %frequency76 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %83, i32 0, i32 14
  %84 = load i32, i32* %frequency76, align 4
  %add77 = add nsw i32 %84, %82
  store i32 %add77, i32* %frequency76, align 4
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %succ78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 5
  %86 = load %struct.edge_def*, %struct.edge_def** %succ78, align 8
  store %struct.edge_def* %86, %struct.edge_def** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.196, %if.end.74
  %87 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %tobool79 = icmp ne %struct.edge_def* %87, null
  br i1 %tobool79, label %for.body, label %for.end.198

for.body:                                         ; preds = %for.cond
  %88 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest80 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 3
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %dest80, align 8
  store %struct.basic_block_def* %89, %struct.basic_block_def** %d, align 8
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %d, align 8
  %aux81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %90, i32 0, i32 10
  %91 = load i8*, i8** %aux81, align 8
  %92 = ptrtoint i8* %91 to i32
  %and82 = and i32 %92, 2
  %tobool83 = icmp ne i32 %and82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %for.body
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %d, align 8
  %succ85 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 5
  %94 = load %struct.edge_def*, %struct.edge_def** %succ85, align 8
  %dest86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 3
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %dest86, align 8
  store %struct.basic_block_def* %95, %struct.basic_block_def** %d, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %for.body
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %succ88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 5
  %97 = load %struct.edge_def*, %struct.edge_def** %succ88, align 8
  store %struct.edge_def* %97, %struct.edge_def** %s2, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc, %if.end.87
  %98 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest90 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %98, i32 0, i32 3
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %dest90, align 8
  store %struct.basic_block_def* %99, %struct.basic_block_def** %d2, align 8
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %d2, align 8
  %aux91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %100, i32 0, i32 10
  %101 = load i8*, i8** %aux91, align 8
  %102 = ptrtoint i8* %101 to i32
  %and92 = and i32 %102, 2
  %tobool93 = icmp ne i32 %and92, 0
  br i1 %tobool93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %for.cond.89
  %103 = load %struct.basic_block_def*, %struct.basic_block_def** %d2, align 8
  %succ95 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %103, i32 0, i32 5
  %104 = load %struct.edge_def*, %struct.edge_def** %succ95, align 8
  %dest96 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 3
  %105 = load %struct.basic_block_def*, %struct.basic_block_def** %dest96, align 8
  store %struct.basic_block_def* %105, %struct.basic_block_def** %d2, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %for.cond.89
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %d, align 8
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %d2, align 8
  %cmp98 = icmp eq %struct.basic_block_def* %106, %107
  br i1 %cmp98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.end.97
  br label %for.end

if.end.100:                                       ; preds = %if.end.97
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %108 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %108, i32 0, i32 1
  %109 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %109, %struct.edge_def** %s2, align 8
  br label %for.cond.89

for.end:                                          ; preds = %if.then.99
  %110 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %count101 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %110, i32 0, i32 8
  %111 = load i64, i64* %count101, align 8
  %112 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %count102 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 8
  %113 = load i64, i64* %count102, align 8
  %add103 = add nsw i64 %113, %111
  store i64 %add103, i64* %count102, align 8
  %114 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest104 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 3
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %dest104, align 8
  %aux105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %115, i32 0, i32 10
  %116 = load i8*, i8** %aux105, align 8
  %117 = ptrtoint i8* %116 to i32
  %and106 = and i32 %117, 2
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.124

if.then.108:                                      ; preds = %for.end
  %118 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %count109 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %118, i32 0, i32 8
  %119 = load i64, i64* %count109, align 8
  %120 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest110 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %120, i32 0, i32 3
  %121 = load %struct.basic_block_def*, %struct.basic_block_def** %dest110, align 8
  %succ111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %121, i32 0, i32 5
  %122 = load %struct.edge_def*, %struct.edge_def** %succ111, align 8
  %count112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %122, i32 0, i32 8
  %123 = load i64, i64* %count112, align 8
  %add113 = add nsw i64 %123, %119
  store i64 %add113, i64* %count112, align 8
  %124 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %count114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %124, i32 0, i32 8
  %125 = load i64, i64* %count114, align 8
  %126 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest115 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %126, i32 0, i32 3
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %dest115, align 8
  %count116 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 13
  %128 = load i64, i64* %count116, align 8
  %add117 = add nsw i64 %128, %125
  store i64 %add117, i64* %count116, align 8
  %129 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %src118 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %129, i32 0, i32 2
  %130 = load %struct.basic_block_def*, %struct.basic_block_def** %src118, align 8
  %frequency119 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %130, i32 0, i32 14
  %131 = load i32, i32* %frequency119, align 4
  %132 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %132, i32 0, i32 7
  %133 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %131, %133
  %add120 = add nsw i32 %mul, 5000
  %div = sdiv i32 %add120, 10000
  %134 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %dest121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %134, i32 0, i32 3
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %dest121, align 8
  %frequency122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i32 0, i32 14
  %136 = load i32, i32* %frequency122, align 4
  %add123 = add nsw i32 %136, %div
  store i32 %add123, i32* %frequency122, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.108, %for.end
  %137 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest125 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %137, i32 0, i32 3
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %dest125, align 8
  %aux126 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i32 0, i32 10
  %139 = load i8*, i8** %aux126, align 8
  %140 = ptrtoint i8* %139 to i32
  %and127 = and i32 %140, 2
  %tobool128 = icmp ne i32 %and127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.170

if.then.129:                                      ; preds = %if.end.124
  %141 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %count130 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %141, i32 0, i32 8
  %142 = load i64, i64* %count130, align 8
  %143 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest131 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %143, i32 0, i32 3
  %144 = load %struct.basic_block_def*, %struct.basic_block_def** %dest131, align 8
  %succ132 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %144, i32 0, i32 5
  %145 = load %struct.edge_def*, %struct.edge_def** %succ132, align 8
  %count133 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %145, i32 0, i32 8
  %146 = load i64, i64* %count133, align 8
  %sub = sub nsw i64 %146, %142
  store i64 %sub, i64* %count133, align 8
  %147 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest134 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %147, i32 0, i32 3
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %dest134, align 8
  %succ135 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 5
  %149 = load %struct.edge_def*, %struct.edge_def** %succ135, align 8
  %count136 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %149, i32 0, i32 8
  %150 = load i64, i64* %count136, align 8
  %cmp137 = icmp slt i64 %150, 0
  br i1 %cmp137, label %if.then.138, label %if.end.142

if.then.138:                                      ; preds = %if.then.129
  %151 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest139 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %151, i32 0, i32 3
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %dest139, align 8
  %succ140 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %152, i32 0, i32 5
  %153 = load %struct.edge_def*, %struct.edge_def** %succ140, align 8
  %count141 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %153, i32 0, i32 8
  store i64 0, i64* %count141, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.138, %if.then.129
  %154 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %count143 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %154, i32 0, i32 8
  %155 = load i64, i64* %count143, align 8
  %156 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest144 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %156, i32 0, i32 3
  %157 = load %struct.basic_block_def*, %struct.basic_block_def** %dest144, align 8
  %count145 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %157, i32 0, i32 13
  %158 = load i64, i64* %count145, align 8
  %sub146 = sub nsw i64 %158, %155
  store i64 %sub146, i64* %count145, align 8
  %159 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %src147 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %159, i32 0, i32 2
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %src147, align 8
  %frequency148 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %160, i32 0, i32 14
  %161 = load i32, i32* %frequency148, align 4
  %162 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability149 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %162, i32 0, i32 7
  %163 = load i32, i32* %probability149, align 4
  %mul150 = mul nsw i32 %161, %163
  %add151 = add nsw i32 %mul150, 5000
  %div152 = sdiv i32 %add151, 10000
  %164 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest153 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %164, i32 0, i32 3
  %165 = load %struct.basic_block_def*, %struct.basic_block_def** %dest153, align 8
  %frequency154 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %165, i32 0, i32 14
  %166 = load i32, i32* %frequency154, align 4
  %sub155 = sub nsw i32 %166, %div152
  store i32 %sub155, i32* %frequency154, align 4
  %167 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest156 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %167, i32 0, i32 3
  %168 = load %struct.basic_block_def*, %struct.basic_block_def** %dest156, align 8
  %frequency157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %168, i32 0, i32 14
  %169 = load i32, i32* %frequency157, align 4
  %cmp158 = icmp slt i32 %169, 0
  br i1 %cmp158, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.end.142
  %170 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest160 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %170, i32 0, i32 3
  %171 = load %struct.basic_block_def*, %struct.basic_block_def** %dest160, align 8
  %frequency161 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %171, i32 0, i32 14
  store i32 0, i32* %frequency161, align 4
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %if.end.142
  %172 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest163 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %172, i32 0, i32 3
  %173 = load %struct.basic_block_def*, %struct.basic_block_def** %dest163, align 8
  %count164 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %173, i32 0, i32 13
  %174 = load i64, i64* %count164, align 8
  %cmp165 = icmp slt i64 %174, 0
  br i1 %cmp165, label %if.then.166, label %if.end.169

if.then.166:                                      ; preds = %if.end.162
  %175 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %dest167 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %175, i32 0, i32 3
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %dest167, align 8
  %count168 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %176, i32 0, i32 13
  store i64 0, i64* %count168, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.then.166, %if.end.162
  br label %if.end.170

if.end.170:                                       ; preds = %if.end.169, %if.end.124
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %frequency171 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %177, i32 0, i32 14
  %178 = load i32, i32* %frequency171, align 4
  %tobool172 = icmp ne i32 %178, 0
  br i1 %tobool172, label %if.else.182, label %land.lhs.true.173

land.lhs.true.173:                                ; preds = %if.end.170
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %frequency174 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 14
  %180 = load i32, i32* %frequency174, align 4
  %tobool175 = icmp ne i32 %180, 0
  br i1 %tobool175, label %if.else.182, label %if.then.176

if.then.176:                                      ; preds = %land.lhs.true.173
  %181 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability177 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %181, i32 0, i32 7
  %182 = load i32, i32* %probability177, align 4
  %183 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %probability178 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %183, i32 0, i32 7
  %184 = load i32, i32* %probability178, align 4
  %add179 = add nsw i32 %182, %184
  %div180 = sdiv i32 %add179, 2
  %185 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability181 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %185, i32 0, i32 7
  store i32 %div180, i32* %probability181, align 4
  br label %if.end.195

if.else.182:                                      ; preds = %land.lhs.true.173, %if.end.170
  %186 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %186, i32 0, i32 7
  %187 = load i32, i32* %probability183, align 4
  %188 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %frequency184 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %188, i32 0, i32 14
  %189 = load i32, i32* %frequency184, align 4
  %mul185 = mul nsw i32 %187, %189
  %190 = load %struct.edge_def*, %struct.edge_def** %s2, align 8
  %probability186 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %190, i32 0, i32 7
  %191 = load i32, i32* %probability186, align 4
  %192 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %frequency187 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %192, i32 0, i32 14
  %193 = load i32, i32* %frequency187, align 4
  %mul188 = mul nsw i32 %191, %193
  %add189 = add nsw i32 %mul185, %mul188
  %194 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %frequency190 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %194, i32 0, i32 14
  %195 = load i32, i32* %frequency190, align 4
  %196 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %frequency191 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %196, i32 0, i32 14
  %197 = load i32, i32* %frequency191, align 4
  %add192 = add nsw i32 %195, %197
  %div193 = sdiv i32 %add189, %add192
  %198 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %probability194 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %198, i32 0, i32 7
  store i32 %div193, i32* %probability194, align 4
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.182, %if.then.176
  br label %for.inc.196

for.inc.196:                                      ; preds = %if.end.195
  %199 = load %struct.edge_def*, %struct.edge_def** %s, align 8
  %succ_next197 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %199, i32 0, i32 1
  %200 = load %struct.edge_def*, %struct.edge_def** %succ_next197, align 8
  store %struct.edge_def* %200, %struct.edge_def** %s, align 8
  br label %for.cond

for.end.198:                                      ; preds = %for.cond
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %201)
  %202 = load %struct.rtx_def*, %struct.rtx_def** %newpos1, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load = load i32, i32* %203, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp199 = icmp eq i32 %bf.clear, 36
  br i1 %cmp199, label %if.then.200, label %if.end.204

if.then.200:                                      ; preds = %for.end.198
  %204 = load %struct.rtx_def*, %struct.rtx_def** %newpos1, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 2
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtx203, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %newpos1, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.200, %for.end.198
  %206 = load %struct.rtx_def*, %struct.rtx_def** %newpos1, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load205 = load i32, i32* %207, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp eq i32 %bf.clear206, 37
  br i1 %cmp207, label %if.then.208, label %if.end.212

if.then.208:                                      ; preds = %if.end.204
  %208 = load %struct.rtx_def*, %struct.rtx_def** %newpos1, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %208, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 2
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %209 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  store %struct.rtx_def* %209, %struct.rtx_def** %newpos1, align 8
  br label %if.end.212

if.end.212:                                       ; preds = %if.then.208, %if.end.204
  %210 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %210, i32 0, i32 1
  %211 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %211, %struct.rtx_def** %last, align 8
  %212 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %call213 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %212)
  store %struct.rtx_def* %call213, %struct.rtx_def** %label, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call214 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %213)
  %214 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %end215 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %214, i32 0, i32 1
  %215 = load %struct.rtx_def*, %struct.rtx_def** %end215, align 8
  %call216 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call214, %struct.rtx_def* %215)
  %216 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %217 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %end217 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %217, i32 0, i32 1
  %218 = load %struct.rtx_def*, %struct.rtx_def** %end217, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %218, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 7
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  store %struct.rtx_def* %216, %struct.rtx_def** %rtx220, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %219, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx222 to i32*
  %220 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %220, 1
  store i32 %inc, i32* %rtint, align 4
  %221 = load %struct.rtx_def*, %struct.rtx_def** %newpos1, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insn_chain(%struct.rtx_def* %221, %struct.rtx_def* %222)
  %223 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %end223 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %223, i32 0, i32 1
  %224 = load %struct.rtx_def*, %struct.rtx_def** %end223, align 8
  %call224 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %224)
  store %struct.rtx_def* %call224, %struct.rtx_def** %last, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %tobool225 = icmp ne %struct.rtx_def* %225, null
  br i1 %tobool225, label %lor.lhs.false.226, label %if.then.230

lor.lhs.false.226:                                ; preds = %if.end.212
  %226 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %227 = bitcast %struct.rtx_def* %226 to i32*
  %bf.load227 = load i32, i32* %227, align 8
  %bf.clear228 = and i32 %bf.load227, 65535
  %cmp229 = icmp ne i32 %bf.clear228, 35
  br i1 %cmp229, label %if.then.230, label %if.end.233

if.then.230:                                      ; preds = %lor.lhs.false.226, %if.end.212
  %228 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %end231 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %228, i32 0, i32 1
  %229 = load %struct.rtx_def*, %struct.rtx_def** %end231, align 8
  %call232 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %229)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.230, %lor.lhs.false.226
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.233
  %230 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %succ234 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %230, i32 0, i32 5
  %231 = load %struct.edge_def*, %struct.edge_def** %succ234, align 8
  %tobool235 = icmp ne %struct.edge_def* %231, null
  br i1 %tobool235, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %232 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %succ236 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %232, i32 0, i32 5
  %233 = load %struct.edge_def*, %struct.edge_def** %succ236, align 8
  call void @remove_edge(%struct.edge_def* %233)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %234 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %235 = load %struct.basic_block_def*, %struct.basic_block_def** %redirect_to, align 8
  %call237 = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %234, %struct.basic_block_def* %235, i32 0)
  %236 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %aux238 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %236, i32 0, i32 10
  %237 = load i8*, i8** %aux238, align 8
  %238 = ptrtoint i8* %237 to i32
  %or = or i32 %238, 1
  %conv = zext i32 %or to i64
  %239 = inttoptr i64 %conv to i8*
  %240 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  %aux239 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %240, i32 0, i32 10
  store i8* %239, i8** %aux239, align 8
  %241 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  call void @update_forwarder_flag(%struct.basic_block_def* %241)
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.58, %if.then.54, %if.then.52, %if.then.45, %if.then.32, %if.then.21, %if.then.18
  %242 = load i1, i1* %retval
  ret i1 %242
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @outgoing_edges_match(i32 %mode, %struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) #0 {
entry:
  %retval = alloca i1, align 1
  %mode.addr = alloca i32, align 4
  %bb1.addr = alloca %struct.basic_block_def*, align 8
  %bb2.addr = alloca %struct.basic_block_def*, align 8
  %nehedges1 = alloca i32, align 4
  %nehedges2 = alloca i32, align 4
  %fallthru1 = alloca %struct.edge_def*, align 8
  %fallthru2 = alloca %struct.edge_def*, align 8
  %e1 = alloca %struct.edge_def*, align 8
  %e2 = alloca %struct.edge_def*, align 8
  %b1 = alloca %struct.edge_def*, align 8
  %f1 = alloca %struct.edge_def*, align 8
  %b2 = alloca %struct.edge_def*, align 8
  %f2 = alloca %struct.edge_def*, align 8
  %reverse = alloca i8, align 1
  %match = alloca i8, align 1
  %set1 = alloca %struct.rtx_def*, align 8
  %set2 = alloca %struct.rtx_def*, align 8
  %cond1 = alloca %struct.rtx_def*, align 8
  %cond2 = alloca %struct.rtx_def*, align 8
  %code1 = alloca i32, align 4
  %code2 = alloca i32, align 4
  %prob2 = alloca i32, align 4
  %d1 = alloca %struct.basic_block_def*, align 8
  %d2 = alloca %struct.basic_block_def*, align 8
  %n1 = alloca %struct.rtx_def*, align 8
  %n2 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.basic_block_def* %bb1, %struct.basic_block_def** %bb1.addr, align 8
  store %struct.basic_block_def* %bb2, %struct.basic_block_def** %bb2.addr, align 8
  store i32 0, i32* %nehedges1, align 4
  store i32 0, i32* %nehedges2, align 4
  store %struct.edge_def* null, %struct.edge_def** %fallthru1, align 8
  store %struct.edge_def* null, %struct.edge_def** %fallthru2, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool = icmp ne %struct.edge_def* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 5
  %3 = load %struct.edge_def*, %struct.edge_def** %succ1, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 1
  %4 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool2 = icmp ne %struct.edge_def* %4, null
  br i1 %tobool2, label %if.end, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 6
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 30
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 5
  %9 = load %struct.edge_def*, %struct.edge_def** %succ6, align 8
  %tobool7 = icmp ne %struct.edge_def* %9, null
  br i1 %tobool7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %if.then
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 5
  %11 = load %struct.edge_def*, %struct.edge_def** %succ9, align 8
  %succ_next10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 1
  %12 = load %struct.edge_def*, %struct.edge_def** %succ_next10, align 8
  %tobool11 = icmp ne %struct.edge_def* %12, null
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 5
  %14 = load %struct.edge_def*, %struct.edge_def** %succ12, align 8
  %flags13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 6
  %15 = load i32, i32* %flags13, align 4
  %and14 = and i32 %15, 30
  %cmp = icmp eq i32 %and14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.8, %if.then
  %16 = phi i1 [ false, %land.lhs.true.8 ], [ false, %if.then ], [ %cmp, %land.rhs ]
  store i1 %16, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 5
  %18 = load %struct.edge_def*, %struct.edge_def** %succ15, align 8
  %tobool16 = icmp ne %struct.edge_def* %18, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.283

land.lhs.true.17:                                 ; preds = %if.end
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ18 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 5
  %20 = load %struct.edge_def*, %struct.edge_def** %succ18, align 8
  %succ_next19 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 1
  %21 = load %struct.edge_def*, %struct.edge_def** %succ_next19, align 8
  %tobool20 = icmp ne %struct.edge_def* %21, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.283

land.lhs.true.21:                                 ; preds = %land.lhs.true.17
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 5
  %23 = load %struct.edge_def*, %struct.edge_def** %succ22, align 8
  %succ_next23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 1
  %24 = load %struct.edge_def*, %struct.edge_def** %succ_next23, align 8
  %succ_next24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 1
  %25 = load %struct.edge_def*, %struct.edge_def** %succ_next24, align 8
  %tobool25 = icmp ne %struct.edge_def* %25, null
  br i1 %tobool25, label %if.end.283, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 1
  %27 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %27)
  %tobool27 = icmp ne i32 %call, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.283

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end29 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end29, align 8
  %call30 = call i32 @onlyjump_p(%struct.rtx_def* %29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.283

if.then.32:                                       ; preds = %land.lhs.true.28
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 5
  %31 = load %struct.edge_def*, %struct.edge_def** %succ33, align 8
  %tobool34 = icmp ne %struct.edge_def* %31, null
  br i1 %tobool34, label %lor.lhs.false, label %if.then.51

lor.lhs.false:                                    ; preds = %if.then.32
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 5
  %33 = load %struct.edge_def*, %struct.edge_def** %succ35, align 8
  %succ_next36 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 1
  %34 = load %struct.edge_def*, %struct.edge_def** %succ_next36, align 8
  %tobool37 = icmp ne %struct.edge_def* %34, null
  br i1 %tobool37, label %lor.lhs.false.38, label %if.then.51

lor.lhs.false.38:                                 ; preds = %lor.lhs.false
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 5
  %36 = load %struct.edge_def*, %struct.edge_def** %succ39, align 8
  %succ_next40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 1
  %37 = load %struct.edge_def*, %struct.edge_def** %succ_next40, align 8
  %succ_next41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 1
  %38 = load %struct.edge_def*, %struct.edge_def** %succ_next41, align 8
  %tobool42 = icmp ne %struct.edge_def* %38, null
  br i1 %tobool42, label %if.then.51, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.38
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 1
  %40 = load %struct.rtx_def*, %struct.rtx_def** %end44, align 8
  %call45 = call i32 @any_condjump_p(%struct.rtx_def* %40)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %lor.lhs.false.47, label %if.then.51

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 1
  %42 = load %struct.rtx_def*, %struct.rtx_def** %end48, align 8
  %call49 = call i32 @onlyjump_p(%struct.rtx_def* %42)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.38, %lor.lhs.false, %if.then.32
  store i1 false, i1* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false.47
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 12
  %44 = load i32, i32* %loop_depth, align 4
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %loop_depth53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 12
  %46 = load i32, i32* %loop_depth53, align 4
  %cmp54 = icmp ne i32 %44, %46
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.52
  store i1 false, i1* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.52
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 5
  %48 = load %struct.edge_def*, %struct.edge_def** %succ57, align 8
  %flags58 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 6
  %49 = load i32, i32* %flags58, align 4
  %and59 = and i32 %49, 1
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.56
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 5
  %51 = load %struct.edge_def*, %struct.edge_def** %succ61, align 8
  %succ_next62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 1
  %52 = load %struct.edge_def*, %struct.edge_def** %succ_next62, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.56
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 5
  %54 = load %struct.edge_def*, %struct.edge_def** %succ63, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %52, %cond.true ], [ %54, %cond.false ]
  store %struct.edge_def* %cond, %struct.edge_def** %b1, align 8
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i32 0, i32 5
  %56 = load %struct.edge_def*, %struct.edge_def** %succ64, align 8
  %flags65 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 6
  %57 = load i32, i32* %flags65, align 4
  %and66 = and i32 %57, 1
  %tobool67 = icmp ne i32 %and66, 0
  br i1 %tobool67, label %cond.true.68, label %cond.false.71

cond.true.68:                                     ; preds = %cond.end
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 5
  %59 = load %struct.edge_def*, %struct.edge_def** %succ69, align 8
  %succ_next70 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 1
  %60 = load %struct.edge_def*, %struct.edge_def** %succ_next70, align 8
  br label %cond.end.73

cond.false.71:                                    ; preds = %cond.end
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 5
  %62 = load %struct.edge_def*, %struct.edge_def** %succ72, align 8
  br label %cond.end.73

cond.end.73:                                      ; preds = %cond.false.71, %cond.true.68
  %cond74 = phi %struct.edge_def* [ %60, %cond.true.68 ], [ %62, %cond.false.71 ]
  store %struct.edge_def* %cond74, %struct.edge_def** %b2, align 8
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %63, i32 0, i32 5
  %64 = load %struct.edge_def*, %struct.edge_def** %succ75, align 8
  %flags76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 6
  %65 = load i32, i32* %flags76, align 4
  %and77 = and i32 %65, 1
  %tobool78 = icmp ne i32 %and77, 0
  br i1 %tobool78, label %cond.true.79, label %cond.false.81

cond.true.79:                                     ; preds = %cond.end.73
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ80 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 5
  %67 = load %struct.edge_def*, %struct.edge_def** %succ80, align 8
  br label %cond.end.84

cond.false.81:                                    ; preds = %cond.end.73
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 5
  %69 = load %struct.edge_def*, %struct.edge_def** %succ82, align 8
  %succ_next83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 1
  %70 = load %struct.edge_def*, %struct.edge_def** %succ_next83, align 8
  br label %cond.end.84

cond.end.84:                                      ; preds = %cond.false.81, %cond.true.79
  %cond85 = phi %struct.edge_def* [ %67, %cond.true.79 ], [ %70, %cond.false.81 ]
  store %struct.edge_def* %cond85, %struct.edge_def** %f1, align 8
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 5
  %72 = load %struct.edge_def*, %struct.edge_def** %succ86, align 8
  %flags87 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i32 0, i32 6
  %73 = load i32, i32* %flags87, align 4
  %and88 = and i32 %73, 1
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %cond.true.90, label %cond.false.92

cond.true.90:                                     ; preds = %cond.end.84
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 5
  %75 = load %struct.edge_def*, %struct.edge_def** %succ91, align 8
  br label %cond.end.95

cond.false.92:                                    ; preds = %cond.end.84
  %76 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ93 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %76, i32 0, i32 5
  %77 = load %struct.edge_def*, %struct.edge_def** %succ93, align 8
  %succ_next94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i32 0, i32 1
  %78 = load %struct.edge_def*, %struct.edge_def** %succ_next94, align 8
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.false.92, %cond.true.90
  %cond96 = phi %struct.edge_def* [ %75, %cond.true.90 ], [ %78, %cond.false.92 ]
  store %struct.edge_def* %cond96, %struct.edge_def** %f2, align 8
  %79 = load %struct.edge_def*, %struct.edge_def** %f1, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 3
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 10
  %81 = load i8*, i8** %aux, align 8
  %82 = ptrtoint i8* %81 to i32
  %and97 = and i32 %82, 2
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %cond.end.95
  %83 = load %struct.edge_def*, %struct.edge_def** %f1, align 8
  %dest100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %83, i32 0, i32 3
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %dest100, align 8
  %succ101 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %84, i32 0, i32 5
  %85 = load %struct.edge_def*, %struct.edge_def** %succ101, align 8
  store %struct.edge_def* %85, %struct.edge_def** %f1, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %cond.end.95
  %86 = load %struct.edge_def*, %struct.edge_def** %f2, align 8
  %dest103 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i32 0, i32 3
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %dest103, align 8
  %aux104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 10
  %88 = load i8*, i8** %aux104, align 8
  %89 = ptrtoint i8* %88 to i32
  %and105 = and i32 %89, 2
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.end.102
  %90 = load %struct.edge_def*, %struct.edge_def** %f2, align 8
  %dest108 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %90, i32 0, i32 3
  %91 = load %struct.basic_block_def*, %struct.basic_block_def** %dest108, align 8
  %succ109 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %91, i32 0, i32 5
  %92 = load %struct.edge_def*, %struct.edge_def** %succ109, align 8
  store %struct.edge_def* %92, %struct.edge_def** %f2, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.end.102
  %93 = load %struct.edge_def*, %struct.edge_def** %f1, align 8
  %dest111 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %93, i32 0, i32 3
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %dest111, align 8
  %aux112 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %94, i32 0, i32 10
  %95 = load i8*, i8** %aux112, align 8
  %96 = ptrtoint i8* %95 to i32
  %and113 = and i32 %96, 2
  %tobool114 = icmp ne i32 %and113, 0
  br i1 %tobool114, label %if.then.130, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.end.110
  %97 = load %struct.edge_def*, %struct.edge_def** %f2, align 8
  %dest116 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %97, i32 0, i32 3
  %98 = load %struct.basic_block_def*, %struct.basic_block_def** %dest116, align 8
  %aux117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %98, i32 0, i32 10
  %99 = load i8*, i8** %aux117, align 8
  %100 = ptrtoint i8* %99 to i32
  %and118 = and i32 %100, 2
  %tobool119 = icmp ne i32 %and118, 0
  br i1 %tobool119, label %if.then.130, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.115
  %101 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %dest121 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 3
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %dest121, align 8
  %aux122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %102, i32 0, i32 10
  %103 = load i8*, i8** %aux122, align 8
  %104 = ptrtoint i8* %103 to i32
  %and123 = and i32 %104, 2
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %if.then.130, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %lor.lhs.false.120
  %105 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %dest126 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %105, i32 0, i32 3
  %106 = load %struct.basic_block_def*, %struct.basic_block_def** %dest126, align 8
  %aux127 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %106, i32 0, i32 10
  %107 = load i8*, i8** %aux127, align 8
  %108 = ptrtoint i8* %107 to i32
  %and128 = and i32 %108, 2
  %tobool129 = icmp ne i32 %and128, 0
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %lor.lhs.false.125, %lor.lhs.false.120, %lor.lhs.false.115, %if.end.110
  store i1 false, i1* %retval
  br label %return

if.end.131:                                       ; preds = %lor.lhs.false.125
  %109 = load %struct.edge_def*, %struct.edge_def** %f1, align 8
  %dest132 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i32 0, i32 3
  %110 = load %struct.basic_block_def*, %struct.basic_block_def** %dest132, align 8
  %111 = load %struct.edge_def*, %struct.edge_def** %f2, align 8
  %dest133 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %111, i32 0, i32 3
  %112 = load %struct.basic_block_def*, %struct.basic_block_def** %dest133, align 8
  %cmp134 = icmp eq %struct.basic_block_def* %110, %112
  br i1 %cmp134, label %land.lhs.true.135, label %if.else

land.lhs.true.135:                                ; preds = %if.end.131
  %113 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %dest136 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %113, i32 0, i32 3
  %114 = load %struct.basic_block_def*, %struct.basic_block_def** %dest136, align 8
  %115 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %dest137 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %115, i32 0, i32 3
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %dest137, align 8
  %cmp138 = icmp eq %struct.basic_block_def* %114, %116
  br i1 %cmp138, label %if.then.139, label %if.else

if.then.139:                                      ; preds = %land.lhs.true.135
  store i8 0, i8* %reverse, align 1
  br label %if.end.150

if.else:                                          ; preds = %land.lhs.true.135, %if.end.131
  %117 = load %struct.edge_def*, %struct.edge_def** %f1, align 8
  %dest140 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %117, i32 0, i32 3
  %118 = load %struct.basic_block_def*, %struct.basic_block_def** %dest140, align 8
  %119 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %dest141 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %119, i32 0, i32 3
  %120 = load %struct.basic_block_def*, %struct.basic_block_def** %dest141, align 8
  %cmp142 = icmp eq %struct.basic_block_def* %118, %120
  br i1 %cmp142, label %land.lhs.true.143, label %if.else.148

land.lhs.true.143:                                ; preds = %if.else
  %121 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %dest144 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %121, i32 0, i32 3
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %dest144, align 8
  %123 = load %struct.edge_def*, %struct.edge_def** %f2, align 8
  %dest145 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %123, i32 0, i32 3
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %dest145, align 8
  %cmp146 = icmp eq %struct.basic_block_def* %122, %124
  br i1 %cmp146, label %if.then.147, label %if.else.148

if.then.147:                                      ; preds = %land.lhs.true.143
  store i8 1, i8* %reverse, align 1
  br label %if.end.149

if.else.148:                                      ; preds = %land.lhs.true.143, %if.else
  store i1 false, i1* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.147
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.139
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end151 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %125, i32 0, i32 1
  %126 = load %struct.rtx_def*, %struct.rtx_def** %end151, align 8
  %call152 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %126)
  store %struct.rtx_def* %call152, %struct.rtx_def** %set1, align 8
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end153 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 1
  %128 = load %struct.rtx_def*, %struct.rtx_def** %end153, align 8
  %call154 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %128)
  store %struct.rtx_def* %call154, %struct.rtx_def** %set2, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %set1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 1
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp158 = icmp eq %struct.rtx_def* %131, %132
  %conv = zext i1 %cmp158 to i32
  %133 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 1
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx161, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 1
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx164, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp165 = icmp eq %struct.rtx_def* %135, %136
  %conv166 = zext i1 %cmp165 to i32
  %cmp167 = icmp ne i32 %conv, %conv166
  br i1 %cmp167, label %if.then.169, label %if.end.171

if.then.169:                                      ; preds = %if.end.150
  %137 = load i8, i8* %reverse, align 1
  %tobool170 = trunc i8 %137 to i1
  %lnot = xor i1 %tobool170, true
  %frombool = zext i1 %lnot to i8
  store i8 %frombool, i8* %reverse, align 1
  br label %if.end.171

if.end.171:                                       ; preds = %if.then.169, %if.end.150
  %138 = load %struct.rtx_def*, %struct.rtx_def** %set1, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 1
  %rtx174 = bitcast %union.rtunion_def* %arrayidx173 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx174, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  store %struct.rtx_def* %140, %struct.rtx_def** %cond1, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 1
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 0
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx183, align 8
  store %struct.rtx_def* %143, %struct.rtx_def** %cond2, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load = load i32, i32* %145, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code1, align 4
  %146 = load i8, i8* %reverse, align 1
  %tobool184 = trunc i8 %146 to i1
  br i1 %tobool184, label %if.then.185, label %if.else.188

if.then.185:                                      ; preds = %if.end.171
  %147 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end186 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 1
  %149 = load %struct.rtx_def*, %struct.rtx_def** %end186, align 8
  %call187 = call i32 @reversed_comparison_code(%struct.rtx_def* %147, %struct.rtx_def* %149)
  store i32 %call187, i32* %code2, align 4
  br label %if.end.191

if.else.188:                                      ; preds = %if.end.171
  %150 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %bf.load189 = load i32, i32* %151, align 8
  %bf.clear190 = and i32 %bf.load189, 65535
  store i32 %bf.clear190, i32* %code2, align 4
  br label %if.end.191

if.end.191:                                       ; preds = %if.else.188, %if.then.185
  %152 = load i32, i32* %code2, align 4
  %cmp192 = icmp eq i32 %152, 0
  br i1 %cmp192, label %if.then.194, label %if.end.195

if.then.194:                                      ; preds = %if.end.191
  store i1 false, i1* %retval
  br label %return

if.end.195:                                       ; preds = %if.end.191
  %153 = load i32, i32* %code1, align 4
  %154 = load i32, i32* %code2, align 4
  %cmp196 = icmp eq i32 %153, %154
  br i1 %cmp196, label %land.lhs.true.198, label %lor.rhs

land.lhs.true.198:                                ; preds = %if.end.195
  %155 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtx201 = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtx_def**
  %156 = load %struct.rtx_def*, %struct.rtx_def** %rtx201, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtx204 = bitcast %union.rtunion_def* %arrayidx203 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %rtx204, align 8
  %call205 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %156, %struct.rtx_def* %158)
  %tobool206 = icmp ne i32 %call205, 0
  br i1 %tobool206, label %land.lhs.true.207, label %lor.rhs

land.lhs.true.207:                                ; preds = %land.lhs.true.198
  %159 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 1
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 1
  %rtx213 = bitcast %union.rtunion_def* %arrayidx212 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %rtx213, align 8
  %call214 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %160, %struct.rtx_def* %162)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.207, %land.lhs.true.198, %if.end.195
  %163 = load i32, i32* %code1, align 4
  %164 = load i32, i32* %code2, align 4
  %call216 = call i32 @swap_condition(i32 %164)
  %cmp217 = icmp eq i32 %163, %call216
  br i1 %cmp217, label %land.lhs.true.219, label %land.end.237

land.lhs.true.219:                                ; preds = %lor.rhs
  %165 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 1
  %rtx222 = bitcast %union.rtunion_def* %arrayidx221 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx222, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %168 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  %call226 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %166, %struct.rtx_def* %168)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %land.rhs.228, label %land.end.237

land.rhs.228:                                     ; preds = %land.lhs.true.219
  %169 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %fld229 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx230 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld229, i32 0, i64 0
  %rtx231 = bitcast %union.rtunion_def* %arrayidx230 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx231, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 1
  %rtx234 = bitcast %union.rtunion_def* %arrayidx233 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx234, align 8
  %call235 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %170, %struct.rtx_def* %172)
  %tobool236 = icmp ne i32 %call235, 0
  br label %land.end.237

land.end.237:                                     ; preds = %land.rhs.228, %land.lhs.true.219, %lor.rhs
  %173 = phi i1 [ false, %land.lhs.true.219 ], [ false, %lor.rhs ], [ %tobool236, %land.rhs.228 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end.237, %land.lhs.true.207
  %174 = phi i1 [ true, %land.lhs.true.207 ], [ %173, %land.end.237 ]
  %frombool238 = zext i1 %174 to i8
  store i8 %frombool238, i8* %match, align 1
  %175 = load i8, i8* %match, align 1
  %tobool239 = trunc i8 %175 to i1
  br i1 %tobool239, label %land.lhs.true.241, label %if.end.272

land.lhs.true.241:                                ; preds = %lor.end
  %176 = load i32, i32* @optimize_size, align 4
  %tobool242 = icmp ne i32 %176, 0
  br i1 %tobool242, label %if.end.272, label %land.lhs.true.243

land.lhs.true.243:                                ; preds = %land.lhs.true.241
  %177 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %177, i32 0, i32 14
  %178 = load i32, i32* %frequency, align 4
  %cmp244 = icmp sgt i32 %178, 10
  br i1 %cmp244, label %land.lhs.true.246, label %if.end.272

land.lhs.true.246:                                ; preds = %land.lhs.true.243
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %frequency247 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 14
  %180 = load i32, i32* %frequency247, align 4
  %cmp248 = icmp sgt i32 %180, 10
  br i1 %cmp248, label %if.then.250, label %if.end.272

if.then.250:                                      ; preds = %land.lhs.true.246
  %181 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %dest251 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %181, i32 0, i32 3
  %182 = load %struct.basic_block_def*, %struct.basic_block_def** %dest251, align 8
  %183 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %dest252 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %183, i32 0, i32 3
  %184 = load %struct.basic_block_def*, %struct.basic_block_def** %dest252, align 8
  %cmp253 = icmp eq %struct.basic_block_def* %182, %184
  br i1 %cmp253, label %if.then.255, label %if.else.256

if.then.255:                                      ; preds = %if.then.250
  %185 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %185, i32 0, i32 7
  %186 = load i32, i32* %probability, align 4
  store i32 %186, i32* %prob2, align 4
  br label %if.end.258

if.else.256:                                      ; preds = %if.then.250
  %187 = load %struct.edge_def*, %struct.edge_def** %b2, align 8
  %probability257 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %187, i32 0, i32 7
  %188 = load i32, i32* %probability257, align 4
  %sub = sub nsw i32 10000, %188
  store i32 %sub, i32* %prob2, align 4
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.256, %if.then.255
  %189 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %probability259 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %189, i32 0, i32 7
  %190 = load i32, i32* %probability259, align 4
  %191 = load i32, i32* %prob2, align 4
  %sub260 = sub nsw i32 %190, %191
  %call261 = call i32 @abs(i32 %sub260) #7
  %cmp262 = icmp sgt i32 %call261, 5000
  br i1 %cmp262, label %if.then.264, label %if.end.271

if.then.264:                                      ; preds = %if.end.258
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool265 = icmp ne %struct._IO_FILE* %192, null
  br i1 %tobool265, label %if.then.266, label %if.end.270

if.then.266:                                      ; preds = %if.then.264
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %194 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %194, i32 0, i32 11
  %195 = load i32, i32* %index, align 4
  %196 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %index267 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %196, i32 0, i32 11
  %197 = load i32, i32* %index267, align 4
  %198 = load %struct.edge_def*, %struct.edge_def** %b1, align 8
  %probability268 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %198, i32 0, i32 7
  %199 = load i32, i32* %probability268, align 4
  %200 = load i32, i32* %prob2, align 4
  %call269 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0), i32 %195, i32 %197, i32 %199, i32 %200)
  br label %if.end.270

if.end.270:                                       ; preds = %if.then.266, %if.then.264
  store i1 false, i1* %retval
  br label %return

if.end.271:                                       ; preds = %if.end.258
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %land.lhs.true.246, %land.lhs.true.243, %land.lhs.true.241, %lor.end
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool273 = icmp ne %struct._IO_FILE* %201, null
  br i1 %tobool273, label %land.lhs.true.274, label %if.end.281

land.lhs.true.274:                                ; preds = %if.end.272
  %202 = load i8, i8* %match, align 1
  %tobool275 = trunc i8 %202 to i1
  br i1 %tobool275, label %if.then.277, label %if.end.281

if.then.277:                                      ; preds = %land.lhs.true.274
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %204 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %index278 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %204, i32 0, i32 11
  %205 = load i32, i32* %index278, align 4
  %206 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %index279 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %206, i32 0, i32 11
  %207 = load i32, i32* %index279, align 4
  %call280 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i32 0, i32 0), i32 %205, i32 %207)
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.277, %land.lhs.true.274, %if.end.272
  %208 = load i8, i8* %match, align 1
  %tobool282 = trunc i8 %208 to i1
  store i1 %tobool282, i1* %retval
  br label %return

if.end.283:                                       ; preds = %land.lhs.true.28, %land.lhs.true.26, %land.lhs.true.21, %land.lhs.true.17, %if.end
  %209 = load i32, i32* %mode.addr, align 4
  %210 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end284 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %210, i32 0, i32 1
  %211 = load %struct.rtx_def*, %struct.rtx_def** %end284, align 8
  %212 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end285 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %212, i32 0, i32 1
  %213 = load %struct.rtx_def*, %struct.rtx_def** %end285, align 8
  %call286 = call zeroext i1 @insns_match_p(i32 %209, %struct.rtx_def* %211, %struct.rtx_def* %213)
  br i1 %call286, label %if.end.288, label %if.then.287

if.then.287:                                      ; preds = %if.end.283
  store i1 false, i1* %retval
  br label %return

if.end.288:                                       ; preds = %if.end.283
  %214 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %succ289 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %214, i32 0, i32 5
  %215 = load %struct.edge_def*, %struct.edge_def** %succ289, align 8
  store %struct.edge_def* %215, %struct.edge_def** %e1, align 8
  %216 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %succ290 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %216, i32 0, i32 5
  %217 = load %struct.edge_def*, %struct.edge_def** %succ290, align 8
  store %struct.edge_def* %217, %struct.edge_def** %e2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.288
  %218 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  %tobool291 = icmp ne %struct.edge_def* %218, null
  br i1 %tobool291, label %land.rhs.292, label %land.end.294

land.rhs.292:                                     ; preds = %for.cond
  %219 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %tobool293 = icmp ne %struct.edge_def* %219, null
  br label %land.end.294

land.end.294:                                     ; preds = %land.rhs.292, %for.cond
  %220 = phi i1 [ false, %for.cond ], [ %tobool293, %land.rhs.292 ]
  br i1 %220, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.294
  %221 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  %flags295 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %221, i32 0, i32 6
  %222 = load i32, i32* %flags295, align 4
  %and296 = and i32 %222, 8
  %tobool297 = icmp ne i32 %and296, 0
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %for.body
  %223 = load i32, i32* %nehedges1, align 4
  %inc = add nsw i32 %223, 1
  store i32 %inc, i32* %nehedges1, align 4
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.298, %for.body
  %224 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %flags300 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %224, i32 0, i32 6
  %225 = load i32, i32* %flags300, align 4
  %and301 = and i32 %225, 8
  %tobool302 = icmp ne i32 %and301, 0
  br i1 %tobool302, label %if.then.303, label %if.end.305

if.then.303:                                      ; preds = %if.end.299
  %226 = load i32, i32* %nehedges2, align 4
  %inc304 = add nsw i32 %226, 1
  store i32 %inc304, i32* %nehedges2, align 4
  br label %if.end.305

if.end.305:                                       ; preds = %if.then.303, %if.end.299
  %227 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  %flags306 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %227, i32 0, i32 6
  %228 = load i32, i32* %flags306, align 4
  %and307 = and i32 %228, 1
  %tobool308 = icmp ne i32 %and307, 0
  br i1 %tobool308, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %if.end.305
  %229 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  store %struct.edge_def* %229, %struct.edge_def** %fallthru1, align 8
  br label %if.end.310

if.end.310:                                       ; preds = %if.then.309, %if.end.305
  %230 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %flags311 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %230, i32 0, i32 6
  %231 = load i32, i32* %flags311, align 4
  %and312 = and i32 %231, 1
  %tobool313 = icmp ne i32 %and312, 0
  br i1 %tobool313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.310
  %232 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  store %struct.edge_def* %232, %struct.edge_def** %fallthru2, align 8
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %if.end.310
  br label %for.inc

for.inc:                                          ; preds = %if.end.315
  %233 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  %succ_next316 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %233, i32 0, i32 1
  %234 = load %struct.edge_def*, %struct.edge_def** %succ_next316, align 8
  store %struct.edge_def* %234, %struct.edge_def** %e1, align 8
  %235 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %succ_next317 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %235, i32 0, i32 1
  %236 = load %struct.edge_def*, %struct.edge_def** %succ_next317, align 8
  store %struct.edge_def* %236, %struct.edge_def** %e2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.294
  %237 = load %struct.edge_def*, %struct.edge_def** %e1, align 8
  %tobool318 = icmp ne %struct.edge_def* %237, null
  br i1 %tobool318, label %if.then.331, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %for.end
  %238 = load %struct.edge_def*, %struct.edge_def** %e2, align 8
  %tobool320 = icmp ne %struct.edge_def* %238, null
  br i1 %tobool320, label %if.then.331, label %lor.lhs.false.321

lor.lhs.false.321:                                ; preds = %lor.lhs.false.319
  %239 = load i32, i32* %nehedges1, align 4
  %240 = load i32, i32* %nehedges2, align 4
  %cmp322 = icmp ne i32 %239, %240
  br i1 %cmp322, label %if.then.331, label %lor.lhs.false.324

lor.lhs.false.324:                                ; preds = %lor.lhs.false.321
  %241 = load %struct.edge_def*, %struct.edge_def** %fallthru1, align 8
  %cmp325 = icmp ne %struct.edge_def* %241, null
  %conv326 = zext i1 %cmp325 to i32
  %242 = load %struct.edge_def*, %struct.edge_def** %fallthru2, align 8
  %cmp327 = icmp ne %struct.edge_def* %242, null
  %conv328 = zext i1 %cmp327 to i32
  %cmp329 = icmp ne i32 %conv326, %conv328
  br i1 %cmp329, label %if.then.331, label %if.end.332

if.then.331:                                      ; preds = %lor.lhs.false.324, %lor.lhs.false.321, %lor.lhs.false.319, %for.end
  store i1 false, i1* %retval
  br label %return

if.end.332:                                       ; preds = %lor.lhs.false.324
  %243 = load %struct.edge_def*, %struct.edge_def** %fallthru1, align 8
  %tobool333 = icmp ne %struct.edge_def* %243, null
  br i1 %tobool333, label %if.then.334, label %if.end.361

if.then.334:                                      ; preds = %if.end.332
  %244 = load %struct.edge_def*, %struct.edge_def** %fallthru1, align 8
  %dest335 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %244, i32 0, i32 3
  %245 = load %struct.basic_block_def*, %struct.basic_block_def** %dest335, align 8
  %call336 = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %245)
  br i1 %call336, label %cond.true.338, label %cond.false.342

cond.true.338:                                    ; preds = %if.then.334
  %246 = load %struct.edge_def*, %struct.edge_def** %fallthru1, align 8
  %dest339 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %246, i32 0, i32 3
  %247 = load %struct.basic_block_def*, %struct.basic_block_def** %dest339, align 8
  %succ340 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %247, i32 0, i32 5
  %248 = load %struct.edge_def*, %struct.edge_def** %succ340, align 8
  %dest341 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %248, i32 0, i32 3
  %249 = load %struct.basic_block_def*, %struct.basic_block_def** %dest341, align 8
  br label %cond.end.344

cond.false.342:                                   ; preds = %if.then.334
  %250 = load %struct.edge_def*, %struct.edge_def** %fallthru1, align 8
  %dest343 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %250, i32 0, i32 3
  %251 = load %struct.basic_block_def*, %struct.basic_block_def** %dest343, align 8
  br label %cond.end.344

cond.end.344:                                     ; preds = %cond.false.342, %cond.true.338
  %cond345 = phi %struct.basic_block_def* [ %249, %cond.true.338 ], [ %251, %cond.false.342 ]
  store %struct.basic_block_def* %cond345, %struct.basic_block_def** %d1, align 8
  %252 = load %struct.edge_def*, %struct.edge_def** %fallthru2, align 8
  %dest346 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %252, i32 0, i32 3
  %253 = load %struct.basic_block_def*, %struct.basic_block_def** %dest346, align 8
  %call347 = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %253)
  br i1 %call347, label %cond.true.349, label %cond.false.353

cond.true.349:                                    ; preds = %cond.end.344
  %254 = load %struct.edge_def*, %struct.edge_def** %fallthru2, align 8
  %dest350 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %254, i32 0, i32 3
  %255 = load %struct.basic_block_def*, %struct.basic_block_def** %dest350, align 8
  %succ351 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %255, i32 0, i32 5
  %256 = load %struct.edge_def*, %struct.edge_def** %succ351, align 8
  %dest352 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %256, i32 0, i32 3
  %257 = load %struct.basic_block_def*, %struct.basic_block_def** %dest352, align 8
  br label %cond.end.355

cond.false.353:                                   ; preds = %cond.end.344
  %258 = load %struct.edge_def*, %struct.edge_def** %fallthru2, align 8
  %dest354 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %258, i32 0, i32 3
  %259 = load %struct.basic_block_def*, %struct.basic_block_def** %dest354, align 8
  br label %cond.end.355

cond.end.355:                                     ; preds = %cond.false.353, %cond.true.349
  %cond356 = phi %struct.basic_block_def* [ %257, %cond.true.349 ], [ %259, %cond.false.353 ]
  store %struct.basic_block_def* %cond356, %struct.basic_block_def** %d2, align 8
  %260 = load %struct.basic_block_def*, %struct.basic_block_def** %d1, align 8
  %261 = load %struct.basic_block_def*, %struct.basic_block_def** %d2, align 8
  %cmp357 = icmp ne %struct.basic_block_def* %260, %261
  br i1 %cmp357, label %if.then.359, label %if.end.360

if.then.359:                                      ; preds = %cond.end.355
  store i1 false, i1* %retval
  br label %return

if.end.360:                                       ; preds = %cond.end.355
  br label %if.end.361

if.end.361:                                       ; preds = %if.end.360, %if.end.332
  %262 = load i32, i32* %nehedges1, align 4
  %tobool362 = icmp ne i32 %262, 0
  br i1 %tobool362, label %if.then.363, label %if.end.378

if.then.363:                                      ; preds = %if.end.361
  %263 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end364 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %263, i32 0, i32 1
  %264 = load %struct.rtx_def*, %struct.rtx_def** %end364, align 8
  %call365 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %264, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call365, %struct.rtx_def** %n1, align 8
  %265 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end366 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %265, i32 0, i32 1
  %266 = load %struct.rtx_def*, %struct.rtx_def** %end366, align 8
  %call367 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %266, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call367, %struct.rtx_def** %n2, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %n1, align 8
  %fld368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld368, i32 0, i64 0
  %rtx370 = bitcast %union.rtunion_def* %arrayidx369 to %struct.rtx_def**
  %268 = load %struct.rtx_def*, %struct.rtx_def** %rtx370, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %n2, align 8
  %fld371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld371, i32 0, i64 0
  %rtx373 = bitcast %union.rtunion_def* %arrayidx372 to %struct.rtx_def**
  %270 = load %struct.rtx_def*, %struct.rtx_def** %rtx373, align 8
  %cmp374 = icmp ne %struct.rtx_def* %268, %270
  br i1 %cmp374, label %if.then.376, label %if.end.377

if.then.376:                                      ; preds = %if.then.363
  store i1 false, i1* %retval
  br label %return

if.end.377:                                       ; preds = %if.then.363
  br label %if.end.378

if.end.378:                                       ; preds = %if.end.377, %if.end.361
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.378, %if.then.376, %if.then.359, %if.then.331, %if.then.287, %if.end.281, %if.end.270, %if.then.194, %if.else.148, %if.then.130, %if.then.55, %if.then.51, %land.end
  %271 = load i1, i1* %retval
  ret i1 %271
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_find_cross_jump(i32 %mode, %struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2, %struct.rtx_def** %f1, %struct.rtx_def** %f2) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %bb1.addr = alloca %struct.basic_block_def*, align 8
  %bb2.addr = alloca %struct.basic_block_def*, align 8
  %f1.addr = alloca %struct.rtx_def**, align 8
  %f2.addr = alloca %struct.rtx_def**, align 8
  %i1 = alloca %struct.rtx_def*, align 8
  %i2 = alloca %struct.rtx_def*, align 8
  %last1 = alloca %struct.rtx_def*, align 8
  %last2 = alloca %struct.rtx_def*, align 8
  %afterlast1 = alloca %struct.rtx_def*, align 8
  %afterlast2 = alloca %struct.rtx_def*, align 8
  %ninsns = alloca i32, align 4
  %equiv1 = alloca %struct.rtx_def*, align 8
  %equiv2 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.basic_block_def* %bb1, %struct.basic_block_def** %bb1.addr, align 8
  store %struct.basic_block_def* %bb2, %struct.basic_block_def** %bb2.addr, align 8
  store %struct.rtx_def** %f1, %struct.rtx_def*** %f1.addr, align 8
  store %struct.rtx_def** %f2, %struct.rtx_def*** %f2.addr, align 8
  store i32 0, i32* %ninsns, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %i1, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %afterlast2, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last2, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %afterlast1, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last1, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call = call i32 @onlyjump_p(%struct.rtx_def* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call1 = call i32 @returnjump_p(%struct.rtx_def* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call3 = call i32 @side_effects_p(%struct.rtx_def* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %last1, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %i1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %end8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 1
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end8, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %i2, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call9 = call i32 @onlyjump_p(%struct.rtx_def* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call12 = call i32 @returnjump_p(%struct.rtx_def* %12)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.33

land.lhs.true.14:                                 ; preds = %lor.lhs.false.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %call18 = call i32 @side_effects_p(%struct.rtx_def* %14)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.33, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.14, %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %last2, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call21 = call i32 @simplejump_p(%struct.rtx_def* %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.29, label %land.lhs.true.23

land.lhs.true.23:                                 ; preds = %if.then.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call24 = call i32 @returnjump_p(%struct.rtx_def* %17)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.29, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %tobool27 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true.26
  %19 = load i32, i32* %ninsns, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %ninsns, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %land.lhs.true.26, %land.lhs.true.23, %if.then.20
  %20 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %i2, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.29, %land.lhs.true.14, %lor.lhs.false.11
  br label %while.body

while.body:                                       ; preds = %if.end.33, %if.end.94
  br label %while.cond.34

while.cond.34:                                    ; preds = %while.body.37, %while.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call35 = call i32 @active_insn_p(%struct.rtx_def* %22)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.34
  %23 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 0
  %25 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp = icmp ne %struct.rtx_def* %23, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.34
  %26 = phi i1 [ false, %while.cond.34 ], [ %cmp, %land.rhs ]
  br i1 %26, label %while.body.37, label %while.end

while.body.37:                                    ; preds = %land.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %i1, align 8
  br label %while.cond.34

while.end:                                        ; preds = %land.end
  br label %while.cond.41

while.cond.41:                                    ; preds = %while.body.48, %while.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call42 = call i32 @active_insn_p(%struct.rtx_def* %29)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.end.47, label %land.rhs.44

land.rhs.44:                                      ; preds = %while.cond.41
  %30 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %head45 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 0
  %32 = load %struct.rtx_def*, %struct.rtx_def** %head45, align 8
  %cmp46 = icmp ne %struct.rtx_def* %30, %32
  br label %land.end.47

land.end.47:                                      ; preds = %land.rhs.44, %while.cond.41
  %33 = phi i1 [ false, %while.cond.41 ], [ %cmp46, %land.rhs.44 ]
  br i1 %33, label %while.body.48, label %while.end.52

while.body.48:                                    ; preds = %land.end.47
  %34 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %i2, align 8
  br label %while.cond.41

while.end.52:                                     ; preds = %land.end.47
  %36 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %head53 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 0
  %38 = load %struct.rtx_def*, %struct.rtx_def** %head53, align 8
  %cmp54 = icmp eq %struct.rtx_def* %36, %38
  br i1 %cmp54, label %if.then.58, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %while.end.52
  %39 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %head56 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 0
  %41 = load %struct.rtx_def*, %struct.rtx_def** %head56, align 8
  %cmp57 = icmp eq %struct.rtx_def* %39, %41
  br i1 %cmp57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %lor.lhs.false.55, %while.end.52
  br label %while.end.101

if.end.59:                                        ; preds = %lor.lhs.false.55
  %42 = load i32, i32* %mode.addr, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call60 = call zeroext i1 @insns_match_p(i32 %42, %struct.rtx_def* %43, %struct.rtx_def* %44)
  br i1 %call60, label %if.end.62, label %if.then.61

if.then.61:                                       ; preds = %if.end.59
  br label %while.end.101

if.end.62:                                        ; preds = %if.end.59
  %45 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call63 = call i32 @active_insn_p(%struct.rtx_def* %45)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.94

if.then.65:                                       ; preds = %if.end.62
  %46 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %call66 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %46)
  store %struct.rtx_def* %call66, %struct.rtx_def** %equiv1, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %call67 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %47)
  store %struct.rtx_def* %call67, %struct.rtx_def** %equiv2, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %tobool68 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.else

land.lhs.true.69:                                 ; preds = %if.then.65
  %49 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %tobool70 = icmp ne %struct.rtx_def* %49, null
  br i1 %tobool70, label %if.else, label %if.then.71

if.then.71:                                       ; preds = %land.lhs.true.69
  %50 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  call void @remove_note(%struct.rtx_def* %50, %struct.rtx_def* %51)
  br label %if.end.92

if.else:                                          ; preds = %land.lhs.true.69, %if.then.65
  %52 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %tobool72 = icmp ne %struct.rtx_def* %52, null
  br i1 %tobool72, label %if.else.76, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %if.else
  %53 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %tobool74 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %land.lhs.true.73
  %54 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  call void @remove_note(%struct.rtx_def* %54, %struct.rtx_def* %55)
  br label %if.end.91

if.else.76:                                       ; preds = %land.lhs.true.73, %if.else
  %56 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %tobool77 = icmp ne %struct.rtx_def* %56, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.90

land.lhs.true.78:                                 ; preds = %if.else.76
  %57 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %tobool79 = icmp ne %struct.rtx_def* %57, null
  br i1 %tobool79, label %land.lhs.true.80, label %if.end.90

land.lhs.true.80:                                 ; preds = %land.lhs.true.78
  %58 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %call87 = call i32 @rtx_equal_p(%struct.rtx_def* %59, %struct.rtx_def* %61)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.90, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true.80
  %62 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  call void @remove_note(%struct.rtx_def* %62, %struct.rtx_def* %63)
  %64 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  call void @remove_note(%struct.rtx_def* %64, %struct.rtx_def* %65)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %land.lhs.true.80, %land.lhs.true.78, %if.else.76
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.then.75
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.71
  %66 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %afterlast1, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %afterlast2, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %last1, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %last2, align 8
  %70 = load i32, i32* %ninsns, align 4
  %inc93 = add nsw i32 %70, 1
  store i32 %inc93, i32* %ninsns, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.92, %if.end.62
  %71 = load %struct.rtx_def*, %struct.rtx_def** %i1, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %i1, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %i2, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %i2, align 8
  br label %while.body

while.end.101:                                    ; preds = %if.then.61, %if.then.58
  %75 = load i32, i32* %ninsns, align 4
  %tobool102 = icmp ne i32 %75, 0
  br i1 %tobool102, label %if.then.103, label %if.end.160

if.then.103:                                      ; preds = %while.end.101
  br label %while.cond

while.cond:                                       ; preds = %while.body.113, %if.then.103
  %76 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %head104 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 0
  %78 = load %struct.rtx_def*, %struct.rtx_def** %head104, align 8
  %cmp105 = icmp ne %struct.rtx_def* %76, %78
  br i1 %cmp105, label %land.rhs.106, label %land.end.112

land.rhs.106:                                     ; preds = %while.cond
  %79 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 1
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %80 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %call110 = call i32 @active_insn_p(%struct.rtx_def* %80)
  %tobool111 = icmp ne i32 %call110, 0
  %lnot = xor i1 %tobool111, true
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.106, %while.cond
  %81 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs.106 ]
  br i1 %81, label %while.body.113, label %while.end.117

while.body.113:                                   ; preds = %land.end.112
  %82 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %last1, align 8
  br label %while.cond

while.end.117:                                    ; preds = %land.end.112
  %84 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %bb1.addr, align 8
  %head118 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 0
  %86 = load %struct.rtx_def*, %struct.rtx_def** %head118, align 8
  %cmp119 = icmp ne %struct.rtx_def* %84, %86
  br i1 %cmp119, label %land.lhs.true.120, label %if.end.129

land.lhs.true.120:                                ; preds = %while.end.117
  %87 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load = load i32, i32* %89, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp124 = icmp eq i32 %bf.clear, 36
  br i1 %cmp124, label %if.then.125, label %if.end.129

if.then.125:                                      ; preds = %land.lhs.true.120
  %90 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 1
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %last1, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.then.125, %land.lhs.true.120, %while.end.117
  br label %while.cond.130

while.cond.130:                                   ; preds = %while.body.141, %if.end.129
  %92 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %93 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %head131 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %93, i32 0, i32 0
  %94 = load %struct.rtx_def*, %struct.rtx_def** %head131, align 8
  %cmp132 = icmp ne %struct.rtx_def* %92, %94
  br i1 %cmp132, label %land.rhs.133, label %land.end.140

land.rhs.133:                                     ; preds = %while.cond.130
  %95 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 1
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %call137 = call i32 @active_insn_p(%struct.rtx_def* %96)
  %tobool138 = icmp ne i32 %call137, 0
  %lnot139 = xor i1 %tobool138, true
  br label %land.end.140

land.end.140:                                     ; preds = %land.rhs.133, %while.cond.130
  %97 = phi i1 [ false, %while.cond.130 ], [ %lnot139, %land.rhs.133 ]
  br i1 %97, label %while.body.141, label %while.end.145

while.body.141:                                   ; preds = %land.end.140
  %98 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %last2, align 8
  br label %while.cond.130

while.end.145:                                    ; preds = %land.end.140
  %100 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2.addr, align 8
  %head146 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 0
  %102 = load %struct.rtx_def*, %struct.rtx_def** %head146, align 8
  %cmp147 = icmp ne %struct.rtx_def* %100, %102
  br i1 %cmp147, label %land.lhs.true.148, label %if.end.159

land.lhs.true.148:                                ; preds = %while.end.145
  %103 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 1
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load152 = load i32, i32* %105, align 8
  %bf.clear153 = and i32 %bf.load152, 65535
  %cmp154 = icmp eq i32 %bf.clear153, 36
  br i1 %cmp154, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %land.lhs.true.148
  %106 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %last2, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.155, %land.lhs.true.148, %while.end.145
  %108 = load %struct.rtx_def*, %struct.rtx_def** %last1, align 8
  %109 = load %struct.rtx_def**, %struct.rtx_def*** %f1.addr, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %109, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %last2, align 8
  %111 = load %struct.rtx_def**, %struct.rtx_def*** %f2.addr, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %111, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %while.end.101
  %112 = load i32, i32* %ninsns, align 4
  ret i32 %112
}

declare %struct.edge_def* @split_block(%struct.basic_block_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

declare %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare i32 @rtx_renumbered_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @swap_condition(i32) #1

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #4

; Function Attrs: nounwind uwtable
define internal zeroext i1 @insns_match_p(i32 %mode, %struct.rtx_def* %i1, %struct.rtx_def* %i2) #0 {
entry:
  %retval = alloca i1, align 1
  %mode.addr = alloca i32, align 4
  %i1.addr = alloca %struct.rtx_def*, align 8
  %i2.addr = alloca %struct.rtx_def*, align 8
  %p1 = alloca %struct.rtx_def*, align 8
  %p2 = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i1_regset = alloca i64, align 8
  %i2_regset = alloca i64, align 8
  %equiv1 = alloca %struct.rtx_def*, align 8
  %equiv2 = alloca %struct.rtx_def*, align 8
  %s1 = alloca %struct.rtx_def*, align 8
  %s2 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %i1, %struct.rtx_def** %i1.addr, align 8
  store %struct.rtx_def* %i2, %struct.rtx_def** %i2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %2 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp ne i32 %bf.clear, %bf.clear2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %p1, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %p2, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %p1, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load6 = load i32, i32* %9, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %10 = load %struct.rtx_def*, %struct.rtx_def** %p2, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load8 = load i32, i32* %11, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp ne i32 %bf.clear7, %bf.clear9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i1 false, i1* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 34
  br i1 %cmp15, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.12
  %14 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 7
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 7
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %15, %struct.rtx_def* %17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %if.end.12
  %18 = load i32, i32* %mode.addr, align 4
  %and = and i32 %18, 4
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end.121

land.lhs.true.25:                                 ; preds = %if.end.23
  %19 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %call26 = call i32 @stack_regs_mentioned(%struct.rtx_def* %19)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.121

if.then.28:                                       ; preds = %land.lhs.true.25
  store i64 0, i64* %i1_regset, align 8
  store i64 0, i64* %i2_regset, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 6
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.28
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool32 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.lshr = lshr i32 %bf.load33, 16
  %bf.clear34 = and i32 %bf.lshr, 255
  %cmp35 = icmp eq i32 %bf.clear34, 1
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.65

land.lhs.true.36:                                 ; preds = %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load40 = load i32, i32* %27, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 61
  br i1 %cmp42, label %land.lhs.true.43, label %if.end.65

land.lhs.true.43:                                 ; preds = %land.lhs.true.36
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %30 = load i32, i32* %rtuint, align 4
  %cmp49 = icmp uge i32 %30, 8
  br i1 %cmp49, label %land.lhs.true.50, label %if.end.65

land.lhs.true.50:                                 ; preds = %land.lhs.true.43
  %31 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 0
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx53, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtuint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %33 = load i32, i32* %rtuint56, align 4
  %cmp57 = icmp ule i32 %33, 15
  br i1 %cmp57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %land.lhs.true.50
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtuint64 = bitcast %union.rtunion_def* %arrayidx63 to i32*
  %36 = load i32, i32* %rtuint64, align 4
  %sh_prom = zext i32 %36 to i64
  %shl = shl i64 1, %sh_prom
  %37 = load i64, i64* %i1_regset, align 8
  %or = or i64 %37, %shl
  store i64 %or, i64* %i1_regset, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.58, %land.lhs.true.50, %land.lhs.true.43, %land.lhs.true.36, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %38 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 6
  %rtx71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx71, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %note, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.113, %for.end
  %42 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool73 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool73, label %for.body.74, label %for.end.117

for.body.74:                                      ; preds = %for.cond.72
  %43 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load75 = load i32, i32* %44, align 8
  %bf.lshr76 = lshr i32 %bf.load75, 16
  %bf.clear77 = and i32 %bf.lshr76, 255
  %cmp78 = icmp eq i32 %bf.clear77, 1
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.112

land.lhs.true.79:                                 ; preds = %for.body.74
  %45 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load83 = load i32, i32* %47, align 8
  %bf.clear84 = and i32 %bf.load83, 65535
  %cmp85 = icmp eq i32 %bf.clear84, 61
  br i1 %cmp85, label %land.lhs.true.86, label %if.end.112

land.lhs.true.86:                                 ; preds = %land.lhs.true.79
  %48 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtuint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %50 = load i32, i32* %rtuint92, align 4
  %cmp93 = icmp uge i32 %50, 8
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.112

land.lhs.true.94:                                 ; preds = %land.lhs.true.86
  %51 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtuint100 = bitcast %union.rtunion_def* %arrayidx99 to i32*
  %53 = load i32, i32* %rtuint100, align 4
  %cmp101 = icmp ule i32 %53, 15
  br i1 %cmp101, label %if.then.102, label %if.end.112

if.then.102:                                      ; preds = %land.lhs.true.94
  %54 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtuint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %56 = load i32, i32* %rtuint108, align 4
  %sh_prom109 = zext i32 %56 to i64
  %shl110 = shl i64 1, %sh_prom109
  %57 = load i64, i64* %i2_regset, align 8
  %or111 = or i64 %57, %shl110
  store i64 %or111, i64* %i2_regset, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.102, %land.lhs.true.94, %land.lhs.true.86, %land.lhs.true.79, %for.body.74
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %58 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %note, align 8
  br label %for.cond.72

for.end.117:                                      ; preds = %for.cond.72
  %60 = load i64, i64* %i1_regset, align 8
  %61 = load i64, i64* %i2_regset, align 8
  %cmp118 = icmp eq i64 %60, %61
  br i1 %cmp118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %for.end.117
  br label %done

if.end.120:                                       ; preds = %for.end.117
  store i1 false, i1* %retval
  br label %return

done:                                             ; preds = %if.then.119
  br label %if.end.121

if.end.121:                                       ; preds = %done, %land.lhs.true.25, %if.end.23
  %62 = load i32, i32* @reload_completed, align 4
  %tobool122 = icmp ne i32 %62, 0
  br i1 %tobool122, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.121
  %63 = load %struct.rtx_def*, %struct.rtx_def** %p1, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %p2, align 8
  %call123 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %63, %struct.rtx_def* %64)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.end.293, label %if.then.127

cond.false:                                       ; preds = %if.end.121
  %65 = load %struct.rtx_def*, %struct.rtx_def** %p1, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %p2, align 8
  %call125 = call i32 @rtx_equal_p(%struct.rtx_def* %65, %struct.rtx_def* %66)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end.293, label %if.then.127

if.then.127:                                      ; preds = %cond.false, %cond.true
  %67 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %call128 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %67)
  store %struct.rtx_def* %call128, %struct.rtx_def** %equiv1, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %call129 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %68)
  store %struct.rtx_def* %call129, %struct.rtx_def** %equiv2, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %tobool130 = icmp ne %struct.rtx_def* %69, null
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.292

land.lhs.true.131:                                ; preds = %if.then.127
  %70 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %tobool132 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool132, label %land.lhs.true.133, label %if.end.292

land.lhs.true.133:                                ; preds = %land.lhs.true.131
  %71 = load i32, i32* @reload_completed, align 4
  %tobool134 = icmp ne i32 %71, 0
  br i1 %tobool134, label %lor.lhs.false, label %if.then.199

lor.lhs.false:                                    ; preds = %land.lhs.true.133
  %72 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 0
  %rtx137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx137, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load138 = load i32, i32* %74, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 67
  br i1 %cmp140, label %land.lhs.true.190, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %lor.lhs.false
  %75 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load145 = load i32, i32* %77, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp eq i32 %bf.clear146, 68
  br i1 %cmp147, label %land.lhs.true.190, label %lor.lhs.false.148

lor.lhs.false.148:                                ; preds = %lor.lhs.false.141
  %78 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load152 = load i32, i32* %80, align 8
  %bf.clear153 = and i32 %bf.load152, 65535
  %cmp154 = icmp eq i32 %bf.clear153, 54
  br i1 %cmp154, label %land.lhs.true.190, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %lor.lhs.false.148
  %81 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load159 = load i32, i32* %83, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 55
  br i1 %cmp161, label %land.lhs.true.190, label %lor.lhs.false.162

lor.lhs.false.162:                                ; preds = %lor.lhs.false.155
  %84 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtx165 = bitcast %union.rtunion_def* %arrayidx164 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx165, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load166 = load i32, i32* %86, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp eq i32 %bf.clear167, 58
  br i1 %cmp168, label %land.lhs.true.190, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %lor.lhs.false.162
  %87 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load173 = load i32, i32* %89, align 8
  %bf.clear174 = and i32 %bf.load173, 65535
  %cmp175 = icmp eq i32 %bf.clear174, 134
  br i1 %cmp175, label %land.lhs.true.190, label %lor.lhs.false.176

lor.lhs.false.176:                                ; preds = %lor.lhs.false.169
  %90 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load180 = load i32, i32* %92, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %cmp182 = icmp eq i32 %bf.clear181, 56
  br i1 %cmp182, label %land.lhs.true.190, label %lor.lhs.false.183

lor.lhs.false.183:                                ; preds = %lor.lhs.false.176
  %93 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 0
  %rtx186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx186, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load187 = load i32, i32* %95, align 8
  %bf.clear188 = and i32 %bf.load187, 65535
  %cmp189 = icmp eq i32 %bf.clear188, 140
  br i1 %cmp189, label %land.lhs.true.190, label %if.end.292

land.lhs.true.190:                                ; preds = %lor.lhs.false.183, %lor.lhs.false.176, %lor.lhs.false.169, %lor.lhs.false.162, %lor.lhs.false.155, %lor.lhs.false.148, %lor.lhs.false.141, %lor.lhs.false
  %96 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 0
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 0
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx196, align 8
  %call197 = call i32 @rtx_equal_p(%struct.rtx_def* %97, %struct.rtx_def* %99)
  %tobool198 = icmp ne i32 %call197, 0
  br i1 %tobool198, label %if.then.199, label %if.end.292

if.then.199:                                      ; preds = %land.lhs.true.190, %land.lhs.true.133
  %100 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load200 = load i32, i32* %101, align 8
  %bf.clear201 = and i32 %bf.load200, 65535
  %idxprom = sext i32 %bf.clear201 to i64
  %arrayidx202 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %102 = load i8, i8* %arrayidx202, align 1
  %conv = sext i8 %102 to i32
  %cmp203 = icmp eq i32 %conv, 105
  br i1 %cmp203, label %cond.true.205, label %cond.false.222

cond.true.205:                                    ; preds = %if.then.199
  %103 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 3
  %rtx208 = bitcast %union.rtunion_def* %arrayidx207 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx208, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load209 = load i32, i32* %105, align 8
  %bf.clear210 = and i32 %bf.load209, 65535
  %cmp211 = icmp eq i32 %bf.clear210, 47
  br i1 %cmp211, label %cond.true.213, label %cond.false.217

cond.true.213:                                    ; preds = %cond.true.205
  %106 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 3
  %rtx216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx216, align 8
  br label %cond.end

cond.false.217:                                   ; preds = %cond.true.205
  %108 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 3
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %call221 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %108, %struct.rtx_def* %110)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.217, %cond.true.213
  %cond = phi %struct.rtx_def* [ %107, %cond.true.213 ], [ %call221, %cond.false.217 ]
  br label %cond.end.223

cond.false.222:                                   ; preds = %if.then.199
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.false.222, %cond.end
  %cond224 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.222 ]
  store %struct.rtx_def* %cond224, %struct.rtx_def** %s1, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load225 = load i32, i32* %112, align 8
  %bf.clear226 = and i32 %bf.load225, 65535
  %idxprom227 = sext i32 %bf.clear226 to i64
  %arrayidx228 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom227
  %113 = load i8, i8* %arrayidx228, align 1
  %conv229 = sext i8 %113 to i32
  %cmp230 = icmp eq i32 %conv229, 105
  br i1 %cmp230, label %cond.true.232, label %cond.false.251

cond.true.232:                                    ; preds = %cond.end.223
  %114 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld233 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx234 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld233, i32 0, i64 3
  %rtx235 = bitcast %union.rtunion_def* %arrayidx234 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx235, align 8
  %116 = bitcast %struct.rtx_def* %115 to i32*
  %bf.load236 = load i32, i32* %116, align 8
  %bf.clear237 = and i32 %bf.load236, 65535
  %cmp238 = icmp eq i32 %bf.clear237, 47
  br i1 %cmp238, label %cond.true.240, label %cond.false.244

cond.true.240:                                    ; preds = %cond.true.232
  %117 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 3
  %rtx243 = bitcast %union.rtunion_def* %arrayidx242 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx243, align 8
  br label %cond.end.249

cond.false.244:                                   ; preds = %cond.true.232
  %119 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %fld245 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld245, i32 0, i64 3
  %rtx247 = bitcast %union.rtunion_def* %arrayidx246 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx247, align 8
  %call248 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %119, %struct.rtx_def* %121)
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.244, %cond.true.240
  %cond250 = phi %struct.rtx_def* [ %118, %cond.true.240 ], [ %call248, %cond.false.244 ]
  br label %cond.end.252

cond.false.251:                                   ; preds = %cond.end.223
  br label %cond.end.252

cond.end.252:                                     ; preds = %cond.false.251, %cond.end.249
  %cond253 = phi %struct.rtx_def* [ %cond250, %cond.end.249 ], [ null, %cond.false.251 ]
  store %struct.rtx_def* %cond253, %struct.rtx_def** %s2, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %s1, align 8
  %cmp254 = icmp ne %struct.rtx_def* %122, null
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.291

land.lhs.true.256:                                ; preds = %cond.end.252
  %123 = load %struct.rtx_def*, %struct.rtx_def** %s2, align 8
  %cmp257 = icmp ne %struct.rtx_def* %123, null
  br i1 %cmp257, label %land.lhs.true.259, label %if.end.291

land.lhs.true.259:                                ; preds = %land.lhs.true.256
  %124 = load %struct.rtx_def*, %struct.rtx_def** %s1, align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtx262 = bitcast %union.rtunion_def* %arrayidx261 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx262, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %s2, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 0
  %rtx265 = bitcast %union.rtunion_def* %arrayidx264 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx265, align 8
  %call266 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %125, %struct.rtx_def* %127)
  %tobool267 = icmp ne i32 %call266, 0
  br i1 %tobool267, label %if.then.268, label %if.end.291

if.then.268:                                      ; preds = %land.lhs.true.259
  %128 = load %struct.rtx_def*, %struct.rtx_def** %i1.addr, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %s1, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 1
  %rtx271 = bitcast %union.rtunion_def* %arrayidx270 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %equiv1, align 8
  %fld272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld272, i32 0, i64 0
  %rtx274 = bitcast %union.rtunion_def* %arrayidx273 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx274, align 8
  %call275 = call i32 @validate_change(%struct.rtx_def* %128, %struct.rtx_def** %rtx271, %struct.rtx_def* %131, i32 1)
  %132 = load %struct.rtx_def*, %struct.rtx_def** %i2.addr, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %s2, align 8
  %fld276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld276, i32 0, i64 1
  %rtx278 = bitcast %union.rtunion_def* %arrayidx277 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %equiv2, align 8
  %fld279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld279, i32 0, i64 0
  %rtx281 = bitcast %union.rtunion_def* %arrayidx280 to %struct.rtx_def**
  %135 = load %struct.rtx_def*, %struct.rtx_def** %rtx281, align 8
  %call282 = call i32 @validate_change(%struct.rtx_def* %132, %struct.rtx_def** %rtx278, %struct.rtx_def* %135, i32 1)
  %136 = load %struct.rtx_def*, %struct.rtx_def** %p1, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %p2, align 8
  %call283 = call i32 @rtx_renumbered_equal_p(%struct.rtx_def* %136, %struct.rtx_def* %137)
  %tobool284 = icmp ne i32 %call283, 0
  br i1 %tobool284, label %if.else, label %if.then.285

if.then.285:                                      ; preds = %if.then.268
  call void @cancel_changes(i32 0)
  br label %if.end.290

if.else:                                          ; preds = %if.then.268
  %call286 = call i32 @apply_change_group()
  %tobool287 = icmp ne i32 %call286, 0
  br i1 %tobool287, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %if.else
  store i1 true, i1* %retval
  br label %return

if.end.289:                                       ; preds = %if.else
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %if.then.285
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %land.lhs.true.259, %land.lhs.true.256, %cond.end.252
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %land.lhs.true.190, %lor.lhs.false.183, %land.lhs.true.131, %if.then.127
  store i1 false, i1* %retval
  br label %return

if.end.293:                                       ; preds = %cond.false, %cond.true
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %if.end.293, %if.end.292, %if.then.288, %if.end.120, %if.then.22, %if.then.11, %if.then
  %138 = load i1, i1* %retval
  ret i1 %138
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @stack_regs_mentioned(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @validate_change(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare void @cancel_changes(i32) #1

declare i32 @apply_change_group() #1

declare i32 @returnjump_p(%struct.rtx_def*) #1

declare i32 @simplejump_p(%struct.rtx_def*) #1

declare i32 @active_insn_p(%struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
