; ModuleID = 'ifcvt.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.noce_if_info = type { %struct.basic_block_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.propagate_block_info = type opaque

@num_possible_if_blocks = internal global i32 0, align 4
@num_updated_if_blocks = internal global i32 0, align 4
@num_removed_blocks = internal global i32 0, align 4
@life_data_ok = internal global i8 0, align 1
@post_dominators = internal global %struct.simple_bitmap_def** null, align 8
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@max_regno = external global i32, align 4
@.str = private unnamed_addr constant [34 x i8] c"\0A%d possible IF blocks searched.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%d IF blocks converted.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%d basic blocks deleted.\0A\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Conversion succeeded.\0A\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"\0AIF-THEN-ELSE block found, start %d, then %d, else %d, join %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\0AIF-THEN block found, start %d, then %d, join %d\0A\00", align 1
@reload_completed = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@no_new_pseudos = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@flag_trapping_math = external global i32, align 4
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@flag_unsafe_math_optimizations = external global i32, align 4
@ix86_branch_cost = external global i32, align 4
@cse_not_expected = external global i32, align 4
@target_flags = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@const_true_rtx = external global %struct.rtx_def*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"ifcvt.c\00", align 1
@__FUNCTION__.merge_if_block = private unnamed_addr constant [15 x i8] c"merge_if_block\00", align 1
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str.7 = private unnamed_addr constant [41 x i8] c"\0ATRAP-IF block found, start %d, trap %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-1 found, start %d, then %d\0A\00", align 1
@fixed_regs = external global [53 x i8], align 16
@global_regs = external global [53 x i8], align 16
@.str.9 = private unnamed_addr constant [37 x i8] c"\0AIF-CASE-2 found, start %d, else %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @if_convert(i32 %x_life_data_ok) #0 {
entry:
  %x_life_data_ok.addr = alloca i32, align 4
  %block_num = alloca i32, align 4
  %bb6 = alloca %struct.basic_block_def*, align 8
  %update_life_blocks = alloca %struct.simple_bitmap_def*, align 8
  store i32 %x_life_data_ok, i32* %x_life_data_ok.addr, align 4
  store i32 0, i32* @num_possible_if_blocks, align 4
  store i32 0, i32* @num_updated_if_blocks, align 4
  store i32 0, i32* @num_removed_blocks, align 4
  %0 = load i32, i32* %x_life_data_ok.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %frombool = zext i1 %cmp to i8
  store i8 %frombool, i8* @life_data_ok, align 1
  call void @free_basic_block_vars(i32 1)
  store %struct.simple_bitmap_def** null, %struct.simple_bitmap_def*** @post_dominators, align 8
  %1 = load i8, i8* @life_data_ok, align 1
  %tobool = trunc i8 %1 to i1
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @n_basic_blocks, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** @post_dominators, align 8
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @post_dominators, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %4, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %block_num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %block_num, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %block_num, align 4
  %conv = sext i32 %7 to i64
  %shl = shl i64 %conv, 1
  %8 = inttoptr i64 %shl to i8*
  %9 = load i32, i32* %block_num, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 10
  store i8* %8, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %block_num, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %block_num, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %block_num, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %if.end.15, %for.end
  %13 = load i32, i32* %block_num, align 4
  %14 = load i32, i32* @n_basic_blocks, align 4
  %cmp3 = icmp slt i32 %13, %14
  br i1 %cmp3, label %for.body.5, label %for.end.16

for.body.5:                                       ; preds = %for.cond.2
  %15 = load i32, i32* %block_num, align 4
  %idxprom7 = sext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  store %struct.basic_block_def* %17, %struct.basic_block_def** %bb6, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %bb6, align 8
  %call11 = call i32 @find_if_header(%struct.basic_block_def* %18)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body.5
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb6, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index, align 4
  store i32 %20, i32* %block_num, align 4
  br label %if.end.15

if.else:                                          ; preds = %for.body.5
  %21 = load i32, i32* %block_num, align 4
  %inc14 = add nsw i32 %21, 1
  store i32 %inc14, i32* %block_num, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.13
  br label %for.cond.2

for.end.16:                                       ; preds = %for.cond.2
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @post_dominators, align 8
  %tobool17 = icmp ne %struct.simple_bitmap_def** %22, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end.16
  %23 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @post_dominators, align 8
  %24 = bitcast %struct.simple_bitmap_def** %23 to i8*
  call void @free(i8* %24) #4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end.16
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool20 = icmp ne %struct._IO_FILE* %25, null
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.19
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %26)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  %27 = load i32, i32* @num_removed_blocks, align 4
  %tobool24 = icmp ne i32 %27, 0
  br i1 %tobool24, label %land.lhs.true, label %if.else.55

land.lhs.true:                                    ; preds = %if.end.23
  %28 = load i8, i8* @life_data_ok, align 1
  %tobool25 = trunc i8 %28 to i1
  br i1 %tobool25, label %if.then.27, label %if.else.55

if.then.27:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* @n_basic_blocks, align 4
  %call28 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %29)
  store %struct.simple_bitmap_def* %call28, %struct.simple_bitmap_def** %update_life_blocks, align 8
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %update_life_blocks, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %30)
  %31 = load i32, i32* @max_regno, align 4
  %call29 = call i32 @max_reg_num()
  %cmp30 = icmp slt i32 %31, %call29
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.then.27
  %call33 = call i32 @max_reg_num()
  store i32 %call33, i32* @max_regno, align 4
  %32 = load i32, i32* @max_regno, align 4
  %conv34 = sext i32 %32 to i64
  call void @allocate_reg_info(i64 %conv34, i32 0, i32 0)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.then.27
  store i32 0, i32* %block_num, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.51, %if.end.35
  %33 = load i32, i32* %block_num, align 4
  %34 = load i32, i32* @n_basic_blocks, align 4
  %cmp37 = icmp slt i32 %33, %34
  br i1 %cmp37, label %for.body.39, label %for.end.53

for.body.39:                                      ; preds = %for.cond.36
  %35 = load i32, i32* %block_num, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data41 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %36, i32 0, i32 4
  %bb42 = bitcast %union.varray_data_tag* %data41 to [1 x %struct.basic_block_def*]*
  %arrayidx43 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb42, i32 0, i64 %idxprom40
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx43, align 8
  %aux44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 10
  %38 = load i8*, i8** %aux44, align 8
  %39 = ptrtoint i8* %38 to i64
  %and = and i64 %39, 1
  %tobool45 = icmp ne i64 %and, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %for.body.39
  %40 = load i32, i32* %block_num, align 4
  %rem = urem i32 %40, 64
  %sh_prom = zext i32 %rem to i64
  %shl47 = shl i64 1, %sh_prom
  %41 = load i32, i32* %block_num, align 4
  %div = udiv i32 %41, 64
  %idxprom48 = zext i32 %div to i64
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %update_life_blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %42, i32 0, i32 3
  %arrayidx49 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom48
  %43 = load i64, i64* %arrayidx49, align 8
  %or = or i64 %43, %shl47
  store i64 %or, i64* %arrayidx49, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %for.body.39
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %44 = load i32, i32* %block_num, align 4
  %inc52 = add nsw i32 %44, 1
  store i32 %inc52, i32* %block_num, align 4
  br label %for.cond.36

for.end.53:                                       ; preds = %for.cond.36
  call void @clear_aux_for_blocks()
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %update_life_blocks, align 8
  %call54 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* %45, i32 1)
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %update_life_blocks, align 8
  call void @update_life_info(%struct.simple_bitmap_def* %46, i32 1, i32 25)
  %47 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %update_life_blocks, align 8
  %48 = bitcast %struct.simple_bitmap_def* %47 to i8*
  call void @free(i8* %48) #4
  br label %if.end.56

if.else.55:                                       ; preds = %land.lhs.true, %if.end.23
  call void @clear_aux_for_blocks()
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.55, %for.end.53
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool57 = icmp ne %struct._IO_FILE* %49, null
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.65

land.lhs.true.58:                                 ; preds = %if.end.56
  %50 = load i32, i32* @num_possible_if_blocks, align 4
  %cmp59 = icmp sgt i32 %50, 0
  br i1 %cmp59, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %land.lhs.true.58
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %52 = load i32, i32* @num_possible_if_blocks, align 4
  %call62 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %54 = load i32, i32* @num_updated_if_blocks, align 4
  %call63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %56 = load i32, i32* @num_removed_blocks, align 4
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %56)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %land.lhs.true.58, %if.end.56
  ret void
}

declare void @free_basic_block_vars(i32) #1

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_if_header(%struct.basic_block_def* %test_bb) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_edge = alloca %struct.edge_def*, align 8
  %else_edge = alloca %struct.edge_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %1, %struct.edge_def** %then_edge, align 8
  %cmp = icmp eq %struct.edge_def* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 1
  %3 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %3, %struct.edge_def** %else_edge, align 8
  %cmp1 = icmp eq %struct.edge_def* %3, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %4 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %succ_next3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 1
  %5 = load %struct.edge_def*, %struct.edge_def** %succ_next3, align 8
  %cmp4 = icmp ne %struct.edge_def* %5, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.2
  %6 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 6
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.9, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %if.end
  %8 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %flags6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 6
  %9 = load i32, i32* %flags6, align 4
  %and7 = and i32 %9, 14
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false.5, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false.5
  %10 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %flags11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 6
  %11 = load i32, i32* %flags11, align 4
  %and12 = and i32 %11, 1
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.10
  br label %if.end.21

if.else:                                          ; preds = %if.end.10
  %12 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %flags15 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 6
  %13 = load i32, i32* %flags15, align 4
  %and16 = and i32 %13, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %if.else
  %14 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  store %struct.edge_def* %14, %struct.edge_def** %e, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  store %struct.edge_def* %15, %struct.edge_def** %else_edge, align 8
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %16, %struct.edge_def** %then_edge, align 8
  br label %if.end.20

if.else.19:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.then.18
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.14
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %18 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %19 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %call = call i32 @find_if_block(%struct.basic_block_def* %17, %struct.edge_def* %18, %struct.edge_def* %19)
  %tobool22 = icmp ne i32 %call, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  br label %success

if.end.24:                                        ; preds = %if.end.21
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %21 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %call25 = call i32 @find_cond_trap(%struct.basic_block_def* %20, %struct.edge_def* %21, %struct.edge_def* %22)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  br label %success

if.end.28:                                        ; preds = %if.end.24
  %23 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @post_dominators, align 8
  %tobool29 = icmp ne %struct.simple_bitmap_def** %23, null
  br i1 %tobool29, label %if.then.30, label %if.end.39

if.then.30:                                       ; preds = %if.end.28
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %25 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %26 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %call31 = call i32 @find_if_case_1(%struct.basic_block_def* %24, %struct.edge_def* %25, %struct.edge_def* %26)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.then.30
  br label %success

if.end.34:                                        ; preds = %if.then.30
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %28 = load %struct.edge_def*, %struct.edge_def** %then_edge, align 8
  %29 = load %struct.edge_def*, %struct.edge_def** %else_edge, align 8
  %call35 = call i32 @find_if_case_2(%struct.basic_block_def* %27, %struct.edge_def* %28, %struct.edge_def* %29)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %success

if.end.38:                                        ; preds = %if.end.34
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.end.28
  store i32 0, i32* %retval
  br label %return

success:                                          ; preds = %if.then.37, %if.then.33, %if.then.27, %if.then.23
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool40 = icmp ne %struct._IO_FILE* %30, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %success
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %success
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.end.39, %if.else.19, %if.then.9, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @fflush(%struct._IO_FILE*) #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare i32 @max_reg_num() #1

declare void @allocate_reg_info(i64, i32, i32) #1

declare void @clear_aux_for_blocks() #1

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_if_block(%struct.basic_block_def* %test_bb, %struct.edge_def* %then_edge, %struct.edge_def* %else_edge) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_edge.addr = alloca %struct.edge_def*, align 8
  %else_edge.addr = alloca %struct.edge_def*, align 8
  %then_bb = alloca %struct.basic_block_def*, align 8
  %else_bb = alloca %struct.basic_block_def*, align 8
  %join_bb = alloca %struct.basic_block_def*, align 8
  %then_succ = alloca %struct.edge_def*, align 8
  %else_succ = alloca %struct.edge_def*, align 8
  %next_index = alloca i32, align 4
  %last_insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.edge_def* %then_edge, %struct.edge_def** %then_edge.addr, align 8
  store %struct.edge_def* %else_edge, %struct.edge_def** %else_edge.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %then_edge.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %then_bb, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %else_edge.addr, align 8
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %else_bb, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %join_bb, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %then_succ, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %succ2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 5
  %7 = load %struct.edge_def*, %struct.edge_def** %succ2, align 8
  store %struct.edge_def* %7, %struct.edge_def** %else_succ, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 4
  %9 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 0
  %10 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp = icmp ne %struct.edge_def* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %cmp3 = icmp ne %struct.edge_def* %11, null
  br i1 %cmp3, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp4 = icmp ne %struct.edge_def* %13, null
  br i1 %cmp4, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 6
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, 14
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false, %if.end
  %16 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %cmp7 = icmp eq %struct.edge_def* %16, null
  br i1 %cmp7, label %if.then.8, label %if.else.27

if.then.8:                                        ; preds = %if.end.6
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %pred9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 4
  %18 = load %struct.edge_def*, %struct.edge_def** %pred9, align 8
  %pred_next10 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 0
  %19 = load %struct.edge_def*, %struct.edge_def** %pred_next10, align 8
  %cmp11 = icmp eq %struct.edge_def* %19, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 1
  %21 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %last_insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.12
  %22 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %tobool13 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool13, label %land.lhs.true.14, label %land.end

land.lhs.true.14:                                 ; preds = %while.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load = load i32, i32* %24, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp15 = icmp eq i32 %bf.clear, 37
  br i1 %cmp15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.14
  %25 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 0
  %27 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp16 = icmp ne %struct.rtx_def* %25, %27
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.14, %while.cond
  %28 = phi i1 [ false, %land.lhs.true.14 ], [ false, %while.cond ], [ %cmp16, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %last_insn, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %tobool17 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.25

land.lhs.true.18:                                 ; preds = %while.end
  %32 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load19 = load i32, i32* %33, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 33
  br i1 %cmp21, label %land.lhs.true.22, label %if.end.25

land.lhs.true.22:                                 ; preds = %land.lhs.true.18
  %34 = load %struct.rtx_def*, %struct.rtx_def** %last_insn, align 8
  %call = call i32 @simplejump_p(%struct.rtx_def* %34)
  %tobool23 = icmp ne i32 %call, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %land.lhs.true.22
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.22, %land.lhs.true.18, %while.end
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  store %struct.basic_block_def* %35, %struct.basic_block_def** %join_bb, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %else_bb, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.then.8
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.53

if.else.27:                                       ; preds = %if.end.6
  %36 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %dest28 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 3
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest28, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %cmp29 = icmp eq %struct.basic_block_def* %37, %38
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %if.else.27
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  store %struct.basic_block_def* %39, %struct.basic_block_def** %join_bb, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %else_bb, align 8
  br label %if.end.52

if.else.31:                                       ; preds = %if.else.27
  %40 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %cmp32 = icmp ne %struct.edge_def* %40, null
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.50

land.lhs.true.33:                                 ; preds = %if.else.31
  %41 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %dest34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 3
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest34, align 8
  %43 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 3
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %dest35, align 8
  %cmp36 = icmp eq %struct.basic_block_def* %42, %44
  br i1 %cmp36, label %land.lhs.true.37, label %if.else.50

land.lhs.true.37:                                 ; preds = %land.lhs.true.33
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %pred38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 4
  %46 = load %struct.edge_def*, %struct.edge_def** %pred38, align 8
  %pred_next39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 0
  %47 = load %struct.edge_def*, %struct.edge_def** %pred_next39, align 8
  %cmp40 = icmp eq %struct.edge_def* %47, null
  br i1 %cmp40, label %land.lhs.true.41, label %if.else.50

land.lhs.true.41:                                 ; preds = %land.lhs.true.37
  %48 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %succ_next42 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %48, i32 0, i32 1
  %49 = load %struct.edge_def*, %struct.edge_def** %succ_next42, align 8
  %cmp43 = icmp eq %struct.edge_def* %49, null
  br i1 %cmp43, label %land.lhs.true.44, label %if.else.50

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %50 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %flags45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %50, i32 0, i32 6
  %51 = load i32, i32* %flags45, align 4
  %and46 = and i32 %51, 14
  %tobool47 = icmp ne i32 %and46, 0
  br i1 %tobool47, label %if.else.50, label %if.then.48

if.then.48:                                       ; preds = %land.lhs.true.44
  %52 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %52, i32 0, i32 3
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %dest49, align 8
  store %struct.basic_block_def* %53, %struct.basic_block_def** %join_bb, align 8
  br label %if.end.51

if.else.50:                                       ; preds = %land.lhs.true.44, %land.lhs.true.41, %land.lhs.true.37, %land.lhs.true.33, %if.else.31
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %if.then.48
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then.30
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.26
  %54 = load i32, i32* @num_possible_if_blocks, align 4
  %inc = add nsw i32 %54, 1
  store i32 %inc, i32* @num_possible_if_blocks, align 4
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool54 = icmp ne %struct._IO_FILE* %55, null
  br i1 %tobool54, label %if.then.55, label %if.end.68

if.then.55:                                       ; preds = %if.end.53
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %tobool56 = icmp ne %struct.basic_block_def* %56, null
  br i1 %tobool56, label %if.then.57, label %if.else.62

if.then.57:                                       ; preds = %if.then.55
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index, align 4
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 11
  %61 = load i32, i32* %index58, align 4
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %index59 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 11
  %63 = load i32, i32* %index59, align 4
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb, align 8
  %index60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index60, align 4
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), i32 %59, i32 %61, i32 %63, i32 %65)
  br label %if.end.67

if.else.62:                                       ; preds = %if.then.55
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 11
  %68 = load i32, i32* %index63, align 4
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %index64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %69, i32 0, i32 11
  %70 = load i32, i32* %index64, align 4
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb, align 8
  %index65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 11
  %72 = load i32, i32* %index65, align 4
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0), i32 %68, i32 %70, i32 %72)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.62, %if.then.57
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.53
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %index69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 11
  %74 = load i32, i32* %index69, align 4
  store i32 %74, i32* %next_index, align 4
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %tobool70 = icmp ne %struct.basic_block_def* %75, null
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %if.end.68
  %76 = load i32, i32* %next_index, align 4
  %inc72 = add nsw i32 %76, 1
  store i32 %inc72, i32* %next_index, align 4
  %77 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %index73 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %77, i32 0, i32 11
  %78 = load i32, i32* %index73, align 4
  %cmp74 = icmp ne i32 %inc72, %78
  br i1 %cmp74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %land.lhs.true.71, %if.end.68
  %79 = load i32, i32* %next_index, align 4
  %inc77 = add nsw i32 %79, 1
  store i32 %inc77, i32* %next_index, align 4
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb, align 8
  %index78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 11
  %81 = load i32, i32* %index78, align 4
  %cmp79 = icmp ne i32 %inc77, %81
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.88

land.lhs.true.80:                                 ; preds = %if.end.76
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb, align 8
  %index81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %82, i32 0, i32 11
  %83 = load i32, i32* %index81, align 4
  %cmp82 = icmp ne i32 %83, -2
  br i1 %cmp82, label %if.then.83, label %if.end.88

if.then.83:                                       ; preds = %land.lhs.true.80
  %84 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %tobool84 = icmp ne %struct.basic_block_def* %84, null
  br i1 %tobool84, label %if.then.85, label %if.else.86

if.then.85:                                       ; preds = %if.then.83
  store %struct.basic_block_def* null, %struct.basic_block_def** %join_bb, align 8
  br label %if.end.87

if.else.86:                                       ; preds = %if.then.83
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.85
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %land.lhs.true.80, %if.end.76
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb, align 8
  %call89 = call i32 @process_if_block(%struct.basic_block_def* %85, %struct.basic_block_def* %86, %struct.basic_block_def* %87, %struct.basic_block_def* %88)
  store i32 %call89, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.else.86, %if.then.75, %if.else.50, %if.else, %if.then.24, %if.then.5, %if.then
  %89 = load i32, i32* %retval
  ret i32 %89
}

; Function Attrs: nounwind uwtable
define internal i32 @find_cond_trap(%struct.basic_block_def* %test_bb, %struct.edge_def* %then_edge, %struct.edge_def* %else_edge) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_edge.addr = alloca %struct.edge_def*, align 8
  %else_edge.addr = alloca %struct.edge_def*, align 8
  %then_bb = alloca %struct.basic_block_def*, align 8
  %else_bb = alloca %struct.basic_block_def*, align 8
  %trap_bb = alloca %struct.basic_block_def*, align 8
  %other_bb = alloca %struct.basic_block_def*, align 8
  %trap = alloca %struct.rtx_def*, align 8
  %jump = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %cond_earliest = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %lab = alloca %struct.rtx_def*, align 8
  %newjump = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.edge_def* %then_edge, %struct.edge_def** %then_edge.addr, align 8
  store %struct.edge_def* %else_edge, %struct.edge_def** %else_edge.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %then_edge.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %then_bb, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %else_edge.addr, align 8
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %else_bb, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %call = call %struct.rtx_def* @block_has_only_trap(%struct.basic_block_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %trap, align 8
  %cmp = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %trap_bb, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %other_bb, align 8
  br label %if.end.6

if.else:                                          ; preds = %entry
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %call2 = call %struct.rtx_def* @block_has_only_trap(%struct.basic_block_def* %7)
  store %struct.rtx_def* %call2, %struct.rtx_def** %trap, align 8
  %cmp3 = icmp ne %struct.rtx_def* %call2, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %trap_bb, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  store %struct.basic_block_def* %9, %struct.basic_block_def** %other_bb, align 8
  br label %if.end

if.else.5:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.4
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool = icmp ne %struct._IO_FILE* %10, null
  br i1 %tobool, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index, align 4
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %trap_bb, align 8
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index8, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0), i32 %13, i32 %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.end.6
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %jump, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call11 = call %struct.rtx_def* @noce_get_condition(%struct.rtx_def* %18, %struct.rtx_def** %cond_earliest)
  store %struct.rtx_def* %call11, %struct.rtx_def** %cond, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool12 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %20 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call15 = call i32 @onlyjump_p(%struct.rtx_def* %20)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %21 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp19 = icmp eq i32 %bf.clear, 51
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.18
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load22 = load i32, i32* %25, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  store i32 %bf.clear23, i32* %code, align 4
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %trap_bb, align 8
  %cmp24 = icmp eq %struct.basic_block_def* %26, %27
  br i1 %cmp24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call26 = call i32 @reversed_comparison_code(%struct.rtx_def* %28, %struct.rtx_def* %29)
  store i32 %call26, i32* %code, align 4
  %30 = load i32, i32* %code, align 4
  %cmp27 = icmp eq i32 %30, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.25
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.21
  %31 = load i32, i32* %code, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %trap, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %call43 = call %struct.rtx_def* @gen_cond_trap(i32 %31, %struct.rtx_def* %33, %struct.rtx_def* %35, %struct.rtx_def* %38)
  store %struct.rtx_def* %call43, %struct.rtx_def** %seq, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %cmp44 = icmp eq %struct.rtx_def* %39, null
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.30
  %40 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest, align 8
  %call47 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %40, %struct.rtx_def* %41)
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %trap_bb, align 8
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %cmp48 = icmp eq %struct.basic_block_def* %42, %43
  br i1 %cmp48, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %44 = load %struct.edge_def*, %struct.edge_def** %then_edge.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %45 = load %struct.edge_def*, %struct.edge_def** %else_edge.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond49 = phi %struct.edge_def* [ %44, %cond.true ], [ %45, %cond.false ]
  call void @remove_edge(%struct.edge_def* %cond49)
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %trap_bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 4
  %47 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp50 = icmp eq %struct.edge_def* %47, null
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %cond.end
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %trap_bb, align 8
  %call52 = call i32 @flow_delete_block(%struct.basic_block_def* %48)
  %49 = load i32, i32* @num_removed_blocks, align 4
  %inc = add nsw i32 %49, 1
  store i32 %inc, i32* @num_removed_blocks, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %cond.end
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index54, align 4
  %add = add nsw i32 %51, 1
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb, align 8
  %index55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 11
  %53 = load i32, i32* %index55, align 4
  %cmp56 = icmp eq i32 %add, %53
  br i1 %cmp56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.53
  %54 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call58 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %54)
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb, align 8
  call void @merge_if_block(%struct.basic_block_def* %55, %struct.basic_block_def* null, %struct.basic_block_def* null, %struct.basic_block_def* %56)
  br label %if.end.73

if.else.59:                                       ; preds = %if.end.53
  %57 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 7
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %lab, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call63 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %59)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call64 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call63, %struct.rtx_def* %60)
  store %struct.rtx_def* %call64, %struct.rtx_def** %newjump, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %62 = load i32, i32* %rtint, align 4
  %add67 = add nsw i32 %62, 1
  store i32 %add67, i32* %rtint, align 4
  %63 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %newjump, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 7
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  store %struct.rtx_def* %63, %struct.rtx_def** %rtx70, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %newjump, align 8
  %call71 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %65)
  %66 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call72 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %66)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.59, %if.then.57
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.then.45, %if.then.28, %if.then.20, %if.then.17, %if.then.13, %if.else.5
  %67 = load i32, i32* %retval
  ret i32 %67
}

; Function Attrs: nounwind uwtable
define internal i32 @find_if_case_1(%struct.basic_block_def* %test_bb, %struct.edge_def* %then_edge, %struct.edge_def* %else_edge) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_edge.addr = alloca %struct.edge_def*, align 8
  %else_edge.addr = alloca %struct.edge_def*, align 8
  %then_bb = alloca %struct.basic_block_def*, align 8
  %else_bb = alloca %struct.basic_block_def*, align 8
  %new_bb = alloca %struct.basic_block_def*, align 8
  %then_succ = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.edge_def* %then_edge, %struct.edge_def** %then_edge.addr, align 8
  store %struct.edge_def* %else_edge, %struct.edge_def** %else_edge.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %then_edge.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %then_bb, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %else_edge.addr, align 8
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %else_bb, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %then_succ, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %tobool = icmp ne %struct.edge_def* %6, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 1
  %8 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp = icmp ne %struct.edge_def* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.edge_def*, %struct.edge_def** %then_succ, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 6
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 15
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 4
  %12 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 0
  %13 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp5 = icmp ne %struct.edge_def* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %call = call zeroext i1 @forwarder_block_p(%struct.basic_block_def* %14)
  br i1 %call, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.7
  %15 = load i32, i32* @num_possible_if_blocks, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* @num_possible_if_blocks, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool10 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 11
  %19 = load i32, i32* %index, align 4
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index12, align 4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 %19, i32 %21)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.9
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %call15 = call i32 @count_bb_insns(%struct.basic_block_def* %22)
  %23 = load i32, i32* @ix86_branch_cost, align 4
  %cmp16 = icmp sgt i32 %call15, %23
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %if.end.14
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %succ19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 5
  %28 = load %struct.edge_def*, %struct.edge_def** %succ19, align 8
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8
  %call21 = call i32 @dead_or_predicable(%struct.basic_block_def* %24, %struct.basic_block_def* %25, %struct.basic_block_def* %26, %struct.basic_block_def* %29, i32 1)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 10
  %31 = load i8*, i8** %aux, align 8
  %32 = ptrtoint i8* %31 to i64
  %or = or i64 %32, 1
  %33 = inttoptr i64 %or to i8*
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %aux25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 10
  store i8* %33, i8** %aux25, align 8
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 9
  %36 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 8
  %38 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %global_live_at_end26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 9
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end26, align 8
  %call27 = call i32 @bitmap_operation(%struct.bitmap_head_def* %36, %struct.bitmap_head_def* %38, %struct.bitmap_head_def* %40, i32 2)
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 5
  %42 = load %struct.edge_def*, %struct.edge_def** %succ28, align 8
  %flags29 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 6
  %43 = load i32, i32* %flags29, align 4
  %and30 = and i32 %43, 1
  %tobool31 = icmp ne i32 %and30, 0
  br i1 %tobool31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.24
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 5
  %45 = load %struct.edge_def*, %struct.edge_def** %succ32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.24
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 5
  %47 = load %struct.edge_def*, %struct.edge_def** %succ33, align 8
  %succ_next34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 1
  %48 = load %struct.edge_def*, %struct.edge_def** %succ_next34, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.edge_def* [ %45, %cond.true ], [ %48, %cond.false ]
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %call35 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %cond, %struct.basic_block_def* %49)
  store %struct.basic_block_def* %call35, %struct.basic_block_def** %new_bb, align 8
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %tobool36 = icmp ne %struct.basic_block_def* %50, null
  br i1 %tobool36, label %if.then.37, label %if.end.43

