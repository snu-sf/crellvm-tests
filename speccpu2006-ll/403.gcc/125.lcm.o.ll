; ModuleID = 'lcm.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bb_info = type { %struct.seginfo*, i32 }
%struct.seginfo = type { i32, %struct.rtx_def*, i32, %struct.seginfo*, i64 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@optimize_mode_switching.num_modes = internal constant [1 x i32] [i32 2], align 4
@antic = internal global %struct.simple_bitmap_def** null, align 8
@transp = internal global %struct.simple_bitmap_def** null, align 8
@comp = internal global %struct.simple_bitmap_def** null, align 8
@rtx_class = external constant [153 x i8], align 16
@insert = internal global %struct.simple_bitmap_def** null, align 8
@delete = internal global %struct.simple_bitmap_def** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"lcm.c\00", align 1
@__FUNCTION__.optimize_mode_switching = private unnamed_addr constant [24 x i8] c"optimize_mode_switching\00", align 1
@mode_class = external constant [59 x i32], align 16
@target_flags = external global i32, align 4
@mode_size = external constant [59 x i8], align 16

; Function Attrs: nounwind uwtable
define %struct.edge_list* @pre_edge_lcm(%struct._IO_FILE* %file, i32 %n_exprs, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def*** %delete) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %n_exprs.addr = alloca i32, align 4
  %transp.addr = alloca %struct.simple_bitmap_def**, align 8
  %avloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %insert.addr = alloca %struct.simple_bitmap_def***, align 8
  %delete.addr = alloca %struct.simple_bitmap_def***, align 8
  %antin = alloca %struct.simple_bitmap_def**, align 8
  %antout = alloca %struct.simple_bitmap_def**, align 8
  %earliest = alloca %struct.simple_bitmap_def**, align 8
  %avin = alloca %struct.simple_bitmap_def**, align 8
  %avout = alloca %struct.simple_bitmap_def**, align 8
  %later = alloca %struct.simple_bitmap_def**, align 8
  %laterin = alloca %struct.simple_bitmap_def**, align 8
  %edge_list = alloca %struct.edge_list*, align 8
  %num_edges = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  store %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def*** %transp.addr, align 8
  store %struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def*** %avloc.addr, align 8
  store %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def*** %antloc.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def**** %insert.addr, align 8
  store %struct.simple_bitmap_def*** %delete, %struct.simple_bitmap_def**** %delete.addr, align 8
  %call = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call, %struct.edge_list** %edge_list, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** %avin, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %5 = load i32, i32* %n_exprs.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** %avout, align 8
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avloc.addr, align 8
  %7 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout, align 8
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avin, align 8
  call void @compute_available(%struct.simple_bitmap_def** %6, %struct.simple_bitmap_def** %7, %struct.simple_bitmap_def** %8, %struct.simple_bitmap_def** %9)
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avin, align 8
  %11 = bitcast %struct.simple_bitmap_def** %10 to i8*
  call void @free(i8* %11) #4
  %12 = load i32, i32* @n_basic_blocks, align 4
  %13 = load i32, i32* %n_exprs.addr, align 4
  %call4 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %12, i32 %13)
  store %struct.simple_bitmap_def** %call4, %struct.simple_bitmap_def*** %antin, align 8
  %14 = load i32, i32* @n_basic_blocks, align 4
  %15 = load i32, i32* %n_exprs.addr, align 4
  %call5 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %14, i32 %15)
  store %struct.simple_bitmap_def** %call5, %struct.simple_bitmap_def*** %antout, align 8
  %16 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %17 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin, align 8
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout, align 8
  call void @compute_antinout_edge(%struct.simple_bitmap_def** %16, %struct.simple_bitmap_def** %17, %struct.simple_bitmap_def** %18, %struct.simple_bitmap_def** %19)
  %20 = load i32, i32* %num_edges, align 4
  %21 = load i32, i32* %n_exprs.addr, align 4
  %call6 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %20, i32 %21)
  store %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def*** %earliest, align 8
  %22 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %23 = load i32, i32* %n_exprs.addr, align 4
  %24 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin, align 8
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout, align 8
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout, align 8
  %27 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest, align 8
  call void @compute_earliest(%struct.edge_list* %22, i32 %23, %struct.simple_bitmap_def** %24, %struct.simple_bitmap_def** %25, %struct.simple_bitmap_def** %26, %struct.simple_bitmap_def** %27, %struct.simple_bitmap_def** %28)
  %29 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout, align 8
  %30 = bitcast %struct.simple_bitmap_def** %29 to i8*
  call void @free(i8* %30) #4
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin, align 8
  %32 = bitcast %struct.simple_bitmap_def** %31 to i8*
  call void @free(i8* %32) #4
  %33 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout, align 8
  %34 = bitcast %struct.simple_bitmap_def** %33 to i8*
  call void @free(i8* %34) #4
  %35 = load i32, i32* %num_edges, align 4
  %36 = load i32, i32* %n_exprs.addr, align 4
  %call7 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %35, i32 %36)
  store %struct.simple_bitmap_def** %call7, %struct.simple_bitmap_def*** %later, align 8
  %37 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %37, 1
  %38 = load i32, i32* %n_exprs.addr, align 4
  %call8 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %add, i32 %38)
  store %struct.simple_bitmap_def** %call8, %struct.simple_bitmap_def*** %laterin, align 8
  %39 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest, align 8
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %42 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later, align 8
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin, align 8
  call void @compute_laterin(%struct.edge_list* %39, %struct.simple_bitmap_def** %40, %struct.simple_bitmap_def** %41, %struct.simple_bitmap_def** %42, %struct.simple_bitmap_def** %43)
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest, align 8
  %45 = bitcast %struct.simple_bitmap_def** %44 to i8*
  call void @free(i8* %45) #4
  %46 = load i32, i32* %num_edges, align 4
  %47 = load i32, i32* %n_exprs.addr, align 4
  %call9 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %46, i32 %47)
  %48 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %insert.addr, align 8
  store %struct.simple_bitmap_def** %call9, %struct.simple_bitmap_def*** %48, align 8
  %49 = load i32, i32* @n_basic_blocks, align 4
  %50 = load i32, i32* %n_exprs.addr, align 4
  %call10 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %49, i32 %50)
  %51 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %delete.addr, align 8
  store %struct.simple_bitmap_def** %call10, %struct.simple_bitmap_def*** %51, align 8
  %52 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %53 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %54 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later, align 8
  %55 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin, align 8
  %56 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %insert.addr, align 8
  %57 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %56, align 8
  %58 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %delete.addr, align 8
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %58, align 8
  call void @compute_insert_delete(%struct.edge_list* %52, %struct.simple_bitmap_def** %53, %struct.simple_bitmap_def** %54, %struct.simple_bitmap_def** %55, %struct.simple_bitmap_def** %57, %struct.simple_bitmap_def** %59)
  %60 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin, align 8
  %61 = bitcast %struct.simple_bitmap_def** %60 to i8*
  call void @free(i8* %61) #4
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later, align 8
  %63 = bitcast %struct.simple_bitmap_def** %62 to i8*
  call void @free(i8* %63) #4
  %64 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  ret %struct.edge_list* %64
}

declare %struct.edge_list* @create_edge_list() #1

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

; Function Attrs: nounwind uwtable
define void @compute_available(%struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def** %avin) #0 {
entry:
  %avloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %avout.addr = alloca %struct.simple_bitmap_def**, align 8
  %avin.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %worklist = alloca %struct.basic_block_def**, align 8
  %qin = alloca %struct.basic_block_def**, align 8
  %qout = alloca %struct.basic_block_def**, align 8
  %qend = alloca %struct.basic_block_def**, align 8
  %qlen = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def** %avloc, %struct.simple_bitmap_def*** %avloc.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def*** %avout.addr, align 8
  store %struct.simple_bitmap_def** %avin, %struct.simple_bitmap_def*** %avin.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %qout, align 8
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %qin, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout.addr, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %2, i32 %3)
  store i32 0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %bb, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %9 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %9, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %9, align 8
  %10 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data4 to [1 x %struct.basic_block_def*]*
  %arrayidx6 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 %idxprom3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx6, align 8
  %13 = bitcast %struct.basic_block_def* %12 to i8*
  %14 = load i32, i32* %bb, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 10
  store i8* %13, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %bb, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %18, %struct.basic_block_def*** %qin, align 8
  %19 = load i32, i32* @n_basic_blocks, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %arrayidx12 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %20, i64 %idxprom11
  store %struct.basic_block_def** %arrayidx12, %struct.basic_block_def*** %qend, align 8
  %21 = load i32, i32* @n_basic_blocks, align 4
  store i32 %21, i32* %qlen, align 4
  %22 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %22, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.16, %for.end
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %23, null
  br i1 %tobool, label %for.body.14, label %for.end.17

for.body.14:                                      ; preds = %for.cond.13
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 3
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %aux15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 10
  store i8* bitcast ([2 x %struct.basic_block_def]* @entry_exit_blocks to i8*), i8** %aux15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 1
  %27 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %27, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.end.17:                                       ; preds = %for.cond.13
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %for.end.17
  %28 = load i32, i32* %qlen, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %29, i32 1
  store %struct.basic_block_def** %incdec.ptr19, %struct.basic_block_def*** %qout, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %29, align 8
  store %struct.basic_block_def* %30, %struct.basic_block_def** %b, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index, align 4
  store i32 %32, i32* %bb, align 4
  %33 = load i32, i32* %qlen, align 4
  %dec = add i32 %33, -1
  store i32 %dec, i32* %qlen, align 4
  %34 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %35 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp20 = icmp uge %struct.basic_block_def** %34, %35
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %36 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %36, %struct.basic_block_def*** %qout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 10
  %38 = load i8*, i8** %aux22, align 8
  %cmp23 = icmp eq i8* %38, bitcast ([2 x %struct.basic_block_def]* @entry_exit_blocks to i8*)
  br i1 %cmp23, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end
  %39 = load i32, i32* %bb, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avin.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %40, i64 %idxprom26
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx27, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %41)
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 10
  store i8* null, i8** %aux28, align 8
  %43 = load i32, i32* %bb, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avin.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom29
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx30, align 8
  %46 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout.addr, align 8
  %47 = load i32, i32* %bb, align 4
  call void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def* %45, %struct.simple_bitmap_def** %46, i32 %47)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.25
  %48 = load i32, i32* %bb, align 4
  %idxprom32 = sext i32 %48 to i64
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %49, i64 %idxprom32
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8
  %51 = load i32, i32* %bb, align 4
  %idxprom34 = sext i32 %51 to i64
  %52 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avloc.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %52, i64 %idxprom34
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx35, align 8
  %54 = load i32, i32* %bb, align 4
  %idxprom36 = sext i32 %54 to i64
  %55 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avin.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %55, i64 %idxprom36
  %56 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx37, align 8
  %57 = load i32, i32* %bb, align 4
  %idxprom38 = sext i32 %57 to i64
  %58 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %58, i64 %idxprom38
  %59 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx39, align 8
  %call40 = call i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %53, %struct.simple_bitmap_def* %56, %struct.simple_bitmap_def* %59)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.66

if.then.42:                                       ; preds = %if.end.31
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 5
  %61 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %61, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.63, %if.then.42
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool44 = icmp ne %struct.edge_def* %62, null
  br i1 %tobool44, label %for.body.45, label %for.end.65

for.body.45:                                      ; preds = %for.cond.43
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest46 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 3
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %dest46, align 8
  %aux47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 10
  %65 = load i8*, i8** %aux47, align 8
  %tobool48 = icmp ne i8* %65, null
  br i1 %tobool48, label %if.end.62, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.45
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %66, i32 0, i32 3
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %dest49, align 8
  %cmp50 = icmp ne %struct.basic_block_def* %67, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp50, label %if.then.52, label %if.end.62

if.then.52:                                       ; preds = %land.lhs.true
  %68 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i32 0, i32 3
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %dest53, align 8
  %70 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr54 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %70, i32 1
  store %struct.basic_block_def** %incdec.ptr54, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %69, %struct.basic_block_def** %70, align 8
  %71 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %72 = bitcast %struct.edge_def* %71 to i8*
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 3
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %dest55, align 8
  %aux56 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 10
  store i8* %72, i8** %aux56, align 8
  %75 = load i32, i32* %qlen, align 4
  %inc57 = add i32 %75, 1
  store i32 %inc57, i32* %qlen, align 4
  %76 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %77 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp58 = icmp uge %struct.basic_block_def** %76, %77
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.52
  %78 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %78, %struct.basic_block_def*** %qin, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true, %for.body.45
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %79 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 1
  %80 = load %struct.edge_def*, %struct.edge_def** %succ_next64, align 8
  store %struct.edge_def* %80, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.end.65:                                       ; preds = %for.cond.43
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %if.end.31
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @clear_aux_for_edges()
  call void @clear_aux_for_blocks()
  %81 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %82 = bitcast %struct.basic_block_def** %81 to i8*
  call void @free(i8* %82) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @compute_antinout_edge(%struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def** %antout) #0 {
entry:
  %antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %transp.addr = alloca %struct.simple_bitmap_def**, align 8
  %antin.addr = alloca %struct.simple_bitmap_def**, align 8
  %antout.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %worklist = alloca %struct.basic_block_def**, align 8
  %qin = alloca %struct.basic_block_def**, align 8
  %qout = alloca %struct.basic_block_def**, align 8
  %qend = alloca %struct.basic_block_def**, align 8
  %qlen = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def*** %antloc.addr, align 8
  store %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def*** %transp.addr, align 8
  store %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def*** %antin.addr, align 8
  store %struct.simple_bitmap_def** %antout, %struct.simple_bitmap_def*** %antout.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %qout, align 8
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %qin, align 8
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin.addr, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %2, i32 %3)
  %4 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %4, 1
  store i32 %sub, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %bb, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb2 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb2, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %9 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %9, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %9, align 8
  %10 = load i32, i32* %bb, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data4 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb5 = bitcast %union.varray_data_tag* %data4 to [1 x %struct.basic_block_def*]*
  %arrayidx6 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb5, i32 0, i64 %idxprom3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx6, align 8
  %13 = bitcast %struct.basic_block_def* %12 to i8*
  %14 = load i32, i32* %bb, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data8 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %15, i32 0, i32 4
  %bb9 = bitcast %union.varray_data_tag* %data8 to [1 x %struct.basic_block_def*]*
  %arrayidx10 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb9, i32 0, i64 %idxprom7
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx10, align 8
  %aux = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 10
  store i8* %13, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %bb, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %18, %struct.basic_block_def*** %qin, align 8
  %19 = load i32, i32* @n_basic_blocks, align 4
  %idxprom11 = sext i32 %19 to i64
  %20 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %arrayidx12 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %20, i64 %idxprom11
  store %struct.basic_block_def** %arrayidx12, %struct.basic_block_def*** %qend, align 8
  %21 = load i32, i32* @n_basic_blocks, align 4
  store i32 %21, i32* %qlen, align 4
  %22 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %22, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.16, %for.end
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %23, null
  br i1 %tobool, label %for.body.14, label %for.end.17