if.then.37:                                       ; preds = %cond.end
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %aux38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 10
  %52 = load i8*, i8** %aux38, align 8
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %new_bb, align 8
  %aux39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 10
  store i8* %52, i8** %aux39, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %aux40 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 10
  %55 = load i8*, i8** %aux40, align 8
  %56 = ptrtoint i8* %55 to i64
  %or41 = or i64 %56, 1
  %57 = inttoptr i64 %or41 to i8*
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %aux42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 10
  store i8* %57, i8** %aux42, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.37, %cond.end
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %call44 = call i32 @flow_delete_block(%struct.basic_block_def* %59)
  %60 = load i32, i32* @num_removed_blocks, align 4
  %inc45 = add nsw i32 %60, 1
  store i32 %inc45, i32* @num_removed_blocks, align 4
  %61 = load i32, i32* @num_updated_if_blocks, align 4
  %inc46 = add nsw i32 %61, 1
  store i32 %inc46, i32* @num_updated_if_blocks, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.23, %if.then.17, %if.then.8, %if.then.6, %if.then.3, %if.then
  %62 = load i32, i32* %retval
  ret i32 %62
}

; Function Attrs: nounwind uwtable
define internal i32 @find_if_case_2(%struct.basic_block_def* %test_bb, %struct.edge_def* %then_edge, %struct.edge_def* %else_edge) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_edge.addr = alloca %struct.edge_def*, align 8
  %else_edge.addr = alloca %struct.edge_def*, align 8
  %then_bb = alloca %struct.basic_block_def*, align 8
  %else_bb = alloca %struct.basic_block_def*, align 8
  %else_succ = alloca %struct.edge_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.edge_def* %then_edge, %struct.edge_def** %then_edge.addr, align 8
  store %struct.edge_def* %else_edge, %struct.edge_def** %else_edge.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %then_edge.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %1, %struct.basic_block_def** %then_bb, align 8
  %2 = load %struct.edge_def*, %struct.edge_def** %else_edge.addr, align 8
  %dest1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %2, i32 0, i32 3
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %dest1, align 8
  store %struct.basic_block_def* %3, %struct.basic_block_def** %else_bb, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %5, %struct.edge_def** %else_succ, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %tobool = icmp ne %struct.edge_def* %6, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %7 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %7, i32 0, i32 1
  %8 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp = icmp ne %struct.edge_def* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 6
  %10 = load i32, i32* %flags, align 4
  %and = and i32 %10, 14
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 4
  %12 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 0
  %13 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp5 = icmp ne %struct.edge_def* %13, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index, align 4
  %cmp8 = icmp slt i32 %15, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 1
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %17, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool11 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.10
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %21 = load i64, i64* %rtwint, align 8
  %cmp14 = icmp sge i64 %21, 5000
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  br label %if.end.34

if.else:                                          ; preds = %land.lhs.true, %if.end.10
  %22 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 3
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest16, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index17, align 4
  %cmp18 = icmp slt i32 %24, 0
  br i1 %cmp18, label %if.then.31, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %if.else
  %25 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %25, i32 0, i32 3
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 10
  %27 = load i8*, i8** %aux, align 8
  %28 = ptrtoint i8* %27 to i64
  %shr = lshr i64 %28, 1
  %div = udiv i64 %shr, 64
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %aux21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 10
  %30 = load i8*, i8** %aux21, align 8
  %31 = ptrtoint i8* %30 to i64
  %shr22 = lshr i64 %31, 1
  %32 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @post_dominators, align 8
  %arrayidx23 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %32, i64 %shr22
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx23, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %33, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %div
  %34 = load i64, i64* %arrayidx24, align 8
  %35 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 3
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %dest25, align 8
  %aux26 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 10
  %37 = load i8*, i8** %aux26, align 8
  %38 = ptrtoint i8* %37 to i64
  %shr27 = lshr i64 %38, 1
  %rem = urem i64 %shr27, 64
  %shr28 = lshr i64 %34, %rem
  %and29 = and i64 %shr28, 1
  %tobool30 = icmp ne i64 %and29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %lor.lhs.false.19, %if.else
  br label %if.end.33

if.else.32:                                       ; preds = %lor.lhs.false.19
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.31
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.15
  %39 = load i32, i32* @num_possible_if_blocks, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* @num_possible_if_blocks, align 4
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool35 = icmp ne %struct._IO_FILE* %40, null
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.end.34
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index37, align 4
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %index38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  %45 = load i32, i32* %index38, align 4
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i32 0, i32 0), i32 %43, i32 %45)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end.34
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %call41 = call i32 @count_bb_insns(%struct.basic_block_def* %46)
  %47 = load i32, i32* @ix86_branch_cost, align 4
  %cmp42 = icmp sgt i32 %call41, %47
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.40
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.40
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %51 = load %struct.edge_def*, %struct.edge_def** %else_succ, align 8
  %dest45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i32 0, i32 3
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %dest45, align 8
  %call46 = call i32 @dead_or_predicable(%struct.basic_block_def* %48, %struct.basic_block_def* %49, %struct.basic_block_def* %50, %struct.basic_block_def* %52, i32 0)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.end.44
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %aux50 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 10
  %54 = load i8*, i8** %aux50, align 8
  %55 = ptrtoint i8* %54 to i64
  %or = or i64 %55, 1
  %56 = inttoptr i64 %or to i8*
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %aux51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 10
  store i8* %56, i8** %aux51, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 9
  %59 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 8
  %61 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %global_live_at_end52 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 9
  %63 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end52, align 8
  %call53 = call i32 @bitmap_operation(%struct.bitmap_head_def* %59, %struct.bitmap_head_def* %61, %struct.bitmap_head_def* %63, i32 2)
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb, align 8
  %call54 = call i32 @flow_delete_block(%struct.basic_block_def* %64)
  %65 = load i32, i32* @num_removed_blocks, align 4
  %inc55 = add nsw i32 %65, 1
  store i32 %inc55, i32* @num_removed_blocks, align 4
  %66 = load i32, i32* @num_updated_if_blocks, align 4
  %inc56 = add nsw i32 %66, 1
  store i32 %inc56, i32* @num_updated_if_blocks, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.48, %if.then.43, %if.else.32, %if.then.9, %if.then.6, %if.then.3, %if.then
  %67 = load i32, i32* %retval
  ret i32 %67
}

declare i32 @simplejump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @process_if_block(%struct.basic_block_def* %test_bb, %struct.basic_block_def* %then_bb, %struct.basic_block_def* %else_bb, %struct.basic_block_def* %join_bb) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_bb.addr = alloca %struct.basic_block_def*, align 8
  %else_bb.addr = alloca %struct.basic_block_def*, align 8
  %join_bb.addr = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.basic_block_def* %then_bb, %struct.basic_block_def** %then_bb.addr, align 8
  store %struct.basic_block_def* %else_bb, %struct.basic_block_def** %else_bb.addr, align 8
  store %struct.basic_block_def* %join_bb, %struct.basic_block_def** %join_bb.addr, align 8
  %0 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %call = call i32 @noce_process_if_block(%struct.basic_block_def* %1, %struct.basic_block_def* %2, %struct.basic_block_def* %3, %struct.basic_block_def* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_process_if_block(%struct.basic_block_def* %test_bb, %struct.basic_block_def* %then_bb, %struct.basic_block_def* %else_bb, %struct.basic_block_def* %join_bb) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_bb.addr = alloca %struct.basic_block_def*, align 8
  %else_bb.addr = alloca %struct.basic_block_def*, align 8
  %join_bb.addr = alloca %struct.basic_block_def*, align 8
  %if_info = alloca %struct.noce_if_info, align 8
  %insn_a = alloca %struct.rtx_def*, align 8
  %insn_b = alloca %struct.rtx_def*, align 8
  %set_a = alloca %struct.rtx_def*, align 8
  %set_b = alloca %struct.rtx_def*, align 8
  %orig_x = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %a = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.rtx_def*, align 8
  %jump = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.basic_block_def* %then_bb, %struct.basic_block_def** %then_bb.addr, align 8
  store %struct.basic_block_def* %else_bb, %struct.basic_block_def** %else_bb.addr, align 8
  store %struct.basic_block_def* %join_bb, %struct.basic_block_def** %join_bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %jump, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 8
  %call = call %struct.rtx_def* @noce_get_condition(%struct.rtx_def* %2, %struct.rtx_def** %cond_earliest)
  store %struct.rtx_def* %call, %struct.rtx_def** %cond, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call1 = call i32 @onlyjump_p(%struct.rtx_def* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 51
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %call7 = call %struct.rtx_def* @first_active_insn(%struct.basic_block_def* %8)
  store %struct.rtx_def* %call7, %struct.rtx_def** %insn_a, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %tobool8 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool8, label %lor.lhs.false, label %if.then.38

lor.lhs.false:                                    ; preds = %if.end.6
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %call9 = call i32 @last_active_insn_p(%struct.basic_block_def* %10, %struct.rtx_def* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %lor.lhs.false.11, label %if.then.38

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load12 = load i32, i32* %13, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %idxprom = sext i32 %bf.clear13 to i64
  %arrayidx14 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx14, align 1
  %conv = sext i8 %14 to i32
  %cmp15 = icmp eq i32 %conv, 105
  br i1 %cmp15, label %cond.true, label %cond.false.33

cond.true:                                        ; preds = %lor.lhs.false.11
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load20 = load i32, i32* %17, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 47
  br i1 %cmp22, label %cond.true.24, label %cond.false

cond.true.24:                                     ; preds = %cond.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %call31 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %20, %struct.rtx_def* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.24
  %cond32 = phi %struct.rtx_def* [ %19, %cond.true.24 ], [ %call31, %cond.false ]
  br label %cond.end.34

cond.false.33:                                    ; preds = %lor.lhs.false.11
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end
  %cond35 = phi %struct.rtx_def* [ %cond32, %cond.end ], [ null, %cond.false.33 ]
  store %struct.rtx_def* %cond35, %struct.rtx_def** %set_a, align 8
  %cmp36 = icmp eq %struct.rtx_def* %cond35, null
  br i1 %cmp36, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %cond.end.34, %lor.lhs.false, %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %cond.end.34
  %23 = load %struct.rtx_def*, %struct.rtx_def** %set_a, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %x, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %set_a, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %a, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %set_b, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %tobool46 = icmp ne %struct.basic_block_def* %27, null
  br i1 %tobool46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %if.end.39
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %call48 = call %struct.rtx_def* @first_active_insn(%struct.basic_block_def* %28)
  store %struct.rtx_def* %call48, %struct.rtx_def** %insn_b, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool49 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.91

lor.lhs.false.50:                                 ; preds = %if.then.47
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %call51 = call i32 @last_active_insn_p(%struct.basic_block_def* %30, %struct.rtx_def* %31)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %lor.lhs.false.53, label %if.then.91

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.50
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load54 = load i32, i32* %33, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %idxprom56 = sext i32 %bf.clear55 to i64
  %arrayidx57 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom56
  %34 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %34 to i32
  %cmp59 = icmp eq i32 %conv58, 105
  br i1 %cmp59, label %cond.true.61, label %cond.false.80

cond.true.61:                                     ; preds = %lor.lhs.false.53
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 3
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load65 = load i32, i32* %37, align 8
  %bf.clear66 = and i32 %bf.load65, 65535
  %cmp67 = icmp eq i32 %bf.clear66, 47
  br i1 %cmp67, label %cond.true.69, label %cond.false.73

cond.true.69:                                     ; preds = %cond.true.61
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 3
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  br label %cond.end.78

cond.false.73:                                    ; preds = %cond.true.61
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %call77 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %40, %struct.rtx_def* %42)
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.73, %cond.true.69
  %cond79 = phi %struct.rtx_def* [ %39, %cond.true.69 ], [ %call77, %cond.false.73 ]
  br label %cond.end.81

cond.false.80:                                    ; preds = %lor.lhs.false.53
  br label %cond.end.81

cond.end.81:                                      ; preds = %cond.false.80, %cond.end.78
  %cond82 = phi %struct.rtx_def* [ %cond79, %cond.end.78 ], [ null, %cond.false.80 ]
  store %struct.rtx_def* %cond82, %struct.rtx_def** %set_b, align 8
  %cmp83 = icmp eq %struct.rtx_def* %cond82, null
  br i1 %cmp83, label %if.then.91, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %cond.end.81
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %set_b, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtx88 = bitcast %union.rtunion_def* %arrayidx87 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx88, align 8
  %call89 = call i32 @rtx_equal_p(%struct.rtx_def* %43, %struct.rtx_def* %45)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.end.92, label %if.then.91

if.then.91:                                       ; preds = %lor.lhs.false.85, %cond.end.81, %lor.lhs.false.50, %if.then.47
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %lor.lhs.false.85
  br label %if.end.153

if.else:                                          ; preds = %if.end.39
  %cond_earliest93 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest93, align 8
  %call94 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %46)
  store %struct.rtx_def* %call94, %struct.rtx_def** %insn_b, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool95 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool95, label %lor.lhs.false.96, label %if.then.151

lor.lhs.false.96:                                 ; preds = %if.else
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load97 = load i32, i32* %49, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp ne i32 %bf.clear98, 32
  br i1 %cmp99, label %if.then.151, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %lor.lhs.false.96
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load102 = load i32, i32* %51, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %idxprom104 = sext i32 %bf.clear103 to i64
  %arrayidx105 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom104
  %52 = load i8, i8* %arrayidx105, align 1
  %conv106 = sext i8 %52 to i32
  %cmp107 = icmp eq i32 %conv106, 105
  br i1 %cmp107, label %cond.true.109, label %cond.false.128

cond.true.109:                                    ; preds = %lor.lhs.false.101
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 3
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load113 = load i32, i32* %55, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 47
  br i1 %cmp115, label %cond.true.117, label %cond.false.121

cond.true.117:                                    ; preds = %cond.true.109
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 3
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  br label %cond.end.126

cond.false.121:                                   ; preds = %cond.true.109
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 3
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %call125 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %58, %struct.rtx_def* %60)
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.121, %cond.true.117
  %cond127 = phi %struct.rtx_def* [ %57, %cond.true.117 ], [ %call125, %cond.false.121 ]
  br label %cond.end.129

cond.false.128:                                   ; preds = %lor.lhs.false.101
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.false.128, %cond.end.126
  %cond130 = phi %struct.rtx_def* [ %cond127, %cond.end.126 ], [ null, %cond.false.128 ]
  store %struct.rtx_def* %cond130, %struct.rtx_def** %set_b, align 8
  %cmp131 = icmp eq %struct.rtx_def* %cond130, null
  br i1 %cmp131, label %if.then.151, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %cond.end.129
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %set_b, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 0
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  %call137 = call i32 @rtx_equal_p(%struct.rtx_def* %61, %struct.rtx_def* %63)
  %tobool138 = icmp ne i32 %call137, 0
  br i1 %tobool138, label %lor.lhs.false.139, label %if.then.151

lor.lhs.false.139:                                ; preds = %lor.lhs.false.133
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %call140 = call i32 @reg_mentioned_p(%struct.rtx_def* %64, %struct.rtx_def* %65)
  %tobool141 = icmp ne i32 %call140, 0
  br i1 %tobool141, label %if.then.151, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false.139
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call143 = call i32 @reg_mentioned_p(%struct.rtx_def* %66, %struct.rtx_def* %67)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %if.then.151, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %lor.lhs.false.142
  %68 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %set_b, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 1
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %call149 = call i32 @reg_mentioned_p(%struct.rtx_def* %68, %struct.rtx_def* %70)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %lor.lhs.false.145, %lor.lhs.false.142, %lor.lhs.false.139, %lor.lhs.false.133, %cond.end.129, %lor.lhs.false.96, %if.else
  store %struct.rtx_def* null, %struct.rtx_def** %set_b, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %insn_b, align 8
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %lor.lhs.false.145
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.92
  %71 = load %struct.rtx_def*, %struct.rtx_def** %set_b, align 8
  %tobool154 = icmp ne %struct.rtx_def* %71, null
  br i1 %tobool154, label %cond.true.155, label %cond.false.159

cond.true.155:                                    ; preds = %if.end.153
  %72 = load %struct.rtx_def*, %struct.rtx_def** %set_b, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  br label %cond.end.160

cond.false.159:                                   ; preds = %if.end.153
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  br label %cond.end.160

cond.end.160:                                     ; preds = %cond.false.159, %cond.true.155
  %cond161 = phi %struct.rtx_def* [ %73, %cond.true.155 ], [ %74, %cond.false.159 ]
  store %struct.rtx_def* %cond161, %struct.rtx_def** %b, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  store %struct.rtx_def* %75, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.160
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cond_earliest162 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest162, align 8
  %cmp163 = icmp ne %struct.rtx_def* %76, %77
  br i1 %cmp163, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load165 = load i32, i32* %79, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %idxprom167 = sext i32 %bf.clear166 to i64
  %arrayidx168 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom167
  %80 = load i8, i8* %arrayidx168, align 1
  %conv169 = sext i8 %80 to i32
  %cmp170 = icmp eq i32 %conv169, 105
  br i1 %cmp170, label %land.lhs.true, label %if.end.175

land.lhs.true:                                    ; preds = %for.body
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call172 = call i32 @reg_mentioned_p(%struct.rtx_def* %81, %struct.rtx_def* %82)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.175:                                       ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.175
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 1
  %rtx178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx178, align 8
  store %struct.rtx_def* %84, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %cond_earliest179 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest179, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %insn, align 8
  br label %for.cond.180

for.cond.180:                                     ; preds = %for.inc.199, %for.end
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %cmp181 = icmp ne %struct.rtx_def* %86, %87
  br i1 %cmp181, label %for.body.183, label %for.end.203

for.body.183:                                     ; preds = %for.cond.180
  %88 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load184 = load i32, i32* %89, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %idxprom186 = sext i32 %bf.clear185 to i64
  %arrayidx187 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom186
  %90 = load i8, i8* %arrayidx187, align 1
  %conv188 = sext i8 %90 to i32
  %cmp189 = icmp eq i32 %conv188, 105
  br i1 %cmp189, label %land.lhs.true.191, label %if.end.198

land.lhs.true.191:                                ; preds = %for.body.183
  %91 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call192 = call i32 @modified_in_p(%struct.rtx_def* %91, %struct.rtx_def* %92)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.then.197, label %lor.lhs.false.194

lor.lhs.false.194:                                ; preds = %land.lhs.true.191
  %93 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call195 = call i32 @modified_in_p(%struct.rtx_def* %93, %struct.rtx_def* %94)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %lor.lhs.false.194, %land.lhs.true.191
  store i32 0, i32* %retval
  br label %return

if.end.198:                                       ; preds = %lor.lhs.false.194, %for.body.183
  br label %for.inc.199

for.inc.199:                                      ; preds = %if.end.198
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld200 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx201 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld200, i32 0, i64 2
  %rtx202 = bitcast %union.rtunion_def* %arrayidx201 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx202, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %insn, align 8
  br label %for.cond.180

for.end.203:                                      ; preds = %for.cond.180
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %orig_x, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load204 = load i32, i32* %99, align 8
  %bf.clear205 = and i32 %bf.load204, 65535
  %cmp206 = icmp ne i32 %bf.clear205, 61
  br i1 %cmp206, label %if.then.213, label %lor.lhs.false.208

lor.lhs.false.208:                                ; preds = %for.end.203
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx210 to i32*
  %101 = load i32, i32* %rtuint, align 4
  %cmp211 = icmp ult i32 %101, 53
  br i1 %cmp211, label %if.then.213, label %if.end.232

if.then.213:                                      ; preds = %lor.lhs.false.208, %for.end.203
  %102 = load i32, i32* @no_new_pseudos, align 4
  %tobool214 = icmp ne i32 %102, 0
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.then.213
  store i32 0, i32* %retval
  br label %return

if.end.216:                                       ; preds = %if.then.213
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %104 = bitcast %struct.rtx_def* %103 to i32*
  %bf.load217 = load i32, i32* %104, align 8
  %bf.clear218 = and i32 %bf.load217, 65535
  %cmp219 = icmp eq i32 %bf.clear218, 64
  br i1 %cmp219, label %cond.true.221, label %cond.false.225

cond.true.221:                                    ; preds = %if.end.216
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld222 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld222, i32 0, i64 0
  %rtx224 = bitcast %union.rtunion_def* %arrayidx223 to %struct.rtx_def**
  %106 = load %struct.rtx_def*, %struct.rtx_def** %rtx224, align 8
  br label %cond.end.226

cond.false.225:                                   ; preds = %if.end.216
  %107 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  br label %cond.end.226

cond.end.226:                                     ; preds = %cond.false.225, %cond.true.221
  %cond227 = phi %struct.rtx_def* [ %106, %cond.true.221 ], [ %107, %cond.false.225 ]
  %108 = bitcast %struct.rtx_def* %cond227 to i32*
  %bf.load228 = load i32, i32* %108, align 8
  %bf.lshr229 = lshr i32 %bf.load228, 16
  %bf.clear230 = and i32 %bf.lshr229, 255
  %call231 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear230)
  store %struct.rtx_def* %call231, %struct.rtx_def** %x, align 8
  br label %if.end.232

if.end.232:                                       ; preds = %cond.end.226, %lor.lhs.false.208
  %109 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call233 = call i32 @noce_operand_ok(%struct.rtx_def* %109)
  %tobool234 = icmp ne i32 %call233, 0
  br i1 %tobool234, label %lor.lhs.false.235, label %if.then.238

lor.lhs.false.235:                                ; preds = %if.end.232
  %110 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call236 = call i32 @noce_operand_ok(%struct.rtx_def* %110)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.end.239, label %if.then.238

if.then.238:                                      ; preds = %lor.lhs.false.235, %if.end.232
  store i32 0, i32* %retval
  br label %return

if.end.239:                                       ; preds = %lor.lhs.false.235
  %111 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %test_bb240 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 0
  store %struct.basic_block_def* %111, %struct.basic_block_def** %test_bb240, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %cond241 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 7
  store %struct.rtx_def* %112, %struct.rtx_def** %cond241, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %jump242 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 6
  store %struct.rtx_def* %113, %struct.rtx_def** %jump242, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %insn_a243 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 1
  store %struct.rtx_def* %114, %struct.rtx_def** %insn_a243, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %insn_b244 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 2
  store %struct.rtx_def* %115, %struct.rtx_def** %insn_b244, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %x245 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 3
  store %struct.rtx_def* %116, %struct.rtx_def** %x245, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %a246 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 4
  store %struct.rtx_def* %117, %struct.rtx_def** %a246, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %b247 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 5
  store %struct.rtx_def* %118, %struct.rtx_def** %b247, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call248 = call i32 @rtx_equal_p(%struct.rtx_def* %119, %struct.rtx_def* %120)
  %tobool249 = icmp ne i32 %call248, 0
  br i1 %tobool249, label %if.then.250, label %if.end.283

if.then.250:                                      ; preds = %if.end.239
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool251 = icmp ne %struct.rtx_def* %121, null
  br i1 %tobool251, label %land.lhs.true.252, label %if.else.275

land.lhs.true.252:                                ; preds = %if.then.250
  %122 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %tobool253 = icmp ne %struct.basic_block_def* %122, null
  br i1 %tobool253, label %if.then.254, label %if.else.275

if.then.254:                                      ; preds = %land.lhs.true.252
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %tobool255 = icmp ne %struct.basic_block_def* %123, null
  br i1 %tobool255, label %land.lhs.true.256, label %if.end.265

land.lhs.true.256:                                ; preds = %if.then.254
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %end257 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %125, i32 0, i32 1
  %126 = load %struct.rtx_def*, %struct.rtx_def** %end257, align 8
  %cmp258 = icmp eq %struct.rtx_def* %124, %126
  br i1 %cmp258, label %if.then.260, label %if.end.265

if.then.260:                                      ; preds = %land.lhs.true.256
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %fld261 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx262 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld261, i32 0, i64 1
  %rtx263 = bitcast %union.rtunion_def* %arrayidx262 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx263, align 8
  %129 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %end264 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %129, i32 0, i32 1
  store %struct.rtx_def* %128, %struct.rtx_def** %end264, align 8
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.260, %land.lhs.true.256, %if.then.254
  %130 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %cond_earliest266 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %if_info, i32 0, i32 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest266, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 1
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  call void @reorder_insns(%struct.rtx_def* %130, %struct.rtx_def* %131, %struct.rtx_def* %133)
  %134 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %call270 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %134, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call270, %struct.rtx_def** %note, align 8
  %cmp271 = icmp ne %struct.rtx_def* %call270, null
  br i1 %cmp271, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.265
  %135 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %135, %struct.rtx_def* %136)
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.273, %if.end.265
  store %struct.rtx_def* null, %struct.rtx_def** %insn_b, align 8
  br label %if.end.282

if.else.275:                                      ; preds = %land.lhs.true.252, %if.then.250
  %137 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool276 = icmp ne %struct.rtx_def* %137, null
  br i1 %tobool276, label %land.lhs.true.277, label %if.end.281

land.lhs.true.277:                                ; preds = %if.else.275
  %138 = load %struct.rtx_def*, %struct.rtx_def** %orig_x, align 8
  %call278 = call i32 @side_effects_p(%struct.rtx_def* %138)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.then.280, label %if.end.281

if.then.280:                                      ; preds = %land.lhs.true.277
  store i32 0, i32* %retval
  br label %return

if.end.281:                                       ; preds = %land.lhs.true.277, %if.else.275
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.end.274
  %139 = load %struct.rtx_def*, %struct.rtx_def** %orig_x, align 8
  store %struct.rtx_def* %139, %struct.rtx_def** %x, align 8
  br label %success

if.end.283:                                       ; preds = %if.end.239
  %call284 = call i32 @noce_try_store_flag(%struct.noce_if_info* %if_info)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.287

if.then.286:                                      ; preds = %if.end.283
  br label %success

if.end.287:                                       ; preds = %if.end.283
  %call288 = call i32 @noce_try_minmax(%struct.noce_if_info* %if_info)
  %tobool289 = icmp ne i32 %call288, 0
  br i1 %tobool289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %if.end.287
  br label %success

if.end.291:                                       ; preds = %if.end.287
  %call292 = call i32 @noce_try_abs(%struct.noce_if_info* %if_info)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %if.end.291
  br label %success

if.end.295:                                       ; preds = %if.end.291
  %call296 = call i32 @noce_try_cmove(%struct.noce_if_info* %if_info)
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.then.298, label %if.end.299

if.then.298:                                      ; preds = %if.end.295
  br label %success

if.end.299:                                       ; preds = %if.end.295
  %call300 = call i32 @noce_try_store_flag_constants(%struct.noce_if_info* %if_info)
  %tobool301 = icmp ne i32 %call300, 0
  br i1 %tobool301, label %if.then.302, label %if.end.303

if.then.302:                                      ; preds = %if.end.299
  br label %success

if.end.303:                                       ; preds = %if.end.299
  %call304 = call i32 @noce_try_store_flag_inc(%struct.noce_if_info* %if_info)
  %tobool305 = icmp ne i32 %call304, 0
  br i1 %tobool305, label %if.then.306, label %if.end.307

if.then.306:                                      ; preds = %if.end.303
  br label %success

if.end.307:                                       ; preds = %if.end.303
  %call308 = call i32 @noce_try_store_flag_mask(%struct.noce_if_info* %if_info)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %if.end.307
  br label %success

if.end.311:                                       ; preds = %if.end.307
  %call312 = call i32 @noce_try_cmove_arith(%struct.noce_if_info* %if_info)
  %tobool313 = icmp ne i32 %call312, 0
  br i1 %tobool313, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %if.end.311
  br label %success

if.end.315:                                       ; preds = %if.end.311
  store i32 0, i32* %retval
  br label %return

success:                                          ; preds = %if.then.314, %if.then.310, %if.then.306, %if.then.302, %if.then.298, %if.then.294, %if.then.290, %if.then.286, %if.end.282
  %140 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %call316 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %140)
  %141 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool317 = icmp ne %struct.rtx_def* %141, null
  br i1 %tobool317, label %land.lhs.true.318, label %if.end.322

land.lhs.true.318:                                ; preds = %success
  %142 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %tobool319 = icmp ne %struct.basic_block_def* %142, null
  br i1 %tobool319, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %land.lhs.true.318
  %143 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %call321 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %143)
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %land.lhs.true.318, %success
  %144 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call323 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %144)
  %145 = load %struct.rtx_def*, %struct.rtx_def** %orig_x, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp324 = icmp ne %struct.rtx_def* %145, %146
  br i1 %cmp324, label %if.then.326, label %if.end.331

if.then.326:                                      ; preds = %if.end.322
  call void @start_sequence()
  %147 = load %struct.rtx_def*, %struct.rtx_def** %orig_x, align 8
  %call327 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %147)
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %call327, %struct.rtx_def* %148)
  %call328 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call328, %struct.rtx_def** %insn_b, align 8
  call void @end_sequence()
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %150 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %end329 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %150, i32 0, i32 1
  %151 = load %struct.rtx_def*, %struct.rtx_def** %end329, align 8
  %call330 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %149, %struct.rtx_def* %151)
  br label %if.end.331

if.end.331:                                       ; preds = %if.then.326, %if.end.322
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %153 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %154 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %155 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  call void @merge_if_block(%struct.basic_block_def* %152, %struct.basic_block_def* %153, %struct.basic_block_def* %154, %struct.basic_block_def* %155)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.331, %if.end.315, %if.then.280, %if.then.238, %if.then.215, %if.then.197, %if.then.174, %if.then.91, %if.then.38, %if.then.5, %if.then.3, %if.then
  %156 = load i32, i32* %retval
  ret i32 %156
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @noce_get_condition(%struct.rtx_def* %jump, %struct.rtx_def** %earliest) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %jump.addr = alloca %struct.rtx_def*, align 8
  %earliest.addr = alloca %struct.rtx_def**, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %reverse = alloca i8, align 1
  store %struct.rtx_def* %jump, %struct.rtx_def** %jump.addr, align 8
  store %struct.rtx_def** %earliest, %struct.rtx_def*** %earliest.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %call3 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %1)
  store %struct.rtx_def* %call3, %struct.rtx_def** %set, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 7
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %cmp19 = icmp eq %struct.rtx_def* %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %12 = phi i1 [ false, %if.end ], [ %cmp19, %land.rhs ]
  %frombool = zext i1 %12 to i8
  store i8 %frombool, i8* %reverse, align 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %cond, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %tmp, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load29 = load i32, i32* %19, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 61
  br i1 %cmp31, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %land.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load32 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load32, 16
  %bf.clear33 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear33 to i64
  %arrayidx34 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx34, align 4
  %cmp35 = icmp eq i32 %22, 1
  br i1 %cmp35, label %if.then.36, label %if.end.50

if.then.36:                                       ; preds = %land.lhs.true
  %23 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %24, align 8
  %25 = load i8, i8* %reverse, align 1
  %tobool37 = trunc i8 %25 to i1
  br i1 %tobool37, label %if.then.38, label %if.end.49

if.then.38:                                       ; preds = %if.then.36
  %26 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load39 = load i32, i32* %27, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %call41 = call i32 @reverse_condition(i32 %bf.clear40)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load42 = load i32, i32* %29, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 16
  %bf.clear44 = and i32 %bf.lshr43, 255
  %30 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %call48 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %call41, i32 %bf.clear44, %struct.rtx_def* %30, %struct.rtx_def* %32)
  store %struct.rtx_def* %call48, %struct.rtx_def** %cond, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.38, %if.then.36
  %33 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %retval
  br label %return

if.end.50:                                        ; preds = %land.lhs.true, %land.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %36 = load i8, i8* %reverse, align 1
  %tobool51 = trunc i8 %36 to i1
  %conv = zext i1 %tobool51 to i32
  %37 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %call52 = call %struct.rtx_def* @canonicalize_condition(%struct.rtx_def* %34, %struct.rtx_def* %35, i32 %conv, %struct.rtx_def** %37, %struct.rtx_def* null)
  store %struct.rtx_def* %call52, %struct.rtx_def** %tmp, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool53 = icmp ne %struct.rtx_def* %38, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.end.50
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.50
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %39, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.55
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %cmp56 = icmp ne %struct.rtx_def* %41, %42
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load58 = load i32, i32* %44, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %idxprom60 = sext i32 %bf.clear59 to i64
  %arrayidx61 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom60
  %45 = load i8, i8* %arrayidx61, align 1
  %conv62 = sext i8 %45 to i32
  %cmp63 = icmp eq i32 %conv62, 105
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.69

land.lhs.true.65:                                 ; preds = %for.body
  %46 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call66 = call i32 @modified_in_p(%struct.rtx_def* %46, %struct.rtx_def* %47)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.65
  br label %for.end

if.end.69:                                        ; preds = %land.lhs.true.65, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.69
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 2
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.68, %for.cond
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %cmp73 = icmp eq %struct.rtx_def* %50, %51
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %retval
  br label %return

if.end.76:                                        ; preds = %for.end
  %53 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %tmp, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load80 = load i32, i32* %56, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp eq i32 %bf.clear81, 61
  br i1 %cmp82, label %lor.lhs.false, label %if.then.91

lor.lhs.false:                                    ; preds = %if.end.76
  %57 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load84 = load i32, i32* %58, align 8
  %bf.lshr85 = lshr i32 %bf.load84, 16
  %bf.clear86 = and i32 %bf.lshr85, 255
  %idxprom87 = sext i32 %bf.clear86 to i64
  %arrayidx88 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom87
  %59 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp ne i32 %59, 1
  br i1 %cmp89, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %lor.lhs.false, %if.end.76
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.92:                                        ; preds = %lor.lhs.false
  %60 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %62 = load i8, i8* %reverse, align 1
  %tobool93 = trunc i8 %62 to i1
  %conv94 = zext i1 %tobool93 to i32
  %63 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call95 = call %struct.rtx_def* @canonicalize_condition(%struct.rtx_def* %60, %struct.rtx_def* %61, i32 %conv94, %struct.rtx_def** %63, %struct.rtx_def* %64)
  store %struct.rtx_def* %call95, %struct.rtx_def** %tmp, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool96 = icmp ne %struct.rtx_def* %65, null
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %if.end.92
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.92
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %66, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %insn, align 8
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.115, %if.end.98
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %jump.addr, align 8
  %cmp100 = icmp ne %struct.rtx_def* %68, %69
  br i1 %cmp100, label %for.body.102, label %for.end.119

for.body.102:                                     ; preds = %for.cond.99
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load103 = load i32, i32* %71, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %idxprom105 = sext i32 %bf.clear104 to i64
  %arrayidx106 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom105
  %72 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %72 to i32
  %cmp108 = icmp eq i32 %conv107, 105
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.114

land.lhs.true.110:                                ; preds = %for.body.102
  %73 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call111 = call i32 @modified_in_p(%struct.rtx_def* %73, %struct.rtx_def* %74)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %land.lhs.true.110
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.114:                                       ; preds = %land.lhs.true.110, %for.body.102
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 2
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %insn, align 8
  br label %for.cond.99

for.end.119:                                      ; preds = %for.cond.99
  %77 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.119, %if.then.113, %if.then.97, %if.then.91, %if.then.75, %if.then.54, %if.end.49, %if.then
  %78 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %78
}

declare i32 @onlyjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @first_active_insn(%struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp1 = icmp eq %struct.rtx_def* %4, %6
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.10, %if.end.3
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load4 = load i32, i32* %10, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 37
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end7, align 8
  %cmp8 = icmp eq %struct.rtx_def* %11, %13
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %while.body
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.10:                                        ; preds = %while.body
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load14 = load i32, i32* %17, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 33
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %while.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.18:                                        ; preds = %while.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then.17, %if.then.9, %if.then.2
  %19 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define internal i32 @last_active_insn_p(%struct.basic_block_def* %bb, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 1
  %2 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 37
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 33
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @modified_in_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @noce_operand_ok(%struct.rtx_def* %op) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @side_effects_p(%struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call1 = call i32 @side_effects_p(%struct.rtx_def* %4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %5 = load i32, i32* @flag_trapping_math, align 4
  %tobool5 = icmp ne i32 %5, 0
  br i1 %tobool5, label %if.end.127, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load6 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load6, 16
  %bf.clear7 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear7 to i64
  %arrayidx8 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %8 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp eq i32 %8, 2
  br i1 %cmp9, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load10 = load i32, i32* %10, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom13
  %11 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %11, 6
  br i1 %cmp15, label %if.then.23, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load17 = load i32, i32* %13, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 16
  %bf.clear19 = and i32 %bf.lshr18, 255
  %idxprom20 = sext i32 %bf.clear19 to i64
  %arrayidx21 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom20
  %14 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp eq i32 %14, 8
  br i1 %cmp22, label %if.then.23, label %if.end.127

if.then.23:                                       ; preds = %lor.lhs.false.16, %lor.lhs.false, %land.lhs.true
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load24 = load i32, i32* %16, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  switch i32 %bf.clear25, label %sw.default [
    i32 79, label %sw.bb
    i32 80, label %sw.bb
    i32 81, label %sw.bb
    i32 82, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.then.23, %if.then.23, %if.then.23, %if.then.23
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load29 = load i32, i32* %19, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 67
  br i1 %cmp31, label %land.lhs.true.81, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %sw.bb
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load36 = load i32, i32* %22, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %land.lhs.true.81, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.32
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load43 = load i32, i32* %25, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 54
  br i1 %cmp45, label %land.lhs.true.81, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.39
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load50 = load i32, i32* %28, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 55
  br i1 %cmp52, label %land.lhs.true.81, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.46
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load57 = load i32, i32* %31, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 58
  br i1 %cmp59, label %land.lhs.true.81, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.53
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load64 = load i32, i32* %34, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 134
  br i1 %cmp66, label %land.lhs.true.81, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %lor.lhs.false.60
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load71 = load i32, i32* %37, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 56
  br i1 %cmp73, label %land.lhs.true.81, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.67
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 1
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load78 = load i32, i32* %40, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 140
  br i1 %cmp80, label %land.lhs.true.81, label %land.end

land.lhs.true.81:                                 ; preds = %lor.lhs.false.74, %lor.lhs.false.67, %lor.lhs.false.60, %lor.lhs.false.53, %lor.lhs.false.46, %lor.lhs.false.39, %lor.lhs.false.32, %sw.bb
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 1
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load85 = load i32, i32* %44, align 8
  %bf.lshr86 = lshr i32 %bf.load85, 16
  %bf.clear87 = and i32 %bf.lshr86, 255
  %idxprom88 = sext i32 %bf.clear87 to i64
  %arrayidx89 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom88
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx89, align 8
  %cmp90 = icmp ne %struct.rtx_def* %42, %45
  br i1 %cmp90, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.81
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %call94 = call i32 @may_trap_p(%struct.rtx_def* %47)
  %tobool95 = icmp ne i32 %call94, 0
  %lnot96 = xor i1 %tobool95, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.81, %lor.lhs.false.74
  %48 = phi i1 [ false, %land.lhs.true.81 ], [ false, %lor.lhs.false.74 ], [ %lnot96, %land.rhs ]
  %land.ext = zext i1 %48 to i32
  store i32 %land.ext, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.then.23
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load98 = load i32, i32* %50, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %idxprom100 = sext i32 %bf.clear99 to i64
  %arrayidx101 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom100
  %51 = load i8, i8* %arrayidx101, align 1
  %conv = sext i8 %51 to i32
  switch i32 %conv, label %sw.epilog [
    i32 49, label %sw.bb.102
    i32 99, label %sw.bb.110
    i32 50, label %sw.bb.110
  ]

sw.bb.102:                                        ; preds = %sw.default
  %52 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %call106 = call i32 @may_trap_p(%struct.rtx_def* %53)
  %tobool107 = icmp ne i32 %call106, 0
  %lnot108 = xor i1 %tobool107, true
  %lnot.ext109 = zext i1 %lnot108 to i32
  store i32 %lnot.ext109, i32* %retval
  br label %return

sw.bb.110:                                        ; preds = %sw.default, %sw.default
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx113, align 8
  %call114 = call i32 @may_trap_p(%struct.rtx_def* %55)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %land.end.124, label %land.rhs.116

land.rhs.116:                                     ; preds = %sw.bb.110
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 1
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %call120 = call i32 @may_trap_p(%struct.rtx_def* %57)
  %tobool121 = icmp ne i32 %call120, 0
  %lnot122 = xor i1 %tobool121, true
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.116, %sw.bb.110
  %58 = phi i1 [ false, %sw.bb.110 ], [ %lnot122, %land.rhs.116 ]
  %land.ext125 = zext i1 %58 to i32
  store i32 %land.ext125, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.default
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %sw.epilog
  br label %if.end.127

if.end.127:                                       ; preds = %sw.epilog.126, %lor.lhs.false.16, %if.end.4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call128 = call i32 @may_trap_p(%struct.rtx_def* %59)
  %tobool129 = icmp ne i32 %call128, 0
  %lnot130 = xor i1 %tobool129, true
  %lnot.ext131 = zext i1 %lnot130 to i32
  store i32 %lnot.ext131, i32* %retval
  br label %return

return:                                           ; preds = %if.end.127, %land.end.124, %sw.bb.102, %land.end, %if.then.3, %if.then
  %60 = load i32, i32* %retval
  ret i32 %60
}

declare void @reorder_insns(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @side_effects_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_store_flag(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %reversep = alloca i32, align 4
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %0, i32 0, i32 5
  %1 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %b1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %5 = load i64, i64* %rtwint, align 8
  %cmp2 = icmp eq i64 %5, 1
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %6, i32 0, i32 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp4 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.3
  store i32 0, i32* %reversep, align 4
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %9 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b5 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %9, i32 0, i32 5
  %10 = load %struct.rtx_def*, %struct.rtx_def** %b5, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp6 = icmp eq %struct.rtx_def* %10, %11
  br i1 %cmp6, label %land.lhs.true.7, label %if.else.21

land.lhs.true.7:                                  ; preds = %if.else
  %12 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %12, i32 0, i32 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %a8, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load9 = load i32, i32* %14, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 54
  br i1 %cmp11, label %land.lhs.true.12, label %if.else.21

land.lhs.true.12:                                 ; preds = %land.lhs.true.7
  %15 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a13 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %15, i32 0, i32 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %a13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtwint16 = bitcast %union.rtunion_def* %arrayidx15 to i64*
  %17 = load i64, i64* %rtwint16, align 8
  %cmp17 = icmp eq i64 %17, 1
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.21

land.lhs.true.18:                                 ; preds = %land.lhs.true.12
  %18 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %18, i32 0, i32 7
  %19 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 6
  %21 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call = call i32 @reversed_comparison_code(%struct.rtx_def* %19, %struct.rtx_def* %21)
  %cmp19 = icmp ne i32 %call, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %land.lhs.true.18
  store i32 1, i32* %reversep, align 4
  br label %if.end

if.else.21:                                       ; preds = %land.lhs.true.18, %land.lhs.true.12, %land.lhs.true.7, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  call void @start_sequence()
  %22 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %23 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %23, i32 0, i32 3
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %25 = load i32, i32* %reversep, align 4
  %call23 = call %struct.rtx_def* @noce_emit_store_flag(%struct.noce_if_info* %22, %struct.rtx_def* %24, i32 %25, i32 0)
  store %struct.rtx_def* %call23, %struct.rtx_def** %target, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool, label %if.then.24, label %if.else.33

if.then.24:                                       ; preds = %if.end.22
  %27 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %28 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %28, i32 0, i32 3
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x25, align 8
  %cmp26 = icmp ne %struct.rtx_def* %27, %29
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.24
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x28 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 3
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x28, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %31, %struct.rtx_def* %32)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.24
  %call30 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call30, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %33 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 6
  %35 = load %struct.rtx_def*, %struct.rtx_def** %jump31, align 8
  %call32 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %33, %struct.rtx_def* %35)
  store i32 1, i32* %retval
  br label %return

if.else.33:                                       ; preds = %if.end.22
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.33, %if.end.29, %if.else.21
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_minmax(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %op = alloca i32, align 4
  %unsignedp = alloca i32, align 4
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %4, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %5, i32 0, i32 3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.lshr3 = lshr i32 %bf.load2, 16
  %bf.clear4 = and i32 %bf.lshr3, 255
  %idxprom5 = sext i32 %bf.clear4 to i64
  %arrayidx6 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %8, 6
  br i1 %cmp7, label %land.lhs.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %9 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x9 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %9, i32 0, i32 3
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x9, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  %idxprom13 = sext i32 %bf.clear12 to i64
  %arrayidx14 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom13
  %12 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp eq i32 %12, 8
  br i1 %cmp15, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %lor.lhs.false.8, %lor.lhs.false, %if.end
  %13 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %lor.lhs.false.8
  %14 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %15 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %15, i32 0, i32 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call = call %struct.rtx_def* @noce_get_alt_condition(%struct.noce_if_info* %14, %struct.rtx_def* %16, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call, %struct.rtx_def** %cond, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool19 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.18
  %18 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load22 = load i32, i32* %19, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  store i32 %bf.clear23, i32* %code, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %22 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %22, i32 0, i32 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %a25, align 8
  %call26 = call i32 @rtx_equal_p(%struct.rtx_def* %21, %struct.rtx_def* %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %if.end.21
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 5
  %27 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call32 = call i32 @rtx_equal_p(%struct.rtx_def* %25, %struct.rtx_def* %27)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.28
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.28
  br label %if.end.54

if.else:                                          ; preds = %if.end.21
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a39 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %a39, align 8
  %call40 = call i32 @rtx_equal_p(%struct.rtx_def* %29, %struct.rtx_def* %31)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.52

if.then.42:                                       ; preds = %if.else
  %32 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b46 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 5
  %35 = load %struct.rtx_def*, %struct.rtx_def** %b46, align 8
  %call47 = call i32 @rtx_equal_p(%struct.rtx_def* %33, %struct.rtx_def* %35)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.then.42
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.42
  %36 = load i32, i32* %code, align 4
  %call51 = call i32 @swap_condition(i32 %36)
  store i32 %call51, i32* %code, align 4
  br label %if.end.53

if.else.52:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.50
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.35
  %37 = load i32, i32* %code, align 4
  switch i32 %37, label %sw.default [
    i32 107, label %sw.bb
    i32 106, label %sw.bb
    i32 118, label %sw.bb
    i32 117, label %sw.bb
    i32 105, label %sw.bb.55
    i32 104, label %sw.bb.55
    i32 116, label %sw.bb.55
    i32 115, label %sw.bb.55
    i32 111, label %sw.bb.56
    i32 110, label %sw.bb.56
    i32 109, label %sw.bb.57
    i32 108, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %if.end.54, %if.end.54, %if.end.54, %if.end.54
  store i32 93, i32* %op, align 4
  store i32 0, i32* %unsignedp, align 4
  br label %sw.epilog

sw.bb.55:                                         ; preds = %if.end.54, %if.end.54, %if.end.54, %if.end.54
  store i32 92, i32* %op, align 4
  store i32 0, i32* %unsignedp, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %if.end.54, %if.end.54
  store i32 95, i32* %op, align 4
  store i32 1, i32* %unsignedp, align 4
  br label %sw.epilog

sw.bb.57:                                         ; preds = %if.end.54, %if.end.54
  store i32 94, i32* %op, align 4
  store i32 1, i32* %unsignedp, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.57, %sw.bb.56, %sw.bb.55, %sw.bb
  call void @start_sequence()
  %38 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x58 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %38, i32 0, i32 3
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x58, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load59 = load i32, i32* %40, align 8
  %bf.lshr60 = lshr i32 %bf.load59, 16
  %bf.clear61 = and i32 %bf.lshr60, 255
  %41 = load i32, i32* %op, align 4
  %42 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a62 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %42, i32 0, i32 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %a62, align 8
  %44 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b63 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %44, i32 0, i32 5
  %45 = load %struct.rtx_def*, %struct.rtx_def** %b63, align 8
  %46 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x64 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %46, i32 0, i32 3
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x64, align 8
  %48 = load i32, i32* %unsignedp, align 4
  %call65 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear61, i32 %41, %struct.rtx_def* %43, %struct.rtx_def* %45, %struct.rtx_def* %47, i32 %48, i32 2)
  store %struct.rtx_def* %call65, %struct.rtx_def** %target, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool66 = icmp ne %struct.rtx_def* %49, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %sw.epilog
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %sw.epilog
  %50 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x69 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 3
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x69, align 8
  %cmp70 = icmp ne %struct.rtx_def* %50, %52
  br i1 %cmp70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.end.68
  %53 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x72 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %53, i32 0, i32 3
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x72, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %54, %struct.rtx_def* %55)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.end.68
  %call74 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call74, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %56 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call75 = call i32 @seq_contains_jump(%struct.rtx_def* %56)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.73
  %57 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %58 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %58, i32 0, i32 6
  %59 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call79 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %57, %struct.rtx_def* %59)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %61 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond80 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %61, i32 0, i32 7
  store %struct.rtx_def* %60, %struct.rtx_def** %cond80, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %63 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %63, i32 0, i32 8
  store %struct.rtx_def* %62, %struct.rtx_def** %cond_earliest, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.77, %if.then.67, %sw.default, %if.else.52, %if.then.49, %if.then.34, %if.then.20, %if.then.17, %if.then
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_abs(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %a = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.rtx_def*, align 8
  %c = alloca %struct.rtx_def*, align 8
  %negate = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %1, i32 0, i32 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %a1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %a, align 8
  %3 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b2 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %3, i32 0, i32 5
  %4 = load %struct.rtx_def*, %struct.rtx_def** %b2, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %b, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 77
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %8, %struct.rtx_def* %9)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  store i32 0, i32* %negate, align 4
  br label %if.end.17

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load5 = load i32, i32* %11, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 77
  br i1 %cmp7, label %land.lhs.true.8, label %if.else.15

land.lhs.true.8:                                  ; preds = %if.else
  %12 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call12 = call i32 @rtx_equal_p(%struct.rtx_def* %13, %struct.rtx_def* %14)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %land.lhs.true.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %c, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %a, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %b, align 8
  store i32 1, i32* %negate, align 4
  br label %if.end.16

if.else.15:                                       ; preds = %land.lhs.true.8, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.4
  %18 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call18 = call %struct.rtx_def* @noce_get_alt_condition(%struct.noce_if_info* %18, %struct.rtx_def* %19, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call18, %struct.rtx_def** %cond, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool19 = icmp ne %struct.rtx_def* %20, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call25 = call i32 @rtx_equal_p(%struct.rtx_def* %22, %struct.rtx_def* %23)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.31

if.then.27:                                       ; preds = %if.end.21
  %24 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %c, align 8
  br label %if.end.43

if.else.31:                                       ; preds = %if.end.21
  %26 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call35 = call i32 @rtx_equal_p(%struct.rtx_def* %27, %struct.rtx_def* %28)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %if.else.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %c, align 8
  br label %if.end.42

if.else.41:                                       ; preds = %if.else.31
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.37
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load44 = load i32, i32* %32, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 61
  br i1 %cmp46, label %if.then.47, label %if.end.70

if.then.47:                                       ; preds = %if.end.43
  store %struct.rtx_def* null, %struct.rtx_def** %note, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.47
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %test_bb = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %35, i32 0, i32 0
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 0
  %37 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp48 = icmp ne %struct.rtx_def* %34, %37
  br i1 %cmp48, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load49 = load i32, i32* %39, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %idxprom = sext i32 %bf.clear50 to i64
  %arrayidx51 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %40 = load i8, i8* %arrayidx51, align 1
  %conv = sext i8 %40 to i32
  %cmp52 = icmp eq i32 %conv, 105
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.60

land.lhs.true.54:                                 ; preds = %for.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %call55 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %41, i32 4, %struct.rtx_def* %42)
  store %struct.rtx_def* %call55, %struct.rtx_def** %note, align 8
  %tobool56 = icmp ne %struct.rtx_def* %call55, null
  br i1 %tobool56, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.54
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %call57 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %43, i32 3, %struct.rtx_def* %44)
  store %struct.rtx_def* %call57, %struct.rtx_def** %note, align 8
  %tobool58 = icmp ne %struct.rtx_def* %call57, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false, %land.lhs.true.54
  br label %for.end

if.end.60:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 1
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %for.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool64 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %for.end
  %48 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %c, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.66, %if.end.43
  %50 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load71 = load i32, i32* %51, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 66
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.95

land.lhs.true.75:                                 ; preds = %if.end.70
  %52 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load79 = load i32, i32* %54, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  %cmp81 = icmp eq i32 %bf.clear80, 68
  br i1 %cmp81, label %land.lhs.true.83, label %if.end.95

land.lhs.true.83:                                 ; preds = %land.lhs.true.75
  %55 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load87 = load i32, i32* %57, align 8
  %bf.lshr = lshr i32 %bf.load87, 26
  %bf.clear88 = and i32 %bf.lshr, 1
  %tobool89 = icmp ne i32 %bf.clear88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.95

if.then.90:                                       ; preds = %land.lhs.true.83
  %58 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %call94 = call %struct.rtx_def* @get_pool_constant(%struct.rtx_def* %59)
  store %struct.rtx_def* %call94, %struct.rtx_def** %c, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.90, %land.lhs.true.83, %land.lhs.true.75, %if.end.70
  %60 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp96 = icmp eq %struct.rtx_def* %60, %61
  br i1 %cmp96, label %land.lhs.true.98, label %if.else.104

land.lhs.true.98:                                 ; preds = %if.end.95
  %62 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load99 = load i32, i32* %63, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp eq i32 %bf.clear100, 105
  br i1 %cmp101, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %land.lhs.true.98
  br label %if.end.124

if.else.104:                                      ; preds = %land.lhs.true.98, %if.end.95
  %64 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp105 = icmp eq %struct.rtx_def* %64, %65
  br i1 %cmp105, label %land.lhs.true.107, label %if.else.113

land.lhs.true.107:                                ; preds = %if.else.104
  %66 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load108 = load i32, i32* %67, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %cmp110 = icmp eq i32 %bf.clear109, 107
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %land.lhs.true.107
  br label %if.end.123

if.else.113:                                      ; preds = %land.lhs.true.107, %if.else.104
  %68 = load %struct.rtx_def*, %struct.rtx_def** %c, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load114 = load i32, i32* %70, align 8
  %bf.lshr115 = lshr i32 %bf.load114, 16
  %bf.clear116 = and i32 %bf.lshr115, 255
  %idxprom117 = sext i32 %bf.clear116 to i64
  %arrayidx118 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom117
  %71 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx118, align 8
  %cmp119 = icmp ne %struct.rtx_def* %68, %71
  br i1 %cmp119, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.else.113
  store i32 0, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.else.113
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.112
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %if.then.103
  %72 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load125 = load i32, i32* %73, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  switch i32 %bf.clear126, label %sw.default [
    i32 107, label %sw.bb
    i32 106, label %sw.bb
    i32 118, label %sw.bb
    i32 117, label %sw.bb
    i32 105, label %sw.bb.128
    i32 104, label %sw.bb.128
    i32 116, label %sw.bb.128
    i32 115, label %sw.bb.128
  ]

sw.bb:                                            ; preds = %if.end.124, %if.end.124, %if.end.124, %if.end.124
  %74 = load i32, i32* %negate, align 4
  %tobool127 = icmp ne i32 %74, 0
  %lnot = xor i1 %tobool127, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %negate, align 4
  br label %sw.epilog

sw.bb.128:                                        ; preds = %if.end.124, %if.end.124, %if.end.124, %if.end.124
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.124
  store i32 0, i32* %retval
  br label %return

sw.epilog:                                        ; preds = %sw.bb.128, %sw.bb
  call void @start_sequence()
  %75 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %75, i32 0, i32 3
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load129 = load i32, i32* %77, align 8
  %bf.lshr130 = lshr i32 %bf.load129, 16
  %bf.clear131 = and i32 %bf.lshr130, 255
  %78 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %79 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x132 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %79, i32 0, i32 3
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x132, align 8
  %call133 = call %struct.rtx_def* @expand_simple_unop(i32 %bf.clear131, i32 129, %struct.rtx_def* %78, %struct.rtx_def* %80, i32 0)
  store %struct.rtx_def* %call133, %struct.rtx_def** %target, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool134 = icmp ne %struct.rtx_def* %81, null
  br i1 %tobool134, label %land.lhs.true.135, label %if.end.143

land.lhs.true.135:                                ; preds = %sw.epilog
  %82 = load i32, i32* %negate, align 4
  %tobool136 = icmp ne i32 %82, 0
  br i1 %tobool136, label %if.then.137, label %if.end.143

if.then.137:                                      ; preds = %land.lhs.true.135
  %83 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load138 = load i32, i32* %84, align 8
  %bf.lshr139 = lshr i32 %bf.load138, 16
  %bf.clear140 = and i32 %bf.lshr139, 255
  %85 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %86 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x141 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %86, i32 0, i32 3
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x141, align 8
  %call142 = call %struct.rtx_def* @expand_simple_unop(i32 %bf.clear140, i32 77, %struct.rtx_def* %85, %struct.rtx_def* %87, i32 0)
  store %struct.rtx_def* %call142, %struct.rtx_def** %target, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.137, %land.lhs.true.135, %sw.epilog
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool144 = icmp ne %struct.rtx_def* %88, null
  br i1 %tobool144, label %if.end.146, label %if.then.145

if.then.145:                                      ; preds = %if.end.143
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.143
  %89 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %90 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x147 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %90, i32 0, i32 3
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x147, align 8
  %cmp148 = icmp ne %struct.rtx_def* %89, %91
  br i1 %cmp148, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.end.146
  %92 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x151 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %92, i32 0, i32 3
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x151, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %93, %struct.rtx_def* %94)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %if.end.146
  %call153 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call153, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %95 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call154 = call i32 @seq_contains_jump(%struct.rtx_def* %95)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.152
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.end.152
  %96 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %97 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %97, i32 0, i32 6
  %98 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call158 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %96, %struct.rtx_def* %98)
  %99 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %100 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond159 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %100, i32 0, i32 7
  store %struct.rtx_def* %99, %struct.rtx_def** %cond159, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %102 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %102, i32 0, i32 8
  store %struct.rtx_def* %101, %struct.rtx_def** %cond_earliest, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.157, %if.then.156, %if.then.145, %sw.default, %if.then.121, %if.then.65, %if.else.41, %if.then.20, %if.else.15, %if.then
  %103 = load i32, i32* %retval
  ret i32 %103
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_cmove(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %code = alloca i32, align 4
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %0, i32 0, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %3, i32 0, i32 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %a1, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 68
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %6 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a6 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %6, i32 0, i32 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %a6, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 54
  br i1 %cmp9, label %land.lhs.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.5
  %9 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a11 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %9, i32 0, i32 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %a11, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load12 = load i32, i32* %11, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 55
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.10
  %12 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a16 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %12, i32 0, i32 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %a16, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load17 = load i32, i32* %14, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 58
  br i1 %cmp19, label %land.lhs.true, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false.15
  %15 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %15, i32 0, i32 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %a21, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 134
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.20
  %18 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a26 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %18, i32 0, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %a26, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load27 = load i32, i32* %20, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 56
  br i1 %cmp29, label %land.lhs.true, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %lor.lhs.false.25
  %21 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %21, i32 0, i32 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %a31, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load32 = load i32, i32* %23, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 140
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.30
  %24 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a36 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %24, i32 0, i32 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %a36, align 8
  %call = call i32 @register_operand(%struct.rtx_def* %25, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.97

land.lhs.true:                                    ; preds = %lor.lhs.false.35, %lor.lhs.false.30, %lor.lhs.false.25, %lor.lhs.false.20, %lor.lhs.false.15, %lor.lhs.false.10, %lor.lhs.false.5, %lor.lhs.false, %entry
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 5
  %27 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load37 = load i32, i32* %28, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 67
  br i1 %cmp39, label %if.then, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true
  %29 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b41 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %29, i32 0, i32 5
  %30 = load %struct.rtx_def*, %struct.rtx_def** %b41, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load42 = load i32, i32* %31, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 68
  br i1 %cmp44, label %if.then, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %32 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b46 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %32, i32 0, i32 5
  %33 = load %struct.rtx_def*, %struct.rtx_def** %b46, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 54
  br i1 %cmp49, label %if.then, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.45
  %35 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b51 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %35, i32 0, i32 5
  %36 = load %struct.rtx_def*, %struct.rtx_def** %b51, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load52 = load i32, i32* %37, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 55
  br i1 %cmp54, label %if.then, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.50
  %38 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b56 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %38, i32 0, i32 5
  %39 = load %struct.rtx_def*, %struct.rtx_def** %b56, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load57 = load i32, i32* %40, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 58
  br i1 %cmp59, label %if.then, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.55
  %41 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b61 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %41, i32 0, i32 5
  %42 = load %struct.rtx_def*, %struct.rtx_def** %b61, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load62 = load i32, i32* %43, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 134
  br i1 %cmp64, label %if.then, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.60
  %44 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b66 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %44, i32 0, i32 5
  %45 = load %struct.rtx_def*, %struct.rtx_def** %b66, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load67 = load i32, i32* %46, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 56
  br i1 %cmp69, label %if.then, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.65
  %47 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b71 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %47, i32 0, i32 5
  %48 = load %struct.rtx_def*, %struct.rtx_def** %b71, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load72 = load i32, i32* %49, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 140
  br i1 %cmp74, label %if.then, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.70
  %50 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b76 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %50, i32 0, i32 5
  %51 = load %struct.rtx_def*, %struct.rtx_def** %b76, align 8
  %call77 = call i32 @register_operand(%struct.rtx_def* %51, i32 0)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then, label %if.end.97

if.then:                                          ; preds = %lor.lhs.false.75, %lor.lhs.false.70, %lor.lhs.false.65, %lor.lhs.false.60, %lor.lhs.false.55, %lor.lhs.false.50, %lor.lhs.false.45, %lor.lhs.false.40, %land.lhs.true
  call void @start_sequence()
  %52 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %52, i32 0, i32 7
  %53 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load79 = load i32, i32* %54, align 8
  %bf.clear80 = and i32 %bf.load79, 65535
  store i32 %bf.clear80, i32* %code, align 4
  %55 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %56 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %56, i32 0, i32 3
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %58 = load i32, i32* %code, align 4
  %59 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond81 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %59, i32 0, i32 7
  %60 = load %struct.rtx_def*, %struct.rtx_def** %cond81, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %62 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond82 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %62, i32 0, i32 7
  %63 = load %struct.rtx_def*, %struct.rtx_def** %cond82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %65 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a86 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %65, i32 0, i32 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %a86, align 8
  %67 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b87 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %67, i32 0, i32 5
  %68 = load %struct.rtx_def*, %struct.rtx_def** %b87, align 8
  %call88 = call %struct.rtx_def* @noce_emit_cmove(%struct.noce_if_info* %55, %struct.rtx_def* %57, i32 %58, %struct.rtx_def* %61, %struct.rtx_def* %64, %struct.rtx_def* %66, %struct.rtx_def* %68)
  store %struct.rtx_def* %call88, %struct.rtx_def** %target, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool89 = icmp ne %struct.rtx_def* %69, null
  br i1 %tobool89, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %if.then
  %70 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %71 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x91 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %71, i32 0, i32 3
  %72 = load %struct.rtx_def*, %struct.rtx_def** %x91, align 8
  %cmp92 = icmp ne %struct.rtx_def* %70, %72
  br i1 %cmp92, label %if.then.93, label %if.end

if.then.93:                                       ; preds = %if.then.90
  %73 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x94 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %73, i32 0, i32 3
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x94, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %74, %struct.rtx_def* %75)
  br label %if.end

if.end:                                           ; preds = %if.then.93, %if.then.90
  %call95 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call95, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %76 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %77 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %77, i32 0, i32 6
  %78 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call96 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %76, %struct.rtx_def* %78)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

if.end.97:                                        ; preds = %lor.lhs.false.75, %lor.lhs.false.35
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.97, %if.else, %if.end
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_store_flag_constants(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %reversep = alloca i32, align 4
  %itrue = alloca i64, align 8
  %ifalse = alloca i64, align 8
  %diff = alloca i64, align 8
  %tmp = alloca i64, align 8
  %normalize = alloca i32, align 4
  %can_reverse = alloca i32, align 4
  %mode = alloca i32, align 4
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.157, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %1, i32 0, i32 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %land.lhs.true.4, label %if.end.157

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %4 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %4, i32 0, i32 5
  %5 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load5 = load i32, i32* %6, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 54
  br i1 %cmp7, label %if.then, label %if.end.157

if.then:                                          ; preds = %land.lhs.true.4
  %7 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %7, i32 0, i32 3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load8, 16
  %bf.clear9 = and i32 %bf.lshr, 255
  store i32 %bf.clear9, i32* %mode, align 4
  %10 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a10 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %10, i32 0, i32 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %a10, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %12 = load i64, i64* %rtwint, align 8
  store i64 %12, i64* %ifalse, align 8
  %13 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b11 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %13, i32 0, i32 5
  %14 = load %struct.rtx_def*, %struct.rtx_def** %b11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint14 = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %15 = load i64, i64* %rtwint14, align 8
  store i64 %15, i64* %itrue, align 8
  %16 = load i64, i64* %itrue, align 8
  %17 = load i64, i64* %ifalse, align 8
  %sub = sub nsw i64 %16, %17
  %cmp15 = icmp sgt i64 %sub, 0
  %conv = zext i1 %cmp15 to i32
  %18 = load i64, i64* %ifalse, align 8
  %cmp16 = icmp slt i64 %18, 0
  %conv17 = zext i1 %cmp16 to i32
  %19 = load i64, i64* %itrue, align 8
  %cmp18 = icmp slt i64 %19, 0
  %conv19 = zext i1 %cmp18 to i32
  %cmp20 = icmp ne i32 %conv17, %conv19
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %20 = load i64, i64* %ifalse, align 8
  %cmp22 = icmp slt i64 %20, 0
  %conv23 = zext i1 %cmp22 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %21 = load i64, i64* %ifalse, align 8
  %22 = load i64, i64* %itrue, align 8
  %cmp24 = icmp slt i64 %21, %22
  %conv25 = zext i1 %cmp24 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv23, %cond.true ], [ %conv25, %cond.false ]
  %cmp26 = icmp ne i32 %conv, %cond
  br i1 %cmp26, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %cond.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %23 = load i64, i64* %itrue, align 8
  %24 = load i64, i64* %ifalse, align 8
  %sub29 = sub nsw i64 %23, %24
  %25 = load i32, i32* %mode, align 4
  %call = call i64 @trunc_int_for_mode(i64 %sub29, i32 %25)
  store i64 %call, i64* %diff, align 8
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond30 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 7
  %27 = load %struct.rtx_def*, %struct.rtx_def** %cond30, align 8
  %28 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %28, i32 0, i32 6
  %29 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call31 = call i32 @reversed_comparison_code(%struct.rtx_def* %27, %struct.rtx_def* %29)
  %cmp32 = icmp ne i32 %call31, 0
  %conv33 = zext i1 %cmp32 to i32
  store i32 %conv33, i32* %can_reverse, align 4
  store i32 0, i32* %reversep, align 4
  %30 = load i64, i64* %diff, align 8
  %cmp34 = icmp eq i64 %30, 1
  br i1 %cmp34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %31 = load i64, i64* %diff, align 8
  %cmp36 = icmp eq i64 %31, -1
  br i1 %cmp36, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %normalize, align 4
  br label %if.end.86

if.else:                                          ; preds = %lor.lhs.false
  %32 = load i64, i64* %ifalse, align 8
  %cmp39 = icmp eq i64 %32, 0
  br i1 %cmp39, label %land.lhs.true.41, label %if.else.46

land.lhs.true.41:                                 ; preds = %if.else
  %33 = load i64, i64* %itrue, align 8
  %call42 = call i32 @exact_log2_wide(i64 %33)
  %cmp43 = icmp sge i32 %call42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %land.lhs.true.41
  store i32 1, i32* %normalize, align 4
  br label %if.end.85

if.else.46:                                       ; preds = %land.lhs.true.41, %if.else
  %34 = load i64, i64* %itrue, align 8
  %cmp47 = icmp eq i64 %34, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.else.56

land.lhs.true.49:                                 ; preds = %if.else.46
  %35 = load i64, i64* %ifalse, align 8
  %call50 = call i32 @exact_log2_wide(i64 %35)
  %cmp51 = icmp sge i32 %call50, 0
  br i1 %cmp51, label %land.lhs.true.53, label %if.else.56

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %36 = load i32, i32* %can_reverse, align 4
  %tobool54 = icmp ne i32 %36, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* %normalize, align 4
  store i32 1, i32* %reversep, align 4
  br label %if.end.84

if.else.56:                                       ; preds = %land.lhs.true.53, %land.lhs.true.49, %if.else.46
  %37 = load i64, i64* %itrue, align 8
  %cmp57 = icmp eq i64 %37, -1
  br i1 %cmp57, label %land.lhs.true.59, label %if.else.63

land.lhs.true.59:                                 ; preds = %if.else.56
  %38 = load i32, i32* @ix86_branch_cost, align 4
  %cmp60 = icmp sge i32 %38, 2
  br i1 %cmp60, label %if.then.62, label %if.else.63

if.then.62:                                       ; preds = %land.lhs.true.59
  store i32 -1, i32* %normalize, align 4
  br label %if.end.83

if.else.63:                                       ; preds = %land.lhs.true.59, %if.else.56
  %39 = load i64, i64* %ifalse, align 8
  %cmp64 = icmp eq i64 %39, -1
  br i1 %cmp64, label %land.lhs.true.66, label %if.else.72

land.lhs.true.66:                                 ; preds = %if.else.63
  %40 = load i32, i32* %can_reverse, align 4
  %tobool67 = icmp ne i32 %40, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.72

land.lhs.true.68:                                 ; preds = %land.lhs.true.66
  %41 = load i32, i32* @ix86_branch_cost, align 4
  %cmp69 = icmp sge i32 %41, 2
  br i1 %cmp69, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %land.lhs.true.68
  store i32 -1, i32* %normalize, align 4
  store i32 1, i32* %reversep, align 4
  br label %if.end.82

if.else.72:                                       ; preds = %land.lhs.true.68, %land.lhs.true.66, %if.else.63
  %42 = load i32, i32* @ix86_branch_cost, align 4
  %cmp73 = icmp sge i32 %42, 2
  br i1 %cmp73, label %land.lhs.true.75, label %lor.lhs.false.76

land.lhs.true.75:                                 ; preds = %if.else.72
  br i1 false, label %if.then.79, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %land.lhs.true.75, %if.else.72
  %43 = load i32, i32* @ix86_branch_cost, align 4
  %cmp77 = icmp sge i32 %43, 3
  br i1 %cmp77, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %lor.lhs.false.76, %land.lhs.true.75
  store i32 -1, i32* %normalize, align 4
  br label %if.end.81

if.else.80:                                       ; preds = %lor.lhs.false.76
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.79
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.71
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.then.62
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.55
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.45
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.then.38
  %44 = load i32, i32* %reversep, align 4
  %tobool87 = icmp ne i32 %44, 0
  br i1 %tobool87, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.86
  %45 = load i64, i64* %itrue, align 8
  store i64 %45, i64* %tmp, align 8
  %46 = load i64, i64* %ifalse, align 8
  store i64 %46, i64* %itrue, align 8
  %47 = load i64, i64* %tmp, align 8
  store i64 %47, i64* %ifalse, align 8
  %48 = load i64, i64* %diff, align 8
  %sub89 = sub nsw i64 0, %48
  %49 = load i32, i32* %mode, align 4
  %call90 = call i64 @trunc_int_for_mode(i64 %sub89, i32 %49)
  store i64 %call90, i64* %diff, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.88, %if.end.86
  call void @start_sequence()
  %50 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x92 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 3
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x92, align 8
  %53 = load i32, i32* %reversep, align 4
  %54 = load i32, i32* %normalize, align 4
  %call93 = call %struct.rtx_def* @noce_emit_store_flag(%struct.noce_if_info* %50, %struct.rtx_def* %52, i32 %53, i32 %54)
  store %struct.rtx_def* %call93, %struct.rtx_def** %target, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool94 = icmp ne %struct.rtx_def* %55, null
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %if.end.91
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

if.end.96:                                        ; preds = %if.end.91
  %56 = load i64, i64* %diff, align 8
  %cmp97 = icmp eq i64 %56, 1
  br i1 %cmp97, label %if.then.102, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %if.end.96
  %57 = load i64, i64* %diff, align 8
  %cmp100 = icmp eq i64 %57, -1
  br i1 %cmp100, label %if.then.102, label %if.else.109

if.then.102:                                      ; preds = %lor.lhs.false.99, %if.end.96
  %58 = load i32, i32* %mode, align 4
  %59 = load i64, i64* %diff, align 8
  %cmp103 = icmp eq i64 %59, 1
  %cond105 = select i1 %cmp103, i32 75, i32 76
  %60 = load i64, i64* %ifalse, align 8
  %call106 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %60)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %62 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x107 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %62, i32 0, i32 3
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x107, align 8
  %call108 = call %struct.rtx_def* @expand_simple_binop(i32 %58, i32 %cond105, %struct.rtx_def* %call106, %struct.rtx_def* %61, %struct.rtx_def* %63, i32 0, i32 2)
  store %struct.rtx_def* %call108, %struct.rtx_def** %target, align 8
  br label %if.end.140

if.else.109:                                      ; preds = %lor.lhs.false.99
  %64 = load i64, i64* %ifalse, align 8
  %cmp110 = icmp eq i64 %64, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.else.121

land.lhs.true.112:                                ; preds = %if.else.109
  %65 = load i64, i64* %itrue, align 8
  %call113 = call i32 @exact_log2_wide(i64 %65)
  %conv114 = sext i32 %call113 to i64
  store i64 %conv114, i64* %tmp, align 8
  %cmp115 = icmp sge i64 %conv114, 0
  br i1 %cmp115, label %if.then.117, label %if.else.121

if.then.117:                                      ; preds = %land.lhs.true.112
  %66 = load i32, i32* %mode, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %68 = load i64, i64* %tmp, align 8
  %call118 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %68)
  %69 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x119 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %69, i32 0, i32 3
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x119, align 8
  %call120 = call %struct.rtx_def* @expand_simple_binop(i32 %66, i32 87, %struct.rtx_def* %67, %struct.rtx_def* %call118, %struct.rtx_def* %70, i32 0, i32 2)
  store %struct.rtx_def* %call120, %struct.rtx_def** %target, align 8
  br label %if.end.139