for.body.14:                                      ; preds = %for.cond.13
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 2
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %aux15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 10
  store i8* bitcast (%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1) to i8*), i8** %aux15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.14
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 0
  %27 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %27, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.end.17:                                       ; preds = %for.cond.13
  br label %while.cond

while.cond:                                       ; preds = %if.end.66, %for.end.17
  %28 = load i32, i32* %qlen, align 4
  %tobool18 = icmp ne i32 %28, 0
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %29, i32 1
  store %struct.basic_block_def** %incdec.ptr19, %struct.basic_block_def*** %qout, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %29, align 8
  store %struct.basic_block_def* %30, %struct.basic_block_def** %b, align 8
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index, align 4
  store i32 %32, i32* %bb, align 4
  %33 = load i32, i32* %qlen, align 4
  %dec20 = add i32 %33, -1
  store i32 %dec20, i32* %qlen, align 4
  %34 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %35 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp21 = icmp uge %struct.basic_block_def** %34, %35
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %36 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %36, %struct.basic_block_def*** %qout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 10
  %38 = load i8*, i8** %aux23, align 8
  %cmp24 = icmp eq i8* %38, bitcast (%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1) to i8*)
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.end
  %39 = load i32, i32* %bb, align 4
  %idxprom27 = sext i32 %39 to i64
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %40, i64 %idxprom27
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx28, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %41)
  br label %if.end.32

if.else:                                          ; preds = %if.end
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux29 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 10
  store i8* null, i8** %aux29, align 8
  %43 = load i32, i32* %bb, align 4
  %idxprom30 = sext i32 %43 to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom30
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx31, align 8
  %46 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin.addr, align 8
  %47 = load i32, i32* %bb, align 4
  call void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def* %45, %struct.simple_bitmap_def** %46, i32 %47)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else, %if.then.26
  %48 = load i32, i32* %bb, align 4
  %idxprom33 = sext i32 %48 to i64
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin.addr, align 8
  %arrayidx34 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %49, i64 %idxprom33
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx34, align 8
  %51 = load i32, i32* %bb, align 4
  %idxprom35 = sext i32 %51 to i64
  %52 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %52, i64 %idxprom35
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx36, align 8
  %54 = load i32, i32* %bb, align 4
  %idxprom37 = sext i32 %54 to i64
  %55 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %55, i64 %idxprom37
  %56 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx38, align 8
  %57 = load i32, i32* %bb, align 4
  %idxprom39 = sext i32 %57 to i64
  %58 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %58, i64 %idxprom39
  %59 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx40, align 8
  %call41 = call i32 @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %53, %struct.simple_bitmap_def* %56, %struct.simple_bitmap_def* %59)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.66

if.then.43:                                       ; preds = %if.end.32
  %60 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %60, i32 0, i32 4
  %61 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %61, %struct.edge_def** %e, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.63, %if.then.43
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool45 = icmp ne %struct.edge_def* %62, null
  br i1 %tobool45, label %for.body.46, label %for.end.65

for.body.46:                                      ; preds = %for.cond.44
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 2
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %src47, align 8
  %aux48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 10
  %65 = load i8*, i8** %aux48, align 8
  %tobool49 = icmp ne i8* %65, null
  br i1 %tobool49, label %if.end.62, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.46
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %66, i32 0, i32 2
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %src50, align 8
  %cmp51 = icmp ne %struct.basic_block_def* %67, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp51, label %if.then.53, label %if.end.62

if.then.53:                                       ; preds = %land.lhs.true
  %68 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %68, i32 0, i32 2
  %69 = load %struct.basic_block_def*, %struct.basic_block_def** %src54, align 8
  %70 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr55 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %70, i32 1
  store %struct.basic_block_def** %incdec.ptr55, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %69, %struct.basic_block_def** %70, align 8
  %71 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %72 = bitcast %struct.edge_def* %71 to i8*
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src56 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 2
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %src56, align 8
  %aux57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %74, i32 0, i32 10
  store i8* %72, i8** %aux57, align 8
  %75 = load i32, i32* %qlen, align 4
  %inc = add i32 %75, 1
  store i32 %inc, i32* %qlen, align 4
  %76 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %77 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp58 = icmp uge %struct.basic_block_def** %76, %77
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.then.53
  %78 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %78, %struct.basic_block_def*** %qin, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.then.53
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %land.lhs.true, %for.body.46
  br label %for.inc.63

for.inc.63:                                       ; preds = %if.end.62
  %79 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 0
  %80 = load %struct.edge_def*, %struct.edge_def** %pred_next64, align 8
  store %struct.edge_def* %80, %struct.edge_def** %e, align 8
  br label %for.cond.44

for.end.65:                                       ; preds = %for.cond.44
  br label %if.end.66

if.end.66:                                        ; preds = %for.end.65, %if.end.32
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @clear_aux_for_edges()
  call void @clear_aux_for_blocks()
  %81 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %82 = bitcast %struct.basic_block_def** %81 to i8*
  call void @free(i8* %82) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_earliest(%struct.edge_list* %edge_list, i32 %n_exprs, %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def** %antout, %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %earliest) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %n_exprs.addr = alloca i32, align 4
  %antin.addr = alloca %struct.simple_bitmap_def**, align 8
  %antout.addr = alloca %struct.simple_bitmap_def**, align 8
  %avout.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %earliest.addr = alloca %struct.simple_bitmap_def**, align 8
  %difference = alloca %struct.simple_bitmap_def*, align 8
  %temp_bitmap = alloca %struct.simple_bitmap_def*, align 8
  %x = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %pred = alloca %struct.basic_block_def*, align 8
  %succ = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  store %struct.simple_bitmap_def** %antin, %struct.simple_bitmap_def*** %antin.addr, align 8
  store %struct.simple_bitmap_def** %antout, %struct.simple_bitmap_def*** %antout.addr, align 8
  store %struct.simple_bitmap_def** %avout, %struct.simple_bitmap_def*** %avout.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.simple_bitmap_def** %earliest, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* %n_exprs.addr, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %difference, align 8
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3)
  store %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def** %temp_bitmap, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %7, i32 0, i32 2
  %8 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %8, i64 %idxprom
  %9 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %pred, align 8
  %11 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge4 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %12, i32 0, i32 2
  %13 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge4, align 8
  %arrayidx5 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %13, i64 %idxprom3
  %14 = load %struct.edge_def*, %struct.edge_def** %arrayidx5, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 3
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %15, %struct.basic_block_def** %succ, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %cmp6 = icmp eq %struct.basic_block_def* %16, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %18, i64 %idxprom7
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom9
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %19, %struct.simple_bitmap_def* %23)
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index11, align 4
  %cmp12 = icmp eq i32 %25, -2
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.else
  %26 = load i32, i32* %x, align 4
  %idxprom14 = sext i32 %26 to i64
  %27 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %27, i64 %idxprom14
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx15, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %28)
  br label %if.end

if.else.16:                                       ; preds = %if.else
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index17, align 4
  %idxprom18 = sext i32 %31 to i64
  %32 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antin.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %32, i64 %idxprom18
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx19, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %index20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index20, align 4
  %idxprom21 = sext i32 %35 to i64
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %avout.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %36, i64 %idxprom21
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %29, %struct.simple_bitmap_def* %33, %struct.simple_bitmap_def* %37)
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %index23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 11
  %40 = load i32, i32* %index23, align 4
  %idxprom24 = sext i32 %40 to i64
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antout.addr, align 8
  %arrayidx25 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %41, i64 %idxprom24
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx25, align 8
  call void @sbitmap_not(%struct.simple_bitmap_def* %38, %struct.simple_bitmap_def* %42)
  %43 = load i32, i32* %x, align 4
  %idxprom26 = sext i32 %43 to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom26
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx27, align 8
  %46 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index28, align 4
  %idxprom29 = sext i32 %48 to i64
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %arrayidx30 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %49, i64 %idxprom29
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx30, align 8
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %call31 = call i32 @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %45, %struct.simple_bitmap_def* %46, %struct.simple_bitmap_def* %50, %struct.simple_bitmap_def* %51)
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.13
  br label %if.end.32

if.end.32:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %52 = load i32, i32* %x, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %54 = bitcast %struct.simple_bitmap_def* %53 to i8*
  call void @free(i8* %54) #4
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %56 = bitcast %struct.simple_bitmap_def* %55 to i8*
  call void @free(i8* %56) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_laterin(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %earliest, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def** %laterin) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %earliest.addr = alloca %struct.simple_bitmap_def**, align 8
  %antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %later.addr = alloca %struct.simple_bitmap_def**, align 8
  %laterin.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %worklist = alloca %struct.basic_block_def**, align 8
  %qin = alloca %struct.basic_block_def**, align 8
  %qout = alloca %struct.basic_block_def**, align 8
  %qend = alloca %struct.basic_block_def**, align 8
  %qlen = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %b26 = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.simple_bitmap_def** %earliest, %struct.simple_bitmap_def*** %earliest.addr, align 8
  store %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def*** %antloc.addr, align 8
  store %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def*** %later.addr, align 8
  store %struct.simple_bitmap_def** %laterin, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %qout, align 8
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %qin, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv3 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv3 to i8*
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %9, i32 0, i32 2
  %10 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %10, i64 %idxprom
  %11 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 5
  store i8* %7, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %14 = load i32, i32* %num_edges, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %13, i32 %14)
  %15 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %16, null
  br i1 %tobool, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.4
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 5
  %18 = load i8*, i8** %aux6, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %19
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx7, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 5
  %23 = load i8*, i8** %aux8, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %24
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx9, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %21, %struct.simple_bitmap_def* %26)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 1
  %28 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %28, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  store i32 0, i32* %bb, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %for.end.11
  %29 = load i32, i32* %bb, align 4
  %30 = load i32, i32* @n_basic_blocks, align 4
  %cmp13 = icmp slt i32 %29, %30
  br i1 %cmp13, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.12
  %31 = load i32, i32* %bb, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %32, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom16
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  store %struct.basic_block_def* %33, %struct.basic_block_def** %b, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %35 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %35, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %34, %struct.basic_block_def** %35, align 8
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %37 = bitcast %struct.basic_block_def* %36 to i8*
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 10
  store i8* %37, i8** %aux19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %39 = load i32, i32* %bb, align 4
  %inc21 = add nsw i32 %39, 1
  store i32 %inc21, i32* %bb, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  %40 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %40, %struct.basic_block_def*** %qin, align 8
  %41 = load i32, i32* @n_basic_blocks, align 4
  %idxprom23 = sext i32 %41 to i64
  %42 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %arrayidx24 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %42, i64 %idxprom23
  store %struct.basic_block_def** %arrayidx24, %struct.basic_block_def*** %qend, align 8
  %43 = load i32, i32* @n_basic_blocks, align 4
  store i32 %43, i32* %qlen, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.83, %for.end.22
  %44 = load i32, i32* %qlen, align 4
  %tobool25 = icmp ne i32 %44, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %incdec.ptr27 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %45, i32 1
  store %struct.basic_block_def** %incdec.ptr27, %struct.basic_block_def*** %qout, align 8
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %45, align 8
  store %struct.basic_block_def* %46, %struct.basic_block_def** %b26, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %b26, align 8
  %aux28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 10
  store i8* null, i8** %aux28, align 8
  %48 = load i32, i32* %qlen, align 4
  %dec = add i32 %48, -1
  store i32 %dec, i32* %qlen, align 4
  %49 = load %struct.basic_block_def**, %struct.basic_block_def*** %qout, align 8
  %50 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp29 = icmp uge %struct.basic_block_def** %49, %50
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %51 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %51, %struct.basic_block_def*** %qout, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %b26, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 11
  %53 = load i32, i32* %index, align 4
  store i32 %53, i32* %bb, align 4
  %54 = load i32, i32* %bb, align 4
  %idxprom31 = sext i32 %54 to i64
  %55 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx32 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %55, i64 %idxprom31
  %56 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx32, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %56)
  %57 = load %struct.basic_block_def*, %struct.basic_block_def** %b26, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %57, i32 0, i32 4
  %58 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %58, %struct.edge_def** %e, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.44, %if.end
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp34 = icmp ne %struct.edge_def* %59, null
  br i1 %cmp34, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.33
  %60 = load i32, i32* %bb, align 4
  %idxprom37 = sext i32 %60 to i64
  %61 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %61, i64 %idxprom37
  %62 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx38, align 8
  %63 = load i32, i32* %bb, align 4
  %idxprom39 = sext i32 %63 to i64
  %64 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx40 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %64, i64 %idxprom39
  %65 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx40, align 8
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux41 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %66, i32 0, i32 5
  %67 = load i8*, i8** %aux41, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx42 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %69, i64 %68
  %70 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx42, align 8
  %call43 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %62, %struct.simple_bitmap_def* %65, %struct.simple_bitmap_def* %70)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.36
  %71 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 0
  %72 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %72, %struct.edge_def** %e, align 8
  br label %for.cond.33

for.end.45:                                       ; preds = %for.cond.33
  %73 = load %struct.basic_block_def*, %struct.basic_block_def** %b26, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %73, i32 0, i32 5
  %74 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %74, %struct.edge_def** %e, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.81, %for.end.45
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp47 = icmp ne %struct.edge_def* %75, null
  br i1 %cmp47, label %for.body.49, label %for.end.83

for.body.49:                                      ; preds = %for.cond.46
  %76 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux50 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %76, i32 0, i32 5
  %77 = load i8*, i8** %aux50, align 8
  %78 = ptrtoint i8* %77 to i64
  %79 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %79, i64 %78
  %80 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx51, align 8
  %81 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %81, i32 0, i32 5
  %82 = load i8*, i8** %aux52, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %earliest.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %84, i64 %83
  %85 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx53, align 8
  %86 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %86, i32 0, i32 2
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 11
  %88 = load i32, i32* %index54, align 4
  %idxprom55 = sext i32 %88 to i64
  %89 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx56 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %89, i64 %idxprom55
  %90 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx56, align 8
  %91 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 2
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %src57, align 8
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 11
  %93 = load i32, i32* %index58, align 4
  %idxprom59 = sext i32 %93 to i64
  %94 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %arrayidx60 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %94, i64 %idxprom59
  %95 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx60, align 8
  %call61 = call i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %80, %struct.simple_bitmap_def* %85, %struct.simple_bitmap_def* %90, %struct.simple_bitmap_def* %95)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %for.body.49
  %96 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %96, i32 0, i32 3
  %97 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp63 = icmp ne %struct.basic_block_def* %97, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.80

land.lhs.true.65:                                 ; preds = %land.lhs.true
  %98 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest66 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %98, i32 0, i32 3
  %99 = load %struct.basic_block_def*, %struct.basic_block_def** %dest66, align 8
  %aux67 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %99, i32 0, i32 10
  %100 = load i8*, i8** %aux67, align 8
  %cmp68 = icmp eq i8* %100, null
  br i1 %cmp68, label %if.then.70, label %if.end.80