if.else.121:                                      ; preds = %land.lhs.true.112, %if.else.109
  %71 = load i64, i64* %itrue, align 8
  %cmp122 = icmp eq i64 %71, -1
  br i1 %cmp122, label %if.then.124, label %if.else.128

if.then.124:                                      ; preds = %if.else.121
  %72 = load i32, i32* %mode, align 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %74 = load i64, i64* %ifalse, align 8
  %call125 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %74)
  %75 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x126 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %75, i32 0, i32 3
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x126, align 8
  %call127 = call %struct.rtx_def* @expand_simple_binop(i32 %72, i32 84, %struct.rtx_def* %73, %struct.rtx_def* %call125, %struct.rtx_def* %76, i32 0, i32 2)
  store %struct.rtx_def* %call127, %struct.rtx_def** %target, align 8
  br label %if.end.138

if.else.128:                                      ; preds = %if.else.121
  %77 = load i32, i32* %mode, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %79 = load i64, i64* %diff, align 8
  %call129 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %79)
  %80 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x130 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %80, i32 0, i32 3
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x130, align 8
  %call131 = call %struct.rtx_def* @expand_simple_binop(i32 %77, i32 83, %struct.rtx_def* %78, %struct.rtx_def* %call129, %struct.rtx_def* %81, i32 0, i32 2)
  store %struct.rtx_def* %call131, %struct.rtx_def** %target, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool132 = icmp ne %struct.rtx_def* %82, null
  br i1 %tobool132, label %if.then.133, label %if.end.137

if.then.133:                                      ; preds = %if.else.128
  %83 = load i32, i32* %mode, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %85 = load i64, i64* %ifalse, align 8
  %call134 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %85)
  %86 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x135 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %86, i32 0, i32 3
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x135, align 8
  %call136 = call %struct.rtx_def* @expand_simple_binop(i32 %83, i32 75, %struct.rtx_def* %84, %struct.rtx_def* %call134, %struct.rtx_def* %87, i32 0, i32 2)
  store %struct.rtx_def* %call136, %struct.rtx_def** %target, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.133, %if.else.128
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.124
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.138, %if.then.117
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.139, %if.then.102
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool141 = icmp ne %struct.rtx_def* %88, null
  br i1 %tobool141, label %if.end.143, label %if.then.142

if.then.142:                                      ; preds = %if.end.140
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.140
  %89 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %90 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x144 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %90, i32 0, i32 3
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x144, align 8
  %cmp145 = icmp ne %struct.rtx_def* %89, %91
  br i1 %cmp145, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.end.143
  %92 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x148 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %92, i32 0, i32 3
  %93 = load %struct.rtx_def*, %struct.rtx_def** %x148, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %93, %struct.rtx_def* %94)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.end.143
  %call150 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call150, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %95 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call151 = call i32 @seq_contains_jump(%struct.rtx_def* %95)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.154

if.then.153:                                      ; preds = %if.end.149
  store i32 0, i32* %retval
  br label %return

if.end.154:                                       ; preds = %if.end.149
  %96 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %97 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump155 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %97, i32 0, i32 6
  %98 = load %struct.rtx_def*, %struct.rtx_def** %jump155, align 8
  %call156 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %96, %struct.rtx_def* %98)
  store i32 1, i32* %retval
  br label %return

if.end.157:                                       ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.157, %if.end.154, %if.then.153, %if.then.142, %if.then.95, %if.else.80, %if.then.28
  %99 = load i32, i32* %retval
  ret i32 %99
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_store_flag_inc(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %subtract = alloca i32, align 4
  %normalize = alloca i32, align 4
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.82, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @ix86_branch_cost, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %land.lhs.true.1, label %if.end.82

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %2, i32 0, i32 5
  %3 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %4 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %4, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp2 = icmp eq %struct.rtx_def* %3, %5
  br i1 %cmp2, label %land.lhs.true.3, label %if.end.82

land.lhs.true.3:                                  ; preds = %land.lhs.true.1
  %6 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %6, i32 0, i32 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 75
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.82

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %9 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a6 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %9, i32 0, i32 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %a6, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp7 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp7, label %land.lhs.true.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %13 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %13, i32 0, i32 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %a8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp12 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp12, label %land.lhs.true.13, label %if.end.82

land.lhs.true.13:                                 ; preds = %lor.lhs.false, %land.lhs.true.5
  %17 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a14 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %17, i32 0, i32 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %a14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x18 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 3
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x18, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %19, %struct.rtx_def* %21)
  %tobool19 = icmp ne i32 %call, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.82

land.lhs.true.20:                                 ; preds = %land.lhs.true.13
  %22 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %22, i32 0, i32 7
  %23 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %24 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %24, i32 0, i32 6
  %25 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call21 = call i32 @reversed_comparison_code(%struct.rtx_def* %23, %struct.rtx_def* %25)
  %cmp22 = icmp ne i32 %call21, 0
  br i1 %cmp22, label %if.then, label %if.end.82

if.then:                                          ; preds = %land.lhs.true.20
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a23 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %a23, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx28 to i64*
  %29 = load i64, i64* %rtwint, align 8
  %cmp29 = icmp eq i64 1, %29
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.then
  store i32 0, i32* %subtract, align 4
  store i32 0, i32* %normalize, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.then
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %a31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtwint37 = bitcast %union.rtunion_def* %arrayidx36 to i64*
  %33 = load i64, i64* %rtwint37, align 8
  %cmp38 = icmp eq i64 -1, %33
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else
  store i32 1, i32* %subtract, align 4
  store i32 0, i32* %normalize, align 4
  br label %if.end

if.else.40:                                       ; preds = %if.else
  store i32 0, i32* %subtract, align 4
  %34 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a41 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %34, i32 0, i32 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %a41, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtwint47 = bitcast %union.rtunion_def* %arrayidx46 to i64*
  %37 = load i64, i64* %rtwint47, align 8
  %conv = trunc i64 %37 to i32
  store i32 %conv, i32* %normalize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.40, %if.then.39
  br label %if.end.48

if.end.48:                                        ; preds = %if.end, %if.then.30
  call void @start_sequence()
  %38 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %39 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %39, i32 0, i32 3
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x49, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load50 = load i32, i32* %41, align 8
  %bf.lshr = lshr i32 %bf.load50, 16
  %bf.clear51 = and i32 %bf.lshr, 255
  %call52 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear51)
  %42 = load i32, i32* %normalize, align 4
  %call53 = call %struct.rtx_def* @noce_emit_store_flag(%struct.noce_if_info* %38, %struct.rtx_def* %call52, i32 1, i32 %42)
  store %struct.rtx_def* %call53, %struct.rtx_def** %target, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool54 = icmp ne %struct.rtx_def* %43, null
  br i1 %tobool54, label %if.then.55, label %if.end.65

if.then.55:                                       ; preds = %if.end.48
  %44 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x56 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %44, i32 0, i32 3
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x56, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load57 = load i32, i32* %46, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 16
  %bf.clear59 = and i32 %bf.lshr58, 255
  %47 = load i32, i32* %subtract, align 4
  %tobool60 = icmp ne i32 %47, 0
  %cond61 = select i1 %tobool60, i32 76, i32 75
  %48 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x62 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %48, i32 0, i32 3
  %49 = load %struct.rtx_def*, %struct.rtx_def** %x62, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %51 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x63 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %51, i32 0, i32 3
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x63, align 8
  %call64 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear59, i32 %cond61, %struct.rtx_def* %49, %struct.rtx_def* %50, %struct.rtx_def* %52, i32 0, i32 2)
  store %struct.rtx_def* %call64, %struct.rtx_def** %target, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.55, %if.end.48
  %53 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool66 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool66, label %if.then.67, label %if.end.81

if.then.67:                                       ; preds = %if.end.65
  %54 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %55 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x68 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %55, i32 0, i32 3
  %56 = load %struct.rtx_def*, %struct.rtx_def** %x68, align 8
  %cmp69 = icmp ne %struct.rtx_def* %54, %56
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.then.67
  %57 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x72 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %57, i32 0, i32 3
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x72, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %58, %struct.rtx_def* %59)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.then.67
  %call74 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call74, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %60 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call75 = call i32 @seq_contains_jump(%struct.rtx_def* %60)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.78

if.then.77:                                       ; preds = %if.end.73
  store i32 0, i32* %retval
  br label %return

if.end.78:                                        ; preds = %if.end.73
  %61 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %62 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump79 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %62, i32 0, i32 6
  %63 = load %struct.rtx_def*, %struct.rtx_def** %jump79, align 8
  %call80 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %61, %struct.rtx_def* %63)
  store i32 1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.65
  call void @end_sequence()
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %land.lhs.true.20, %land.lhs.true.13, %lor.lhs.false, %land.lhs.true.3, %land.lhs.true.1, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.end.78, %if.then.77
  %64 = load i32, i32* %retval
  ret i32 %64
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_store_flag_mask(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %reversep = alloca i32, align 4
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  store i32 0, i32* %reversep, align 4
  %0 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end.44, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @ix86_branch_cost, align 4
  %cmp = icmp sge i32 %1, 2
  br i1 %cmp, label %land.lhs.true.1, label %if.end.44

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %2, i32 0, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp2 = icmp eq %struct.rtx_def* %3, %4
  br i1 %cmp2, label %land.lhs.true.3, label %lor.lhs.false

land.lhs.true.3:                                  ; preds = %land.lhs.true.1
  %5 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %5, i32 0, i32 5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %7 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %7, i32 0, i32 3
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %6, %struct.rtx_def* %8)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.3, %land.lhs.true.1
  %9 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %9, i32 0, i32 7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %11 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %11, i32 0, i32 6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call5 = call i32 @reversed_comparison_code(%struct.rtx_def* %10, %struct.rtx_def* %12)
  %cmp6 = icmp ne i32 %call5, 0
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %reversep, align 4
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.44

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %13 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b8 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %13, i32 0, i32 5
  %14 = load %struct.rtx_def*, %struct.rtx_def** %b8, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp9 = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.44

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %16 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a12 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %16, i32 0, i32 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %a12, align 8
  %18 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x13 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %18, i32 0, i32 3
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x13, align 8
  %call14 = call i32 @rtx_equal_p(%struct.rtx_def* %17, %struct.rtx_def* %19)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.end.44

if.then:                                          ; preds = %land.lhs.true.11, %land.lhs.true.3
  call void @start_sequence()
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %21 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x16 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %21, i32 0, i32 3
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x16, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load = load i32, i32* %23, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call17 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  %24 = load i32, i32* %reversep, align 4
  %call18 = call %struct.rtx_def* @noce_emit_store_flag(%struct.noce_if_info* %20, %struct.rtx_def* %call17, i32 %24, i32 -1)
  store %struct.rtx_def* %call18, %struct.rtx_def** %target, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool19 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool19, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %if.then
  %26 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x21 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %26, i32 0, i32 3
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x21, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load22 = load i32, i32* %28, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %29 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %29, i32 0, i32 3
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x25, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %32 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x26 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %32, i32 0, i32 3
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x26, align 8
  %call27 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear24, i32 83, %struct.rtx_def* %30, %struct.rtx_def* %31, %struct.rtx_def* %33, i32 0, i32 2)
  store %struct.rtx_def* %call27, %struct.rtx_def** %target, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then
  %34 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool28 = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool28, label %if.then.29, label %if.end.43

if.then.29:                                       ; preds = %if.end
  %35 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %36 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x30 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %36, i32 0, i32 3
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x30, align 8
  %cmp31 = icmp ne %struct.rtx_def* %35, %37
  br i1 %cmp31, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.29
  %38 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x34 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %38, i32 0, i32 3
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x34, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %39, %struct.rtx_def* %40)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.29
  %call36 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call36, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %41 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call37 = call i32 @seq_contains_jump(%struct.rtx_def* %41)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.35
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.35
  %42 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %43 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump41 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %43, i32 0, i32 6
  %44 = load %struct.rtx_def*, %struct.rtx_def** %jump41, align 8
  %call42 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %42, %struct.rtx_def* %44)
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end
  call void @end_sequence()
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %land.lhs.true.11, %land.lhs.true.7, %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.end.40, %if.then.39
  %45 = load i32, i32* %retval
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define internal i32 @noce_try_cmove_arith(%struct.noce_if_info* %if_info) #0 {
entry:
  %retval = alloca i32, align 4
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %a = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %insn_a = alloca %struct.rtx_def*, align 8
  %insn_b = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %target = alloca %struct.rtx_def*, align 8
  %is_mem = alloca i32, align 4
  %code = alloca i32, align 4
  %reversep = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  %set137 = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  %0 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %0, i32 0, i32 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %a1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %a, align 8
  %2 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b2 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %2, i32 0, i32 5
  %3 = load %struct.rtx_def*, %struct.rtx_def** %b2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %b, align 8
  %4 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x3 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %4, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x3, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %x, align 8
  store i32 0, i32* %is_mem, align 4
  %6 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* @cse_not_expected, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.else

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %land.lhs.true.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 66
  br i1 %cmp12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true.9
  %12 = load i32, i32* @ix86_branch_cost, align 4
  %cmp14 = icmp sge i32 %12, 5
  br i1 %cmp14, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %a, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %b, align 8
  %17 = load i32, i32* @target_flags, align 4
  %and = and i32 %17, 33554432
  %tobool18 = icmp ne i32 %and, 0
  %cond = select i1 %tobool18, i32 5, i32 4
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %cond)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  store i32 1, i32* %is_mem, align 4
  br label %if.end.24

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true.9, %land.lhs.true.8, %land.lhs.true, %entry
  %18 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call19 = call i32 @may_trap_p(%struct.rtx_def* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %19 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call21 = call i32 @may_trap_p(%struct.rtx_def* %19)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond25 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 7
  %21 = load %struct.rtx_def*, %struct.rtx_def** %cond25, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load26 = load i32, i32* %22, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  store i32 %bf.clear27, i32* %code, align 4
  %23 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %insn_a28 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %23, i32 0, i32 1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn_a28, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn_a, align 8
  %25 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %insn_b29 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %25, i32 0, i32 2
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn_b29, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %insn_b, align 8
  %27 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond30 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %27, i32 0, i32 7
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond30, align 8
  %29 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %29, i32 0, i32 6
  %30 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call31 = call i32 @reversed_comparison_code(%struct.rtx_def* %28, %struct.rtx_def* %30)
  %cmp32 = icmp ne i32 %call31, 0
  br i1 %cmp32, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %if.end.24
  store i32 0, i32* %reversep, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call35 = call i32 @rtx_equal_p(%struct.rtx_def* %31, %struct.rtx_def* %32)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.then.33
  store i32 1, i32* %reversep, align 4
  br label %if.end.45

if.else.38:                                       ; preds = %if.then.33
  %33 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load39 = load i32, i32* %35, align 8
  %bf.lshr = lshr i32 %bf.load39, 16
  %bf.clear40 = and i32 %bf.lshr, 255
  %call41 = call i32 @general_operand(%struct.rtx_def* %33, i32 %bf.clear40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.38
  store i32 1, i32* %reversep, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.else.38
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %36 = load i32, i32* %reversep, align 4
  %tobool46 = icmp ne i32 %36, 0
  br i1 %tobool46, label %if.then.47, label %if.end.51

if.then.47:                                       ; preds = %if.end.45
  %37 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond48 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %37, i32 0, i32 7
  %38 = load %struct.rtx_def*, %struct.rtx_def** %cond48, align 8
  %39 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %39, i32 0, i32 6
  %40 = load %struct.rtx_def*, %struct.rtx_def** %jump49, align 8
  %call50 = call i32 @reversed_comparison_code(%struct.rtx_def* %38, %struct.rtx_def* %40)
  store i32 %call50, i32* %code, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %tmp, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %a, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %b, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %tmp, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %insn_a, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %insn_b, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.47, %if.end.45
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.end.24
  call void @start_sequence()
  %47 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load53 = load i32, i32* %49, align 8
  %bf.lshr54 = lshr i32 %bf.load53, 16
  %bf.clear55 = and i32 %bf.lshr54, 255
  %call56 = call i32 @general_operand(%struct.rtx_def* %47, i32 %bf.clear55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.129, label %if.then.58

if.then.58:                                       ; preds = %if.end.52
  %50 = load i32, i32* @no_new_pseudos, align 4
  %tobool60 = icmp ne i32 %50, 0
  br i1 %tobool60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.then.58
  br label %end_seq_and_fail

if.end.62:                                        ; preds = %if.then.58
  %51 = load i32, i32* %is_mem, align 4
  %tobool63 = icmp ne i32 %51, 0
  br i1 %tobool63, label %if.then.64, label %if.else.71

if.then.64:                                       ; preds = %if.end.62
  %52 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load65 = load i32, i32* %53, align 8
  %bf.lshr66 = lshr i32 %bf.load65, 16
  %bf.clear67 = and i32 %bf.lshr66, 255
  %call68 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear67)
  store %struct.rtx_def* %call68, %struct.rtx_def** %tmp, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %call69 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %54, %struct.rtx_def* %55)
  %call70 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call69)
  store %struct.rtx_def* %call70, %struct.rtx_def** %tmp, align 8
  br label %if.end.112

if.else.71:                                       ; preds = %if.end.62
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %tobool72 = icmp ne %struct.rtx_def* %56, null
  br i1 %tobool72, label %if.else.74, label %if.then.73

if.then.73:                                       ; preds = %if.else.71
  br label %end_seq_and_fail

if.else.74:                                       ; preds = %if.else.71
  %57 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load75 = load i32, i32* %58, align 8
  %bf.lshr76 = lshr i32 %bf.load75, 16
  %bf.clear77 = and i32 %bf.lshr76, 255
  %call78 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear77)
  store %struct.rtx_def* %call78, %struct.rtx_def** %a, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn_a, align 8
  %call79 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %59)
  store %struct.rtx_def* %call79, %struct.rtx_def** %tmp, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load80 = load i32, i32* %61, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %idxprom = sext i32 %bf.clear81 to i64
  %arrayidx82 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %62 = load i8, i8* %arrayidx82, align 1
  %conv = sext i8 %62 to i32
  %cmp83 = icmp eq i32 %conv, 105
  br i1 %cmp83, label %cond.true, label %cond.false.101

cond.true:                                        ; preds = %if.else.74
  %63 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load88 = load i32, i32* %65, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 47
  br i1 %cmp90, label %cond.true.92, label %cond.false

cond.true.92:                                     ; preds = %cond.true
  %66 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 3
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %68 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 3
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  %call99 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %68, %struct.rtx_def* %70)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.92
  %cond100 = phi %struct.rtx_def* [ %67, %cond.true.92 ], [ %call99, %cond.false ]
  br label %cond.end.102

cond.false.101:                                   ; preds = %if.else.74
  br label %cond.end.102

cond.end.102:                                     ; preds = %cond.false.101, %cond.end
  %cond103 = phi %struct.rtx_def* [ %cond100, %cond.end ], [ null, %cond.false.101 ]
  store %struct.rtx_def* %cond103, %struct.rtx_def** %set, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  store %struct.rtx_def* %71, %struct.rtx_def** %rtx106, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 3
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %call110 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %74)
  store %struct.rtx_def* %call110, %struct.rtx_def** %tmp, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %cond.end.102
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %if.then.64
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %76 = load i32, i32* %rtint, align 4
  %cmp115 = icmp sge i32 %76, 0
  br i1 %cmp115, label %cond.true.117, label %cond.false.121

cond.true.117:                                    ; preds = %if.end.112
  %77 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 4
  %rtint120 = bitcast %union.rtunion_def* %arrayidx119 to i32*
  %78 = load i32, i32* %rtint120, align 4
  br label %cond.end.123

cond.false.121:                                   ; preds = %if.end.112
  %79 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call122 = call i32 @recog_memoized_1(%struct.rtx_def* %79)
  br label %cond.end.123

cond.end.123:                                     ; preds = %cond.false.121, %cond.true.117
  %cond124 = phi i32 [ %78, %cond.true.117 ], [ %call122, %cond.false.121 ]
  %cmp125 = icmp slt i32 %cond124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %cond.end.123
  br label %end_seq_and_fail

if.end.128:                                       ; preds = %cond.end.123
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.end.52
  %80 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load130 = load i32, i32* %82, align 8
  %bf.lshr131 = lshr i32 %bf.load130, 16
  %bf.clear132 = and i32 %bf.lshr131, 255
  %call133 = call i32 @general_operand(%struct.rtx_def* %80, i32 %bf.clear132)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.end.213, label %if.then.135

if.then.135:                                      ; preds = %if.end.129
  %83 = load i32, i32* @no_new_pseudos, align 4
  %tobool138 = icmp ne i32 %83, 0
  br i1 %tobool138, label %if.then.139, label %if.end.140

if.then.139:                                      ; preds = %if.then.135
  br label %end_seq_and_fail

if.end.140:                                       ; preds = %if.then.135
  %84 = load i32, i32* %is_mem, align 4
  %tobool141 = icmp ne i32 %84, 0
  br i1 %tobool141, label %if.then.142, label %if.else.149

if.then.142:                                      ; preds = %if.end.140
  %85 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load143 = load i32, i32* %86, align 8
  %bf.lshr144 = lshr i32 %bf.load143, 16
  %bf.clear145 = and i32 %bf.lshr144, 255
  %call146 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear145)
  store %struct.rtx_def* %call146, %struct.rtx_def** %tmp, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call147 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %87, %struct.rtx_def* %88)
  %call148 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call147)
  store %struct.rtx_def* %call148, %struct.rtx_def** %tmp, align 8
  br label %if.end.195

if.else.149:                                      ; preds = %if.end.140
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %tobool150 = icmp ne %struct.rtx_def* %89, null
  br i1 %tobool150, label %if.else.152, label %if.then.151

if.then.151:                                      ; preds = %if.else.149
  br label %end_seq_and_fail

if.else.152:                                      ; preds = %if.else.149
  %90 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load153 = load i32, i32* %91, align 8
  %bf.lshr154 = lshr i32 %bf.load153, 16
  %bf.clear155 = and i32 %bf.lshr154, 255
  %call156 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear155)
  store %struct.rtx_def* %call156, %struct.rtx_def** %b, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn_b, align 8
  %call157 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %92)
  store %struct.rtx_def* %call157, %struct.rtx_def** %tmp, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load158 = load i32, i32* %94, align 8
  %bf.clear159 = and i32 %bf.load158, 65535
  %idxprom160 = sext i32 %bf.clear159 to i64
  %arrayidx161 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom160
  %95 = load i8, i8* %arrayidx161, align 1
  %conv162 = sext i8 %95 to i32
  %cmp163 = icmp eq i32 %conv162, 105
  br i1 %cmp163, label %cond.true.165, label %cond.false.184

cond.true.165:                                    ; preds = %if.else.152
  %96 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 3
  %rtx168 = bitcast %union.rtunion_def* %arrayidx167 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx168, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load169 = load i32, i32* %98, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp eq i32 %bf.clear170, 47
  br i1 %cmp171, label %cond.true.173, label %cond.false.177

cond.true.173:                                    ; preds = %cond.true.165
  %99 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 3
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  br label %cond.end.182

cond.false.177:                                   ; preds = %cond.true.165
  %101 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 3
  %rtx180 = bitcast %union.rtunion_def* %arrayidx179 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx180, align 8
  %call181 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %101, %struct.rtx_def* %103)
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.177, %cond.true.173
  %cond183 = phi %struct.rtx_def* [ %100, %cond.true.173 ], [ %call181, %cond.false.177 ]
  br label %cond.end.185

cond.false.184:                                   ; preds = %if.else.152
  br label %cond.end.185

cond.end.185:                                     ; preds = %cond.false.184, %cond.end.182
  %cond186 = phi %struct.rtx_def* [ %cond183, %cond.end.182 ], [ null, %cond.false.184 ]
  store %struct.rtx_def* %cond186, %struct.rtx_def** %set137, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %set137, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtx189 = bitcast %union.rtunion_def* %arrayidx188 to %struct.rtx_def**
  store %struct.rtx_def* %104, %struct.rtx_def** %rtx189, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 3
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %call193 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %107)
  store %struct.rtx_def* %call193, %struct.rtx_def** %tmp, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %cond.end.185
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.142
  %108 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 4
  %rtint198 = bitcast %union.rtunion_def* %arrayidx197 to i32*
  %109 = load i32, i32* %rtint198, align 4
  %cmp199 = icmp sge i32 %109, 0
  br i1 %cmp199, label %cond.true.201, label %cond.false.205

cond.true.201:                                    ; preds = %if.end.195
  %110 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 4
  %rtint204 = bitcast %union.rtunion_def* %arrayidx203 to i32*
  %111 = load i32, i32* %rtint204, align 4
  br label %cond.end.207

cond.false.205:                                   ; preds = %if.end.195
  %112 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call206 = call i32 @recog_memoized_1(%struct.rtx_def* %112)
  br label %cond.end.207

cond.end.207:                                     ; preds = %cond.false.205, %cond.true.201
  %cond208 = phi i32 [ %111, %cond.true.201 ], [ %call206, %cond.false.205 ]
  %cmp209 = icmp slt i32 %cond208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.212

if.then.211:                                      ; preds = %cond.end.207
  br label %end_seq_and_fail

if.end.212:                                       ; preds = %cond.end.207
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212, %if.end.129
  %113 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %115 = load i32, i32* %code, align 4
  %116 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond214 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %116, i32 0, i32 7
  %117 = load %struct.rtx_def*, %struct.rtx_def** %cond214, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %118 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  %119 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond218 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %119, i32 0, i32 7
  %120 = load %struct.rtx_def*, %struct.rtx_def** %cond218, align 8
  %fld219 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld219, i32 0, i64 1
  %rtx221 = bitcast %union.rtunion_def* %arrayidx220 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx221, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %call222 = call %struct.rtx_def* @noce_emit_cmove(%struct.noce_if_info* %113, %struct.rtx_def* %114, i32 %115, %struct.rtx_def* %118, %struct.rtx_def* %121, %struct.rtx_def* %122, %struct.rtx_def* %123)
  store %struct.rtx_def* %call222, %struct.rtx_def** %target, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %tobool223 = icmp ne %struct.rtx_def* %124, null
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %if.end.213
  br label %end_seq_and_fail

if.end.225:                                       ; preds = %if.end.213
  %125 = load i32, i32* %is_mem, align 4
  %tobool226 = icmp ne i32 %125, 0
  br i1 %tobool226, label %if.then.227, label %if.else.391

if.then.227:                                      ; preds = %if.end.225
  %126 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x228 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %126, i32 0, i32 3
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x228, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load229 = load i32, i32* %128, align 8
  %bf.lshr230 = lshr i32 %bf.load229, 16
  %bf.clear231 = and i32 %bf.lshr230, 255
  %129 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call232 = call %struct.rtx_def* @gen_rtx_MEM(i32 %bf.clear231, %struct.rtx_def* %129)
  store %struct.rtx_def* %call232, %struct.rtx_def** %tmp, align 8
  %130 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a233 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %130, i32 0, i32 4
  %131 = load %struct.rtx_def*, %struct.rtx_def** %a233, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load234 = load i32, i32* %132, align 8
  %bf.lshr235 = lshr i32 %bf.load234, 27
  %bf.clear236 = and i32 %bf.lshr235, 1
  %tobool237 = icmp ne i32 %bf.clear236, 0
  br i1 %tobool237, label %if.then.244, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %if.then.227
  %133 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b239 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %133, i32 0, i32 5
  %134 = load %struct.rtx_def*, %struct.rtx_def** %b239, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load240 = load i32, i32* %135, align 8
  %bf.lshr241 = lshr i32 %bf.load240, 27
  %bf.clear242 = and i32 %bf.lshr241, 1
  %tobool243 = icmp ne i32 %bf.clear242, 0
  br i1 %tobool243, label %if.then.244, label %if.end.247

if.then.244:                                      ; preds = %lor.lhs.false.238, %if.then.227
  %136 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load245 = load i32, i32* %137, align 8
  %bf.clear246 = and i32 %bf.load245, -134217729
  %bf.set = or i32 %bf.clear246, 134217728
  store i32 %bf.set, i32* %137, align 8
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.244, %lor.lhs.false.238
  %138 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a248 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %138, i32 0, i32 4
  %139 = load %struct.rtx_def*, %struct.rtx_def** %a248, align 8
  %140 = bitcast %struct.rtx_def* %139 to i32*
  %bf.load249 = load i32, i32* %140, align 8
  %bf.lshr250 = lshr i32 %bf.load249, 28
  %bf.clear251 = and i32 %bf.lshr250, 1
  %tobool252 = icmp ne i32 %bf.clear251, 0
  br i1 %tobool252, label %land.lhs.true.253, label %if.end.263

land.lhs.true.253:                                ; preds = %if.end.247
  %141 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b254 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %141, i32 0, i32 5
  %142 = load %struct.rtx_def*, %struct.rtx_def** %b254, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load255 = load i32, i32* %143, align 8
  %bf.lshr256 = lshr i32 %bf.load255, 28
  %bf.clear257 = and i32 %bf.lshr256, 1
  %tobool258 = icmp ne i32 %bf.clear257, 0
  br i1 %tobool258, label %if.then.259, label %if.end.263

if.then.259:                                      ; preds = %land.lhs.true.253
  %144 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load260 = load i32, i32* %145, align 8
  %bf.clear261 = and i32 %bf.load260, -268435457
  %bf.set262 = or i32 %bf.clear261, 268435456
  store i32 %bf.set262, i32* %145, align 8
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.259, %land.lhs.true.253, %if.end.247
  %146 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a264 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %146, i32 0, i32 4
  %147 = load %struct.rtx_def*, %struct.rtx_def** %a264, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load265 = load i32, i32* %148, align 8
  %bf.lshr266 = lshr i32 %bf.load265, 31
  %tobool267 = icmp ne i32 %bf.lshr266, 0
  br i1 %tobool267, label %land.lhs.true.268, label %if.end.277

land.lhs.true.268:                                ; preds = %if.end.263
  %149 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b269 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %149, i32 0, i32 5
  %150 = load %struct.rtx_def*, %struct.rtx_def** %b269, align 8
  %151 = bitcast %struct.rtx_def* %150 to i32*
  %bf.load270 = load i32, i32* %151, align 8
  %bf.lshr271 = lshr i32 %bf.load270, 31
  %tobool272 = icmp ne i32 %bf.lshr271, 0
  br i1 %tobool272, label %if.then.273, label %if.end.277

if.then.273:                                      ; preds = %land.lhs.true.268
  %152 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load274 = load i32, i32* %153, align 8
  %bf.clear275 = and i32 %bf.load274, 2147483647
  %bf.set276 = or i32 %bf.clear275, -2147483648
  store i32 %bf.set276, i32* %153, align 8
  br label %if.end.277

if.end.277:                                       ; preds = %if.then.273, %land.lhs.true.268, %if.end.263
  %154 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a278 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %154, i32 0, i32 4
  %155 = load %struct.rtx_def*, %struct.rtx_def** %a278, align 8
  %fld279 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx280 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld279, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx280 to %struct.mem_attrs**
  %156 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp281 = icmp eq %struct.mem_attrs* %156, null
  br i1 %cmp281, label %cond.true.283, label %cond.false.284

cond.true.283:                                    ; preds = %if.end.277
  br label %cond.end.289

cond.false.284:                                   ; preds = %if.end.277
  %157 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a285 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %157, i32 0, i32 4
  %158 = load %struct.rtx_def*, %struct.rtx_def** %a285, align 8
  %fld286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld286, i32 0, i64 1
  %rtmem288 = bitcast %union.rtunion_def* %arrayidx287 to %struct.mem_attrs**
  %159 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem288, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %159, i32 0, i32 0
  %160 = load i64, i64* %alias, align 8
  br label %cond.end.289

cond.end.289:                                     ; preds = %cond.false.284, %cond.true.283
  %cond290 = phi i64 [ 0, %cond.true.283 ], [ %160, %cond.false.284 ]
  %161 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b291 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %161, i32 0, i32 5
  %162 = load %struct.rtx_def*, %struct.rtx_def** %b291, align 8
  %fld292 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx293 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld292, i32 0, i64 1
  %rtmem294 = bitcast %union.rtunion_def* %arrayidx293 to %struct.mem_attrs**
  %163 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem294, align 8
  %cmp295 = icmp eq %struct.mem_attrs* %163, null
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %cond.end.289
  br label %cond.end.304

cond.false.298:                                   ; preds = %cond.end.289
  %164 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b299 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %164, i32 0, i32 5
  %165 = load %struct.rtx_def*, %struct.rtx_def** %b299, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 1
  %rtmem302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.mem_attrs**
  %166 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem302, align 8
  %alias303 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %166, i32 0, i32 0
  %167 = load i64, i64* %alias303, align 8
  br label %cond.end.304

cond.end.304:                                     ; preds = %cond.false.298, %cond.true.297
  %cond305 = phi i64 [ 0, %cond.true.297 ], [ %167, %cond.false.298 ]
  %cmp306 = icmp eq i64 %cond290, %cond305
  br i1 %cmp306, label %if.then.308, label %if.end.324

if.then.308:                                      ; preds = %cond.end.304
  %168 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %169 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a309 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %169, i32 0, i32 4
  %170 = load %struct.rtx_def*, %struct.rtx_def** %a309, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 1
  %rtmem312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.mem_attrs**
  %171 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem312, align 8
  %cmp313 = icmp eq %struct.mem_attrs* %171, null
  br i1 %cmp313, label %cond.true.315, label %cond.false.316

cond.true.315:                                    ; preds = %if.then.308
  br label %cond.end.322

cond.false.316:                                   ; preds = %if.then.308
  %172 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a317 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %172, i32 0, i32 4
  %173 = load %struct.rtx_def*, %struct.rtx_def** %a317, align 8
  %fld318 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx319 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld318, i32 0, i64 1
  %rtmem320 = bitcast %union.rtunion_def* %arrayidx319 to %struct.mem_attrs**
  %174 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem320, align 8
  %alias321 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %174, i32 0, i32 0
  %175 = load i64, i64* %alias321, align 8
  br label %cond.end.322

cond.end.322:                                     ; preds = %cond.false.316, %cond.true.315
  %cond323 = phi i64 [ 0, %cond.true.315 ], [ %175, %cond.false.316 ]
  call void @set_mem_alias_set(%struct.rtx_def* %168, i64 %cond323)
  br label %if.end.324

if.end.324:                                       ; preds = %cond.end.322, %cond.end.304
  %176 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %177 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a325 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %177, i32 0, i32 4
  %178 = load %struct.rtx_def*, %struct.rtx_def** %a325, align 8
  %fld326 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %178, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld326, i32 0, i64 1
  %rtmem328 = bitcast %union.rtunion_def* %arrayidx327 to %struct.mem_attrs**
  %179 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem328, align 8
  %cmp329 = icmp ne %struct.mem_attrs* %179, null
  br i1 %cmp329, label %cond.true.331, label %cond.false.336

cond.true.331:                                    ; preds = %if.end.324
  %180 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a332 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %180, i32 0, i32 4
  %181 = load %struct.rtx_def*, %struct.rtx_def** %a332, align 8
  %fld333 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %181, i32 0, i32 1
  %arrayidx334 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld333, i32 0, i64 1
  %rtmem335 = bitcast %union.rtunion_def* %arrayidx334 to %struct.mem_attrs**
  %182 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem335, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %182, i32 0, i32 4
  %183 = load i32, i32* %align, align 4
  br label %cond.end.337

cond.false.336:                                   ; preds = %if.end.324
  br label %cond.end.337

cond.end.337:                                     ; preds = %cond.false.336, %cond.true.331
  %cond338 = phi i32 [ %183, %cond.true.331 ], [ 8, %cond.false.336 ]
  %184 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b339 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %184, i32 0, i32 5
  %185 = load %struct.rtx_def*, %struct.rtx_def** %b339, align 8
  %fld340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %185, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld340, i32 0, i64 1
  %rtmem342 = bitcast %union.rtunion_def* %arrayidx341 to %struct.mem_attrs**
  %186 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem342, align 8
  %cmp343 = icmp ne %struct.mem_attrs* %186, null
  br i1 %cmp343, label %cond.true.345, label %cond.false.351

cond.true.345:                                    ; preds = %cond.end.337
  %187 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b346 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %187, i32 0, i32 5
  %188 = load %struct.rtx_def*, %struct.rtx_def** %b346, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 1
  %rtmem349 = bitcast %union.rtunion_def* %arrayidx348 to %struct.mem_attrs**
  %189 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem349, align 8
  %align350 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %189, i32 0, i32 4
  %190 = load i32, i32* %align350, align 4
  br label %cond.end.352

cond.false.351:                                   ; preds = %cond.end.337
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.351, %cond.true.345
  %cond353 = phi i32 [ %190, %cond.true.345 ], [ 8, %cond.false.351 ]
  %cmp354 = icmp ult i32 %cond338, %cond353
  br i1 %cmp354, label %cond.true.356, label %cond.false.372

cond.true.356:                                    ; preds = %cond.end.352
  %191 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a357 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %191, i32 0, i32 4
  %192 = load %struct.rtx_def*, %struct.rtx_def** %a357, align 8
  %fld358 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx359 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld358, i32 0, i64 1
  %rtmem360 = bitcast %union.rtunion_def* %arrayidx359 to %struct.mem_attrs**
  %193 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem360, align 8
  %cmp361 = icmp ne %struct.mem_attrs* %193, null
  br i1 %cmp361, label %cond.true.363, label %cond.false.369

cond.true.363:                                    ; preds = %cond.true.356
  %194 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a364 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %194, i32 0, i32 4
  %195 = load %struct.rtx_def*, %struct.rtx_def** %a364, align 8
  %fld365 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld365, i32 0, i64 1
  %rtmem367 = bitcast %union.rtunion_def* %arrayidx366 to %struct.mem_attrs**
  %196 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem367, align 8
  %align368 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %196, i32 0, i32 4
  %197 = load i32, i32* %align368, align 4
  br label %cond.end.370

cond.false.369:                                   ; preds = %cond.true.356
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.369, %cond.true.363
  %cond371 = phi i32 [ %197, %cond.true.363 ], [ 8, %cond.false.369 ]
  br label %cond.end.388

cond.false.372:                                   ; preds = %cond.end.352
  %198 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b373 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %198, i32 0, i32 5
  %199 = load %struct.rtx_def*, %struct.rtx_def** %b373, align 8
  %fld374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld374, i32 0, i64 1
  %rtmem376 = bitcast %union.rtunion_def* %arrayidx375 to %struct.mem_attrs**
  %200 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem376, align 8
  %cmp377 = icmp ne %struct.mem_attrs* %200, null
  br i1 %cmp377, label %cond.true.379, label %cond.false.385

cond.true.379:                                    ; preds = %cond.false.372
  %201 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b380 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %201, i32 0, i32 5
  %202 = load %struct.rtx_def*, %struct.rtx_def** %b380, align 8
  %fld381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld381, i32 0, i64 1
  %rtmem383 = bitcast %union.rtunion_def* %arrayidx382 to %struct.mem_attrs**
  %203 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem383, align 8
  %align384 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %203, i32 0, i32 4
  %204 = load i32, i32* %align384, align 4
  br label %cond.end.386

cond.false.385:                                   ; preds = %cond.false.372
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.385, %cond.true.379
  %cond387 = phi i32 [ %204, %cond.true.379 ], [ 8, %cond.false.385 ]
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.end.386, %cond.end.370
  %cond389 = phi i32 [ %cond371, %cond.end.370 ], [ %cond387, %cond.end.386 ]
  call void @set_mem_align(%struct.rtx_def* %176, i32 %cond389)
  %205 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x390 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %205, i32 0, i32 3
  %206 = load %struct.rtx_def*, %struct.rtx_def** %x390, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %206, %struct.rtx_def* %207)
  br label %if.end.396