if.then.70:                                       ; preds = %land.lhs.true.65
  %101 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 3
  %102 = load %struct.basic_block_def*, %struct.basic_block_def** %dest71, align 8
  %103 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %incdec.ptr72 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %103, i32 1
  store %struct.basic_block_def** %incdec.ptr72, %struct.basic_block_def*** %qin, align 8
  store %struct.basic_block_def* %102, %struct.basic_block_def** %103, align 8
  %104 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %105 = bitcast %struct.edge_def* %104 to i8*
  %106 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %106, i32 0, i32 3
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %dest73, align 8
  %aux74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 10
  store i8* %105, i8** %aux74, align 8
  %108 = load i32, i32* %qlen, align 4
  %inc75 = add i32 %108, 1
  store i32 %inc75, i32* %qlen, align 4
  %109 = load %struct.basic_block_def**, %struct.basic_block_def*** %qin, align 8
  %110 = load %struct.basic_block_def**, %struct.basic_block_def*** %qend, align 8
  %cmp76 = icmp uge %struct.basic_block_def** %109, %110
  br i1 %cmp76, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.70
  %111 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %111, %struct.basic_block_def*** %qin, align 8
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.78, %if.then.70
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true.65, %land.lhs.true, %for.body.49
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %112 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next82 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %112, i32 0, i32 1
  %113 = load %struct.edge_def*, %struct.edge_def** %succ_next82, align 8
  store %struct.edge_def* %113, %struct.edge_def** %e, align 8
  br label %for.cond.46

for.end.83:                                       ; preds = %for.cond.46
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %114 = load i32, i32* @n_basic_blocks, align 4
  %idxprom84 = sext i32 %114 to i64
  %115 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %115, i64 %idxprom84
  %116 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx85, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %116)
  %117 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %117, %struct.edge_def** %e, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.97, %while.end
  %118 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp87 = icmp ne %struct.edge_def* %118, null
  br i1 %cmp87, label %for.body.89, label %for.end.99

for.body.89:                                      ; preds = %for.cond.86
  %119 = load i32, i32* @n_basic_blocks, align 4
  %idxprom90 = sext i32 %119 to i64
  %120 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx91 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %120, i64 %idxprom90
  %121 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx91, align 8
  %122 = load i32, i32* @n_basic_blocks, align 4
  %idxprom92 = sext i32 %122 to i64
  %123 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %123, i64 %idxprom92
  %124 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx93, align 8
  %125 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %125, i32 0, i32 5
  %126 = load i8*, i8** %aux94, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx95 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %128, i64 %127
  %129 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx95, align 8
  %call96 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %121, %struct.simple_bitmap_def* %124, %struct.simple_bitmap_def* %129)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.89
  %130 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next98 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %130, i32 0, i32 0
  %131 = load %struct.edge_def*, %struct.edge_def** %pred_next98, align 8
  store %struct.edge_def* %131, %struct.edge_def** %e, align 8
  br label %for.cond.86

for.end.99:                                       ; preds = %for.cond.86
  call void @clear_aux_for_edges()
  %132 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %133 = bitcast %struct.basic_block_def** %132 to i8*
  call void @free(i8* %133) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_insert_delete(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def** %laterin, %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def** %delete) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %later.addr = alloca %struct.simple_bitmap_def**, align 8
  %laterin.addr = alloca %struct.simple_bitmap_def**, align 8
  %insert.addr = alloca %struct.simple_bitmap_def**, align 8
  %delete.addr = alloca %struct.simple_bitmap_def**, align 8
  %x = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.simple_bitmap_def** %antloc, %struct.simple_bitmap_def*** %antloc.addr, align 8
  store %struct.simple_bitmap_def** %later, %struct.simple_bitmap_def*** %later.addr, align 8
  store %struct.simple_bitmap_def** %laterin, %struct.simple_bitmap_def*** %laterin.addr, align 8
  store %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def*** %insert.addr, align 8
  store %struct.simple_bitmap_def** %delete, %struct.simple_bitmap_def*** %delete.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %delete.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, i64 %idxprom
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %antloc.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom1
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %8 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom3
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %7, %struct.simple_bitmap_def* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.23, %for.end
  %12 = load i32, i32* %x, align 4
  %13 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %13, i32 0, i32 1
  %14 = load i32, i32* %num_edges, align 4
  %cmp6 = icmp slt i32 %12, %14
  br i1 %cmp6, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %16, i32 0, i32 2
  %17 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx9 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %17, i64 %idxprom8
  %18 = load %struct.edge_def*, %struct.edge_def** %arrayidx9, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 3
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %19, %struct.basic_block_def** %b, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %cmp10 = icmp eq %struct.basic_block_def* %20, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  %21 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom11
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx12, align 8
  %24 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %idxprom13
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %27 = load i32, i32* @n_basic_blocks, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom15
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %23, %struct.simple_bitmap_def* %26, %struct.simple_bitmap_def* %29)
  br label %if.end

if.else:                                          ; preds = %for.body.7
  %30 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %31, i64 %idxprom17
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx18, align 8
  %33 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %33 to i64
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %later.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %34, i64 %idxprom19
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 11
  %37 = load i32, i32* %index, align 4
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %laterin.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %38, i64 %idxprom21
  %39 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %32, %struct.simple_bitmap_def* %35, %struct.simple_bitmap_def* %39)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %40 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %40, 1
  store i32 %inc24, i32* %x, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  ret void
}

declare noalias i8* @xmalloc(i64) #1

declare void @sbitmap_vector_ones(%struct.simple_bitmap_def**, i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

declare void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) #1

declare i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @clear_aux_for_edges() #1

declare void @clear_aux_for_blocks() #1

; Function Attrs: nounwind uwtable
define %struct.edge_list* @pre_edge_rev_lcm(%struct._IO_FILE* %file, i32 %n_exprs, %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %st_antloc, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def*** %delete) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %n_exprs.addr = alloca i32, align 4
  %transp.addr = alloca %struct.simple_bitmap_def**, align 8
  %st_avloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %st_antloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %insert.addr = alloca %struct.simple_bitmap_def***, align 8
  %delete.addr = alloca %struct.simple_bitmap_def***, align 8
  %st_antin = alloca %struct.simple_bitmap_def**, align 8
  %st_antout = alloca %struct.simple_bitmap_def**, align 8
  %st_avout = alloca %struct.simple_bitmap_def**, align 8
  %st_avin = alloca %struct.simple_bitmap_def**, align 8
  %farthest = alloca %struct.simple_bitmap_def**, align 8
  %nearer = alloca %struct.simple_bitmap_def**, align 8
  %nearerout = alloca %struct.simple_bitmap_def**, align 8
  %edge_list = alloca %struct.edge_list*, align 8
  %num_edges = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  store %struct.simple_bitmap_def** %transp, %struct.simple_bitmap_def*** %transp.addr, align 8
  store %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  store %struct.simple_bitmap_def** %st_antloc, %struct.simple_bitmap_def*** %st_antloc.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.simple_bitmap_def*** %insert, %struct.simple_bitmap_def**** %insert.addr, align 8
  store %struct.simple_bitmap_def*** %delete, %struct.simple_bitmap_def**** %delete.addr, align 8
  %call = call %struct.edge_list* @create_edge_list()
  store %struct.edge_list* %call, %struct.edge_list** %edge_list, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %2, i32 %3)
  store %struct.simple_bitmap_def** %call2, %struct.simple_bitmap_def*** %st_antin, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %5 = load i32, i32* %n_exprs.addr, align 4
  %call3 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call3, %struct.simple_bitmap_def*** %st_antout, align 8
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antin, align 8
  %7 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %6, i32 %7)
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antout, align 8
  %9 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %8, i32 %9)
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antloc.addr, align 8
  %11 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %transp.addr, align 8
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antin, align 8
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antout, align 8
  call void @compute_antinout_edge(%struct.simple_bitmap_def** %10, %struct.simple_bitmap_def** %11, %struct.simple_bitmap_def** %12, %struct.simple_bitmap_def** %13)
  %14 = load i32, i32* @n_basic_blocks, align 4
  %15 = load i32, i32* %n_exprs.addr, align 4
  %call4 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %14, i32 %15)
  store %struct.simple_bitmap_def** %call4, %struct.simple_bitmap_def*** %st_avout, align 8
  %16 = load i32, i32* @n_basic_blocks, align 4
  %17 = load i32, i32* %n_exprs.addr, align 4
  %call5 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %16, i32 %17)
  store %struct.simple_bitmap_def** %call5, %struct.simple_bitmap_def*** %st_avin, align 8
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avout, align 8
  %21 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avin, align 8
  call void @compute_available(%struct.simple_bitmap_def** %18, %struct.simple_bitmap_def** %19, %struct.simple_bitmap_def** %20, %struct.simple_bitmap_def** %21)
  %22 = load i32, i32* %num_edges, align 4
  %23 = load i32, i32* %n_exprs.addr, align 4
  %call6 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %22, i32 %23)
  store %struct.simple_bitmap_def** %call6, %struct.simple_bitmap_def*** %farthest, align 8
  %24 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %25 = load i32, i32* %n_exprs.addr, align 4
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avout, align 8
  %27 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avin, align 8
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antin, align 8
  %29 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %30 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest, align 8
  call void @compute_farthest(%struct.edge_list* %24, i32 %25, %struct.simple_bitmap_def** %26, %struct.simple_bitmap_def** %27, %struct.simple_bitmap_def** %28, %struct.simple_bitmap_def** %29, %struct.simple_bitmap_def** %30)
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antin, align 8
  %32 = bitcast %struct.simple_bitmap_def** %31 to i8*
  call void @free(i8* %32) #4
  %33 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antout, align 8
  %34 = bitcast %struct.simple_bitmap_def** %33 to i8*
  call void @free(i8* %34) #4
  %35 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avin, align 8
  %36 = bitcast %struct.simple_bitmap_def** %35 to i8*
  call void @free(i8* %36) #4
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avout, align 8
  %38 = bitcast %struct.simple_bitmap_def** %37 to i8*
  call void @free(i8* %38) #4
  %39 = load i32, i32* %num_edges, align 4
  %40 = load i32, i32* %n_exprs.addr, align 4
  %call7 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %39, i32 %40)
  store %struct.simple_bitmap_def** %call7, %struct.simple_bitmap_def*** %nearer, align 8
  %41 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %41, 1
  %42 = load i32, i32* %n_exprs.addr, align 4
  %call8 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %add, i32 %42)
  store %struct.simple_bitmap_def** %call8, %struct.simple_bitmap_def*** %nearerout, align 8
  %43 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest, align 8
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  %46 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer, align 8
  %47 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout, align 8
  call void @compute_nearerout(%struct.edge_list* %43, %struct.simple_bitmap_def** %44, %struct.simple_bitmap_def** %45, %struct.simple_bitmap_def** %46, %struct.simple_bitmap_def** %47)
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest, align 8
  %49 = bitcast %struct.simple_bitmap_def** %48 to i8*
  call void @free(i8* %49) #4
  %50 = load i32, i32* %num_edges, align 4
  %51 = load i32, i32* %n_exprs.addr, align 4
  %call9 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %50, i32 %51)
  %52 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %insert.addr, align 8
  store %struct.simple_bitmap_def** %call9, %struct.simple_bitmap_def*** %52, align 8
  %53 = load i32, i32* @n_basic_blocks, align 4
  %54 = load i32, i32* %n_exprs.addr, align 4
  %call10 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %53, i32 %54)
  %55 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %delete.addr, align 8
  store %struct.simple_bitmap_def** %call10, %struct.simple_bitmap_def*** %55, align 8
  %56 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %57 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  %58 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer, align 8
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout, align 8
  %60 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %insert.addr, align 8
  %61 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %60, align 8
  %62 = load %struct.simple_bitmap_def***, %struct.simple_bitmap_def**** %delete.addr, align 8
  %63 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %62, align 8
  call void @compute_rev_insert_delete(%struct.edge_list* %56, %struct.simple_bitmap_def** %57, %struct.simple_bitmap_def** %58, %struct.simple_bitmap_def** %59, %struct.simple_bitmap_def** %61, %struct.simple_bitmap_def** %63)
  %64 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout, align 8
  %65 = bitcast %struct.simple_bitmap_def** %64 to i8*
  call void @free(i8* %65) #4
  %66 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer, align 8
  %67 = bitcast %struct.simple_bitmap_def** %66 to i8*
  call void @free(i8* %67) #4
  %68 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  ret %struct.edge_list* %68
}

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

; Function Attrs: nounwind uwtable
define internal void @compute_farthest(%struct.edge_list* %edge_list, i32 %n_exprs, %struct.simple_bitmap_def** %st_avout, %struct.simple_bitmap_def** %st_avin, %struct.simple_bitmap_def** %st_antin, %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def** %farthest) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %n_exprs.addr = alloca i32, align 4
  %st_avout.addr = alloca %struct.simple_bitmap_def**, align 8
  %st_avin.addr = alloca %struct.simple_bitmap_def**, align 8
  %st_antin.addr = alloca %struct.simple_bitmap_def**, align 8
  %kill.addr = alloca %struct.simple_bitmap_def**, align 8
  %farthest.addr = alloca %struct.simple_bitmap_def**, align 8
  %difference = alloca %struct.simple_bitmap_def*, align 8
  %temp_bitmap = alloca %struct.simple_bitmap_def*, align 8
  %x = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %pred = alloca %struct.basic_block_def*, align 8
  %succ = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store i32 %n_exprs, i32* %n_exprs.addr, align 4
  store %struct.simple_bitmap_def** %st_avout, %struct.simple_bitmap_def*** %st_avout.addr, align 8
  store %struct.simple_bitmap_def** %st_avin, %struct.simple_bitmap_def*** %st_avin.addr, align 8
  store %struct.simple_bitmap_def** %st_antin, %struct.simple_bitmap_def*** %st_antin.addr, align 8
  store %struct.simple_bitmap_def** %kill, %struct.simple_bitmap_def*** %kill.addr, align 8
  store %struct.simple_bitmap_def** %farthest, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* %n_exprs.addr, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %difference, align 8
  %3 = load i32, i32* %n_exprs.addr, align 4
  %call2 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3)
  store %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def** %temp_bitmap, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %x, align 4
  %5 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %7, i32 0, i32 2
  %8 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %8, i64 %idxprom
  %9 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %pred, align 8
  %11 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge4 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %12, i32 0, i32 2
  %13 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge4, align 8
  %arrayidx5 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %13, i64 %idxprom3
  %14 = load %struct.edge_def*, %struct.edge_def** %arrayidx5, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 3
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %15, %struct.basic_block_def** %succ, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %cmp6 = icmp eq %struct.basic_block_def* %16, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %17 = load i32, i32* %x, align 4
  %idxprom7 = sext i32 %17 to i64
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %18, i64 %idxprom7
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx8, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index, align 4
  %idxprom9 = sext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avout.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom9
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx10, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %19, %struct.simple_bitmap_def* %23)
  br label %if.end.31