if.else.391:                                      ; preds = %if.end.225
  %208 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp392 = icmp ne %struct.rtx_def* %208, %209
  br i1 %cmp392, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %if.else.391
  %210 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @noce_emit_move_insn(%struct.rtx_def* %210, %struct.rtx_def* %211)
  br label %if.end.395

if.end.395:                                       ; preds = %if.then.394, %if.else.391
  br label %if.end.396

if.end.396:                                       ; preds = %if.end.395, %cond.end.388
  %call397 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call397, %struct.rtx_def** %tmp, align 8
  call void @end_sequence()
  %212 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %213 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump398 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %213, i32 0, i32 6
  %214 = load %struct.rtx_def*, %struct.rtx_def** %jump398, align 8
  %call399 = call %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %212, %struct.rtx_def* %214)
  store i32 1, i32* %retval
  br label %return

end_seq_and_fail:                                 ; preds = %if.then.224, %if.then.211, %if.then.151, %if.then.139, %if.then.127, %if.then.73, %if.then.61
  call void @end_sequence()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %end_seq_and_fail, %if.end.396, %if.then.23
  %215 = load i32, i32* %retval
  ret i32 %215
}

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare void @start_sequence() #1

; Function Attrs: nounwind uwtable
define internal void @noce_emit_move_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %outmode = alloca i32, align 4
  %inmode = alloca i32, align 4
  %outer = alloca %struct.rtx_def*, align 8
  %inner = alloca %struct.rtx_def*, align 8
  %bitpos = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %2, %struct.rtx_def* %3)
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %outer, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %outer, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %inner, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %outer, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load4, 16
  %bf.clear5 = and i32 %bf.lshr, 255
  store i32 %bf.clear5, i32* %outmode, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load6 = load i32, i32* %11, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 255
  store i32 %bf.clear8, i32* %inmode, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %outer, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %13 = load i32, i32* %rtuint, align 4
  %mul = mul i32 %13, 8
  store i32 %mul, i32* %bitpos, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %15 = load i32, i32* %outmode, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %16 = load i16, i16* %arrayidx11, align 2
  %conv = zext i16 %16 to i64
  %17 = load i32, i32* %bitpos, align 4
  %conv12 = sext i32 %17 to i64
  %18 = load i32, i32* %outmode, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %20 = load i32, i32* %inmode, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom13
  %21 = load i16, i16* %arrayidx14, align 2
  %conv15 = zext i16 %21 to i64
  %call16 = call %struct.rtx_def* @store_bit_field(%struct.rtx_def* %14, i64 %conv, i64 %conv12, i32 %18, %struct.rtx_def* %19, i64 %conv15)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @merge_if_block(%struct.basic_block_def* %test_bb, %struct.basic_block_def* %then_bb, %struct.basic_block_def* %else_bb, %struct.basic_block_def* %join_bb) #0 {
entry:
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %then_bb.addr = alloca %struct.basic_block_def*, align 8
  %else_bb.addr = alloca %struct.basic_block_def*, align 8
  %join_bb.addr = alloca %struct.basic_block_def*, align 8
  %combo_bb = alloca %struct.basic_block_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.basic_block_def* %then_bb, %struct.basic_block_def** %then_bb.addr, align 8
  store %struct.basic_block_def* %else_bb, %struct.basic_block_def** %else_bb.addr, align 8
  store %struct.basic_block_def* %join_bb, %struct.basic_block_def** %join_bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.basic_block_def* %0, %struct.basic_block_def** %combo_bb, align 8
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %tobool = icmp ne %struct.basic_block_def* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %2 = load i8, i8* @life_data_ok, align 1
  %tobool1 = trunc i8 %2 to i1
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 9
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  %global_live_at_end3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 9
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end3, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %4, %struct.bitmap_head_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %then_bb.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %7, %struct.basic_block_def* %8)
  %9 = load i32, i32* @num_removed_blocks, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* @num_removed_blocks, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  %tobool5 = icmp ne %struct.basic_block_def* %10, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %else_bb.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %11, %struct.basic_block_def* %12)
  %13 = load i32, i32* @num_removed_blocks, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* @num_removed_blocks, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %tobool9 = icmp ne %struct.basic_block_def* %14, null
  br i1 %tobool9, label %if.else.58, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %last, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 5
  %18 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp = icmp eq %struct.edge_def* %18, null
  br i1 %cmp, label %if.then.11, label %if.else.30

if.then.11:                                       ; preds = %if.then.10
  %19 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %19, i32 26, %struct.rtx_def* null)
  %tobool12 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.11
  br label %if.end.29

if.else:                                          ; preds = %if.then.11
  %20 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp14 = icmp eq i32 %bf.clear, 32
  br i1 %cmp14, label %land.lhs.true, label %if.else.27

land.lhs.true:                                    ; preds = %if.else
  %22 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load15 = load i32, i32* %24, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 52
  br i1 %cmp17, label %land.lhs.true.18, label %if.else.27

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %25 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  %cmp25 = icmp eq %struct.rtx_def* %27, %28
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %land.lhs.true.18
  br label %if.end.28

if.else.27:                                       ; preds = %land.lhs.true.18, %land.lhs.true, %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1913, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.merge_if_block, i32 0, i32 0)) #5
  unreachable

if.end.28:                                        ; preds = %if.then.26
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.13
  br label %if.end.57

if.else.30:                                       ; preds = %if.then.10
  %29 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load31 = load i32, i32* %30, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 33
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %if.else.30
  br label %if.end.56

if.else.35:                                       ; preds = %if.else.30
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 5
  %32 = load %struct.edge_def*, %struct.edge_def** %succ36, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 3
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp37 = icmp eq %struct.basic_block_def* %33, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.47

land.lhs.true.38:                                 ; preds = %if.else.35
  %34 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load39 = load i32, i32* %35, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 34
  br i1 %cmp41, label %land.lhs.true.42, label %if.else.47

land.lhs.true.42:                                 ; preds = %land.lhs.true.38
  %36 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load43 = load i32, i32* %37, align 8
  %bf.lshr = lshr i32 %bf.load43, 24
  %bf.clear44 = and i32 %bf.lshr, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.42
  br label %if.end.55

if.else.47:                                       ; preds = %land.lhs.true.42, %land.lhs.true.38, %if.else.35
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 5
  %39 = load %struct.edge_def*, %struct.edge_def** %succ48, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 6
  %40 = load i32, i32* %flags, align 4
  %and = and i32 %40, 8
  %tobool49 = icmp ne i32 %and, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.else.53

land.lhs.true.50:                                 ; preds = %if.else.47
  %41 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call51 = call zeroext i1 @can_throw_internal(%struct.rtx_def* %41)
  br i1 %call51, label %if.then.52, label %if.else.53

if.then.52:                                       ; preds = %land.lhs.true.50
  br label %if.end.54

if.else.53:                                       ; preds = %land.lhs.true.50, %if.else.47
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1928, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.merge_if_block, i32 0, i32 0)) #5
  unreachable

if.end.54:                                        ; preds = %if.then.52
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.46
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.then.34
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.29
  br label %if.end.85

if.else.58:                                       ; preds = %if.end.8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 4
  %43 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %cmp59 = icmp eq %struct.edge_def* %43, null
  br i1 %cmp59, label %land.lhs.true.62, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.58
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %pred60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 4
  %45 = load %struct.edge_def*, %struct.edge_def** %pred60, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 0
  %46 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %cmp61 = icmp eq %struct.edge_def* %46, null
  br i1 %cmp61, label %land.lhs.true.62, label %if.else.71

land.lhs.true.62:                                 ; preds = %lor.lhs.false, %if.else.58
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %cmp63 = icmp ne %struct.basic_block_def* %47, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp63, label %if.then.64, label %if.else.71

if.then.64:                                       ; preds = %land.lhs.true.62
  %48 = load i8, i8* @life_data_ok, align 1
  %tobool65 = trunc i8 %48 to i1
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.then.64
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %global_live_at_end67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %49, i32 0, i32 9
  %50 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end67, align 8
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %global_live_at_end68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %51, i32 0, i32 9
  %52 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end68, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %50, %struct.bitmap_head_def* %52)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.then.64
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  call void @merge_blocks_nomove(%struct.basic_block_def* %53, %struct.basic_block_def* %54)
  %55 = load i32, i32* @num_removed_blocks, align 4
  %inc70 = add nsw i32 %55, 1
  store i32 %inc70, i32* @num_removed_blocks, align 4
  br label %if.end.84

if.else.71:                                       ; preds = %land.lhs.true.62, %lor.lhs.false
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 5
  %57 = load %struct.edge_def*, %struct.edge_def** %succ72, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i32 0, i32 1
  %58 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %cmp73 = icmp ne %struct.edge_def* %58, null
  br i1 %cmp73, label %if.then.78, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %if.else.71
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ75 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i32 0, i32 5
  %60 = load %struct.edge_def*, %struct.edge_def** %succ75, align 8
  %dest76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 3
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %dest76, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %cmp77 = icmp ne %struct.basic_block_def* %61, %62
  br i1 %cmp77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %lor.lhs.false.74, %if.else.71
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i32 1956, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.merge_if_block, i32 0, i32 0)) #5
  unreachable

if.end.79:                                        ; preds = %lor.lhs.false.74
  %63 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  %cmp80 = icmp ne %struct.basic_block_def* %63, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.79
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %succ82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 5
  %65 = load %struct.edge_def*, %struct.edge_def** %succ82, align 8
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %join_bb.addr, align 8
  call void @tidy_fallthru_edge(%struct.edge_def* %65, %struct.basic_block_def* %66, %struct.basic_block_def* %67)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.79
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.69
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.end.57
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 10
  %69 = load i8*, i8** %aux, align 8
  %70 = ptrtoint i8* %69 to i64
  %or = or i64 %70, 1
  %71 = inttoptr i64 %or to i8*
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %combo_bb, align 8
  %aux86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %72, i32 0, i32 10
  store i8* %71, i8** %aux86, align 8
  %73 = load i32, i32* @num_updated_if_blocks, align 4
  %inc87 = add nsw i32 %73, 1
  store i32 %inc87, i32* @num_updated_if_blocks, align 4
  ret void
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reverse_condition(i32) #1

declare %struct.rtx_def* @canonicalize_condition(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.rtx_def*) #1

declare i32 @may_trap_p(%struct.rtx_def*) #1

declare i32 @reversed_comparison_code(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @noce_emit_store_flag(%struct.noce_if_info* %if_info, %struct.rtx_def* %x, i32 %reversep, i32 %normalize) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %reversep.addr = alloca i32, align 4
  %normalize.addr = alloca i32, align 4
  %cond = alloca %struct.rtx_def*, align 8
  %cond_complex = alloca i32, align 4
  %code = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %reversep, i32* %reversep.addr, align 4
  store i32 %normalize, i32* %normalize.addr, align 4
  %0 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %0, i32 0, i32 7
  %1 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %cond, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call i32 @general_operand(%struct.rtx_def* %3, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  %call5 = call i32 @general_operand(%struct.rtx_def* %5, i32 0)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  store i32 %lor.ext, i32* %cond_complex, align 4
  %7 = load i32, i32* %cond_complex, align 4
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %8 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %8, i32 0, i32 6
  %9 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call8 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %9)
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %cond, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %12 = load i32, i32* %reversep.addr, align 4
  %tobool15 = icmp ne i32 %12, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %14 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump17 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %14, i32 0, i32 6
  %15 = load %struct.rtx_def*, %struct.rtx_def** %jump17, align 8
  %call18 = call i32 @reversed_comparison_code(%struct.rtx_def* %13, %struct.rtx_def* %15)
  store i32 %call18, i32* %code, align 4
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %18 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %18, i32 0, i32 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest, align 8
  %20 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump20 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %20, i32 0, i32 6
  %21 = load %struct.rtx_def*, %struct.rtx_def** %jump20, align 8
  %cmp = icmp eq %struct.rtx_def* %19, %21
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.19
  %22 = load i32, i32* %cond_complex, align 4
  %tobool21 = icmp ne i32 %22, 0
  br i1 %tobool21, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end.19
  %23 = load i32, i32* %normalize.addr, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then.25, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %land.lhs.true
  %24 = load i32, i32* %normalize.addr, align 4
  %cmp24 = icmp eq i32 1, %24
  br i1 %cmp24, label %if.then.25, label %if.end.52

if.then.25:                                       ; preds = %lor.lhs.false.23, %land.lhs.true
  %25 = load i32, i32* %code, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load26 = load i32, i32* %27, align 8
  %bf.lshr = lshr i32 %bf.load26, 16
  %bf.clear27 = and i32 %bf.lshr, 255
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %25, i32 %bf.clear27, %struct.rtx_def* %29, %struct.rtx_def* %31)
  store %struct.rtx_def* %call34, %struct.rtx_def** %tmp, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call35 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %32, %struct.rtx_def* %33)
  store %struct.rtx_def* %call35, %struct.rtx_def** %tmp, align 8
  call void @start_sequence()
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call36 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %34)
  store %struct.rtx_def* %call36, %struct.rtx_def** %tmp, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %36 = load i32, i32* %rtint, align 4
  %cmp39 = icmp sge i32 %36, 0
  br i1 %cmp39, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.25
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 4
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %38 = load i32, i32* %rtint42, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.25
  %39 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call43 = call i32 @recog_memoized_1(%struct.rtx_def* %39)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond44 = phi i32 [ %38, %cond.true ], [ %call43, %cond.false ]
  %cmp45 = icmp sge i32 %cond44, 0
  br i1 %cmp45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %cond.end
  %call47 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call47, %struct.rtx_def** %tmp, align 8
  call void @end_sequence()
  %40 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call48 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %40)
  %41 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump49 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %41, i32 0, i32 6
  %42 = load %struct.rtx_def*, %struct.rtx_def** %jump49, align 8
  %43 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest50 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %43, i32 0, i32 8
  store %struct.rtx_def* %42, %struct.rtx_def** %cond_earliest50, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %retval
  br label %return

if.end.51:                                        ; preds = %cond.end
  call void @end_sequence()
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %lor.lhs.false.23, %lor.lhs.false
  %45 = load i32, i32* %cond_complex, align 4
  %tobool53 = icmp ne i32 %45, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.52
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.55:                                        ; preds = %if.end.52
  %46 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %47 = load i32, i32* %code, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 1
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %52 = load i32, i32* %code, align 4
  %cmp62 = icmp eq i32 %52, 111
  br i1 %cmp62, label %lor.end.69, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %if.end.55
  %53 = load i32, i32* %code, align 4
  %cmp64 = icmp eq i32 %53, 110
  br i1 %cmp64, label %lor.end.69, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.63
  %54 = load i32, i32* %code, align 4
  %cmp66 = icmp eq i32 %54, 108
  br i1 %cmp66, label %lor.end.69, label %lor.rhs.67

lor.rhs.67:                                       ; preds = %lor.lhs.false.65
  %55 = load i32, i32* %code, align 4
  %cmp68 = icmp eq i32 %55, 109
  br label %lor.end.69

lor.end.69:                                       ; preds = %lor.rhs.67, %lor.lhs.false.65, %lor.lhs.false.63, %if.end.55
  %56 = phi i1 [ true, %lor.lhs.false.65 ], [ true, %lor.lhs.false.63 ], [ true, %if.end.55 ], [ %cmp68, %lor.rhs.67 ]
  %lor.ext70 = zext i1 %56 to i32
  %57 = load i32, i32* %normalize.addr, align 4
  %call71 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %46, i32 %47, %struct.rtx_def* %49, %struct.rtx_def* %51, i32 0, i32 %lor.ext70, i32 %57)
  store %struct.rtx_def* %call71, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %lor.end.69, %if.then.54, %if.then.46
  %58 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %58
}

declare %struct.rtx_def* @get_insns() #1

declare %struct.rtx_def* @emit_insns_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @general_operand(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insns(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_store_flag(%struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @noce_get_alt_condition(%struct.noce_if_info* %if_info, %struct.rtx_def* %target, %struct.rtx_def** %earliest) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %earliest.addr = alloca %struct.rtx_def**, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %reverse = alloca i32, align 4
  %code = alloca i32, align 4
  %op_a = alloca %struct.rtx_def*, align 8
  %op_b = alloca %struct.rtx_def*, align 8
  %prev_insn = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %desired_val = alloca i64, align 8
  %actual_val = alloca i64, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def** %earliest, %struct.rtx_def*** %earliest.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond1 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %1, i32 0, i32 7
  %2 = load %struct.rtx_def*, %struct.rtx_def** %cond1, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %0, %struct.rtx_def* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %3, i32 0, i32 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest, align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %5, align 8
  %6 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond2 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %6, i32 0, i32 7
  %7 = load %struct.rtx_def*, %struct.rtx_def** %cond2, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %8, i32 0, i32 6
  %9 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call3 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %9)
  store %struct.rtx_def* %call3, %struct.rtx_def** %set, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %cond, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 1
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 2
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %21 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump22 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %21, i32 0, i32 6
  %22 = load %struct.rtx_def*, %struct.rtx_def** %jump22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 7
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %cmp26 = icmp eq %struct.rtx_def* %20, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %24 = phi i1 [ false, %if.end ], [ %cmp26, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  store i32 %land.ext, i32* %reverse, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load27 = load i32, i32* %26, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 54
  br i1 %cmp29, label %if.then.30, label %if.end.167

if.then.30:                                       ; preds = %land.end
  %27 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond31 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %27, i32 0, i32 7
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cond31, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load32 = load i32, i32* %29, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  store i32 %bf.clear33, i32* %code, align 4
  %30 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond34 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %30, i32 0, i32 7
  %31 = load %struct.rtx_def*, %struct.rtx_def** %cond34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %op_a, align 8
  %33 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond38 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %33, i32 0, i32 7
  %34 = load %struct.rtx_def*, %struct.rtx_def** %cond38, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 1
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %op_b, align 8
  %36 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest42 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %36, i32 0, i32 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %prev_insn, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %tobool46 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool46, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %if.then.30
  %40 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load47 = load i32, i32* %41, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %idxprom = sext i32 %bf.clear48 to i64
  %arrayidx49 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %42 = load i8, i8* %arrayidx49, align 1
  %conv = sext i8 %42 to i32
  %cmp50 = icmp eq i32 %conv, 105
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.104

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %43 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 3
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load56 = load i32, i32* %45, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 47
  br i1 %cmp58, label %if.then.60, label %if.end.104

if.then.60:                                       ; preds = %land.lhs.true.52
  %46 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %call61 = call %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def* %46)
  store %struct.rtx_def* %call61, %struct.rtx_def** %src, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %tobool62 = icmp ne %struct.rtx_def* %47, null
  br i1 %tobool62, label %if.end.70, label %if.then.63

if.then.63:                                       ; preds = %if.then.60
  %48 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 3
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %src, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.63, %if.then.60
  %51 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load71 = load i32, i32* %52, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 54
  br i1 %cmp73, label %if.then.75, label %if.end.103

if.then.75:                                       ; preds = %if.end.70
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op_a, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 3
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %call82 = call i32 @rtx_equal_p(%struct.rtx_def* %53, %struct.rtx_def* %56)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.then.75
  %57 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %op_a, align 8
  br label %if.end.95

if.else:                                          ; preds = %if.then.75
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %call91 = call i32 @rtx_equal_p(%struct.rtx_def* %58, %struct.rtx_def* %61)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %if.else
  %62 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %op_b, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %if.else
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.then.84
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op_a, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load96 = load i32, i32* %64, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 54
  br i1 %cmp98, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %if.end.95
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op_a, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %tmp, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  store %struct.rtx_def* %66, %struct.rtx_def** %op_a, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %op_b, align 8
  %68 = load i32, i32* %code, align 4
  %call101 = call i32 @swap_condition(i32 %68)
  store i32 %call101, i32* %code, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %if.end.95
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.70
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %land.lhs.true.52, %land.lhs.true, %if.then.30
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load105 = load i32, i32* %70, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  %cmp107 = icmp eq i32 %bf.clear106, 54
  br i1 %cmp107, label %if.then.109, label %if.end.142

if.then.109:                                      ; preds = %if.end.104
  %71 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx112 to i64*
  %72 = load i64, i64* %rtwint, align 8
  store i64 %72, i64* %desired_val, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtwint116 = bitcast %union.rtunion_def* %arrayidx115 to i64*
  %74 = load i64, i64* %rtwint116, align 8
  store i64 %74, i64* %actual_val, align 8
  %75 = load i32, i32* %code, align 4
  switch i32 %75, label %sw.default [
    i32 107, label %sw.bb
    i32 106, label %sw.bb.122
    i32 105, label %sw.bb.128
    i32 104, label %sw.bb.135
  ]

sw.bb:                                            ; preds = %if.then.109
  %76 = load i64, i64* %actual_val, align 8
  %77 = load i64, i64* %desired_val, align 8
  %add = add nsw i64 %77, 1
  %cmp117 = icmp eq i64 %76, %add
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %sw.bb
  store i32 106, i32* %code, align 4
  %78 = load i64, i64* %desired_val, align 8
  %call120 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %78)
  store %struct.rtx_def* %call120, %struct.rtx_def** %op_b, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %sw.bb
  br label %sw.epilog

sw.bb.122:                                        ; preds = %if.then.109
  %79 = load i64, i64* %actual_val, align 8
  %80 = load i64, i64* %desired_val, align 8
  %sub = sub nsw i64 %80, 1
  %cmp123 = icmp eq i64 %79, %sub
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %sw.bb.122
  store i32 107, i32* %code, align 4
  %81 = load i64, i64* %desired_val, align 8
  %call126 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %81)
  store %struct.rtx_def* %call126, %struct.rtx_def** %op_b, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %sw.bb.122
  br label %sw.epilog

sw.bb.128:                                        ; preds = %if.then.109
  %82 = load i64, i64* %actual_val, align 8
  %83 = load i64, i64* %desired_val, align 8
  %sub129 = sub nsw i64 %83, 1
  %cmp130 = icmp eq i64 %82, %sub129
  br i1 %cmp130, label %if.then.132, label %if.end.134

if.then.132:                                      ; preds = %sw.bb.128
  store i32 104, i32* %code, align 4
  %84 = load i64, i64* %desired_val, align 8
  %call133 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %84)
  store %struct.rtx_def* %call133, %struct.rtx_def** %op_b, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.132, %sw.bb.128
  br label %sw.epilog

sw.bb.135:                                        ; preds = %if.then.109
  %85 = load i64, i64* %actual_val, align 8
  %86 = load i64, i64* %desired_val, align 8
  %add136 = add nsw i64 %86, 1
  %cmp137 = icmp eq i64 %85, %add136
  br i1 %cmp137, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %sw.bb.135
  store i32 105, i32* %code, align 4
  %87 = load i64, i64* %desired_val, align 8
  %call140 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %87)
  store %struct.rtx_def* %call140, %struct.rtx_def** %op_b, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %sw.bb.135
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.109
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.141, %if.end.134, %if.end.127, %if.end.121
  br label %if.end.142

if.end.142:                                       ; preds = %sw.epilog, %if.end.104
  %88 = load i32, i32* %code, align 4
  %89 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond143 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %89, i32 0, i32 7
  %90 = load %struct.rtx_def*, %struct.rtx_def** %cond143, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load144 = load i32, i32* %91, align 8
  %bf.clear145 = and i32 %bf.load144, 65535
  %cmp146 = icmp ne i32 %88, %bf.clear145
  br i1 %cmp146, label %if.then.161, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.142
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op_a, align 8
  %93 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond148 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %93, i32 0, i32 7
  %94 = load %struct.rtx_def*, %struct.rtx_def** %cond148, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtx151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx151, align 8
  %cmp152 = icmp ne %struct.rtx_def* %92, %95
  br i1 %cmp152, label %if.then.161, label %lor.lhs.false.154

lor.lhs.false.154:                                ; preds = %lor.lhs.false
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  %97 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond155 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %97, i32 0, i32 7
  %98 = load %struct.rtx_def*, %struct.rtx_def** %cond155, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %cmp159 = icmp ne %struct.rtx_def* %96, %99
  br i1 %cmp159, label %if.then.161, label %if.end.166

if.then.161:                                      ; preds = %lor.lhs.false.154, %lor.lhs.false, %if.end.142
  %100 = load i32, i32* %code, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load162 = load i32, i32* %102, align 8
  %bf.lshr = lshr i32 %bf.load162, 16
  %bf.clear163 = and i32 %bf.lshr, 255
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op_a, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op_b, align 8
  %call164 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %100, i32 %bf.clear163, %struct.rtx_def* %103, %struct.rtx_def* %104)
  store %struct.rtx_def* %call164, %struct.rtx_def** %cond, align 8
  %105 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest165 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %105, i32 0, i32 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest165, align 8
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %107, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  store %struct.rtx_def* %108, %struct.rtx_def** %retval
  br label %return

if.end.166:                                       ; preds = %lor.lhs.false.154
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %land.end
  %109 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump168 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %109, i32 0, i32 6
  %110 = load %struct.rtx_def*, %struct.rtx_def** %jump168, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %112 = load i32, i32* %reverse, align 4
  %113 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call169 = call %struct.rtx_def* @canonicalize_condition(%struct.rtx_def* %110, %struct.rtx_def* %111, i32 %112, %struct.rtx_def** %113, %struct.rtx_def* %114)
  store %struct.rtx_def* %call169, %struct.rtx_def** %cond, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool170 = icmp ne %struct.rtx_def* %115, null
  br i1 %tobool170, label %lor.lhs.false.171, label %if.then.174

lor.lhs.false.171:                                ; preds = %if.end.167
  %116 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %call172 = call i32 @reg_mentioned_p(%struct.rtx_def* %116, %struct.rtx_def* %117)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %lor.lhs.false.171, %if.end.167
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.175:                                       ; preds = %lor.lhs.false.171
  %118 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump176 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %118, i32 0, i32 6
  %119 = load %struct.rtx_def*, %struct.rtx_def** %jump176, align 8
  store %struct.rtx_def* %119, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.175
  %120 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %121 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %121, align 8
  %cmp177 = icmp ne %struct.rtx_def* %120, %122
  br i1 %cmp177, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %123 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load179 = load i32, i32* %124, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %idxprom181 = sext i32 %bf.clear180 to i64
  %arrayidx182 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom181
  %125 = load i8, i8* %arrayidx182, align 1
  %conv183 = sext i8 %125 to i32
  %cmp184 = icmp eq i32 %conv183, 105
  br i1 %cmp184, label %land.lhs.true.186, label %if.end.190

land.lhs.true.186:                                ; preds = %for.body
  %126 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %x = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %126, i32 0, i32 3
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call187 = call i32 @reg_mentioned_p(%struct.rtx_def* %127, %struct.rtx_def* %128)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %land.lhs.true.186
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.186, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.190
  %129 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 1
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  store %struct.rtx_def* %130, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %131 = load %struct.rtx_def**, %struct.rtx_def*** %earliest.addr, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %131, align 8
  store %struct.rtx_def* %132, %struct.rtx_def** %insn, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.214, %for.end
  %133 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %134 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump195 = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %134, i32 0, i32 6
  %135 = load %struct.rtx_def*, %struct.rtx_def** %jump195, align 8
  %cmp196 = icmp ne %struct.rtx_def* %133, %135
  br i1 %cmp196, label %for.body.198, label %for.end.218

for.body.198:                                     ; preds = %for.cond.194
  %136 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load199 = load i32, i32* %137, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %idxprom201 = sext i32 %bf.clear200 to i64
  %arrayidx202 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom201
  %138 = load i8, i8* %arrayidx202, align 1
  %conv203 = sext i8 %138 to i32
  %cmp204 = icmp eq i32 %conv203, 105
  br i1 %cmp204, label %land.lhs.true.206, label %if.end.213

land.lhs.true.206:                                ; preds = %for.body.198
  %139 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %a = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %139, i32 0, i32 4
  %140 = load %struct.rtx_def*, %struct.rtx_def** %a, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call207 = call i32 @modified_in_p(%struct.rtx_def* %140, %struct.rtx_def* %141)
  %tobool208 = icmp ne i32 %call207, 0
  br i1 %tobool208, label %if.then.212, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %land.lhs.true.206
  %142 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %b = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %142, i32 0, i32 5
  %143 = load %struct.rtx_def*, %struct.rtx_def** %b, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call210 = call i32 @modified_in_p(%struct.rtx_def* %143, %struct.rtx_def* %144)
  %tobool211 = icmp ne i32 %call210, 0
  br i1 %tobool211, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %lor.lhs.false.209, %land.lhs.true.206
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.213:                                       ; preds = %lor.lhs.false.209, %for.body.198
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %145 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 2
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  store %struct.rtx_def* %146, %struct.rtx_def** %insn, align 8
  br label %for.cond.194