if.else:                                          ; preds = %for.body
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %cmp11 = icmp eq %struct.basic_block_def* %24, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp11, label %if.then.12, label %if.else.15

if.then.12:                                       ; preds = %if.else
  %25 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %25 to i64
  %26 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %26, i64 %idxprom13
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %27)
  br label %if.end

if.else.15:                                       ; preds = %if.else
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %pred, align 8
  %index16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 11
  %30 = load i32, i32* %index16, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avout.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %31, i64 %idxprom17
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx18, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 11
  %34 = load i32, i32* %index19, align 4
  %idxprom20 = sext i32 %34 to i64
  %35 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_antin.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %35, i64 %idxprom20
  %36 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx21, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %28, %struct.simple_bitmap_def* %32, %struct.simple_bitmap_def* %36)
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 11
  %39 = load i32, i32* %index22, align 4
  %idxprom23 = sext i32 %39 to i64
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avin.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %40, i64 %idxprom23
  %41 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  call void @sbitmap_not(%struct.simple_bitmap_def* %37, %struct.simple_bitmap_def* %41)
  %42 = load i32, i32* %x, align 4
  %idxprom25 = sext i32 %42 to i64
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %43, i64 %idxprom25
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx26, align 8
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %succ, align 8
  %index27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 11
  %47 = load i32, i32* %index27, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %48, i64 %idxprom28
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx29, align 8
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %call30 = call i32 @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %44, %struct.simple_bitmap_def* %45, %struct.simple_bitmap_def* %49, %struct.simple_bitmap_def* %50)
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.12
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %51 = load i32, i32* %x, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %temp_bitmap, align 8
  %53 = bitcast %struct.simple_bitmap_def* %52 to i8*
  call void @free(i8* %53) #4
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %difference, align 8
  %55 = bitcast %struct.simple_bitmap_def* %54 to i8*
  call void @free(i8* %55) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_nearerout(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %farthest, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def** %nearerout) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %farthest.addr = alloca %struct.simple_bitmap_def**, align 8
  %st_avloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %nearer.addr = alloca %struct.simple_bitmap_def**, align 8
  %nearerout.addr = alloca %struct.simple_bitmap_def**, align 8
  %bb = alloca i32, align 4
  %num_edges = alloca i32, align 4
  %i = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %worklist = alloca %struct.basic_block_def**, align 8
  %tos = alloca %struct.basic_block_def**, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %b25 = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.simple_bitmap_def** %farthest, %struct.simple_bitmap_def*** %farthest.addr, align 8
  store %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  store %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def*** %nearer.addr, align 8
  store %struct.simple_bitmap_def** %nearerout, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %0, i32 0, i32 1
  %1 = load i32, i32* %num_edges1, align 4
  store i32 %1, i32* %num_edges, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %2, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %3 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %3, %struct.basic_block_def*** %tos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv3 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv3 to i8*
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %9, i32 0, i32 2
  %10 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %10, i64 %idxprom
  %11 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 5
  store i8* %7, i8** %aux, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %14 = load i32, i32* %num_edges, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %13, i32 %14)
  %15 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1, i32 4), align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %16, null
  br i1 %tobool, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.4
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 5
  %18 = load i8*, i8** %aux6, align 8
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %20, i64 %19
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx7, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 5
  %23 = load i8*, i8** %aux8, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %24
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx9, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %21, %struct.simple_bitmap_def* %26)
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.5
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 0
  %28 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %28, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  store i32 0, i32* %bb, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %for.end.11
  %29 = load i32, i32* %bb, align 4
  %30 = load i32, i32* @n_basic_blocks, align 4
  %cmp13 = icmp slt i32 %29, %30
  br i1 %cmp13, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.12
  %31 = load i32, i32* %bb, align 4
  %idxprom16 = sext i32 %31 to i64
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %32, i32 0, i32 4
  %bb17 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx18 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb17, i32 0, i64 %idxprom16
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx18, align 8
  store %struct.basic_block_def* %33, %struct.basic_block_def** %b, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %35 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %35, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %tos, align 8
  store %struct.basic_block_def* %34, %struct.basic_block_def** %35, align 8
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %37 = bitcast %struct.basic_block_def* %36 to i8*
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %aux19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 10
  store i8* %37, i8** %aux19, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %39 = load i32, i32* %bb, align 4
  %inc21 = add nsw i32 %39, 1
  store i32 %inc21, i32* %bb, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  br label %while.cond

while.cond:                                       ; preds = %for.end.73, %for.end.22
  %40 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %41 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %cmp23 = icmp ne %struct.basic_block_def** %40, %41
  br i1 %cmp23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr26 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %42, i32 -1
  store %struct.basic_block_def** %incdec.ptr26, %struct.basic_block_def*** %tos, align 8
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr26, align 8
  store %struct.basic_block_def* %43, %struct.basic_block_def** %b25, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %b25, align 8
  %aux27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 10
  store i8* null, i8** %aux27, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %b25, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 11
  %46 = load i32, i32* %index, align 4
  store i32 %46, i32* %bb, align 4
  %47 = load i32, i32* %bb, align 4
  %idxprom28 = sext i32 %47 to i64
  %48 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx29 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %48, i64 %idxprom28
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx29, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %49)
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %b25, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 5
  %51 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %51, %struct.edge_def** %e, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.41, %while.body
  %52 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp31 = icmp ne %struct.edge_def* %52, null
  br i1 %cmp31, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %for.cond.30
  %53 = load i32, i32* %bb, align 4
  %idxprom34 = sext i32 %53 to i64
  %54 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %54, i64 %idxprom34
  %55 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx35, align 8
  %56 = load i32, i32* %bb, align 4
  %idxprom36 = sext i32 %56 to i64
  %57 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx37 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %57, i64 %idxprom36
  %58 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx37, align 8
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux38 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %59, i32 0, i32 5
  %60 = load i8*, i8** %aux38, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx39 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %62, i64 %61
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx39, align 8
  %call40 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %55, %struct.simple_bitmap_def* %58, %struct.simple_bitmap_def* %63)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.33
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 1
  %65 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %65, %struct.edge_def** %e, align 8
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %b25, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 4
  %67 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %67, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.71, %for.end.42
  %68 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp44 = icmp ne %struct.edge_def* %68, null
  br i1 %cmp44, label %for.body.46, label %for.end.73

for.body.46:                                      ; preds = %for.cond.43
  %69 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 5
  %70 = load i8*, i8** %aux47, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx48 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %72, i64 %71
  %73 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx48, align 8
  %74 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux49 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 5
  %75 = load i8*, i8** %aux49, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %farthest.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %77, i64 %76
  %78 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx50, align 8
  %79 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %79, i32 0, i32 3
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %80, i32 0, i32 11
  %81 = load i32, i32* %index51, align 4
  %idxprom52 = sext i32 %81 to i64
  %82 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %82, i64 %idxprom52
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx53, align 8
  %84 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %84, i32 0, i32 3
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %dest54, align 8
  %index55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i32 0, i32 11
  %86 = load i32, i32* %index55, align 4
  %idxprom56 = sext i32 %86 to i64
  %87 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  %arrayidx57 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %87, i64 %idxprom56
  %88 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx57, align 8
  %call58 = call i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %73, %struct.simple_bitmap_def* %78, %struct.simple_bitmap_def* %83, %struct.simple_bitmap_def* %88)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.46
  %89 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %89, i32 0, i32 2
  %90 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp60 = icmp ne %struct.basic_block_def* %90, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp60, label %land.lhs.true.62, label %if.end

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %91 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 2
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %src63, align 8
  %aux64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 10
  %93 = load i8*, i8** %aux64, align 8
  %cmp65 = icmp eq i8* %93, null
  br i1 %cmp65, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.62
  %94 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src67 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 2
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %src67, align 8
  %96 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr68 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %96, i32 1
  store %struct.basic_block_def** %incdec.ptr68, %struct.basic_block_def*** %tos, align 8
  store %struct.basic_block_def* %95, %struct.basic_block_def** %96, align 8
  %97 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %98 = bitcast %struct.edge_def* %97 to i8*
  %99 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src69 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %99, i32 0, i32 2
  %100 = load %struct.basic_block_def*, %struct.basic_block_def** %src69, align 8
  %aux70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %100, i32 0, i32 10
  store i8* %98, i8** %aux70, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.62, %land.lhs.true, %for.body.46
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end
  %101 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next72 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %101, i32 0, i32 0
  %102 = load %struct.edge_def*, %struct.edge_def** %pred_next72, align 8
  store %struct.edge_def* %102, %struct.edge_def** %e, align 8
  br label %for.cond.43

for.end.73:                                       ; preds = %for.cond.43
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %103 = load i32, i32* @n_basic_blocks, align 4
  %idxprom74 = sext i32 %103 to i64
  %104 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx75 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %104, i64 %idxprom74
  %105 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx75, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %105)
  %106 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %106, %struct.edge_def** %e, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.87, %while.end
  %107 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp77 = icmp ne %struct.edge_def* %107, null
  br i1 %cmp77, label %for.body.79, label %for.end.89

for.body.79:                                      ; preds = %for.cond.76
  %108 = load i32, i32* @n_basic_blocks, align 4
  %idxprom80 = sext i32 %108 to i64
  %109 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %109, i64 %idxprom80
  %110 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx81, align 8
  %111 = load i32, i32* @n_basic_blocks, align 4
  %idxprom82 = sext i32 %111 to i64
  %112 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx83 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %112, i64 %idxprom82
  %113 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx83, align 8
  %114 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux84 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %114, i32 0, i32 5
  %115 = load i8*, i8** %aux84, align 8
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %117, i64 %116
  %118 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx85, align 8
  %call86 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %110, %struct.simple_bitmap_def* %113, %struct.simple_bitmap_def* %118)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.79
  %119 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next88 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %119, i32 0, i32 1
  %120 = load %struct.edge_def*, %struct.edge_def** %succ_next88, align 8
  store %struct.edge_def* %120, %struct.edge_def** %e, align 8
  br label %for.cond.76

for.end.89:                                       ; preds = %for.cond.76
  call void @clear_aux_for_edges()
  %121 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %122 = bitcast %struct.basic_block_def** %121 to i8*
  call void @free(i8* %122) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_rev_insert_delete(%struct.edge_list* %edge_list, %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def** %nearerout, %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def** %delete) #0 {
entry:
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %st_avloc.addr = alloca %struct.simple_bitmap_def**, align 8
  %nearer.addr = alloca %struct.simple_bitmap_def**, align 8
  %nearerout.addr = alloca %struct.simple_bitmap_def**, align 8
  %insert.addr = alloca %struct.simple_bitmap_def**, align 8
  %delete.addr = alloca %struct.simple_bitmap_def**, align 8
  %x = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.simple_bitmap_def** %st_avloc, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  store %struct.simple_bitmap_def** %nearer, %struct.simple_bitmap_def*** %nearer.addr, align 8
  store %struct.simple_bitmap_def** %nearerout, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  store %struct.simple_bitmap_def** %insert, %struct.simple_bitmap_def*** %insert.addr, align 8
  store %struct.simple_bitmap_def** %delete, %struct.simple_bitmap_def*** %delete.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %delete.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %3, i64 %idxprom
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %5 = load i32, i32* %x, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %st_avloc.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom1
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %8 = load i32, i32* %x, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom3
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %4, %struct.simple_bitmap_def* %7, %struct.simple_bitmap_def* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %x, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %x, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.23, %for.end
  %12 = load i32, i32* %x, align 4
  %13 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %13, i32 0, i32 1
  %14 = load i32, i32* %num_edges, align 4
  %cmp6 = icmp slt i32 %12, %14
  br i1 %cmp6, label %for.body.7, label %for.end.25

for.body.7:                                       ; preds = %for.cond.5
  %15 = load i32, i32* %x, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %16, i32 0, i32 2
  %17 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx9 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %17, i64 %idxprom8
  %18 = load %struct.edge_def*, %struct.edge_def** %arrayidx9, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 2
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %19, %struct.basic_block_def** %b, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %cmp10 = icmp eq %struct.basic_block_def* %20, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.7
  %21 = load i32, i32* %x, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom11
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx12, align 8
  %24 = load i32, i32* %x, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %idxprom13
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %27 = load i32, i32* @n_basic_blocks, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %28, i64 %idxprom15
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx16, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %23, %struct.simple_bitmap_def* %26, %struct.simple_bitmap_def* %29)
  br label %if.end

if.else:                                          ; preds = %for.body.7
  %30 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %insert.addr, align 8
  %arrayidx18 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %31, i64 %idxprom17
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx18, align 8
  %33 = load i32, i32* %x, align 4
  %idxprom19 = sext i32 %33 to i64
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearer.addr, align 8
  %arrayidx20 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %34, i64 %idxprom19
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx20, align 8
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 11
  %37 = load i32, i32* %index, align 4
  %idxprom21 = sext i32 %37 to i64
  %38 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %nearerout.addr, align 8
  %arrayidx22 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %38, i64 %idxprom21
  %39 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx22, align 8
  call void @sbitmap_difference(%struct.simple_bitmap_def* %32, %struct.simple_bitmap_def* %35, %struct.simple_bitmap_def* %39)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %40 = load i32, i32* %x, align 4
  %inc24 = add nsw i32 %40, 1
  store i32 %inc24, i32* %x, align 4
  br label %for.cond.5