for.end.218:                                      ; preds = %for.cond.194
  %147 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  store %struct.rtx_def* %147, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.218, %if.then.212, %if.then.189, %if.then.174, %if.then.161, %if.then
  %148 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %148
}

declare i32 @swap_condition(i32) #1

declare %struct.rtx_def* @expand_simple_binop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @seq_contains_jump(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct.rtx_def* @find_reg_equal_equiv_note(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @get_pool_constant(%struct.rtx_def*) #1

declare %struct.rtx_def* @expand_simple_unop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @register_operand(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @noce_emit_cmove(%struct.noce_if_info* %if_info, %struct.rtx_def* %x, i32 %code, %struct.rtx_def* %cmp_a, %struct.rtx_def* %cmp_b, %struct.rtx_def* %vfalse, %struct.rtx_def* %vtrue) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %if_info.addr = alloca %struct.noce_if_info*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %cmp_a.addr = alloca %struct.rtx_def*, align 8
  %cmp_b.addr = alloca %struct.rtx_def*, align 8
  %vfalse.addr = alloca %struct.rtx_def*, align 8
  %vtrue.addr = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.noce_if_info* %if_info, %struct.noce_if_info** %if_info.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %cmp_a, %struct.rtx_def** %cmp_a.addr, align 8
  store %struct.rtx_def* %cmp_b, %struct.rtx_def** %cmp_b.addr, align 8
  store %struct.rtx_def* %vfalse, %struct.rtx_def** %vfalse.addr, align 8
  store %struct.rtx_def* %vtrue, %struct.rtx_def** %vtrue.addr, align 8
  %0 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond_earliest = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %0, i32 0, i32 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %cond_earliest, align 8
  %2 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %jump = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %2, i32 0, i32 6
  %3 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %cmp = icmp eq %struct.rtx_def* %1, %3
  br i1 %cmp, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %code.addr, align 4
  %5 = load %struct.noce_if_info*, %struct.noce_if_info** %if_info.addr, align 8
  %cond = getelementptr inbounds %struct.noce_if_info, %struct.noce_if_info* %5, i32 0, i32 7
  %6 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %8 = load %struct.rtx_def*, %struct.rtx_def** %cmp_a.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %cmp_b.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %4, i32 %bf.clear, %struct.rtx_def* %8, %struct.rtx_def* %9)
  store %struct.rtx_def* %call, %struct.rtx_def** %tmp, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load1 = load i32, i32* %11, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %12 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %vtrue.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %vfalse.addr, align 8
  %call4 = call %struct.rtx_def* @gen_rtx_fmt_eee(i32 72, i32 %bf.clear3, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call4, %struct.rtx_def** %tmp, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call5, %struct.rtx_def** %tmp, align 8
  call void @start_sequence()
  %17 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call6 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %17)
  store %struct.rtx_def* %call6, %struct.rtx_def** %tmp, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %19 = load i32, i32* %rtint, align 4
  %cmp7 = icmp sge i32 %19, 0
  br i1 %cmp7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 4
  %rtint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %21 = load i32, i32* %rtint10, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %22 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call11 = call i32 @recog_memoized_1(%struct.rtx_def* %22)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond12 = phi i32 [ %21, %cond.true ], [ %call11, %cond.false ]
  %cmp13 = icmp sge i32 %cond12, 0
  br i1 %cmp13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %cond.end
  %call15 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call15, %struct.rtx_def** %tmp, align 8
  call void @end_sequence()
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %call16 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  call void @end_sequence()
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %entry
  %25 = load %struct.rtx_def*, %struct.rtx_def** %cmp_a.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %cmp_a.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load18 = load i32, i32* %27, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %call21 = call i32 @general_operand(%struct.rtx_def* %25, i32 %bf.clear20)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.27

lor.lhs.false:                                    ; preds = %if.end.17
  %28 = load %struct.rtx_def*, %struct.rtx_def** %cmp_b.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %cmp_b.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load22 = load i32, i32* %30, align 8
  %bf.lshr23 = lshr i32 %bf.load22, 16
  %bf.clear24 = and i32 %bf.lshr23, 255
  %call25 = call i32 @general_operand(%struct.rtx_def* %28, i32 %bf.clear24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false, %if.end.17
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %32 = load i32, i32* %code.addr, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %cmp_a.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %cmp_b.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %vtrue.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %vfalse.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load29 = load i32, i32* %38, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %39 = load i32, i32* %code.addr, align 4
  %cmp32 = icmp eq i32 %39, 111
  br i1 %cmp32, label %lor.end, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %if.end.28
  %40 = load i32, i32* %code.addr, align 4
  %cmp34 = icmp eq i32 %40, 108
  br i1 %cmp34, label %lor.end, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %lor.lhs.false.33
  %41 = load i32, i32* %code.addr, align 4
  %cmp36 = icmp eq i32 %41, 110
  br i1 %cmp36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.35
  %42 = load i32, i32* %code.addr, align 4
  %cmp37 = icmp eq i32 %42, 109
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.35, %lor.lhs.false.33, %if.end.28
  %43 = phi i1 [ true, %lor.lhs.false.35 ], [ true, %lor.lhs.false.33 ], [ true, %if.end.28 ], [ %cmp37, %lor.rhs ]
  %lor.ext = zext i1 %43 to i32
  %call38 = call %struct.rtx_def* @emit_conditional_move(%struct.rtx_def* %31, i32 %32, %struct.rtx_def* %33, %struct.rtx_def* %34, i32 0, %struct.rtx_def* %35, %struct.rtx_def* %36, i32 %bf.clear31, i32 %lor.ext)
  store %struct.rtx_def* %call38, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.27, %if.then.14
  %44 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %44
}

declare %struct.rtx_def* @gen_rtx_fmt_eee(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_conditional_move(%struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare i64 @trunc_int_for_mode(i64, i32) #1

declare i32 @exact_log2_wide(i64) #1

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare void @set_mem_align(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @store_bit_field(%struct.rtx_def*, i64, i64, i32, %struct.rtx_def*, i64) #1

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare void @merge_blocks_nomove(%struct.basic_block_def*, %struct.basic_block_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare zeroext i1 @can_throw_internal(%struct.rtx_def*) #1

declare void @tidy_fallthru_edge(%struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @block_has_only_trap(%struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %trap = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %0, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 5
  %2 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool = icmp ne %struct.edge_def* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %call = call %struct.rtx_def* @first_active_insn(%struct.basic_block_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %trap, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %trap, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp3 = icmp eq %struct.rtx_def* %4, %6
  br i1 %cmp3, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %if.end.2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %trap, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp eq i32 %bf.clear, 52
  br i1 %cmp4, label %land.lhs.true.5, label %if.then.13

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %trap, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 3
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  %cmp12 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.5, %land.lhs.true, %if.end.2
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.5
  %14 = load %struct.rtx_def*, %struct.rtx_def** %trap, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.1, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

declare %struct.rtx_def* @gen_cond_trap(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

declare i32 @flow_delete_block(%struct.basic_block_def*) #1

declare %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare zeroext i1 @forwarder_block_p(%struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @count_bb_insns(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %count = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 0, i32* %count, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 0
  %1 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.6
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 32
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %6 = load i32, i32* %count, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp4 = icmp eq %struct.rtx_def* %7, %9
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %while.end

if.end.6:                                         ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.5
  %12 = load i32, i32* %count, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @dead_or_predicable(%struct.basic_block_def* %test_bb, %struct.basic_block_def* %merge_bb, %struct.basic_block_def* %other_bb, %struct.basic_block_def* %new_dest, i32 %reversep) #0 {
entry:
  %retval = alloca i32, align 4
  %test_bb.addr = alloca %struct.basic_block_def*, align 8
  %merge_bb.addr = alloca %struct.basic_block_def*, align 8
  %other_bb.addr = alloca %struct.basic_block_def*, align 8
  %new_dest.addr = alloca %struct.basic_block_def*, align 8
  %reversep.addr = alloca i32, align 4
  %head = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %jump = alloca %struct.rtx_def*, align 8
  %earliest = alloca %struct.rtx_def*, align 8
  %old_dest = alloca %struct.rtx_def*, align 8
  %new_label = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %cond = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %merge_set_head = alloca %struct.bitmap_head_def, align 8
  %tmp_head = alloca %struct.bitmap_head_def, align 8
  %test_live_head = alloca %struct.bitmap_head_def, align 8
  %test_set_head = alloca %struct.bitmap_head_def, align 8
  %merge_set = alloca %struct.bitmap_head_def*, align 8
  %tmp = alloca %struct.bitmap_head_def*, align 8
  %test_live = alloca %struct.bitmap_head_def*, align 8
  %test_set = alloca %struct.bitmap_head_def*, align 8
  %pbi = alloca %struct.propagate_block_info*, align 8
  %i = alloca i32, align 4
  %fail = alloca i32, align 4
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_157 = alloca %struct.bitmap_element_def*, align 8
  %indx_160 = alloca i32, align 4
  %bit_num_162 = alloca i32, align 4
  %word_num_164 = alloca i32, align 4
  %word_193 = alloca i64, align 8
  %mask_205 = alloca i64, align 8
  %ptr_239 = alloca %struct.bitmap_element_def*, align 8
  %indx_242 = alloca i32, align 4
  %bit_num_244 = alloca i32, align 4
  %word_num_246 = alloca i32, align 4
  %word_275 = alloca i64, align 8
  %mask_287 = alloca i64, align 8
  %count = alloca i64, align 8
  %probability = alloca i64, align 8
  store %struct.basic_block_def* %test_bb, %struct.basic_block_def** %test_bb.addr, align 8
  store %struct.basic_block_def* %merge_bb, %struct.basic_block_def** %merge_bb.addr, align 8
  store %struct.basic_block_def* %other_bb, %struct.basic_block_def** %other_bb.addr, align 8
  store %struct.basic_block_def* %new_dest, %struct.basic_block_def** %new_dest.addr, align 8
  store i32 %reversep, i32* %reversep.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %new_label, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %jump, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %head2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %head, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %end3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 1
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end3, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %end, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load4 = load i32, i32* %11, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 37
  br i1 %cmp6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp8 = icmp eq %struct.rtx_def* %12, %13
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.7
  store %struct.rtx_def* null, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %head, align 8
  br label %no_body

if.end.10:                                        ; preds = %if.then.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %head, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.10, %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load15 = load i32, i32* %17, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 33
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.14
  %18 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp19 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.then.18
  store %struct.rtx_def* null, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %head, align 8
  br label %no_body

if.end.21:                                        ; preds = %if.then.18
  %20 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %end, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.21, %if.end.14
  store i32 0, i32* %fail, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load31 = load i32, i32* %24, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 34
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %for.cond
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load36 = load i32, i32* %26, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %idxprom = sext i32 %bf.clear37 to i64
  %arrayidx38 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %27 = load i8, i8* %arrayidx38, align 1
  %conv = sext i8 %27 to i32
  %cmp39 = icmp eq i32 %conv, 105
  br i1 %cmp39, label %if.then.41, label %if.end.54

if.then.41:                                       ; preds = %if.end.35
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 3
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %call = call i32 @may_trap_p(%struct.rtx_def* %29)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.41
  store i32 0, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.41
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 3
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %call50 = call i32 @for_each_rtx(%struct.rtx_def** %rtx49, i32 (%struct.rtx_def**, i8*)* @find_memory, i8* null)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.end.46
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %if.end.46
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.end.35
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp55 = icmp eq %struct.rtx_def* %31, %32
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %if.end.54
  br label %for.end

if.end.58:                                        ; preds = %if.end.54
  br label %for.inc

for.inc:                                          ; preds = %if.end.58
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 2
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.57
  %35 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call62 = call i32 @any_condjump_p(%struct.rtx_def* %35)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %for.end
  %36 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call66 = call %struct.rtx_def* @noce_get_condition(%struct.rtx_def* %36, %struct.rtx_def** %earliest)
  store %struct.rtx_def* %call66, %struct.rtx_def** %cond, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %cond, align 8
  %tobool67 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool67, label %if.end.69, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  store i32 0, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.65
  %call70 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %tmp_head)
  store %struct.bitmap_head_def* %call70, %struct.bitmap_head_def** %tmp, align 8
  %call71 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %merge_set_head)
  store %struct.bitmap_head_def* %call71, %struct.bitmap_head_def** %merge_set, align 8
  %call72 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %test_live_head)
  store %struct.bitmap_head_def* %call72, %struct.bitmap_head_def** %test_live, align 8
  %call73 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %test_set_head)
  store %struct.bitmap_head_def* %call73, %struct.bitmap_head_def** %test_set, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %40 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  %41 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  %call74 = call i32 @propagate_block(%struct.basic_block_def* %38, %struct.bitmap_head_def* %39, %struct.bitmap_head_def* %40, %struct.bitmap_head_def* %41, i32 0)
  %42 = load i32, i32* @reload_completed, align 4
  %tobool75 = icmp ne i32 %42, 0
  br i1 %tobool75, label %if.end.143, label %if.then.76

if.then.76:                                       ; preds = %if.end.69
  br label %do.body

do.body:                                          ; preds = %if.then.76
  %43 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %43, i32 0, i32 0
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %44, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp81 = icmp ne %struct.bitmap_element_def* %45, null
  br i1 %cmp81, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %46 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %46, i32 0, i32 2
  %47 = load i32, i32* %indx, align 4
  %48 = load i32, i32* %indx_, align 4
  %cmp83 = icmp ult i32 %47, %48
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %49 = phi i1 [ false, %while.cond ], [ %cmp83, %land.rhs ]
  br i1 %49, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %50 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %50, i32 0, i32 0
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %51, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %52 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp85 = icmp ne %struct.bitmap_element_def* %52, null
  br i1 %cmp85, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %while.end
  %53 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx87 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %53, i32 0, i32 2
  %54 = load i32, i32* %indx87, align 4
  %55 = load i32, i32* %indx_, align 4
  %cmp88 = icmp ne i32 %54, %55
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %land.lhs.true, %while.end
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.140, %if.end.91
  %56 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp93 = icmp ne %struct.bitmap_element_def* %56, null
  br i1 %cmp93, label %for.body, label %for.end.142

for.body:                                         ; preds = %for.cond.92
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.137, %for.body
  %57 = load i32, i32* %word_num_, align 4
  %cmp96 = icmp ult i32 %57, 2
  br i1 %cmp96, label %for.body.98, label %for.end.139

for.body.98:                                      ; preds = %for.cond.95
  %58 = load i32, i32* %word_num_, align 4
  %idxprom100 = zext i32 %58 to i64
  %59 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %59, i32 0, i32 3
  %arrayidx101 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom100
  %60 = load i64, i64* %arrayidx101, align 8
  store i64 %60, i64* %word_, align 8
  %61 = load i64, i64* %word_, align 8
  %cmp102 = icmp ne i64 %61, 0
  br i1 %cmp102, label %if.then.104, label %if.end.136

if.then.104:                                      ; preds = %for.body.98
  br label %for.cond.105

for.cond.105:                                     ; preds = %for.inc.134, %if.then.104
  %62 = load i32, i32* %bit_num_, align 4
  %cmp106 = icmp ult i32 %62, 64
  br i1 %cmp106, label %for.body.108, label %for.end.135

for.body.108:                                     ; preds = %for.cond.105
  %63 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %63 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %64 = load i64, i64* %word_, align 8
  %65 = load i64, i64* %mask_, align 8
  %and = and i64 %64, %65
  %cmp110 = icmp ne i64 %and, 0
  br i1 %cmp110, label %if.then.112, label %if.end.133

if.then.112:                                      ; preds = %for.body.108
  %66 = load i64, i64* %mask_, align 8
  %neg = xor i64 %66, -1
  %67 = load i64, i64* %word_, align 8
  %and113 = and i64 %67, %neg
  store i64 %and113, i64* %word_, align 8
  %68 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx114 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %68, i32 0, i32 2
  %69 = load i32, i32* %indx114, align 4
  %mul = mul i32 %69, 128
  %70 = load i32, i32* %word_num_, align 4
  %mul115 = mul i32 %70, 64
  %add = add i32 %mul, %mul115
  %71 = load i32, i32* %bit_num_, align 4
  %add116 = add i32 %add, %71
  store i32 %add116, i32* %i, align 4
  %72 = load i32, i32* %i, align 4
  %cmp117 = icmp slt i32 %72, 53
  br i1 %cmp117, label %land.lhs.true.119, label %if.end.128

land.lhs.true.119:                                ; preds = %if.then.112
  %73 = load i32, i32* %i, align 4
  %idxprom120 = sext i32 %73 to i64
  %arrayidx121 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom120
  %74 = load i8, i8* %arrayidx121, align 1
  %tobool122 = icmp ne i8 %74, 0
  br i1 %tobool122, label %if.end.128, label %land.lhs.true.123

land.lhs.true.123:                                ; preds = %land.lhs.true.119
  %75 = load i32, i32* %i, align 4
  %idxprom124 = sext i32 %75 to i64
  %arrayidx125 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom124
  %76 = load i8, i8* %arrayidx125, align 1
  %tobool126 = icmp ne i8 %76, 0
  br i1 %tobool126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true.123
  store i32 1, i32* %fail, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %land.lhs.true.123, %land.lhs.true.119, %if.then.112
  %77 = load i64, i64* %word_, align 8
  %cmp129 = icmp eq i64 %77, 0
  br i1 %cmp129, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  br label %for.end.135

if.end.132:                                       ; preds = %if.end.128
  br label %if.end.133

if.end.133:                                       ; preds = %if.end.132, %for.body.108
  br label %for.inc.134

for.inc.134:                                      ; preds = %if.end.133
  %78 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %78, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.105

for.end.135:                                      ; preds = %if.then.131, %for.cond.105
  br label %if.end.136

if.end.136:                                       ; preds = %for.end.135, %for.body.98
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.137

for.inc.137:                                      ; preds = %if.end.136
  %79 = load i32, i32* %word_num_, align 4
  %inc138 = add i32 %79, 1
  store i32 %inc138, i32* %word_num_, align 4
  br label %for.cond.95

for.end.139:                                      ; preds = %for.cond.95
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.140

for.inc.140:                                      ; preds = %for.end.139
  %80 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next141 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %80, i32 0, i32 0
  %81 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next141, align 8
  store %struct.bitmap_element_def* %81, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.92

for.end.142:                                      ; preds = %for.cond.92
  br label %do.end

do.end:                                           ; preds = %for.end.142
  br label %if.end.143

if.end.143:                                       ; preds = %do.end, %if.end.69
  %82 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_live, align 8
  %83 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb.addr, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %83, i32 0, i32 8
  %84 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %82, %struct.bitmap_head_def* %84)
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %86 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_live, align 8
  %87 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  %88 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  %call144 = call %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def* %85, %struct.bitmap_head_def* %86, %struct.bitmap_head_def* %87, %struct.bitmap_head_def* %88, i32 0)
  store %struct.propagate_block_info* %call144, %struct.propagate_block_info** %pbi, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %insn, align 8
  br label %for.cond.145

for.cond.145:                                     ; preds = %for.inc.151, %if.end.143
  %90 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call146 = call %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info* %90, %struct.rtx_def* %91)
  store %struct.rtx_def* %call146, %struct.rtx_def** %prev, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %cmp147 = icmp eq %struct.rtx_def* %92, %93
  br i1 %cmp147, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.cond.145
  br label %for.end.152

if.end.150:                                       ; preds = %for.cond.145
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %94 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %insn, align 8
  br label %for.cond.145

for.end.152:                                      ; preds = %if.then.149
  %95 = load %struct.propagate_block_info*, %struct.propagate_block_info** %pbi, align 8
  call void @free_propagate_block_info(%struct.propagate_block_info* %95)
  %96 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %97 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  %98 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_live, align 8
  %call153 = call i32 @bitmap_operation(%struct.bitmap_head_def* %96, %struct.bitmap_head_def* %97, %struct.bitmap_head_def* %98, i32 2)
  %99 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %100 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %101 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  %call154 = call i32 @bitmap_operation(%struct.bitmap_head_def* %99, %struct.bitmap_head_def* %100, %struct.bitmap_head_def* %101, i32 0)
  br label %do.body.155

do.body.155:                                      ; preds = %for.end.152
  %102 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %first158 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %102, i32 0, i32 0
  %103 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first158, align 8
  store %struct.bitmap_element_def* %103, %struct.bitmap_element_def** %ptr_157, align 8
  store i32 0, i32* %indx_160, align 4
  store i32 0, i32* %bit_num_162, align 4
  store i32 0, i32* %word_num_164, align 4
  br label %while.cond.165

while.cond.165:                                   ; preds = %while.body.173, %do.body.155
  %104 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %cmp166 = icmp ne %struct.bitmap_element_def* %104, null
  br i1 %cmp166, label %land.rhs.168, label %land.end.172

land.rhs.168:                                     ; preds = %while.cond.165
  %105 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %indx169 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %105, i32 0, i32 2
  %106 = load i32, i32* %indx169, align 4
  %107 = load i32, i32* %indx_160, align 4
  %cmp170 = icmp ult i32 %106, %107
  br label %land.end.172

land.end.172:                                     ; preds = %land.rhs.168, %while.cond.165
  %108 = phi i1 [ false, %while.cond.165 ], [ %cmp170, %land.rhs.168 ]
  br i1 %108, label %while.body.173, label %while.end.175

while.body.173:                                   ; preds = %land.end.172
  %109 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %next174 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %109, i32 0, i32 0
  %110 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next174, align 8
  store %struct.bitmap_element_def* %110, %struct.bitmap_element_def** %ptr_157, align 8
  br label %while.cond.165

while.end.175:                                    ; preds = %land.end.172
  %111 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %cmp176 = icmp ne %struct.bitmap_element_def* %111, null
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.183

land.lhs.true.178:                                ; preds = %while.end.175
  %112 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %indx179 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %112, i32 0, i32 2
  %113 = load i32, i32* %indx179, align 4
  %114 = load i32, i32* %indx_160, align 4
  %cmp180 = icmp ne i32 %113, %114
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %land.lhs.true.178
  store i32 0, i32* %bit_num_162, align 4
  store i32 0, i32* %word_num_164, align 4
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.182, %land.lhs.true.178, %while.end.175
  br label %for.cond.184

for.cond.184:                                     ; preds = %for.inc.231, %if.end.183
  %115 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %cmp185 = icmp ne %struct.bitmap_element_def* %115, null
  br i1 %cmp185, label %for.body.187, label %for.end.233

for.body.187:                                     ; preds = %for.cond.184
  br label %for.cond.188

for.cond.188:                                     ; preds = %for.inc.228, %for.body.187
  %116 = load i32, i32* %word_num_164, align 4
  %cmp189 = icmp ult i32 %116, 2
  br i1 %cmp189, label %for.body.191, label %for.end.230

for.body.191:                                     ; preds = %for.cond.188
  %117 = load i32, i32* %word_num_164, align 4
  %idxprom194 = zext i32 %117 to i64
  %118 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %bits195 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %118, i32 0, i32 3
  %arrayidx196 = getelementptr inbounds [2 x i64], [2 x i64]* %bits195, i32 0, i64 %idxprom194
  %119 = load i64, i64* %arrayidx196, align 8
  store i64 %119, i64* %word_193, align 8
  %120 = load i64, i64* %word_193, align 8
  %cmp197 = icmp ne i64 %120, 0
  br i1 %cmp197, label %if.then.199, label %if.end.227

if.then.199:                                      ; preds = %for.body.191
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.224, %if.then.199
  %121 = load i32, i32* %bit_num_162, align 4
  %cmp201 = icmp ult i32 %121, 64
  br i1 %cmp201, label %for.body.203, label %for.end.226

for.body.203:                                     ; preds = %for.cond.200
  %122 = load i32, i32* %bit_num_162, align 4
  %sh_prom206 = zext i32 %122 to i64
  %shl207 = shl i64 1, %sh_prom206
  store i64 %shl207, i64* %mask_205, align 8
  %123 = load i64, i64* %word_193, align 8
  %124 = load i64, i64* %mask_205, align 8
  %and208 = and i64 %123, %124
  %cmp209 = icmp ne i64 %and208, 0
  br i1 %cmp209, label %if.then.211, label %if.end.223

if.then.211:                                      ; preds = %for.body.203
  %125 = load i64, i64* %mask_205, align 8
  %neg212 = xor i64 %125, -1
  %126 = load i64, i64* %word_193, align 8
  %and213 = and i64 %126, %neg212
  store i64 %and213, i64* %word_193, align 8
  %127 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %indx214 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %127, i32 0, i32 2
  %128 = load i32, i32* %indx214, align 4
  %mul215 = mul i32 %128, 128
  %129 = load i32, i32* %word_num_164, align 4
  %mul216 = mul i32 %129, 64
  %add217 = add i32 %mul215, %mul216
  %130 = load i32, i32* %bit_num_162, align 4
  %add218 = add i32 %add217, %130
  store i32 %add218, i32* %i, align 4
  store i32 1, i32* %fail, align 4
  %131 = load i64, i64* %word_193, align 8
  %cmp219 = icmp eq i64 %131, 0
  br i1 %cmp219, label %if.then.221, label %if.end.222

if.then.221:                                      ; preds = %if.then.211
  br label %for.end.226

if.end.222:                                       ; preds = %if.then.211
  br label %if.end.223

if.end.223:                                       ; preds = %if.end.222, %for.body.203
  br label %for.inc.224

for.inc.224:                                      ; preds = %if.end.223
  %132 = load i32, i32* %bit_num_162, align 4
  %inc225 = add i32 %132, 1
  store i32 %inc225, i32* %bit_num_162, align 4
  br label %for.cond.200

for.end.226:                                      ; preds = %if.then.221, %for.cond.200
  br label %if.end.227

if.end.227:                                       ; preds = %for.end.226, %for.body.191
  store i32 0, i32* %bit_num_162, align 4
  br label %for.inc.228

for.inc.228:                                      ; preds = %if.end.227
  %133 = load i32, i32* %word_num_164, align 4
  %inc229 = add i32 %133, 1
  store i32 %inc229, i32* %word_num_164, align 4
  br label %for.cond.188

for.end.230:                                      ; preds = %for.cond.188
  store i32 0, i32* %word_num_164, align 4
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.end.230
  %134 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_157, align 8
  %next232 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %134, i32 0, i32 0
  %135 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next232, align 8
  store %struct.bitmap_element_def* %135, %struct.bitmap_element_def** %ptr_157, align 8
  br label %for.cond.184

for.end.233:                                      ; preds = %for.cond.184
  br label %do.end.234

do.end.234:                                       ; preds = %for.end.233
  %136 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %137 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %global_live_at_start235 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %138, i32 0, i32 8
  %139 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start235, align 8
  %call236 = call i32 @bitmap_operation(%struct.bitmap_head_def* %136, %struct.bitmap_head_def* %137, %struct.bitmap_head_def* %139, i32 0)
  br label %do.body.237

do.body.237:                                      ; preds = %do.end.234
  %140 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %first240 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %140, i32 0, i32 0
  %141 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first240, align 8
  store %struct.bitmap_element_def* %141, %struct.bitmap_element_def** %ptr_239, align 8
  store i32 0, i32* %indx_242, align 4
  store i32 0, i32* %bit_num_244, align 4
  store i32 0, i32* %word_num_246, align 4
  br label %while.cond.247

while.cond.247:                                   ; preds = %while.body.255, %do.body.237
  %142 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %cmp248 = icmp ne %struct.bitmap_element_def* %142, null
  br i1 %cmp248, label %land.rhs.250, label %land.end.254

land.rhs.250:                                     ; preds = %while.cond.247
  %143 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %indx251 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %143, i32 0, i32 2
  %144 = load i32, i32* %indx251, align 4
  %145 = load i32, i32* %indx_242, align 4
  %cmp252 = icmp ult i32 %144, %145
  br label %land.end.254

land.end.254:                                     ; preds = %land.rhs.250, %while.cond.247
  %146 = phi i1 [ false, %while.cond.247 ], [ %cmp252, %land.rhs.250 ]
  br i1 %146, label %while.body.255, label %while.end.257

while.body.255:                                   ; preds = %land.end.254
  %147 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %next256 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %147, i32 0, i32 0
  %148 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next256, align 8
  store %struct.bitmap_element_def* %148, %struct.bitmap_element_def** %ptr_239, align 8
  br label %while.cond.247

while.end.257:                                    ; preds = %land.end.254
  %149 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %cmp258 = icmp ne %struct.bitmap_element_def* %149, null
  br i1 %cmp258, label %land.lhs.true.260, label %if.end.265

land.lhs.true.260:                                ; preds = %while.end.257
  %150 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %indx261 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %150, i32 0, i32 2
  %151 = load i32, i32* %indx261, align 4
  %152 = load i32, i32* %indx_242, align 4
  %cmp262 = icmp ne i32 %151, %152
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %land.lhs.true.260
  store i32 0, i32* %bit_num_244, align 4
  store i32 0, i32* %word_num_246, align 4
  br label %if.end.265

if.end.265:                                       ; preds = %if.then.264, %land.lhs.true.260, %while.end.257
  br label %for.cond.266

for.cond.266:                                     ; preds = %for.inc.313, %if.end.265
  %153 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %cmp267 = icmp ne %struct.bitmap_element_def* %153, null
  br i1 %cmp267, label %for.body.269, label %for.end.315

for.body.269:                                     ; preds = %for.cond.266
  br label %for.cond.270

for.cond.270:                                     ; preds = %for.inc.310, %for.body.269
  %154 = load i32, i32* %word_num_246, align 4
  %cmp271 = icmp ult i32 %154, 2
  br i1 %cmp271, label %for.body.273, label %for.end.312

for.body.273:                                     ; preds = %for.cond.270
  %155 = load i32, i32* %word_num_246, align 4
  %idxprom276 = zext i32 %155 to i64
  %156 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %bits277 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %156, i32 0, i32 3
  %arrayidx278 = getelementptr inbounds [2 x i64], [2 x i64]* %bits277, i32 0, i64 %idxprom276
  %157 = load i64, i64* %arrayidx278, align 8
  store i64 %157, i64* %word_275, align 8
  %158 = load i64, i64* %word_275, align 8
  %cmp279 = icmp ne i64 %158, 0
  br i1 %cmp279, label %if.then.281, label %if.end.309

if.then.281:                                      ; preds = %for.body.273
  br label %for.cond.282

for.cond.282:                                     ; preds = %for.inc.306, %if.then.281
  %159 = load i32, i32* %bit_num_244, align 4
  %cmp283 = icmp ult i32 %159, 64
  br i1 %cmp283, label %for.body.285, label %for.end.308

for.body.285:                                     ; preds = %for.cond.282
  %160 = load i32, i32* %bit_num_244, align 4
  %sh_prom288 = zext i32 %160 to i64
  %shl289 = shl i64 1, %sh_prom288
  store i64 %shl289, i64* %mask_287, align 8
  %161 = load i64, i64* %word_275, align 8
  %162 = load i64, i64* %mask_287, align 8
  %and290 = and i64 %161, %162
  %cmp291 = icmp ne i64 %and290, 0
  br i1 %cmp291, label %if.then.293, label %if.end.305

if.then.293:                                      ; preds = %for.body.285
  %163 = load i64, i64* %mask_287, align 8
  %neg294 = xor i64 %163, -1
  %164 = load i64, i64* %word_275, align 8
  %and295 = and i64 %164, %neg294
  store i64 %and295, i64* %word_275, align 8
  %165 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %indx296 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %165, i32 0, i32 2
  %166 = load i32, i32* %indx296, align 4
  %mul297 = mul i32 %166, 128
  %167 = load i32, i32* %word_num_246, align 4
  %mul298 = mul i32 %167, 64
  %add299 = add i32 %mul297, %mul298
  %168 = load i32, i32* %bit_num_244, align 4
  %add300 = add i32 %add299, %168
  store i32 %add300, i32* %i, align 4
  store i32 1, i32* %fail, align 4
  %169 = load i64, i64* %word_275, align 8
  %cmp301 = icmp eq i64 %169, 0
  br i1 %cmp301, label %if.then.303, label %if.end.304

if.then.303:                                      ; preds = %if.then.293
  br label %for.end.308

if.end.304:                                       ; preds = %if.then.293
  br label %if.end.305

if.end.305:                                       ; preds = %if.end.304, %for.body.285
  br label %for.inc.306

for.inc.306:                                      ; preds = %if.end.305
  %170 = load i32, i32* %bit_num_244, align 4
  %inc307 = add i32 %170, 1
  store i32 %inc307, i32* %bit_num_244, align 4
  br label %for.cond.282

for.end.308:                                      ; preds = %if.then.303, %for.cond.282
  br label %if.end.309

if.end.309:                                       ; preds = %for.end.308, %for.body.273
  store i32 0, i32* %bit_num_244, align 4
  br label %for.inc.310

for.inc.310:                                      ; preds = %if.end.309
  %171 = load i32, i32* %word_num_246, align 4
  %inc311 = add i32 %171, 1
  store i32 %inc311, i32* %word_num_246, align 4
  br label %for.cond.270

for.end.312:                                      ; preds = %for.cond.270
  store i32 0, i32* %word_num_246, align 4
  br label %for.inc.313

for.inc.313:                                      ; preds = %for.end.312
  %172 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_239, align 8
  %next314 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %172, i32 0, i32 0
  %173 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next314, align 8
  store %struct.bitmap_element_def* %173, %struct.bitmap_element_def** %ptr_239, align 8
  br label %for.cond.266

for.end.315:                                      ; preds = %for.cond.266
  br label %do.end.316

do.end.316:                                       ; preds = %for.end.315
  br label %do.body.317

do.body.317:                                      ; preds = %do.end.316
  %174 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  %tobool318 = icmp ne %struct.bitmap_head_def* %174, null
  br i1 %tobool318, label %if.then.319, label %if.end.320

if.then.319:                                      ; preds = %do.body.317
  %175 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %tmp, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %175)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %tmp, align 8
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.319, %do.body.317
  br label %do.end.321

do.end.321:                                       ; preds = %if.end.320
  br label %do.body.322

do.body.322:                                      ; preds = %do.end.321
  %176 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  %tobool323 = icmp ne %struct.bitmap_head_def* %176, null
  br i1 %tobool323, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %do.body.322
  %177 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %merge_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %177)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %merge_set, align 8
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.324, %do.body.322
  br label %do.end.326

do.end.326:                                       ; preds = %if.end.325
  br label %do.body.327

do.body.327:                                      ; preds = %do.end.326
  %178 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_live, align 8
  %tobool328 = icmp ne %struct.bitmap_head_def* %178, null
  br i1 %tobool328, label %if.then.329, label %if.end.330

if.then.329:                                      ; preds = %do.body.327
  %179 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_live, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %179)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %test_live, align 8
  br label %if.end.330

if.end.330:                                       ; preds = %if.then.329, %do.body.327
  br label %do.end.331

do.end.331:                                       ; preds = %if.end.330
  br label %do.body.332

do.body.332:                                      ; preds = %do.end.331
  %180 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  %tobool333 = icmp ne %struct.bitmap_head_def* %180, null
  br i1 %tobool333, label %if.then.334, label %if.end.335

if.then.334:                                      ; preds = %do.body.332
  %181 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %test_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %181)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %test_set, align 8
  br label %if.end.335

if.end.335:                                       ; preds = %if.then.334, %do.body.332
  br label %do.end.336

do.end.336:                                       ; preds = %if.end.335
  %182 = load i32, i32* %fail, align 4
  %tobool337 = icmp ne i32 %182, 0
  br i1 %tobool337, label %if.then.338, label %if.end.339

if.then.338:                                      ; preds = %do.end.336
  store i32 0, i32* %retval
  br label %return

if.end.339:                                       ; preds = %do.end.336
  br label %no_body

no_body:                                          ; preds = %if.end.339, %if.then.20, %if.then.9
  %183 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %fld340 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld340, i32 0, i64 7
  %rtx342 = bitcast %union.rtunion_def* %arrayidx341 to %struct.rtx_def**
  %184 = load %struct.rtx_def*, %struct.rtx_def** %rtx342, align 8
  store %struct.rtx_def* %184, %struct.rtx_def** %old_dest, align 8
  %185 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb.addr, align 8
  %186 = load %struct.basic_block_def*, %struct.basic_block_def** %new_dest.addr, align 8
  %cmp343 = icmp ne %struct.basic_block_def* %185, %186
  br i1 %cmp343, label %if.then.345, label %if.end.354

if.then.345:                                      ; preds = %no_body
  %187 = load %struct.basic_block_def*, %struct.basic_block_def** %new_dest.addr, align 8
  %call346 = call %struct.rtx_def* @block_label(%struct.basic_block_def* %187)
  store %struct.rtx_def* %call346, %struct.rtx_def** %new_label, align 8
  %188 = load i32, i32* %reversep.addr, align 4
  %tobool347 = icmp ne i32 %188, 0
  br i1 %tobool347, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.345
  %189 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %call348 = call i32 @invert_jump_1(%struct.rtx_def* %189, %struct.rtx_def* %190)
  %tobool349 = icmp ne i32 %call348, 0
  br i1 %tobool349, label %if.end.353, label %if.then.352

cond.false:                                       ; preds = %if.then.345
  %191 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %call350 = call i32 @redirect_jump_1(%struct.rtx_def* %191, %struct.rtx_def* %192)
  %tobool351 = icmp ne i32 %call350, 0
  br i1 %tobool351, label %if.end.353, label %if.then.352

if.then.352:                                      ; preds = %cond.false, %cond.true
  br label %cancel

if.end.353:                                       ; preds = %cond.false, %cond.true
  br label %if.end.354

if.end.354:                                       ; preds = %if.end.353, %no_body
  %call355 = call i32 @apply_change_group()
  %tobool356 = icmp ne i32 %call355, 0
  br i1 %tobool356, label %if.end.358, label %if.then.357

if.then.357:                                      ; preds = %if.end.354
  store i32 0, i32* %retval
  br label %return

if.end.358:                                       ; preds = %if.end.354
  %193 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb.addr, align 8
  %194 = load %struct.basic_block_def*, %struct.basic_block_def** %new_dest.addr, align 8
  %cmp359 = icmp ne %struct.basic_block_def* %193, %194
  br i1 %cmp359, label %if.then.361, label %if.end.490

if.then.361:                                      ; preds = %if.end.358
  %195 = load %struct.rtx_def*, %struct.rtx_def** %old_dest, align 8
  %tobool362 = icmp ne %struct.rtx_def* %195, null
  br i1 %tobool362, label %if.then.363, label %if.end.366

if.then.363:                                      ; preds = %if.then.361
  %196 = load %struct.rtx_def*, %struct.rtx_def** %old_dest, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %196, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx365 to i32*
  %197 = load i32, i32* %rtint, align 4
  %sub = sub nsw i32 %197, 1
  store i32 %sub, i32* %rtint, align 4
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.363, %if.then.361
  %198 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %tobool367 = icmp ne %struct.rtx_def* %198, null
  br i1 %tobool367, label %if.then.368, label %if.end.373

if.then.368:                                      ; preds = %if.end.366
  %199 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %fld369 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx370 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld369, i32 0, i64 3
  %rtint371 = bitcast %union.rtunion_def* %arrayidx370 to i32*
  %200 = load i32, i32* %rtint371, align 4
  %add372 = add nsw i32 %200, 1
  store i32 %add372, i32* %rtint371, align 4
  br label %if.end.373

if.end.373:                                       ; preds = %if.then.368, %if.end.366
  %201 = load %struct.rtx_def*, %struct.rtx_def** %new_label, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %fld374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld374, i32 0, i64 7
  %rtx376 = bitcast %union.rtunion_def* %arrayidx375 to %struct.rtx_def**
  store %struct.rtx_def* %201, %struct.rtx_def** %rtx376, align 8
  %203 = load i32, i32* %reversep.addr, align 4
  %tobool377 = icmp ne i32 %203, 0
  br i1 %tobool377, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.373
  %204 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  call void @invert_br_probabilities(%struct.rtx_def* %204)
  br label %if.end.379

if.end.379:                                       ; preds = %if.then.378, %if.end.373
  %205 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %205, i32 0, i32 5
  %206 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %206, i32 0, i32 6
  %207 = load i32, i32* %flags, align 4
  %and380 = and i32 %207, 1
  %tobool381 = icmp ne i32 %and380, 0
  br i1 %tobool381, label %cond.true.382, label %cond.false.384

cond.true.382:                                    ; preds = %if.end.379
  %208 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ383 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %208, i32 0, i32 5
  %209 = load %struct.edge_def*, %struct.edge_def** %succ383, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %209, i32 0, i32 1
  %210 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  br label %cond.end

cond.false.384:                                   ; preds = %if.end.379
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ385 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %211, i32 0, i32 5
  %212 = load %struct.edge_def*, %struct.edge_def** %succ385, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.384, %cond.true.382
  %cond386 = phi %struct.edge_def* [ %210, %cond.true.382 ], [ %212, %cond.false.384 ]
  %213 = load %struct.basic_block_def*, %struct.basic_block_def** %new_dest.addr, align 8
  call void @redirect_edge_succ(%struct.edge_def* %cond386, %struct.basic_block_def* %213)
  %214 = load i32, i32* %reversep.addr, align 4
  %tobool387 = icmp ne i32 %214, 0
  br i1 %tobool387, label %if.then.388, label %if.end.489

if.then.388:                                      ; preds = %cond.end
  %215 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ391 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %215, i32 0, i32 5
  %216 = load %struct.edge_def*, %struct.edge_def** %succ391, align 8
  %flags392 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %216, i32 0, i32 6
  %217 = load i32, i32* %flags392, align 4
  %and393 = and i32 %217, 1
  %tobool394 = icmp ne i32 %and393, 0
  br i1 %tobool394, label %cond.true.395, label %cond.false.398

cond.true.395:                                    ; preds = %if.then.388
  %218 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ396 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %218, i32 0, i32 5
  %219 = load %struct.edge_def*, %struct.edge_def** %succ396, align 8
  %succ_next397 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %219, i32 0, i32 1
  %220 = load %struct.edge_def*, %struct.edge_def** %succ_next397, align 8
  br label %cond.end.400

cond.false.398:                                   ; preds = %if.then.388
  %221 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ399 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %221, i32 0, i32 5
  %222 = load %struct.edge_def*, %struct.edge_def** %succ399, align 8
  br label %cond.end.400

cond.end.400:                                     ; preds = %cond.false.398, %cond.true.395
  %cond401 = phi %struct.edge_def* [ %220, %cond.true.395 ], [ %222, %cond.false.398 ]
  %count402 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond401, i32 0, i32 8
  %223 = load i64, i64* %count402, align 8
  store i64 %223, i64* %count, align 8
  %224 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ403 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %224, i32 0, i32 5
  %225 = load %struct.edge_def*, %struct.edge_def** %succ403, align 8
  %flags404 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %225, i32 0, i32 6
  %226 = load i32, i32* %flags404, align 4
  %and405 = and i32 %226, 1
  %tobool406 = icmp ne i32 %and405, 0
  br i1 %tobool406, label %cond.true.407, label %cond.false.409

cond.true.407:                                    ; preds = %cond.end.400
  %227 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ408 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %227, i32 0, i32 5
  %228 = load %struct.edge_def*, %struct.edge_def** %succ408, align 8
  br label %cond.end.412

cond.false.409:                                   ; preds = %cond.end.400
  %229 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ410 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %229, i32 0, i32 5
  %230 = load %struct.edge_def*, %struct.edge_def** %succ410, align 8
  %succ_next411 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %230, i32 0, i32 1
  %231 = load %struct.edge_def*, %struct.edge_def** %succ_next411, align 8
  br label %cond.end.412

cond.end.412:                                     ; preds = %cond.false.409, %cond.true.407
  %cond413 = phi %struct.edge_def* [ %228, %cond.true.407 ], [ %231, %cond.false.409 ]
  %count414 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond413, i32 0, i32 8
  %232 = load i64, i64* %count414, align 8
  %233 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ415 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %233, i32 0, i32 5
  %234 = load %struct.edge_def*, %struct.edge_def** %succ415, align 8
  %flags416 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %234, i32 0, i32 6
  %235 = load i32, i32* %flags416, align 4
  %and417 = and i32 %235, 1
  %tobool418 = icmp ne i32 %and417, 0
  br i1 %tobool418, label %cond.true.419, label %cond.false.422

cond.true.419:                                    ; preds = %cond.end.412
  %236 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ420 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %236, i32 0, i32 5
  %237 = load %struct.edge_def*, %struct.edge_def** %succ420, align 8
  %succ_next421 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %237, i32 0, i32 1
  %238 = load %struct.edge_def*, %struct.edge_def** %succ_next421, align 8
  br label %cond.end.424

cond.false.422:                                   ; preds = %cond.end.412
  %239 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ423 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %239, i32 0, i32 5
  %240 = load %struct.edge_def*, %struct.edge_def** %succ423, align 8
  br label %cond.end.424

cond.end.424:                                     ; preds = %cond.false.422, %cond.true.419
  %cond425 = phi %struct.edge_def* [ %238, %cond.true.419 ], [ %240, %cond.false.422 ]
  %count426 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond425, i32 0, i32 8
  store i64 %232, i64* %count426, align 8
  %241 = load i64, i64* %count, align 8
  %242 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ427 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %242, i32 0, i32 5
  %243 = load %struct.edge_def*, %struct.edge_def** %succ427, align 8
  %flags428 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %243, i32 0, i32 6
  %244 = load i32, i32* %flags428, align 4
  %and429 = and i32 %244, 1
  %tobool430 = icmp ne i32 %and429, 0
  br i1 %tobool430, label %cond.true.431, label %cond.false.433

cond.true.431:                                    ; preds = %cond.end.424
  %245 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ432 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %245, i32 0, i32 5
  %246 = load %struct.edge_def*, %struct.edge_def** %succ432, align 8
  br label %cond.end.436

cond.false.433:                                   ; preds = %cond.end.424
  %247 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ434 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %247, i32 0, i32 5
  %248 = load %struct.edge_def*, %struct.edge_def** %succ434, align 8
  %succ_next435 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %248, i32 0, i32 1
  %249 = load %struct.edge_def*, %struct.edge_def** %succ_next435, align 8
  br label %cond.end.436

cond.end.436:                                     ; preds = %cond.false.433, %cond.true.431
  %cond437 = phi %struct.edge_def* [ %246, %cond.true.431 ], [ %249, %cond.false.433 ]
  %count438 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond437, i32 0, i32 8
  store i64 %241, i64* %count438, align 8
  %250 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ439 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %250, i32 0, i32 5
  %251 = load %struct.edge_def*, %struct.edge_def** %succ439, align 8
  %flags440 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %251, i32 0, i32 6
  %252 = load i32, i32* %flags440, align 4
  %and441 = and i32 %252, 1
  %tobool442 = icmp ne i32 %and441, 0
  br i1 %tobool442, label %cond.true.443, label %cond.false.446

cond.true.443:                                    ; preds = %cond.end.436
  %253 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ444 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %253, i32 0, i32 5
  %254 = load %struct.edge_def*, %struct.edge_def** %succ444, align 8
  %succ_next445 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %254, i32 0, i32 1
  %255 = load %struct.edge_def*, %struct.edge_def** %succ_next445, align 8
  br label %cond.end.448

cond.false.446:                                   ; preds = %cond.end.436
  %256 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ447 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %256, i32 0, i32 5
  %257 = load %struct.edge_def*, %struct.edge_def** %succ447, align 8
  br label %cond.end.448

cond.end.448:                                     ; preds = %cond.false.446, %cond.true.443
  %cond449 = phi %struct.edge_def* [ %255, %cond.true.443 ], [ %257, %cond.false.446 ]
  %probability450 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond449, i32 0, i32 7
  %258 = load i32, i32* %probability450, align 4
  %conv451 = sext i32 %258 to i64
  store i64 %conv451, i64* %probability, align 8
  %259 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ452 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %259, i32 0, i32 5
  %260 = load %struct.edge_def*, %struct.edge_def** %succ452, align 8
  %flags453 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %260, i32 0, i32 6
  %261 = load i32, i32* %flags453, align 4
  %and454 = and i32 %261, 1
  %tobool455 = icmp ne i32 %and454, 0
  br i1 %tobool455, label %cond.true.456, label %cond.false.458

cond.true.456:                                    ; preds = %cond.end.448
  %262 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ457 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %262, i32 0, i32 5
  %263 = load %struct.edge_def*, %struct.edge_def** %succ457, align 8
  br label %cond.end.461

cond.false.458:                                   ; preds = %cond.end.448
  %264 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ459 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %264, i32 0, i32 5
  %265 = load %struct.edge_def*, %struct.edge_def** %succ459, align 8
  %succ_next460 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %265, i32 0, i32 1
  %266 = load %struct.edge_def*, %struct.edge_def** %succ_next460, align 8
  br label %cond.end.461

cond.end.461:                                     ; preds = %cond.false.458, %cond.true.456
  %cond462 = phi %struct.edge_def* [ %263, %cond.true.456 ], [ %266, %cond.false.458 ]
  %probability463 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond462, i32 0, i32 7
  %267 = load i32, i32* %probability463, align 4
  %268 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ464 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %268, i32 0, i32 5
  %269 = load %struct.edge_def*, %struct.edge_def** %succ464, align 8
  %flags465 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %269, i32 0, i32 6
  %270 = load i32, i32* %flags465, align 4
  %and466 = and i32 %270, 1
  %tobool467 = icmp ne i32 %and466, 0
  br i1 %tobool467, label %cond.true.468, label %cond.false.471

cond.true.468:                                    ; preds = %cond.end.461
  %271 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ469 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %271, i32 0, i32 5
  %272 = load %struct.edge_def*, %struct.edge_def** %succ469, align 8
  %succ_next470 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %272, i32 0, i32 1
  %273 = load %struct.edge_def*, %struct.edge_def** %succ_next470, align 8
  br label %cond.end.473

cond.false.471:                                   ; preds = %cond.end.461
  %274 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ472 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %274, i32 0, i32 5
  %275 = load %struct.edge_def*, %struct.edge_def** %succ472, align 8
  br label %cond.end.473

cond.end.473:                                     ; preds = %cond.false.471, %cond.true.468
  %cond474 = phi %struct.edge_def* [ %273, %cond.true.468 ], [ %275, %cond.false.471 ]
  %probability475 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond474, i32 0, i32 7
  store i32 %267, i32* %probability475, align 4
  %276 = load i64, i64* %probability, align 8
  %conv476 = trunc i64 %276 to i32
  %277 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ477 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %277, i32 0, i32 5
  %278 = load %struct.edge_def*, %struct.edge_def** %succ477, align 8
  %flags478 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %278, i32 0, i32 6
  %279 = load i32, i32* %flags478, align 4
  %and479 = and i32 %279, 1
  %tobool480 = icmp ne i32 %and479, 0
  br i1 %tobool480, label %cond.true.481, label %cond.false.483

cond.true.481:                                    ; preds = %cond.end.473
  %280 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ482 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %280, i32 0, i32 5
  %281 = load %struct.edge_def*, %struct.edge_def** %succ482, align 8
  br label %cond.end.486

cond.false.483:                                   ; preds = %cond.end.473
  %282 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ484 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %282, i32 0, i32 5
  %283 = load %struct.edge_def*, %struct.edge_def** %succ484, align 8
  %succ_next485 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %283, i32 0, i32 1
  %284 = load %struct.edge_def*, %struct.edge_def** %succ_next485, align 8
  br label %cond.end.486

cond.end.486:                                     ; preds = %cond.false.483, %cond.true.481
  %cond487 = phi %struct.edge_def* [ %281, %cond.true.481 ], [ %284, %cond.false.483 ]
  %probability488 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %cond487, i32 0, i32 7
  store i32 %conv476, i32* %probability488, align 4
  %285 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  call void @update_br_prob_note(%struct.basic_block_def* %285)
  br label %if.end.489

if.end.489:                                       ; preds = %cond.end.486, %cond.end
  br label %if.end.490

if.end.490:                                       ; preds = %if.end.489, %if.end.358
  %286 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp491 = icmp ne %struct.rtx_def* %286, null
  br i1 %cmp491, label %if.then.493, label %if.end.509

if.then.493:                                      ; preds = %if.end.490
  %287 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %288 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %end494 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %288, i32 0, i32 1
  %289 = load %struct.rtx_def*, %struct.rtx_def** %end494, align 8
  %cmp495 = icmp eq %struct.rtx_def* %287, %289
  br i1 %cmp495, label %if.then.497, label %if.end.502

if.then.497:                                      ; preds = %if.then.493
  %290 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 1
  %rtx500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtx_def**
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx500, align 8
  %292 = load %struct.basic_block_def*, %struct.basic_block_def** %merge_bb.addr, align 8
  %end501 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %292, i32 0, i32 1
  store %struct.rtx_def* %291, %struct.rtx_def** %end501, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.497, %if.then.493
  %call503 = call zeroext i1 @squeeze_notes(%struct.rtx_def** %head, %struct.rtx_def** %end)
  br i1 %call503, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.end.502
  store i32 1, i32* %retval
  br label %return

if.end.505:                                       ; preds = %if.end.502
  %293 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %294 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %earliest, align 8
  %fld506 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx507 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld506, i32 0, i64 1
  %rtx508 = bitcast %union.rtunion_def* %arrayidx507 to %struct.rtx_def**
  %296 = load %struct.rtx_def*, %struct.rtx_def** %rtx508, align 8
  call void @reorder_insns(%struct.rtx_def* %293, %struct.rtx_def* %294, %struct.rtx_def* %296)
  br label %if.end.509

if.end.509:                                       ; preds = %if.end.505, %if.end.490
  %297 = load %struct.basic_block_def*, %struct.basic_block_def** %other_bb.addr, align 8
  %298 = load %struct.basic_block_def*, %struct.basic_block_def** %new_dest.addr, align 8
  %cmp510 = icmp eq %struct.basic_block_def* %297, %298
  br i1 %cmp510, label %if.then.512, label %if.end.525

if.then.512:                                      ; preds = %if.end.509
  %299 = load %struct.rtx_def*, %struct.rtx_def** %jump, align 8
  %call513 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %299)
  %300 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ514 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %300, i32 0, i32 5
  %301 = load %struct.edge_def*, %struct.edge_def** %succ514, align 8
  %flags515 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %301, i32 0, i32 6
  %302 = load i32, i32* %flags515, align 4
  %and516 = and i32 %302, 1
  %tobool517 = icmp ne i32 %and516, 0
  br i1 %tobool517, label %cond.true.518, label %cond.false.521