for.end.25:                                       ; preds = %for.cond.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @optimize_mode_switching(%struct._IO_FILE* %file) #0 {
entry:
  %retval = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %bb = alloca i32, align 4
  %e = alloca i32, align 4
  %need_commit = alloca i32, align 4
  %kill = alloca %struct.simple_bitmap_def**, align 8
  %edge_list = alloca %struct.edge_list*, align 8
  %entity_map = alloca [1 x i32], align 4
  %bb_info = alloca [1 x %struct.bb_info*], align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n_entities = alloca i32, align 4
  %max_num_modes = alloca i32, align 4
  %emited = alloca i8, align 1
  %e18 = alloca i32, align 4
  %no_mode = alloca i32, align 4
  %info = alloca %struct.bb_info*, align 8
  %ptr = alloca %struct.seginfo*, align 8
  %last_mode = alloca i32, align 4
  %live_now = alloca i64, align 8
  %mode = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %current_mode = alloca [1 x i32], align 4
  %m = alloca i32, align 4
  %info182 = alloca %struct.bb_info*, align 8
  %no_mode246 = alloca i32, align 4
  %eg = alloca %struct.edge_def*, align 8
  %mode258 = alloca i32, align 4
  %src_bb = alloca %struct.basic_block_def*, align 8
  %live_at_edge = alloca i64, align 8
  %mode_set = alloca %struct.rtx_def*, align 8
  %no_mode381 = alloca i32, align 4
  %ptr391 = alloca %struct.seginfo*, align 8
  %next = alloca %struct.seginfo*, align 8
  %mode_set405 = alloca %struct.rtx_def*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 0, i32* %need_commit, align 4
  store i32 0, i32* %max_num_modes, align 4
  store i8 0, i8* %emited, align 1
  store i32 0, i32* %e, align 4
  store i32 0, i32* %n_entities, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %e, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 16)
  %2 = bitcast i8* %call to %struct.bb_info*
  %3 = load i32, i32* %n_entities, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom
  store %struct.bb_info* %2, %struct.bb_info** %arrayidx, align 8
  %4 = load i32, i32* %e, align 4
  %5 = load i32, i32* %n_entities, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %n_entities, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [1 x i32], [1 x i32]* %entity_map, i32 0, i64 %idxprom1
  store i32 %4, i32* %arrayidx2, align 4
  %6 = load i32, i32* %e, align 4
  %idxprom3 = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [1 x i32], [1 x i32]* @optimize_mode_switching.num_modes, i32 0, i64 %idxprom3
  %7 = load i32, i32* %arrayidx4, align 4
  %8 = load i32, i32* %max_num_modes, align 4
  %cmp5 = icmp sgt i32 %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %e, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [1 x i32], [1 x i32]* @optimize_mode_switching.num_modes, i32 0, i64 %idxprom7
  %10 = load i32, i32* %arrayidx8, align 4
  store i32 %10, i32* %max_num_modes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %e, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %e, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %n_entities, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %for.end
  %13 = load i32, i32* @n_basic_blocks, align 4
  %14 = load i32, i32* %n_entities, align 4
  %call11 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %13, i32 %14)
  store %struct.simple_bitmap_def** %call11, %struct.simple_bitmap_def*** @antic, align 8
  %15 = load i32, i32* @n_basic_blocks, align 4
  %16 = load i32, i32* %n_entities, align 4
  %call12 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %15, i32 %16)
  store %struct.simple_bitmap_def** %call12, %struct.simple_bitmap_def*** @transp, align 8
  %17 = load i32, i32* @n_basic_blocks, align 4
  %18 = load i32, i32* %n_entities, align 4
  %call13 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %17, i32 %18)
  store %struct.simple_bitmap_def** %call13, %struct.simple_bitmap_def*** @comp, align 8
  %19 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %20 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_ones(%struct.simple_bitmap_def** %19, i32 %20)
  %21 = load i32, i32* %n_entities, align 4
  %sub = sub nsw i32 %21, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.167, %if.end.10
  %22 = load i32, i32* %j, align 4
  %cmp15 = icmp sge i32 %22, 0
  br i1 %cmp15, label %for.body.17, label %for.end.169

for.body.17:                                      ; preds = %for.cond.14
  %23 = load i32, i32* %j, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [1 x i32], [1 x i32]* %entity_map, i32 0, i64 %idxprom19
  %24 = load i32, i32* %arrayidx20, align 4
  store i32 %24, i32* %e18, align 4
  %25 = load i32, i32* %e18, align 4
  %idxprom21 = sext i32 %25 to i64
  %arrayidx22 = getelementptr inbounds [1 x i32], [1 x i32]* @optimize_mode_switching.num_modes, i32 0, i64 %idxprom21
  %26 = load i32, i32* %arrayidx22, align 4
  store i32 %26, i32* %no_mode, align 4
  %27 = load i32, i32* %j, align 4
  %idxprom23 = sext i32 %27 to i64
  %arrayidx24 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom23
  %28 = load %struct.bb_info*, %struct.bb_info** %arrayidx24, align 8
  store %struct.bb_info* %28, %struct.bb_info** %info, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.164, %for.body.17
  %29 = load i32, i32* %bb, align 4
  %30 = load i32, i32* @n_basic_blocks, align 4
  %cmp26 = icmp slt i32 %29, %30
  br i1 %cmp26, label %for.body.28, label %for.end.166

for.body.28:                                      ; preds = %for.cond.25
  %31 = load i32, i32* %no_mode, align 4
  store i32 %31, i32* %last_mode, align 4
  br label %do.body

do.body:                                          ; preds = %for.body.28
  store i64 0, i64* %live_now, align 8
  %32 = load i32, i32* %bb, align 4
  %idxprom29 = sext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 4
  %bb30 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx31 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb30, i32 0, i64 %idxprom29
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx31, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 8
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  call void @reg_set_to_hard_reg_set(i64* %live_now, %struct.bitmap_head_def* %35)
  br label %do.end

do.end:                                           ; preds = %do.body
  %36 = load i32, i32* %bb, align 4
  %idxprom32 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data33 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %bb34 = bitcast %union.varray_data_tag* %data33 to [1 x %struct.basic_block_def*]*
  %arrayidx35 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb34, i32 0, i64 %idxprom32
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx35, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 0
  %39 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %insn, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.150, %do.end
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp37 = icmp ne %struct.rtx_def* %40, null
  br i1 %cmp37, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.36
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %42 = load i32, i32* %bb, align 4
  %idxprom39 = sext i32 %42 to i64
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data40 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %bb41 = bitcast %union.varray_data_tag* %data40 to [1 x %struct.basic_block_def*]*
  %arrayidx42 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb41, i32 0, i64 %idxprom39
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx42, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 1
  %45 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp44 = icmp ne %struct.rtx_def* %41, %46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.36
  %47 = phi i1 [ false, %for.cond.36 ], [ %cmp44, %land.rhs ]
  br i1 %47, label %for.body.46, label %for.end.154

for.body.46:                                      ; preds = %land.end
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load = load i32, i32* %49, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom47 = sext i32 %bf.clear to i64
  %arrayidx48 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom47
  %50 = load i8, i8* %arrayidx48, align 1
  %conv49 = sext i8 %50 to i32
  %cmp50 = icmp eq i32 %conv49, 105
  br i1 %cmp50, label %if.then.52, label %if.end.149

if.then.52:                                       ; preds = %for.body.46
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load53 = load i32, i32* %52, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 34
  br i1 %cmp55, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.52
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load57 = load i32, i32* %54, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 32
  br i1 %cmp59, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 3
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %call64 = call i32 @asm_noperands(%struct.rtx_def* %56)
  %cmp65 = icmp sge i32 %call64, 0
  br i1 %cmp65, label %cond.true, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 3
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load71 = load i32, i32* %59, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 40
  br i1 %cmp73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.67, %land.lhs.true, %if.then.52
  br label %cond.end.91

cond.false:                                       ; preds = %lor.lhs.false.67, %lor.lhs.false
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %61 = load i32, i32* %rtint, align 4
  %cmp77 = icmp sge i32 %61, 0
  br i1 %cmp77, label %cond.true.79, label %cond.false.83

cond.true.79:                                     ; preds = %cond.false
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 4
  %rtint82 = bitcast %union.rtunion_def* %arrayidx81 to i32*
  %63 = load i32, i32* %rtint82, align 4
  br label %cond.end

cond.false.83:                                    ; preds = %cond.false
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call84 = call i32 @recog_memoized_1(%struct.rtx_def* %64)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.83, %cond.true.79
  %cond = phi i32 [ %63, %cond.true.79 ], [ %call84, %cond.false.83 ]
  %cmp85 = icmp slt i32 %cond, 0
  br i1 %cmp85, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.end
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call87 = call i32 @get_attr_type(%struct.rtx_def* %65)
  %cmp88 = icmp ne i32 %call87, 35
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.end
  %66 = phi i1 [ true, %cond.end ], [ %cmp88, %lor.rhs ]
  %cond90 = select i1 %66, i32 2, i32 0
  br label %cond.end.91

cond.end.91:                                      ; preds = %lor.end, %cond.true
  %cond92 = phi i32 [ 1, %cond.true ], [ %cond90, %lor.end ]
  store i32 %cond92, i32* %mode, align 4
  %67 = load i32, i32* %mode, align 4
  %68 = load i32, i32* %no_mode, align 4
  %cmp93 = icmp ne i32 %67, %68
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.104

land.lhs.true.95:                                 ; preds = %cond.end.91
  %69 = load i32, i32* %mode, align 4
  %70 = load i32, i32* %last_mode, align 4
  %cmp96 = icmp ne i32 %69, %70
  br i1 %cmp96, label %if.then.98, label %if.end.104

if.then.98:                                       ; preds = %land.lhs.true.95
  %71 = load i32, i32* %mode, align 4
  store i32 %71, i32* %last_mode, align 4
  %72 = load i32, i32* %mode, align 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %74 = load i32, i32* %bb, align 4
  %75 = load i64, i64* %live_now, align 8
  %call99 = call %struct.seginfo* @new_seginfo(i32 %72, %struct.rtx_def* %73, i32 %74, i64 %75)
  store %struct.seginfo* %call99, %struct.seginfo** %ptr, align 8
  %76 = load %struct.bb_info*, %struct.bb_info** %info, align 8
  %77 = load i32, i32* %bb, align 4
  %idx.ext = sext i32 %77 to i64
  %add.ptr = getelementptr inbounds %struct.bb_info, %struct.bb_info* %76, i64 %idx.ext
  %78 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  call void @add_seginfo(%struct.bb_info* %add.ptr, %struct.seginfo* %78)
  %79 = load i32, i32* %j, align 4
  %rem = urem i32 %79, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %80 = load i32, i32* %j, align 4
  %div = udiv i32 %80, 64
  %idxprom100 = zext i32 %div to i64
  %81 = load i32, i32* %bb, align 4
  %idxprom101 = sext i32 %81 to i64
  %82 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx102 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %82, i64 %idxprom101
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx102, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %83, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom100
  %84 = load i64, i64* %arrayidx103, align 8
  %and = and i64 %84, %neg
  store i64 %and, i64* %arrayidx103, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.98, %land.lhs.true.95, %cond.end.91
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 6
  %rtx107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx107, align 8
  store %struct.rtx_def* %86, %struct.rtx_def** %link, align 8
  br label %for.cond.108

for.cond.108:                                     ; preds = %for.inc.120, %if.end.104
  %87 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool109 = icmp ne %struct.rtx_def* %87, null
  br i1 %tobool109, label %for.body.110, label %for.end.124

for.body.110:                                     ; preds = %for.cond.108
  %88 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load111 = load i32, i32* %89, align 8
  %bf.lshr = lshr i32 %bf.load111, 16
  %bf.clear112 = and i32 %bf.lshr, 255
  %cmp113 = icmp eq i32 %bf.clear112, 1
  br i1 %cmp113, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %for.body.110
  %90 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %92 = load i64, i64* %live_now, align 8
  call void @reg_dies(%struct.rtx_def* %91, i64 %92)
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %for.body.110
  br label %for.inc.120

for.inc.120:                                      ; preds = %if.end.119
  %93 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 1
  %rtx123 = bitcast %union.rtunion_def* %arrayidx122 to %struct.rtx_def**
  %94 = load %struct.rtx_def*, %struct.rtx_def** %rtx123, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %link, align 8
  br label %for.cond.108

for.end.124:                                      ; preds = %for.cond.108
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 3
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %97 = bitcast i64* %live_now to i8*
  call void @note_stores(%struct.rtx_def* %96, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @reg_becomes_live, i8* %97)
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 6
  %rtx130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtx_def**
  %99 = load %struct.rtx_def*, %struct.rtx_def** %rtx130, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %link, align 8
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.144, %for.end.124
  %100 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool132 = icmp ne %struct.rtx_def* %100, null
  br i1 %tobool132, label %for.body.133, label %for.end.148

for.body.133:                                     ; preds = %for.cond.131
  %101 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load134 = load i32, i32* %102, align 8
  %bf.lshr135 = lshr i32 %bf.load134, 16
  %bf.clear136 = and i32 %bf.lshr135, 255
  %cmp137 = icmp eq i32 %bf.clear136, 10
  br i1 %cmp137, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %for.body.133
  %103 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 0
  %rtx142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx142, align 8
  %105 = load i64, i64* %live_now, align 8
  call void @reg_dies(%struct.rtx_def* %104, i64 %105)
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.139, %for.body.133
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %106 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 1
  %rtx147 = bitcast %union.rtunion_def* %arrayidx146 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx147, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %link, align 8
  br label %for.cond.131

for.end.148:                                      ; preds = %for.cond.131
  br label %if.end.149

if.end.149:                                       ; preds = %for.end.148, %for.body.46
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %108 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld151 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld151, i32 0, i64 2
  %rtx153 = bitcast %union.rtunion_def* %arrayidx152 to %struct.rtx_def**
  %109 = load %struct.rtx_def*, %struct.rtx_def** %rtx153, align 8
  store %struct.rtx_def* %109, %struct.rtx_def** %insn, align 8
  br label %for.cond.36

for.end.154:                                      ; preds = %land.end
  %110 = load i32, i32* %last_mode, align 4
  %111 = load i32, i32* %bb, align 4
  %idxprom155 = sext i32 %111 to i64
  %112 = load %struct.bb_info*, %struct.bb_info** %info, align 8
  %arrayidx156 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %112, i64 %idxprom155
  %computing = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx156, i32 0, i32 1
  store i32 %110, i32* %computing, align 4
  %113 = load i32, i32* %last_mode, align 4
  %114 = load i32, i32* %no_mode, align 4
  %cmp157 = icmp eq i32 %113, %114
  br i1 %cmp157, label %if.then.159, label %if.end.163

if.then.159:                                      ; preds = %for.end.154
  %115 = load i32, i32* %no_mode, align 4
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %117 = load i32, i32* %bb, align 4
  %118 = load i64, i64* %live_now, align 8
  %call160 = call %struct.seginfo* @new_seginfo(i32 %115, %struct.rtx_def* %116, i32 %117, i64 %118)
  store %struct.seginfo* %call160, %struct.seginfo** %ptr, align 8
  %119 = load %struct.bb_info*, %struct.bb_info** %info, align 8
  %120 = load i32, i32* %bb, align 4
  %idx.ext161 = sext i32 %120 to i64
  %add.ptr162 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %119, i64 %idx.ext161
  %121 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  call void @add_seginfo(%struct.bb_info* %add.ptr162, %struct.seginfo* %121)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.159, %for.end.154
  br label %for.inc.164

for.inc.164:                                      ; preds = %if.end.163
  %122 = load i32, i32* %bb, align 4
  %inc165 = add nsw i32 %122, 1
  store i32 %inc165, i32* %bb, align 4
  br label %for.cond.25

for.end.166:                                      ; preds = %for.cond.25
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.end.166
  %123 = load i32, i32* %j, align 4
  %dec168 = add nsw i32 %123, -1
  store i32 %dec168, i32* %j, align 4
  br label %for.cond.14

for.end.169:                                      ; preds = %for.cond.14
  %124 = load i32, i32* @n_basic_blocks, align 4
  %125 = load i32, i32* %n_entities, align 4
  %call170 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %124, i32 %125)
  store %struct.simple_bitmap_def** %call170, %struct.simple_bitmap_def*** %kill, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.171

for.cond.171:                                     ; preds = %for.inc.373, %for.end.169
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %max_num_modes, align 4
  %cmp172 = icmp slt i32 %126, %127
  br i1 %cmp172, label %for.body.174, label %for.end.375

for.body.174:                                     ; preds = %for.cond.171
  %128 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8
  %129 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %128, i32 %129)
  %130 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %131 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %130, i32 %131)
  %132 = load i32, i32* %n_entities, align 4
  %sub175 = sub nsw i32 %132, 1
  store i32 %sub175, i32* %j, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.225, %for.body.174
  %133 = load i32, i32* %j, align 4
  %cmp177 = icmp sge i32 %133, 0
  br i1 %cmp177, label %for.body.179, label %for.end.227

for.body.179:                                     ; preds = %for.cond.176
  %134 = load i32, i32* %i, align 4
  %135 = load i32, i32* %j, align 4
  %idxprom180 = sext i32 %135 to i64
  %arrayidx181 = getelementptr inbounds [1 x i32], [1 x i32]* %current_mode, i32 0, i64 %idxprom180
  store i32 %134, i32* %arrayidx181, align 4
  store i32 %134, i32* %m, align 4
  %136 = load i32, i32* %j, align 4
  %idxprom183 = sext i32 %136 to i64
  %arrayidx184 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom183
  %137 = load %struct.bb_info*, %struct.bb_info** %arrayidx184, align 8
  store %struct.bb_info* %137, %struct.bb_info** %info182, align 8
  store i32 0, i32* %bb, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.222, %for.body.179
  %138 = load i32, i32* %bb, align 4
  %139 = load i32, i32* @n_basic_blocks, align 4
  %cmp186 = icmp slt i32 %138, %139
  br i1 %cmp186, label %for.body.188, label %for.end.224

for.body.188:                                     ; preds = %for.cond.185
  %140 = load i32, i32* %bb, align 4
  %idxprom189 = sext i32 %140 to i64
  %141 = load %struct.bb_info*, %struct.bb_info** %info182, align 8
  %arrayidx190 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %141, i64 %idxprom189
  %seginfo = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx190, i32 0, i32 0
  %142 = load %struct.seginfo*, %struct.seginfo** %seginfo, align 8
  %mode191 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %142, i32 0, i32 0
  %143 = load i32, i32* %mode191, align 4
  %144 = load i32, i32* %m, align 4
  %cmp192 = icmp eq i32 %143, %144
  br i1 %cmp192, label %if.then.194, label %if.end.204

if.then.194:                                      ; preds = %for.body.188
  %145 = load i32, i32* %j, align 4
  %rem195 = urem i32 %145, 64
  %sh_prom196 = zext i32 %rem195 to i64
  %shl197 = shl i64 1, %sh_prom196
  %146 = load i32, i32* %j, align 4
  %div198 = udiv i32 %146, 64
  %idxprom199 = zext i32 %div198 to i64
  %147 = load i32, i32* %bb, align 4
  %idxprom200 = sext i32 %147 to i64
  %148 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8
  %arrayidx201 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %148, i64 %idxprom200
  %149 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx201, align 8
  %elms202 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %149, i32 0, i32 3
  %arrayidx203 = getelementptr inbounds [1 x i64], [1 x i64]* %elms202, i32 0, i64 %idxprom199
  %150 = load i64, i64* %arrayidx203, align 8
  %or = or i64 %150, %shl197
  store i64 %or, i64* %arrayidx203, align 8
  br label %if.end.204

if.end.204:                                       ; preds = %if.then.194, %for.body.188
  %151 = load i32, i32* %bb, align 4
  %idxprom205 = sext i32 %151 to i64
  %152 = load %struct.bb_info*, %struct.bb_info** %info182, align 8
  %arrayidx206 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %152, i64 %idxprom205
  %computing207 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx206, i32 0, i32 1
  %153 = load i32, i32* %computing207, align 4
  %154 = load i32, i32* %m, align 4
  %cmp208 = icmp eq i32 %153, %154
  br i1 %cmp208, label %if.then.210, label %if.end.221

if.then.210:                                      ; preds = %if.end.204
  %155 = load i32, i32* %j, align 4
  %rem211 = urem i32 %155, 64
  %sh_prom212 = zext i32 %rem211 to i64
  %shl213 = shl i64 1, %sh_prom212
  %156 = load i32, i32* %j, align 4
  %div214 = udiv i32 %156, 64
  %idxprom215 = zext i32 %div214 to i64
  %157 = load i32, i32* %bb, align 4
  %idxprom216 = sext i32 %157 to i64
  %158 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %arrayidx217 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %158, i64 %idxprom216
  %159 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx217, align 8
  %elms218 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %159, i32 0, i32 3
  %arrayidx219 = getelementptr inbounds [1 x i64], [1 x i64]* %elms218, i32 0, i64 %idxprom215
  %160 = load i64, i64* %arrayidx219, align 8
  %or220 = or i64 %160, %shl213
  store i64 %or220, i64* %arrayidx219, align 8
  br label %if.end.221

if.end.221:                                       ; preds = %if.then.210, %if.end.204
  br label %for.inc.222

for.inc.222:                                      ; preds = %if.end.221
  %161 = load i32, i32* %bb, align 4
  %inc223 = add nsw i32 %161, 1
  store i32 %inc223, i32* %bb, align 4
  br label %for.cond.185

for.end.224:                                      ; preds = %for.cond.185
  br label %for.inc.225

for.inc.225:                                      ; preds = %for.end.224
  %162 = load i32, i32* %j, align 4
  %dec226 = add nsw i32 %162, -1
  store i32 %dec226, i32* %j, align 4
  br label %for.cond.176

for.end.227:                                      ; preds = %for.cond.176
  %163 = load i32, i32* @n_basic_blocks, align 4
  %sub228 = sub nsw i32 %163, 1
  store i32 %sub228, i32* %bb, align 4
  br label %for.cond.229

for.cond.229:                                     ; preds = %for.inc.237, %for.end.227
  %164 = load i32, i32* %bb, align 4
  %cmp230 = icmp sge i32 %164, 0
  br i1 %cmp230, label %for.body.232, label %for.end.239

for.body.232:                                     ; preds = %for.cond.229
  %165 = load i32, i32* %bb, align 4
  %idxprom233 = sext i32 %165 to i64
  %166 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill, align 8
  %arrayidx234 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %166, i64 %idxprom233
  %167 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx234, align 8
  %168 = load i32, i32* %bb, align 4
  %idxprom235 = sext i32 %168 to i64
  %169 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx236 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %169, i64 %idxprom235
  %170 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx236, align 8
  call void @sbitmap_not(%struct.simple_bitmap_def* %167, %struct.simple_bitmap_def* %170)
  br label %for.inc.237

for.inc.237:                                      ; preds = %for.body.232
  %171 = load i32, i32* %bb, align 4
  %dec238 = add nsw i32 %171, -1
  store i32 %dec238, i32* %bb, align 4
  br label %for.cond.229

for.end.239:                                      ; preds = %for.cond.229
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %173 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %174 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %175 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8
  %176 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill, align 8
  %call240 = call %struct.edge_list* @pre_edge_lcm(%struct._IO_FILE* %172, i32 1, %struct.simple_bitmap_def** %173, %struct.simple_bitmap_def** %174, %struct.simple_bitmap_def** %175, %struct.simple_bitmap_def** %176, %struct.simple_bitmap_def*** @insert, %struct.simple_bitmap_def*** @delete)
  store %struct.edge_list* %call240, %struct.edge_list** %edge_list, align 8
  %177 = load i32, i32* %n_entities, align 4
  %sub241 = sub nsw i32 %177, 1
  store i32 %sub241, i32* %j, align 4
  br label %for.cond.242

for.cond.242:                                     ; preds = %for.inc.370, %for.end.239
  %178 = load i32, i32* %j, align 4
  %cmp243 = icmp sge i32 %178, 0
  br i1 %cmp243, label %for.body.245, label %for.end.372

for.body.245:                                     ; preds = %for.cond.242
  %179 = load i32, i32* %j, align 4
  %idxprom247 = sext i32 %179 to i64
  %arrayidx248 = getelementptr inbounds [1 x i32], [1 x i32]* %entity_map, i32 0, i64 %idxprom247
  %180 = load i32, i32* %arrayidx248, align 4
  %idxprom249 = sext i32 %180 to i64
  %arrayidx250 = getelementptr inbounds [1 x i32], [1 x i32]* @optimize_mode_switching.num_modes, i32 0, i64 %idxprom249
  %181 = load i32, i32* %arrayidx250, align 4
  store i32 %181, i32* %no_mode246, align 4
  %182 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %182, i32 0, i32 1
  %183 = load i32, i32* %num_edges, align 4
  %sub251 = sub nsw i32 %183, 1
  store i32 %sub251, i32* %e, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.336, %for.body.245
  %184 = load i32, i32* %e, align 4
  %cmp253 = icmp sge i32 %184, 0
  br i1 %cmp253, label %for.body.255, label %for.end.338

for.body.255:                                     ; preds = %for.cond.252
  %185 = load i32, i32* %e, align 4
  %idxprom256 = sext i32 %185 to i64
  %186 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %186, i32 0, i32 2
  %187 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx257 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %187, i64 %idxprom256
  %188 = load %struct.edge_def*, %struct.edge_def** %arrayidx257, align 8
  store %struct.edge_def* %188, %struct.edge_def** %eg, align 8
  %189 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %189, i32 0, i32 5
  store i8* null, i8** %aux, align 8
  %190 = load i32, i32* %j, align 4
  %div259 = udiv i32 %190, 64
  %idxprom260 = zext i32 %div259 to i64
  %191 = load i32, i32* %e, align 4
  %idxprom261 = sext i32 %191 to i64
  %192 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @insert, align 8
  %arrayidx262 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %192, i64 %idxprom261
  %193 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx262, align 8
  %elms263 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %193, i32 0, i32 3
  %arrayidx264 = getelementptr inbounds [1 x i64], [1 x i64]* %elms263, i32 0, i64 %idxprom260
  %194 = load i64, i64* %arrayidx264, align 8
  %195 = load i32, i32* %j, align 4
  %rem265 = urem i32 %195, 64
  %sh_prom266 = zext i32 %rem265 to i64
  %shr = lshr i64 %194, %sh_prom266
  %and267 = and i64 %shr, 1
  %tobool268 = icmp ne i64 %and267, 0
  br i1 %tobool268, label %if.end.270, label %if.then.269

if.then.269:                                      ; preds = %for.body.255
  br label %for.inc.336

if.end.270:                                       ; preds = %for.body.255
  %196 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  %aux271 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %196, i32 0, i32 5
  store i8* inttoptr (i64 1 to i8*), i8** %aux271, align 8
  %197 = load i32, i32* %j, align 4
  %idxprom272 = sext i32 %197 to i64
  %arrayidx273 = getelementptr inbounds [1 x i32], [1 x i32]* %current_mode, i32 0, i64 %idxprom272
  %198 = load i32, i32* %arrayidx273, align 4
  store i32 %198, i32* %mode258, align 4
  %199 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %199, i32 0, i32 2
  %200 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %200, %struct.basic_block_def** %src_bb, align 8
  br label %do.body.274

do.body.274:                                      ; preds = %if.end.270
  store i64 0, i64* %live_at_edge, align 8
  %201 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %201, i32 0, i32 9
  %202 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  call void @reg_set_to_hard_reg_set(i64* %live_at_edge, %struct.bitmap_head_def* %202)
  br label %do.end.275

do.end.275:                                       ; preds = %do.body.274
  call void @start_sequence()
  %203 = load i32, i32* %mode258, align 4
  %cmp276 = icmp eq i32 %203, 0
  br i1 %cmp276, label %cond.true.278, label %cond.false.281

cond.true.278:                                    ; preds = %do.end.275
  %call279 = call %struct.rtx_def* @assign_386_stack_local(i32 3, i32 1)
  %call280 = call %struct.rtx_def* @assign_386_stack_local(i32 3, i32 2)
  call void @emit_i387_cw_initialization(%struct.rtx_def* %call279, %struct.rtx_def* %call280)
  br label %cond.end.282

cond.false.281:                                   ; preds = %do.end.275
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.281, %cond.true.278
  %cond283 = phi i32 [ 0, %cond.true.278 ], [ 0, %cond.false.281 ]
  %call284 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call284, %struct.rtx_def** %mode_set, align 8
  call void @end_sequence()
  %204 = load %struct.rtx_def*, %struct.rtx_def** %mode_set, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load285 = load i32, i32* %205, align 8
  %bf.clear286 = and i32 %bf.load285, 65535
  %cmp287 = icmp eq i32 %bf.clear286, 24
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.294

land.lhs.true.289:                                ; preds = %cond.end.282
  %206 = load %struct.rtx_def*, %struct.rtx_def** %mode_set, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx291 to %struct.rtvec_def**
  %207 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %207, i32 0, i32 0
  %208 = load i32, i32* %num_elem, align 4
  %tobool292 = icmp ne i32 %208, 0
  br i1 %tobool292, label %if.end.294, label %if.then.293

if.then.293:                                      ; preds = %land.lhs.true.289
  br label %for.inc.336

if.end.294:                                       ; preds = %land.lhs.true.289, %cond.end.282
  %209 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %209, i32 0, i32 6
  %210 = load i32, i32* %flags, align 4
  %and295 = and i32 %210, 2
  %tobool296 = icmp ne i32 %and295, 0
  br i1 %tobool296, label %if.then.297, label %if.else.334

if.then.297:                                      ; preds = %if.end.294
  store i8 1, i8* %emited, align 1
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %end298 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %211, i32 0, i32 1
  %212 = load %struct.rtx_def*, %struct.rtx_def** %end298, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load299 = load i32, i32* %213, align 8
  %bf.clear300 = and i32 %bf.load299, 65535
  %cmp301 = icmp eq i32 %bf.clear300, 33
  br i1 %cmp301, label %if.then.303, label %if.else

if.then.303:                                      ; preds = %if.then.297
  %214 = load %struct.rtx_def*, %struct.rtx_def** %mode_set, align 8
  %215 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %end304 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %215, i32 0, i32 1
  %216 = load %struct.rtx_def*, %struct.rtx_def** %end304, align 8
  %call305 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %214, %struct.rtx_def* %216)
  br label %if.end.316

if.else:                                          ; preds = %if.then.297
  %217 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %end306 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %217, i32 0, i32 1
  %218 = load %struct.rtx_def*, %struct.rtx_def** %end306, align 8
  %219 = bitcast %struct.rtx_def* %218 to i32*
  %bf.load307 = load i32, i32* %219, align 8
  %bf.clear308 = and i32 %bf.load307, 65535
  %cmp309 = icmp eq i32 %bf.clear308, 32
  br i1 %cmp309, label %if.then.311, label %if.else.314

if.then.311:                                      ; preds = %if.else
  %220 = load %struct.rtx_def*, %struct.rtx_def** %mode_set, align 8
  %221 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %end312 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %221, i32 0, i32 1
  %222 = load %struct.rtx_def*, %struct.rtx_def** %end312, align 8
  %call313 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %220, %struct.rtx_def* %222)
  br label %if.end.315

if.else.314:                                      ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i32 1269, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.optimize_mode_switching, i32 0, i32 0)) #5
  unreachable

if.end.315:                                       ; preds = %if.then.311
  br label %if.end.316