cond.true.518:                                    ; preds = %if.then.512
  %303 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ519 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %303, i32 0, i32 5
  %304 = load %struct.edge_def*, %struct.edge_def** %succ519, align 8
  %succ_next520 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %304, i32 0, i32 1
  %305 = load %struct.edge_def*, %struct.edge_def** %succ_next520, align 8
  br label %cond.end.523

cond.false.521:                                   ; preds = %if.then.512
  %306 = load %struct.basic_block_def*, %struct.basic_block_def** %test_bb.addr, align 8
  %succ522 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %306, i32 0, i32 5
  %307 = load %struct.edge_def*, %struct.edge_def** %succ522, align 8
  br label %cond.end.523

cond.end.523:                                     ; preds = %cond.false.521, %cond.true.518
  %cond524 = phi %struct.edge_def* [ %305, %cond.true.518 ], [ %307, %cond.false.521 ]
  call void @remove_edge(%struct.edge_def* %cond524)
  br label %if.end.525

if.end.525:                                       ; preds = %cond.end.523, %if.end.509
  store i32 1, i32* %retval
  br label %return

cancel:                                           ; preds = %if.then.352
  call void @cancel_changes(i32 0)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %cancel, %if.end.525, %if.then.504, %if.then.357, %if.then.338, %if.then.68, %if.then.64, %if.then.52, %if.then.45, %if.then.34
  %308 = load i32, i32* %retval
  ret i32 %308
}

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def*, %struct.basic_block_def*) #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_memory(%struct.rtx_def** %px, i8* %data) #0 {
entry:
  %px.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare i32 @propagate_block(%struct.basic_block_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare %struct.propagate_block_info* @init_propagate_block_info(%struct.basic_block_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare %struct.rtx_def* @propagate_one_insn(%struct.propagate_block_info*, %struct.rtx_def*) #1

declare void @free_propagate_block_info(%struct.propagate_block_info*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare %struct.rtx_def* @block_label(%struct.basic_block_def*) #1

declare i32 @invert_jump_1(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @redirect_jump_1(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @apply_change_group() #1

declare void @invert_br_probabilities(%struct.rtx_def*) #1

declare void @redirect_edge_succ(%struct.edge_def*, %struct.basic_block_def*) #1

declare void @update_br_prob_note(%struct.basic_block_def*) #1

declare zeroext i1 @squeeze_notes(%struct.rtx_def**, %struct.rtx_def**) #1

declare void @cancel_changes(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