if.end.316:                                       ; preds = %if.end.315, %if.then.303
  %223 = load i32, i32* %mode258, align 4
  %224 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %224, i32 0, i32 11
  %225 = load i32, i32* %index, align 4
  %idxprom317 = sext i32 %225 to i64
  %226 = load i32, i32* %j, align 4
  %idxprom318 = sext i32 %226 to i64
  %arrayidx319 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom318
  %227 = load %struct.bb_info*, %struct.bb_info** %arrayidx319, align 8
  %arrayidx320 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %227, i64 %idxprom317
  %computing321 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx320, i32 0, i32 1
  store i32 %223, i32* %computing321, align 4
  %228 = load i32, i32* %j, align 4
  %rem322 = urem i32 %228, 64
  %sh_prom323 = zext i32 %rem322 to i64
  %shl324 = shl i64 1, %sh_prom323
  %neg325 = xor i64 %shl324, -1
  %229 = load i32, i32* %j, align 4
  %div326 = udiv i32 %229, 64
  %idxprom327 = zext i32 %div326 to i64
  %230 = load %struct.basic_block_def*, %struct.basic_block_def** %src_bb, align 8
  %index328 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %230, i32 0, i32 11
  %231 = load i32, i32* %index328, align 4
  %idxprom329 = sext i32 %231 to i64
  %232 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx330 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %232, i64 %idxprom329
  %233 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx330, align 8
  %elms331 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %233, i32 0, i32 3
  %arrayidx332 = getelementptr inbounds [1 x i64], [1 x i64]* %elms331, i32 0, i64 %idxprom327
  %234 = load i64, i64* %arrayidx332, align 8
  %and333 = and i64 %234, %neg325
  store i64 %and333, i64* %arrayidx332, align 8
  br label %if.end.335

if.else.334:                                      ; preds = %if.end.294
  store i32 1, i32* %need_commit, align 4
  %235 = load %struct.rtx_def*, %struct.rtx_def** %mode_set, align 8
  %236 = load %struct.edge_def*, %struct.edge_def** %eg, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %235, %struct.edge_def* %236)
  br label %if.end.335

if.end.335:                                       ; preds = %if.else.334, %if.end.316
  br label %for.inc.336

for.inc.336:                                      ; preds = %if.end.335, %if.then.293, %if.then.269
  %237 = load i32, i32* %e, align 4
  %dec337 = add nsw i32 %237, -1
  store i32 %dec337, i32* %e, align 4
  br label %for.cond.252

for.end.338:                                      ; preds = %for.cond.252
  %238 = load i32, i32* @n_basic_blocks, align 4
  %sub339 = sub nsw i32 %238, 1
  store i32 %sub339, i32* %bb, align 4
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.367, %for.end.338
  %239 = load i32, i32* %bb, align 4
  %cmp341 = icmp sge i32 %239, 0
  br i1 %cmp341, label %for.body.343, label %for.end.369

for.body.343:                                     ; preds = %for.cond.340
  %240 = load i32, i32* %j, align 4
  %div344 = udiv i32 %240, 64
  %idxprom345 = zext i32 %div344 to i64
  %241 = load i32, i32* %bb, align 4
  %idxprom346 = sext i32 %241 to i64
  %242 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @delete, align 8
  %arrayidx347 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %242, i64 %idxprom346
  %243 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx347, align 8
  %elms348 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %243, i32 0, i32 3
  %arrayidx349 = getelementptr inbounds [1 x i64], [1 x i64]* %elms348, i32 0, i64 %idxprom345
  %244 = load i64, i64* %arrayidx349, align 8
  %245 = load i32, i32* %j, align 4
  %rem350 = urem i32 %245, 64
  %sh_prom351 = zext i32 %rem350 to i64
  %shr352 = lshr i64 %244, %sh_prom351
  %and353 = and i64 %shr352, 1
  %tobool354 = icmp ne i64 %and353, 0
  br i1 %tobool354, label %if.then.355, label %if.end.366

if.then.355:                                      ; preds = %for.body.343
  %246 = load i32, i32* %bb, align 4
  %idxprom356 = sext i32 %246 to i64
  %247 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data357 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %247, i32 0, i32 4
  %bb358 = bitcast %union.varray_data_tag* %data357 to [1 x %struct.basic_block_def*]*
  %arrayidx359 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb358, i32 0, i64 %idxprom356
  %248 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx359, align 8
  %249 = load i32, i32* %j, align 4
  call void @make_preds_opaque(%struct.basic_block_def* %248, i32 %249)
  %250 = load i32, i32* %no_mode246, align 4
  %251 = load i32, i32* %bb, align 4
  %idxprom360 = sext i32 %251 to i64
  %252 = load i32, i32* %j, align 4
  %idxprom361 = sext i32 %252 to i64
  %arrayidx362 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom361
  %253 = load %struct.bb_info*, %struct.bb_info** %arrayidx362, align 8
  %arrayidx363 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %253, i64 %idxprom360
  %seginfo364 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx363, i32 0, i32 0
  %254 = load %struct.seginfo*, %struct.seginfo** %seginfo364, align 8
  %mode365 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %254, i32 0, i32 0
  store i32 %250, i32* %mode365, align 4
  br label %if.end.366

if.end.366:                                       ; preds = %if.then.355, %for.body.343
  br label %for.inc.367

for.inc.367:                                      ; preds = %if.end.366
  %255 = load i32, i32* %bb, align 4
  %dec368 = add nsw i32 %255, -1
  store i32 %dec368, i32* %bb, align 4
  br label %for.cond.340

for.end.369:                                      ; preds = %for.cond.340
  br label %for.inc.370

for.inc.370:                                      ; preds = %for.end.369
  %256 = load i32, i32* %j, align 4
  %dec371 = add nsw i32 %256, -1
  store i32 %dec371, i32* %j, align 4
  br label %for.cond.242

for.end.372:                                      ; preds = %for.cond.242
  call void @clear_aux_for_edges()
  %257 = load %struct.edge_list*, %struct.edge_list** %edge_list, align 8
  call void @free_edge_list(%struct.edge_list* %257)
  br label %for.inc.373

for.inc.373:                                      ; preds = %for.end.372
  %258 = load i32, i32* %i, align 4
  %inc374 = add nsw i32 %258, 1
  store i32 %inc374, i32* %i, align 4
  br label %for.cond.171

for.end.375:                                      ; preds = %for.cond.171
  %259 = load i32, i32* %n_entities, align 4
  %sub376 = sub nsw i32 %259, 1
  store i32 %sub376, i32* %j, align 4
  br label %for.cond.377

for.cond.377:                                     ; preds = %for.inc.454, %for.end.375
  %260 = load i32, i32* %j, align 4
  %cmp378 = icmp sge i32 %260, 0
  br i1 %cmp378, label %for.body.380, label %for.end.456

for.body.380:                                     ; preds = %for.cond.377
  %261 = load i32, i32* %j, align 4
  %idxprom382 = sext i32 %261 to i64
  %arrayidx383 = getelementptr inbounds [1 x i32], [1 x i32]* %entity_map, i32 0, i64 %idxprom382
  %262 = load i32, i32* %arrayidx383, align 4
  %idxprom384 = sext i32 %262 to i64
  %arrayidx385 = getelementptr inbounds [1 x i32], [1 x i32]* @optimize_mode_switching.num_modes, i32 0, i64 %idxprom384
  %263 = load i32, i32* %arrayidx385, align 4
  store i32 %263, i32* %no_mode381, align 4
  %264 = load i32, i32* @n_basic_blocks, align 4
  %sub386 = sub nsw i32 %264, 1
  store i32 %sub386, i32* %bb, align 4
  br label %for.cond.387

for.cond.387:                                     ; preds = %for.inc.449, %for.body.380
  %265 = load i32, i32* %bb, align 4
  %cmp388 = icmp sge i32 %265, 0
  br i1 %cmp388, label %for.body.390, label %for.end.451

for.body.390:                                     ; preds = %for.cond.387
  %266 = load i32, i32* %bb, align 4
  %idxprom392 = sext i32 %266 to i64
  %267 = load i32, i32* %j, align 4
  %idxprom393 = sext i32 %267 to i64
  %arrayidx394 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom393
  %268 = load %struct.bb_info*, %struct.bb_info** %arrayidx394, align 8
  %arrayidx395 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %268, i64 %idxprom392
  %seginfo396 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %arrayidx395, i32 0, i32 0
  %269 = load %struct.seginfo*, %struct.seginfo** %seginfo396, align 8
  store %struct.seginfo* %269, %struct.seginfo** %ptr391, align 8
  br label %for.cond.397

for.cond.397:                                     ; preds = %for.inc.447, %for.body.390
  %270 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %tobool398 = icmp ne %struct.seginfo* %270, null
  br i1 %tobool398, label %for.body.399, label %for.end.448

for.body.399:                                     ; preds = %for.cond.397
  %271 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %next400 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %271, i32 0, i32 3
  %272 = load %struct.seginfo*, %struct.seginfo** %next400, align 8
  store %struct.seginfo* %272, %struct.seginfo** %next, align 8
  %273 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %mode401 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %273, i32 0, i32 0
  %274 = load i32, i32* %mode401, align 4
  %275 = load i32, i32* %no_mode381, align 4
  %cmp402 = icmp ne i32 %274, %275
  br i1 %cmp402, label %if.then.404, label %if.end.446

if.then.404:                                      ; preds = %for.body.399
  call void @start_sequence()
  %276 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %mode406 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %276, i32 0, i32 0
  %277 = load i32, i32* %mode406, align 4
  %cmp407 = icmp eq i32 %277, 0
  br i1 %cmp407, label %cond.true.409, label %cond.false.412

cond.true.409:                                    ; preds = %if.then.404
  %call410 = call %struct.rtx_def* @assign_386_stack_local(i32 3, i32 1)
  %call411 = call %struct.rtx_def* @assign_386_stack_local(i32 3, i32 2)
  call void @emit_i387_cw_initialization(%struct.rtx_def* %call410, %struct.rtx_def* %call411)
  br label %cond.end.413

cond.false.412:                                   ; preds = %if.then.404
  br label %cond.end.413

cond.end.413:                                     ; preds = %cond.false.412, %cond.true.409
  %cond414 = phi i32 [ 0, %cond.true.409 ], [ 0, %cond.false.412 ]
  %call415 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call415, %struct.rtx_def** %mode_set405, align 8
  call void @end_sequence()
  %278 = load %struct.rtx_def*, %struct.rtx_def** %mode_set405, align 8
  %279 = bitcast %struct.rtx_def* %278 to i32*
  %bf.load416 = load i32, i32* %279, align 8
  %bf.clear417 = and i32 %bf.load416, 65535
  %cmp418 = icmp eq i32 %bf.clear417, 24
  br i1 %cmp418, label %land.lhs.true.420, label %if.end.427

land.lhs.true.420:                                ; preds = %cond.end.413
  %280 = load %struct.rtx_def*, %struct.rtx_def** %mode_set405, align 8
  %fld421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %280, i32 0, i32 1
  %arrayidx422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld421, i32 0, i64 0
  %rtvec423 = bitcast %union.rtunion_def* %arrayidx422 to %struct.rtvec_def**
  %281 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec423, align 8
  %num_elem424 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %281, i32 0, i32 0
  %282 = load i32, i32* %num_elem424, align 4
  %tobool425 = icmp ne i32 %282, 0
  br i1 %tobool425, label %if.end.427, label %if.then.426

if.then.426:                                      ; preds = %land.lhs.true.420
  br label %for.inc.447

if.end.427:                                       ; preds = %land.lhs.true.420, %cond.end.413
  store i8 1, i8* %emited, align 1
  %283 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %insn_ptr = getelementptr inbounds %struct.seginfo, %struct.seginfo* %283, i32 0, i32 1
  %284 = load %struct.rtx_def*, %struct.rtx_def** %insn_ptr, align 8
  %285 = bitcast %struct.rtx_def* %284 to i32*
  %bf.load428 = load i32, i32* %285, align 8
  %bf.clear429 = and i32 %bf.load428, 65535
  %cmp430 = icmp eq i32 %bf.clear429, 37
  br i1 %cmp430, label %land.lhs.true.432, label %if.else.442

land.lhs.true.432:                                ; preds = %if.end.427
  %286 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %insn_ptr433 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %286, i32 0, i32 1
  %287 = load %struct.rtx_def*, %struct.rtx_def** %insn_ptr433, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %287, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 4
  %rtint436 = bitcast %union.rtunion_def* %arrayidx435 to i32*
  %288 = load i32, i32* %rtint436, align 4
  %cmp437 = icmp eq i32 %288, -80
  br i1 %cmp437, label %if.then.439, label %if.else.442

if.then.439:                                      ; preds = %land.lhs.true.432
  %289 = load %struct.rtx_def*, %struct.rtx_def** %mode_set405, align 8
  %290 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %insn_ptr440 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %290, i32 0, i32 1
  %291 = load %struct.rtx_def*, %struct.rtx_def** %insn_ptr440, align 8
  %call441 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %289, %struct.rtx_def* %291)
  br label %if.end.445

if.else.442:                                      ; preds = %land.lhs.true.432, %if.end.427
  %292 = load %struct.rtx_def*, %struct.rtx_def** %mode_set405, align 8
  %293 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %insn_ptr443 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %293, i32 0, i32 1
  %294 = load %struct.rtx_def*, %struct.rtx_def** %insn_ptr443, align 8
  %call444 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %292, %struct.rtx_def* %294)
  br label %if.end.445

if.end.445:                                       ; preds = %if.else.442, %if.then.439
  br label %if.end.446

if.end.446:                                       ; preds = %if.end.445, %for.body.399
  %295 = load %struct.seginfo*, %struct.seginfo** %ptr391, align 8
  %296 = bitcast %struct.seginfo* %295 to i8*
  call void @free(i8* %296) #4
  br label %for.inc.447

for.inc.447:                                      ; preds = %if.end.446, %if.then.426
  %297 = load %struct.seginfo*, %struct.seginfo** %next, align 8
  store %struct.seginfo* %297, %struct.seginfo** %ptr391, align 8
  br label %for.cond.397

for.end.448:                                      ; preds = %for.cond.397
  br label %for.inc.449

for.inc.449:                                      ; preds = %for.end.448
  %298 = load i32, i32* %bb, align 4
  %dec450 = add nsw i32 %298, -1
  store i32 %dec450, i32* %bb, align 4
  br label %for.cond.387

for.end.451:                                      ; preds = %for.cond.387
  %299 = load i32, i32* %j, align 4
  %idxprom452 = sext i32 %299 to i64
  %arrayidx453 = getelementptr inbounds [1 x %struct.bb_info*], [1 x %struct.bb_info*]* %bb_info, i32 0, i64 %idxprom452
  %300 = load %struct.bb_info*, %struct.bb_info** %arrayidx453, align 8
  %301 = bitcast %struct.bb_info* %300 to i8*
  call void @free(i8* %301) #4
  br label %for.inc.454

for.inc.454:                                      ; preds = %for.end.451
  %302 = load i32, i32* %j, align 4
  %dec455 = add nsw i32 %302, -1
  store i32 %dec455, i32* %j, align 4
  br label %for.cond.377

for.end.456:                                      ; preds = %for.cond.377
  %303 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %kill, align 8
  %304 = bitcast %struct.simple_bitmap_def** %303 to i8*
  call void @free(i8* %304) #4
  %305 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @antic, align 8
  %306 = bitcast %struct.simple_bitmap_def** %305 to i8*
  call void @free(i8* %306) #4
  %307 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %308 = bitcast %struct.simple_bitmap_def** %307 to i8*
  call void @free(i8* %308) #4
  %309 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @comp, align 8
  %310 = bitcast %struct.simple_bitmap_def** %309 to i8*
  call void @free(i8* %310) #4
  %311 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @delete, align 8
  %312 = bitcast %struct.simple_bitmap_def** %311 to i8*
  call void @free(i8* %312) #4
  %313 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @insert, align 8
  %314 = bitcast %struct.simple_bitmap_def** %313 to i8*
  call void @free(i8* %314) #4
  %315 = load i32, i32* %need_commit, align 4
  %tobool457 = icmp ne i32 %315, 0
  br i1 %tobool457, label %if.then.458, label %if.end.459

if.then.458:                                      ; preds = %for.end.456
  call void @commit_edge_insertions()
  br label %if.end.459

if.end.459:                                       ; preds = %if.then.458, %for.end.456
  %316 = load i32, i32* %need_commit, align 4
  %tobool460 = icmp ne i32 %316, 0
  br i1 %tobool460, label %if.end.464, label %land.lhs.true.461

land.lhs.true.461:                                ; preds = %if.end.459
  %317 = load i8, i8* %emited, align 1
  %tobool462 = trunc i8 %317 to i1
  br i1 %tobool462, label %if.end.464, label %if.then.463

if.then.463:                                      ; preds = %land.lhs.true.461
  store i32 0, i32* %retval
  br label %return

if.end.464:                                       ; preds = %land.lhs.true.461, %if.end.459
  call void @allocate_reg_life_data()
  call void @update_life_info(%struct.simple_bitmap_def* null, i32 2, i32 29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.464, %if.then.463, %if.then.9
  %318 = load i32, i32* %retval
  ret i32 %318
}

declare noalias i8* @xcalloc(i64, i64) #1

declare void @reg_set_to_hard_reg_set(i64*, %struct.bitmap_head_def*) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

declare i32 @get_attr_type(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.seginfo* @new_seginfo(i32 %mode, %struct.rtx_def* %insn, i32 %bb, i64 %regs_live) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %bb.addr = alloca i32, align 4
  %regs_live.addr = alloca i64, align 8
  %ptr = alloca %struct.seginfo*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store i64 %regs_live, i64* %regs_live.addr, align 8
  %call = call noalias i8* @xmalloc(i64 40)
  %0 = bitcast i8* %call to %struct.seginfo*
  store %struct.seginfo* %0, %struct.seginfo** %ptr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %mode1 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %2, i32 0, i32 0
  store i32 %1, i32* %mode1, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %insn_ptr = getelementptr inbounds %struct.seginfo, %struct.seginfo* %4, i32 0, i32 1
  store %struct.rtx_def* %3, %struct.rtx_def** %insn_ptr, align 8
  %5 = load i32, i32* %bb.addr, align 4
  %6 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %bbnum = getelementptr inbounds %struct.seginfo, %struct.seginfo* %6, i32 0, i32 2
  store i32 %5, i32* %bbnum, align 4
  %7 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %next = getelementptr inbounds %struct.seginfo, %struct.seginfo* %7, i32 0, i32 3
  store %struct.seginfo* null, %struct.seginfo** %next, align 8
  %8 = load i64, i64* %regs_live.addr, align 8
  %9 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %regs_live2 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %9, i32 0, i32 4
  store i64 %8, i64* %regs_live2, align 8
  %10 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  ret %struct.seginfo* %10
}

; Function Attrs: nounwind uwtable
define internal void @add_seginfo(%struct.bb_info* %head, %struct.seginfo* %info) #0 {
entry:
  %head.addr = alloca %struct.bb_info*, align 8
  %info.addr = alloca %struct.seginfo*, align 8
  %ptr = alloca %struct.seginfo*, align 8
  store %struct.bb_info* %head, %struct.bb_info** %head.addr, align 8
  store %struct.seginfo* %info, %struct.seginfo** %info.addr, align 8
  %0 = load %struct.bb_info*, %struct.bb_info** %head.addr, align 8
  %seginfo = getelementptr inbounds %struct.bb_info, %struct.bb_info* %0, i32 0, i32 0
  %1 = load %struct.seginfo*, %struct.seginfo** %seginfo, align 8
  %cmp = icmp eq %struct.seginfo* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.seginfo*, %struct.seginfo** %info.addr, align 8
  %3 = load %struct.bb_info*, %struct.bb_info** %head.addr, align 8
  %seginfo1 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %3, i32 0, i32 0
  store %struct.seginfo* %2, %struct.seginfo** %seginfo1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.bb_info*, %struct.bb_info** %head.addr, align 8
  %seginfo2 = getelementptr inbounds %struct.bb_info, %struct.bb_info* %4, i32 0, i32 0
  %5 = load %struct.seginfo*, %struct.seginfo** %seginfo2, align 8
  store %struct.seginfo* %5, %struct.seginfo** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %6 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %next = getelementptr inbounds %struct.seginfo, %struct.seginfo* %6, i32 0, i32 3
  %7 = load %struct.seginfo*, %struct.seginfo** %next, align 8
  %cmp3 = icmp ne %struct.seginfo* %7, null
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %next4 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %8, i32 0, i32 3
  %9 = load %struct.seginfo*, %struct.seginfo** %next4, align 8
  store %struct.seginfo* %9, %struct.seginfo** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.seginfo*, %struct.seginfo** %info.addr, align 8
  %11 = load %struct.seginfo*, %struct.seginfo** %ptr, align 8
  %next5 = getelementptr inbounds %struct.seginfo, %struct.seginfo* %11, i32 0, i32 3
  store %struct.seginfo* %10, %struct.seginfo** %next5, align 8
  br label %if.end

if.end:                                           ; preds = %while.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_dies(%struct.rtx_def* %reg, i64 %live) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %live.addr = alloca i64, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i64 %live, i64* %live.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.63

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  store i32 %3, i32* %regno, align 4
  %4 = load i32, i32* %regno, align 4
  %cmp1 = icmp slt i32 %4, 53
  br i1 %cmp1, label %if.then.2, label %if.end.63

if.then.2:                                        ; preds = %if.end
  %5 = load i32, i32* %regno, align 4
  %cmp3 = icmp sge i32 %5, 8
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.2
  %6 = load i32, i32* %regno, align 4
  %cmp4 = icmp sle i32 %6, 15
  br i1 %cmp4, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.2
  %7 = load i32, i32* %regno, align 4
  %cmp5 = icmp sge i32 %7, 21
  br i1 %cmp5, label %land.lhs.true.6, label %lor.lhs.false.8

land.lhs.true.6:                                  ; preds = %lor.lhs.false
  %8 = load i32, i32* %regno, align 4
  %cmp7 = icmp sle i32 %8, 28
  br i1 %cmp7, label %cond.true, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %land.lhs.true.6, %lor.lhs.false
  %9 = load i32, i32* %regno, align 4
  %cmp9 = icmp sge i32 %9, 45
  br i1 %cmp9, label %land.lhs.true.10, label %lor.lhs.false.12

land.lhs.true.10:                                 ; preds = %lor.lhs.false.8
  %10 = load i32, i32* %regno, align 4
  %cmp11 = icmp sle i32 %10, 52
  br i1 %cmp11, label %cond.true, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true.10, %lor.lhs.false.8
  %11 = load i32, i32* %regno, align 4
  %cmp13 = icmp sge i32 %11, 29
  br i1 %cmp13, label %land.lhs.true.14, label %cond.false

land.lhs.true.14:                                 ; preds = %lor.lhs.false.12
  %12 = load i32, i32* %regno, align 4
  %cmp15 = icmp sle i32 %12, 36
  br i1 %cmp15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.14, %land.lhs.true.10, %land.lhs.true.6, %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load16 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load16, 16
  %bf.clear17 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear17 to i64
  %arrayidx18 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp eq i32 %15, 5
  br i1 %cmp19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load20 = load i32, i32* %17, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 255
  %idxprom23 = sext i32 %bf.clear22 to i64
  %arrayidx24 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %cmp25 = icmp eq i32 %18, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %19 = phi i1 [ true, %cond.true ], [ %cmp25, %lor.rhs ]
  %cond = select i1 %19, i32 2, i32 1
  br label %cond.end.56

cond.false:                                       ; preds = %land.lhs.true.14, %lor.lhs.false.12
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load26 = load i32, i32* %21, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %cmp29 = icmp eq i32 %bf.clear28, 18
  br i1 %cmp29, label %cond.true.30, label %cond.false.32

cond.true.30:                                     ; preds = %cond.false
  %22 = load i32, i32* @target_flags, align 4
  %and = and i32 %22, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond31 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.54

cond.false.32:                                    ; preds = %cond.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load33 = load i32, i32* %24, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  %cmp36 = icmp eq i32 %bf.clear35, 24
  br i1 %cmp36, label %cond.true.37, label %cond.false.41

cond.true.37:                                     ; preds = %cond.false.32
  %25 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %25, 33554432
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 4, i32 6
  br label %cond.end

cond.false.41:                                    ; preds = %cond.false.32
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load42 = load i32, i32* %27, align 8
  %bf.lshr43 = lshr i32 %bf.load42, 16
  %bf.clear44 = and i32 %bf.lshr43, 255
  %idxprom45 = sext i32 %bf.clear44 to i64
  %arrayidx46 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom45
  %28 = load i8, i8* %arrayidx46, align 1
  %conv = zext i8 %28 to i32
  %29 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %29, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 8, i32 4
  %add = add nsw i32 %conv, %cond49
  %sub = sub nsw i32 %add, 1
  %30 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %30, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 8, i32 4
  %div = sdiv i32 %sub, %cond52
  br label %cond.end

cond.end:                                         ; preds = %cond.false.41, %cond.true.37
  %cond53 = phi i32 [ %cond40, %cond.true.37 ], [ %div, %cond.false.41 ]
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.end, %cond.true.30
  %cond55 = phi i32 [ %cond31, %cond.true.30 ], [ %cond53, %cond.end ]
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.end.54, %lor.end
  %cond57 = phi i32 [ %cond, %lor.end ], [ %cond55, %cond.end.54 ]
  %sub58 = sub nsw i32 %cond57, 1
  store i32 %sub58, i32* %nregs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.56
  %31 = load i32, i32* %nregs, align 4
  %cmp59 = icmp sge i32 %31, 0
  br i1 %cmp59, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %regno, align 4
  %33 = load i32, i32* %nregs, align 4
  %add61 = add nsw i32 %32, %33
  %sh_prom = zext i32 %add61 to i64
  %shl = shl i64 1, %sh_prom
  %neg = xor i64 %shl, -1
  %34 = load i64, i64* %live.addr, align 8
  %and62 = and i64 %34, %neg
  store i64 %and62, i64* %live.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %35, -1
  store i32 %dec, i32* %nregs, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.63

if.end.63:                                        ; preds = %if.then, %for.end, %if.end
  ret void
}

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @reg_becomes_live(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %live) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %live.addr = alloca i8*, align 8
  %regno = alloca i32, align 4
  %nregs = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %live, i8** %live.addr, align 8
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
  br label %if.end.69

if.end.5:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %7 = load i32, i32* %rtuint, align 4
  store i32 %7, i32* %regno, align 4
  %8 = load i32, i32* %regno, align 4
  %cmp8 = icmp slt i32 %8, 53
  br i1 %cmp8, label %if.then.9, label %if.end.69

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
  %sub65 = sub nsw i32 %cond64, 1
  store i32 %sub65, i32* %nregs, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.63
  %35 = load i32, i32* %nregs, align 4
  %cmp66 = icmp sge i32 %35, 0
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load i32, i32* %regno, align 4
  %37 = load i32, i32* %nregs, align 4
  %add68 = add nsw i32 %36, %37
  %sh_prom = zext i32 %add68 to i64
  %shl = shl i64 1, %sh_prom
  %38 = load i8*, i8** %live.addr, align 8
  %39 = bitcast i8* %38 to i64*
  %40 = load i64, i64* %39, align 8
  %or = or i64 %40, %shl
  store i64 %or, i64* %39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %nregs, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %nregs, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.4, %for.end, %if.end.5
  ret void
}

declare void @sbitmap_not(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @start_sequence() #1

declare void @emit_i387_cw_initialization(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @assign_386_stack_local(i32, i32) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

; Function Attrs: nounwind uwtable
define internal void @make_preds_opaque(%struct.basic_block_def* %b, i32 %j) #0 {
entry:
  %b.addr = alloca %struct.basic_block_def*, align 8
  %j.addr = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %pb = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %b, %struct.basic_block_def** %b.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %b.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 4
  %1 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %1, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %3, i32 0, i32 2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %pb, align 8
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 5
  %6 = load i8*, i8** %aux, align 8
  %tobool1 = icmp ne i8* %6, null
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i32, i32* %j.addr, align 4
  %div = udiv i32 %7, 64
  %idxprom = zext i32 %div to i64
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %10, i64 %idxprom2
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load i32, i32* %j.addr, align 4
  %rem = urem i32 %13, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %12, %sh_prom
  %and = and i64 %shr, 1
  %tobool4 = icmp ne i64 %and, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %14 = load i32, i32* %j.addr, align 4
  %rem5 = urem i32 %14, 64
  %sh_prom6 = zext i32 %rem5 to i64
  %shl = shl i64 1, %sh_prom6
  %neg = xor i64 %shl, -1
  %15 = load i32, i32* %j.addr, align 4
  %div7 = udiv i32 %15, 64
  %idxprom8 = zext i32 %div7 to i64
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 11
  %17 = load i32, i32* %index9, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @transp, align 8
  %arrayidx11 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %18, i64 %idxprom10
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx11, align 8
  %elms12 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [1 x i64], [1 x i64]* %elms12, i32 0, i64 %idxprom8
  %20 = load i64, i64* %arrayidx13, align 8
  %and14 = and i64 %20, %neg
  store i64 %and14, i64* %arrayidx13, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %pb, align 8
  %22 = load i32, i32* %j.addr, align 4
  call void @make_preds_opaque(%struct.basic_block_def* %21, i32 %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 0
  %24 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %24, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @free_edge_list(%struct.edge_list*) #1

declare void @commit_edge_insertions() #1

declare void @allocate_reg_life_data() #1

declare void @update_life_info(%struct.simple_bitmap_def*, i32, i32) #1

declare void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def*, %struct.simple_bitmap_def**, i32) #1

declare i32 @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_difference(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_ones(%struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
