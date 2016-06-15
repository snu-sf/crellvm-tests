; ModuleID = 'cfgloop.c'
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
%struct.loop = type { i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def**, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.simple_bitmap_def*, i32, %struct.edge_def**, i32, %struct.edge_def**, i32, %struct.simple_bitmap_def*, i32, i32, %struct.loop*, %struct.loop*, %struct.loop*, i32, i32, i8*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.loops = type { i32, i32, %struct.loop*, %struct.loop*, %struct.cfg, %struct.simple_bitmap_def* }
%struct.cfg = type { %struct.simple_bitmap_def**, i32*, i32* }

@.str = private unnamed_addr constant [31 x i8] c";;\0A;; Loop %d (%d to %d):%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" shared\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" invalid\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c";;\0A;; Loop %d:%s%s\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c";;  header %d, latch %d, pre-header %d, first %d, last %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c";;  depth %d, level %d, outer %ld\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c";;  pre-header edges\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c";;  entry edges\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c";;  %d\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c" nodes\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c";;  exit edges\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c";;  exit doms\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c";; %d loops found, %d levels\0A\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c";; loop header %d shared by loops %d, %d %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"disjoint\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"nested\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"cfgloop.c\00", align 1
@__FUNCTION__.flow_loops_free = private unnamed_addr constant [16 x i8] c"flow_loops_free\00", align 1
@n_basic_blocks = external global i32, align 4
@__FUNCTION__.flow_loop_scan = private unnamed_addr constant [15 x i8] c"flow_loop_scan\00", align 1
@__FUNCTION__.flow_loops_find = private unnamed_addr constant [16 x i8] c"flow_loops_find\00", align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@__FUNCTION__.flow_loop_outside_edge_p = private unnamed_addr constant [25 x i8] c"flow_loop_outside_edge_p\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c";; %d succs { \00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"} dom\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c";; DFS order: \00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c";; RC order: \00", align 1
@__FUNCTION__.flow_loop_entry_edges_find = private unnamed_addr constant [27 x i8] c"flow_loop_entry_edges_find\00", align 1

; Function Attrs: nounwind uwtable
define void @flow_loop_dump(%struct.loop* %loop, %struct._IO_FILE* %file, void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, i32 %verbose) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %loop_dump_aux.addr = alloca void (%struct.loop*, %struct._IO_FILE*, i32)*, align 8
  %verbose.addr = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, void (%struct.loop*, %struct._IO_FILE*, i32)** %loop_dump_aux.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %tobool = icmp ne %struct.loop* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %1, i32 0, i32 1
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %tobool1 = icmp ne %struct.basic_block_def* %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.54

if.end:                                           ; preds = %lor.lhs.false
  %3 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %first = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 6
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %first, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 0
  %5 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %tobool2 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %last = getelementptr inbounds %struct.loop, %struct.loop* %6, i32 0, i32 7
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %last, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %tobool3 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 0
  %11 = load i32, i32* %num, align 4
  %12 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %first5 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 6
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %first5, align 8
  %head6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head6, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %15 = load i32, i32* %rtint, align 4
  %16 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %last7 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 7
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %last7, align 8
  %end8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %end8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtint11 = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %19 = load i32, i32* %rtint11, align 4
  %20 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %shared = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 20
  %21 = load i32, i32* %shared, align 4
  %tobool12 = icmp ne i32 %21, 0
  %cond = select i1 %tobool12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %22 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %invalid = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 21
  %23 = load i32, i32* %invalid, align 4
  %tobool13 = icmp ne i32 %23, 0
  %cond14 = select i1 %tobool13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %15, i32 %19, i8* %cond, i8* %cond14)
  br label %if.end.23

if.else:                                          ; preds = %land.lhs.true, %if.end
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %25 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num15 = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 0
  %26 = load i32, i32* %num15, align 4
  %27 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %shared16 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 20
  %28 = load i32, i32* %shared16, align 4
  %tobool17 = icmp ne i32 %28, 0
  %cond18 = select i1 %tobool17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %29 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %invalid19 = getelementptr inbounds %struct.loop, %struct.loop* %29, i32 0, i32 21
  %30 = load i32, i32* %invalid19, align 4
  %tobool20 = icmp ne i32 %30, 0
  %cond21 = select i1 %tobool20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0)
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 %26, i8* %cond18, i8* %cond21)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header24 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 1
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %header24, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 11
  %34 = load i32, i32* %index, align 4
  %35 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %35, i32 0, i32 2
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8
  %index25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %36, i32 0, i32 11
  %37 = load i32, i32* %index25, align 4
  %38 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header = getelementptr inbounds %struct.loop, %struct.loop* %38, i32 0, i32 3
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %pre_header, align 8
  %tobool26 = icmp ne %struct.basic_block_def* %39, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.23
  %40 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header27 = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 3
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %pre_header27, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index28, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.23
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond29 = phi i32 [ %42, %cond.true ], [ -1, %cond.false ]
  %43 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %first30 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 6
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %first30, align 8
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  %45 = load i32, i32* %index31, align 4
  %46 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %last32 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 7
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %last32, align 8
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index33, align 4
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i32 0, i32 0), i32 %34, i32 %37, i32 %cond29, i32 %45, i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %50 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %depth = getelementptr inbounds %struct.loop, %struct.loop* %50, i32 0, i32 15
  %51 = load i32, i32* %depth, align 4
  %52 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %level = getelementptr inbounds %struct.loop, %struct.loop* %52, i32 0, i32 16
  %53 = load i32, i32* %level, align 4
  %54 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %outer = getelementptr inbounds %struct.loop, %struct.loop* %54, i32 0, i32 17
  %55 = load %struct.loop*, %struct.loop** %outer, align 8
  %tobool35 = icmp ne %struct.loop* %55, null
  br i1 %tobool35, label %cond.true.36, label %cond.false.39

cond.true.36:                                     ; preds = %cond.end
  %56 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %outer37 = getelementptr inbounds %struct.loop, %struct.loop* %56, i32 0, i32 17
  %57 = load %struct.loop*, %struct.loop** %outer37, align 8
  %num38 = getelementptr inbounds %struct.loop, %struct.loop* %57, i32 0, i32 0
  %58 = load i32, i32* %num38, align 4
  br label %cond.end.40

cond.false.39:                                    ; preds = %cond.end
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.36
  %cond41 = phi i32 [ %58, %cond.true.36 ], [ -1, %cond.false.39 ]
  %conv = sext i32 %cond41 to i64
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 %51, i32 %53, i64 %conv)
  %59 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header_edges = getelementptr inbounds %struct.loop, %struct.loop* %59, i32 0, i32 4
  %60 = load %struct.edge_def**, %struct.edge_def*** %pre_header_edges, align 8
  %tobool43 = icmp ne %struct.edge_def** %60, null
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %cond.end.40
  %61 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header_edges45 = getelementptr inbounds %struct.loop, %struct.loop* %61, i32 0, i32 4
  %62 = load %struct.edge_def**, %struct.edge_def*** %pre_header_edges45, align 8
  %63 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_pre_header_edges = getelementptr inbounds %struct.loop, %struct.loop* %63, i32 0, i32 5
  %64 = load i32, i32* %num_pre_header_edges, align 4
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_edge_list_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), %struct.edge_def** %62, i32 %64, %struct._IO_FILE* %65)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %cond.end.40
  %66 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %entry_edges = getelementptr inbounds %struct.loop, %struct.loop* %66, i32 0, i32 10
  %67 = load %struct.edge_def**, %struct.edge_def*** %entry_edges, align 8
  %68 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_entries = getelementptr inbounds %struct.loop, %struct.loop* %68, i32 0, i32 11
  %69 = load i32, i32* %num_entries, align 4
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_edge_list_print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), %struct.edge_def** %67, i32 %69, %struct._IO_FILE* %70)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %72 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %72, i32 0, i32 9
  %73 = load i32, i32* %num_nodes, align 4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %73)
  %74 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %74, i32 0, i32 8
  %75 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_nodes_print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), %struct.simple_bitmap_def* %75, %struct._IO_FILE* %76)
  %77 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_edges = getelementptr inbounds %struct.loop, %struct.loop* %77, i32 0, i32 12
  %78 = load %struct.edge_def**, %struct.edge_def*** %exit_edges, align 8
  %79 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_exits = getelementptr inbounds %struct.loop, %struct.loop* %79, i32 0, i32 13
  %80 = load i32, i32* %num_exits, align 4
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_edge_list_print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct.edge_def** %78, i32 %80, %struct._IO_FILE* %81)
  %82 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms = getelementptr inbounds %struct.loop, %struct.loop* %82, i32 0, i32 14
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms, align 8
  %tobool48 = icmp ne %struct.simple_bitmap_def* %83, null
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.end.46
  %84 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms50 = getelementptr inbounds %struct.loop, %struct.loop* %84, i32 0, i32 14
  %85 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms50, align 8
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_nodes_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct.simple_bitmap_def* %85, %struct._IO_FILE* %86)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.end.46
  %87 = load void (%struct.loop*, %struct._IO_FILE*, i32)*, void (%struct.loop*, %struct._IO_FILE*, i32)** %loop_dump_aux.addr, align 8
  %tobool52 = icmp ne void (%struct.loop*, %struct._IO_FILE*, i32)* %87, null
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.51
  %88 = load void (%struct.loop*, %struct._IO_FILE*, i32)*, void (%struct.loop*, %struct._IO_FILE*, i32)** %loop_dump_aux.addr, align 8
  %89 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %91 = load i32, i32* %verbose.addr, align 4
  call void %88(%struct.loop* %89, %struct._IO_FILE* %90, i32 %91)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then, %if.then.53, %if.end.51
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @flow_edge_list_print(i8*, %struct.edge_def**, i32, %struct._IO_FILE*) #1

declare void @flow_nodes_print(i8*, %struct.simple_bitmap_def*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @flow_loops_dump(%struct.loops* %loops, %struct._IO_FILE* %file, void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, i32 %verbose) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %loop_dump_aux.addr = alloca void (%struct.loop*, %struct._IO_FILE*, i32)*, align 8
  %verbose.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %num_loops = alloca i32, align 4
  %loop = alloca %struct.loop*, align 8
  %oloop = alloca %struct.loop*, align 8
  %disjoint = alloca i32, align 4
  %smaller = alloca i32, align 4
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store void (%struct.loop*, %struct._IO_FILE*, i32)* %loop_dump_aux, void (%struct.loop*, %struct._IO_FILE*, i32)** %loop_dump_aux.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 0
  %1 = load i32, i32* %num, align 4
  store i32 %1, i32* %num_loops, align 4
  %2 = load i32, i32* %num_loops, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %3, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %if.end.34

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load i32, i32* %num_loops, align 4
  %6 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %levels = getelementptr inbounds %struct.loops, %struct.loops* %6, i32 0, i32 1
  %7 = load i32, i32* %levels, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i32 0, i32 0), i32 %5, i32 %7)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %num_loops, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.31

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %11, i32 0, i32 2
  %12 = load %struct.loop*, %struct.loop** %array, align 8
  %arrayidx = getelementptr inbounds %struct.loop, %struct.loop* %12, i64 %idxprom
  store %struct.loop* %arrayidx, %struct.loop** %loop, align 8
  %13 = load %struct.loop*, %struct.loop** %loop, align 8
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load void (%struct.loop*, %struct._IO_FILE*, i32)*, void (%struct.loop*, %struct._IO_FILE*, i32)** %loop_dump_aux.addr, align 8
  %16 = load i32, i32* %verbose.addr, align 4
  call void @flow_loop_dump(%struct.loop* %13, %struct._IO_FILE* %14, void (%struct.loop*, %struct._IO_FILE*, i32)* %15, i32 %16)
  %17 = load %struct.loop*, %struct.loop** %loop, align 8
  %shared = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 20
  %18 = load i32, i32* %shared, align 4
  %tobool2 = icmp ne i32 %18, 0
  br i1 %tobool2, label %if.then.3, label %if.end.28

if.then.3:                                        ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %if.then.3
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %19, %20
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %21 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %21 to i64
  %22 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array8 = getelementptr inbounds %struct.loops, %struct.loops* %22, i32 0, i32 2
  %23 = load %struct.loop*, %struct.loop** %array8, align 8
  %arrayidx9 = getelementptr inbounds %struct.loop, %struct.loop* %23, i64 %idxprom7
  store %struct.loop* %arrayidx9, %struct.loop** %oloop, align 8
  %24 = load %struct.loop*, %struct.loop** %loop, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 1
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %26 = load %struct.loop*, %struct.loop** %oloop, align 8
  %header10 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 1
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %header10, align 8
  %cmp11 = icmp eq %struct.basic_block_def* %25, %27
  br i1 %cmp11, label %if.then.12, label %if.end.27

if.then.12:                                       ; preds = %for.body.6
  %28 = load %struct.loop*, %struct.loop** %loop, align 8
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 9
  %29 = load i32, i32* %num_nodes, align 4
  %30 = load %struct.loop*, %struct.loop** %oloop, align 8
  %num_nodes13 = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 9
  %31 = load i32, i32* %num_nodes13, align 4
  %cmp14 = icmp slt i32 %29, %31
  %conv = zext i1 %cmp14 to i32
  store i32 %conv, i32* %smaller, align 4
  %32 = load i32, i32* %smaller, align 4
  %tobool15 = icmp ne i32 %32, 0
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.12
  %33 = load %struct.loop*, %struct.loop** %loop, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.12
  %34 = load %struct.loop*, %struct.loop** %oloop, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.loop* [ %33, %cond.true ], [ %34, %cond.false ]
  %35 = load i32, i32* %smaller, align 4
  %tobool16 = icmp ne i32 %35, 0
  br i1 %tobool16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end
  %36 = load %struct.loop*, %struct.loop** %oloop, align 8
  br label %cond.end.19

cond.false.18:                                    ; preds = %cond.end
  %37 = load %struct.loop*, %struct.loop** %loop, align 8
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.18, %cond.true.17
  %cond20 = phi %struct.loop* [ %36, %cond.true.17 ], [ %37, %cond.false.18 ]
  %call21 = call i32 @flow_loop_nested_p(%struct.loop* %cond, %struct.loop* %cond20)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %disjoint, align 4
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %39 = load %struct.loop*, %struct.loop** %loop, align 8
  %header23 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 1
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %header23, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 11
  %41 = load i32, i32* %index, align 4
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %disjoint, align 4
  %tobool24 = icmp ne i32 %44, 0
  %cond25 = select i1 %tobool24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0), i32 %41, i32 %42, i32 %43, i8* %cond25)
  br label %if.end.27

if.end.27:                                        ; preds = %cond.end.19, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %45 = load i32, i32* %j, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %for.body
  br label %for.inc.29

for.inc.29:                                       ; preds = %if.end.28
  %46 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %46, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end.31:                                       ; preds = %for.cond
  %47 = load i32, i32* %verbose.addr, align 4
  %tobool32 = icmp ne i32 %47, 0
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.end.31
  %48 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_loops_cfg_dump(%struct.loops* %48, %struct._IO_FILE* %49)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then, %if.then.33, %for.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_loop_nested_p(%struct.loop* %outer, %struct.loop* %loop) #0 {
entry:
  %outer.addr = alloca %struct.loop*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  store %struct.loop* %outer, %struct.loop** %outer.addr, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %2 = load %struct.loop*, %struct.loop** %outer.addr, align 8
  %nodes1 = getelementptr inbounds %struct.loop, %struct.loop* %2, i32 0, i32 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes1, align 8
  %call = call i32 @sbitmap_a_subset_b_p(%struct.simple_bitmap_def* %1, %struct.simple_bitmap_def* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @flow_loops_cfg_dump(%struct.loops* %loops, %struct._IO_FILE* %file) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %succ = alloca %struct.edge_def*, align 8
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 0
  %1 = load i32, i32* %num, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %tobool1 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg = getelementptr inbounds %struct.loops, %struct.loops* %3, i32 0, i32 4
  %dom = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg, i32 0, i32 0
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %tobool3 = icmp ne %struct.simple_bitmap_def** %4, null
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  br label %if.end.48

if.end:                                           ; preds = %lor.lhs.false.2
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 5
  %12 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  store %struct.edge_def* %12, %struct.edge_def** %succ, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %13 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool6 = icmp ne %struct.edge_def* %13, null
  br i1 %tobool6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 3
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 11
  %17 = load i32, i32* %index, align 4
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %18 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 1
  %19 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %19, %struct.edge_def** %succ, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %20 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %20 to i64
  %21 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg10 = getelementptr inbounds %struct.loops, %struct.loops* %21, i32 0, i32 4
  %dom11 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg10, i32 0, i32 0
  %22 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom11, align 8
  %arrayidx12 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %22, i64 %idxprom9
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx12, align 8
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @flow_nodes_print(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), %struct.simple_bitmap_def* %23, %struct._IO_FILE* %24)
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %26 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg15 = getelementptr inbounds %struct.loops, %struct.loops* %26, i32 0, i32 4
  %dfs_order = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg15, i32 0, i32 1
  %27 = load i32*, i32** %dfs_order, align 8
  %tobool16 = icmp ne i32* %27, null
  br i1 %tobool16, label %if.then.17, label %if.end.31

if.then.17:                                       ; preds = %for.end.14
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %28)
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.27, %if.then.17
  %29 = load i32, i32* %i, align 4
  %30 = load i32, i32* @n_basic_blocks, align 4
  %cmp20 = icmp slt i32 %29, %30
  br i1 %cmp20, label %for.body.21, label %for.end.29

for.body.21:                                      ; preds = %for.cond.19
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg23 = getelementptr inbounds %struct.loops, %struct.loops* %33, i32 0, i32 4
  %dfs_order24 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg23, i32 0, i32 1
  %34 = load i32*, i32** %dfs_order24, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx25, align 4
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %35)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.21
  %36 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %36, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.19

for.end.29:                                       ; preds = %for.cond.19
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %37)
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.29, %for.end.14
  %38 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg32 = getelementptr inbounds %struct.loops, %struct.loops* %38, i32 0, i32 4
  %rc_order = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg32, i32 0, i32 2
  %39 = load i32*, i32** %rc_order, align 8
  %tobool33 = icmp ne i32* %39, null
  br i1 %tobool33, label %if.then.34, label %if.end.48

if.then.34:                                       ; preds = %if.end.31
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %40)
  store i32 0, i32* %i, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.44, %if.then.34
  %41 = load i32, i32* %i, align 4
  %42 = load i32, i32* @n_basic_blocks, align 4
  %cmp37 = icmp slt i32 %41, %42
  br i1 %cmp37, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.36
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg40 = getelementptr inbounds %struct.loops, %struct.loops* %45, i32 0, i32 4
  %rc_order41 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg40, i32 0, i32 2
  %46 = load i32*, i32** %rc_order41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %46, i64 %idxprom39
  %47 = load i32, i32* %arrayidx42, align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), i32 %47)
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.body.38
  %48 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %48, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.36

for.end.46:                                       ; preds = %for.cond.36
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %49)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then, %for.end.46, %if.end.31
  ret void
}

; Function Attrs: nounwind uwtable
define void @flow_loops_free(%struct.loops* %loops) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %i = alloca i32, align 4
  %loop = alloca %struct.loop*, align 8
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 2
  %1 = load %struct.loop*, %struct.loop** %array, align 8
  %tobool = icmp ne %struct.loop* %1, null
  br i1 %tobool, label %if.then, label %if.end.42

if.then:                                          ; preds = %entry
  %2 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num = getelementptr inbounds %struct.loops, %struct.loops* %2, i32 0, i32 0
  %3 = load i32, i32* %num, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 209, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.flow_loops_free, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num3 = getelementptr inbounds %struct.loops, %struct.loops* %5, i32 0, i32 0
  %6 = load i32, i32* %num3, align 4
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array4 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 2
  %9 = load %struct.loop*, %struct.loop** %array4, align 8
  %arrayidx = getelementptr inbounds %struct.loop, %struct.loop* %9, i64 %idxprom
  store %struct.loop* %arrayidx, %struct.loop** %loop, align 8
  %10 = load %struct.loop*, %struct.loop** %loop, align 8
  %pre_header_edges = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 4
  %11 = load %struct.edge_def**, %struct.edge_def*** %pre_header_edges, align 8
  %tobool5 = icmp ne %struct.edge_def** %11, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %for.body
  %12 = load %struct.loop*, %struct.loop** %loop, align 8
  %pre_header_edges7 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 4
  %13 = load %struct.edge_def**, %struct.edge_def*** %pre_header_edges7, align 8
  %14 = bitcast %struct.edge_def** %13 to i8*
  call void @free(i8* %14) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %for.body
  %15 = load %struct.loop*, %struct.loop** %loop, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 8
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %tobool9 = icmp ne %struct.simple_bitmap_def* %16, null
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.8
  %17 = load %struct.loop*, %struct.loop** %loop, align 8
  %nodes11 = getelementptr inbounds %struct.loop, %struct.loop* %17, i32 0, i32 8
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes11, align 8
  %19 = bitcast %struct.simple_bitmap_def* %18 to i8*
  call void @free(i8* %19) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.8
  %20 = load %struct.loop*, %struct.loop** %loop, align 8
  %entry_edges = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 10
  %21 = load %struct.edge_def**, %struct.edge_def*** %entry_edges, align 8
  %tobool13 = icmp ne %struct.edge_def** %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.loop*, %struct.loop** %loop, align 8
  %entry_edges15 = getelementptr inbounds %struct.loop, %struct.loop* %22, i32 0, i32 10
  %23 = load %struct.edge_def**, %struct.edge_def*** %entry_edges15, align 8
  %24 = bitcast %struct.edge_def** %23 to i8*
  call void @free(i8* %24) #4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %25 = load %struct.loop*, %struct.loop** %loop, align 8
  %exit_edges = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 12
  %26 = load %struct.edge_def**, %struct.edge_def*** %exit_edges, align 8
  %tobool17 = icmp ne %struct.edge_def** %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.end.16
  %27 = load %struct.loop*, %struct.loop** %loop, align 8
  %exit_edges19 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 12
  %28 = load %struct.edge_def**, %struct.edge_def*** %exit_edges19, align 8
  %29 = bitcast %struct.edge_def** %28 to i8*
  call void @free(i8* %29) #4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.16
  %30 = load %struct.loop*, %struct.loop** %loop, align 8
  %exits_doms = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 14
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms, align 8
  %tobool21 = icmp ne %struct.simple_bitmap_def* %31, null
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.20
  %32 = load %struct.loop*, %struct.loop** %loop, align 8
  %exits_doms23 = getelementptr inbounds %struct.loop, %struct.loop* %32, i32 0, i32 14
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms23, align 8
  %34 = bitcast %struct.simple_bitmap_def* %33 to i8*
  call void @free(i8* %34) #4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array25 = getelementptr inbounds %struct.loops, %struct.loops* %36, i32 0, i32 2
  %37 = load %struct.loop*, %struct.loop** %array25, align 8
  %38 = bitcast %struct.loop* %37 to i8*
  call void @free(i8* %38) #4
  %39 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array26 = getelementptr inbounds %struct.loops, %struct.loops* %39, i32 0, i32 2
  store %struct.loop* null, %struct.loop** %array26, align 8
  %40 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg = getelementptr inbounds %struct.loops, %struct.loops* %40, i32 0, i32 4
  %dom = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg, i32 0, i32 0
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %tobool27 = icmp ne %struct.simple_bitmap_def** %41, null
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end
  %42 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg29 = getelementptr inbounds %struct.loops, %struct.loops* %42, i32 0, i32 4
  %dom30 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg29, i32 0, i32 0
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom30, align 8
  %44 = bitcast %struct.simple_bitmap_def** %43 to i8*
  call void @free(i8* %44) #4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.end
  %45 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg32 = getelementptr inbounds %struct.loops, %struct.loops* %45, i32 0, i32 4
  %dfs_order = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg32, i32 0, i32 1
  %46 = load i32*, i32** %dfs_order, align 8
  %tobool33 = icmp ne i32* %46, null
  br i1 %tobool33, label %if.then.34, label %if.end.37

if.then.34:                                       ; preds = %if.end.31
  %47 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg35 = getelementptr inbounds %struct.loops, %struct.loops* %47, i32 0, i32 4
  %dfs_order36 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg35, i32 0, i32 1
  %48 = load i32*, i32** %dfs_order36, align 8
  %49 = bitcast i32* %48 to i8*
  call void @free(i8* %49) #4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.34, %if.end.31
  %50 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers = getelementptr inbounds %struct.loops, %struct.loops* %50, i32 0, i32 5
  %51 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %shared_headers, align 8
  %tobool38 = icmp ne %struct.simple_bitmap_def* %51, null
  br i1 %tobool38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.37
  %52 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers40 = getelementptr inbounds %struct.loops, %struct.loops* %52, i32 0, i32 5
  %53 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %shared_headers40, align 8
  %54 = bitcast %struct.simple_bitmap_def* %53 to i8*
  call void @free(i8* %54) #4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.37
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %entry
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @flow_loop_scan(%struct.loops* %loops, %struct.loop* %loop, i32 %flags) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  %flags.addr = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_edges = getelementptr inbounds %struct.loop, %struct.loop* %1, i32 0, i32 12
  %2 = load %struct.edge_def**, %struct.edge_def*** %exit_edges, align 8
  %tobool1 = icmp ne %struct.edge_def** %2, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %flags.addr, align 4
  %or = or i32 %3, 8
  store i32 %or, i32* %flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %4 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %4, 4
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 1
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %7 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 8
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %9 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %entry_edges = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 10
  %call = call i32 @flow_loop_entry_edges_find(%struct.basic_block_def* %6, %struct.simple_bitmap_def* %8, %struct.edge_def*** %entry_edges)
  %10 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_entries = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 11
  store i32 %call, i32* %num_entries, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  %11 = load i32, i32* %flags.addr, align 4
  %and6 = and i32 %11, 8
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %if.end.5
  %12 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes9 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 8
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes9, align 8
  %14 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_edges10 = getelementptr inbounds %struct.loop, %struct.loop* %14, i32 0, i32 12
  %call11 = call i32 @flow_loop_exit_edges_find(%struct.simple_bitmap_def* %13, %struct.edge_def*** %exit_edges10)
  %15 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_exits = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 13
  store i32 %call11, i32* %num_exits, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %if.end.5
  %16 = load i32, i32* %flags.addr, align 4
  %and13 = and i32 %16, 16
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.37

if.then.15:                                       ; preds = %if.end.12
  %17 = load i32, i32* @n_basic_blocks, align 4
  %call16 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %17)
  %18 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms = getelementptr inbounds %struct.loop, %struct.loop* %18, i32 0, i32 14
  store %struct.simple_bitmap_def* %call16, %struct.simple_bitmap_def** %exits_doms, align 8
  %19 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms17 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 14
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms17, align 8
  %21 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes18 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 8
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes18, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %20, %struct.simple_bitmap_def* %22)
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.15
  %23 = load i32, i32* %j, align 4
  %24 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_exits19 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 13
  %25 = load i32, i32* %num_exits19, align 4
  %cmp = icmp slt i32 %23, %25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms20 = getelementptr inbounds %struct.loop, %struct.loop* %26, i32 0, i32 14
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms20, align 8
  %28 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms21 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 14
  %29 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms21, align 8
  %30 = load i32, i32* %j, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_edges22 = getelementptr inbounds %struct.loop, %struct.loop* %31, i32 0, i32 12
  %32 = load %struct.edge_def**, %struct.edge_def*** %exit_edges22, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %32, i64 %idxprom
  %33 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 2
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg = getelementptr inbounds %struct.loops, %struct.loops* %36, i32 0, i32 4
  %dom = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg, i32 0, i32 0
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %37, i64 %idxprom23
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  %call25 = call i32 @sbitmap_a_and_b(%struct.simple_bitmap_def* %27, %struct.simple_bitmap_def* %29, %struct.simple_bitmap_def* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %j, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header26 = getelementptr inbounds %struct.loop, %struct.loop* %40, i32 0, i32 1
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %header26, align 8
  %index27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index27, align 4
  %div = udiv i32 %42, 64
  %idxprom28 = zext i32 %div to i64
  %43 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exits_doms29 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 14
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %exits_doms29, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom28
  %45 = load i64, i64* %arrayidx30, align 8
  %46 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header31 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 1
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %header31, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index32, align 4
  %rem = urem i32 %48, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %45, %sh_prom
  %and33 = and i64 %shr, 1
  %tobool34 = icmp ne i64 %and33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 611, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.flow_loop_scan, i32 0, i32 0)) #5
  unreachable

if.end.36:                                        ; preds = %for.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.12
  %49 = load i32, i32* %flags.addr, align 4
  %and38 = and i32 %49, 2
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.45

if.then.40:                                       ; preds = %if.end.37
  %50 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header41 = getelementptr inbounds %struct.loop, %struct.loop* %50, i32 0, i32 1
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %header41, align 8
  %52 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg42 = getelementptr inbounds %struct.loops, %struct.loops* %52, i32 0, i32 4
  %dom43 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg42, i32 0, i32 0
  %53 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom43, align 8
  %call44 = call %struct.basic_block_def* @flow_loop_pre_header_find(%struct.basic_block_def* %51, %struct.simple_bitmap_def** %53)
  %54 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header = getelementptr inbounds %struct.loop, %struct.loop* %54, i32 0, i32 3
  store %struct.basic_block_def* %call44, %struct.basic_block_def** %pre_header, align 8
  %55 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  call void @flow_loop_pre_header_scan(%struct.loop* %55)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.40, %if.end.37
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_loop_entry_edges_find(%struct.basic_block_def* %header, %struct.simple_bitmap_def* %nodes, %struct.edge_def*** %entry_edges) #0 {
entry:
  %header.addr = alloca %struct.basic_block_def*, align 8
  %nodes.addr = alloca %struct.simple_bitmap_def*, align 8
  %entry_edges.addr = alloca %struct.edge_def***, align 8
  %e = alloca %struct.edge_def*, align 8
  %num_entries = alloca i32, align 4
  %src = alloca %struct.basic_block_def*, align 8
  %src11 = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %header, %struct.basic_block_def** %header.addr, align 8
  store %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def** %nodes.addr, align 8
  store %struct.edge_def*** %entry_edges, %struct.edge_def**** %entry_edges.addr, align 8
  %0 = load %struct.edge_def***, %struct.edge_def**** %entry_edges.addr, align 8
  store %struct.edge_def** null, %struct.edge_def*** %0, align 8
  store i32 0, i32* %num_entries, align 4
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 4
  %2 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %2, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %src, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp = icmp eq %struct.basic_block_def* %6, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index, align 4
  %div = udiv i32 %8, 64
  %idxprom = zext i32 %div to i64
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %9, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index2, align 4
  %rem = urem i32 %12, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %10, %sh_prom
  %and = and i64 %shr, 1
  %tobool3 = icmp ne i64 %and, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %13 = load i32, i32* %num_entries, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %num_entries, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 0
  %15 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %num_entries, align 4
  %tobool4 = icmp ne i32 %16, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__FUNCTION__.flow_loop_entry_edges_find, i32 0, i32 0)) #5
  unreachable

if.end.6:                                         ; preds = %for.end
  %17 = load i32, i32* %num_entries, align 4
  %conv = sext i32 %17 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %18 = bitcast i8* %call to %struct.edge_def**
  %19 = load %struct.edge_def***, %struct.edge_def**** %entry_edges.addr, align 8
  store %struct.edge_def** %18, %struct.edge_def*** %19, align 8
  store i32 0, i32* %num_entries, align 4
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %pred7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 4
  %21 = load %struct.edge_def*, %struct.edge_def** %pred7, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.32, %if.end.6
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool9 = icmp ne %struct.edge_def* %22, null
  br i1 %tobool9, label %for.body.10, label %for.end.34

for.body.10:                                      ; preds = %for.cond.8
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 2
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %src12, align 8
  store %struct.basic_block_def* %24, %struct.basic_block_def** %src11, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %25, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp13, label %if.then.27, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %for.body.10
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8
  %index16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index16, align 4
  %div17 = udiv i32 %27, 64
  %idxprom18 = zext i32 %div17 to i64
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms19 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %28, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %elms19, i32 0, i64 %idxprom18
  %29 = load i64, i64* %arrayidx20, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index21, align 4
  %rem22 = urem i32 %31, 64
  %sh_prom23 = zext i32 %rem22 to i64
  %shr24 = lshr i64 %29, %sh_prom23
  %and25 = and i64 %shr24, 1
  %tobool26 = icmp ne i64 %and25, 0
  br i1 %tobool26, label %if.end.31, label %if.then.27

if.then.27:                                       ; preds = %lor.lhs.false.15, %for.body.10
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %33 = load i32, i32* %num_entries, align 4
  %inc28 = add nsw i32 %33, 1
  store i32 %inc28, i32* %num_entries, align 4
  %idxprom29 = sext i32 %33 to i64
  %34 = load %struct.edge_def***, %struct.edge_def**** %entry_edges.addr, align 8
  %35 = load %struct.edge_def**, %struct.edge_def*** %34, align 8
  %arrayidx30 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %35, i64 %idxprom29
  store %struct.edge_def* %32, %struct.edge_def** %arrayidx30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.27, %lor.lhs.false.15
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 0
  %37 = load %struct.edge_def*, %struct.edge_def** %pred_next33, align 8
  store %struct.edge_def* %37, %struct.edge_def** %e, align 8
  br label %for.cond.8

for.end.34:                                       ; preds = %for.cond.8
  %38 = load i32, i32* %num_entries, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_loop_exit_edges_find(%struct.simple_bitmap_def* %nodes, %struct.edge_def*** %exit_edges) #0 {
entry:
  %retval = alloca i32, align 4
  %nodes.addr = alloca %struct.simple_bitmap_def*, align 8
  %exit_edges.addr = alloca %struct.edge_def***, align 8
  %e = alloca %struct.edge_def*, align 8
  %node = alloca i32, align 4
  %num_exits = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  %word_num_38 = alloca i32, align 4
  %bit_num_39 = alloca i32, align 4
  %size_40 = alloca i32, align 4
  %ptr_42 = alloca i64*, align 8
  %word_49 = alloca i64, align 8
  %_mask59 = alloca i64, align 8
  %dest78 = alloca %struct.basic_block_def*, align 8
  store %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def** %nodes.addr, align 8
  store %struct.edge_def*** %exit_edges, %struct.edge_def**** %exit_edges.addr, align 8
  %0 = load %struct.edge_def***, %struct.edge_def**** %exit_edges.addr, align 8
  store %struct.edge_def** null, %struct.edge_def*** %0, align 8
  store i32 0, i32* %num_exits, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %1, i32 0, i32 1
  %2 = load i32, i32* %size, align 4
  store i32 %2, i32* %size_, align 4
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %do.body
  %4 = load i32, i32* %word_num_, align 4
  %5 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load i64*, i64** %ptr_, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  store i64 %8, i64* %word_, align 8
  %9 = load i64, i64* %word_, align 8
  %cmp1 = icmp ne i64 %9, 0
  br i1 %cmp1, label %if.then, label %if.end.29

if.then:                                          ; preds = %for.body
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.26, %if.then
  %10 = load i32, i32* %bit_num_, align 4
  %cmp3 = icmp ult i32 %10, 64
  br i1 %cmp3, label %for.body.4, label %for.end.28

for.body.4:                                       ; preds = %for.cond.2
  %11 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %11 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %12 = load i64, i64* %word_, align 8
  %13 = load i64, i64* %_mask, align 8
  %and = and i64 %12, %13
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.then.6, label %if.end.25

if.then.6:                                        ; preds = %for.body.4
  %14 = load i64, i64* %_mask, align 8
  %neg = xor i64 %14, -1
  %15 = load i64, i64* %word_, align 8
  %and7 = and i64 %15, %neg
  store i64 %and7, i64* %word_, align 8
  %16 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %16, 64
  %17 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %17
  store i32 %add, i32* %node, align 4
  %18 = load i32, i32* %node, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 5
  %21 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %21, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then.6
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %22, null
  br i1 %tobool, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.10
  %23 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i32 0, i32 3
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest12, align 8
  store %struct.basic_block_def* %24, %struct.basic_block_def** %dest, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %25, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.11
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index, align 4
  %div = udiv i32 %27, 64
  %idxprom14 = zext i32 %div to i64
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms15 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %28, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [1 x i64], [1 x i64]* %elms15, i32 0, i64 %idxprom14
  %29 = load i64, i64* %arrayidx16, align 8
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index17, align 4
  %rem = urem i32 %31, 64
  %sh_prom18 = zext i32 %rem to i64
  %shr = lshr i64 %29, %sh_prom18
  %and19 = and i64 %shr, 1
  %tobool20 = icmp ne i64 %and19, 0
  br i1 %tobool20, label %if.end, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false, %for.body.11
  %32 = load i32, i32* %num_exits, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %num_exits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 1
  %34 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %34, %struct.edge_def** %e, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %35 = load i64, i64* %word_, align 8
  %cmp22 = icmp eq i64 %35, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  br label %for.end.28

if.end.24:                                        ; preds = %for.end
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body.4
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %36 = load i32, i32* %bit_num_, align 4
  %inc27 = add i32 %36, 1
  store i32 %inc27, i32* %bit_num_, align 4
  br label %for.cond.2

for.end.28:                                       ; preds = %if.then.23, %for.cond.2
  br label %if.end.29

if.end.29:                                        ; preds = %for.end.28, %for.body
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %37 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %37, 1
  store i32 %inc31, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.32
  %38 = load i32, i32* %num_exits, align 4
  %tobool33 = icmp ne i32 %38, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %do.end
  %39 = load i32, i32* %num_exits, align 4
  %conv = sext i32 %39 to i64
  %mul36 = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul36)
  %40 = bitcast i8* %call to %struct.edge_def**
  %41 = load %struct.edge_def***, %struct.edge_def**** %exit_edges.addr, align 8
  store %struct.edge_def** %40, %struct.edge_def*** %41, align 8
  store i32 0, i32* %num_exits, align 4
  br label %do.body.37

do.body.37:                                       ; preds = %if.end.35
  store i32 0, i32* %bit_num_39, align 4
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %size41 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %42, i32 0, i32 1
  %43 = load i32, i32* %size41, align 4
  store i32 %43, i32* %size_40, align 4
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms43 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arraydecay44 = getelementptr inbounds [1 x i64], [1 x i64]* %elms43, i32 0, i32 0
  store i64* %arraydecay44, i64** %ptr_42, align 8
  store i32 0, i32* %word_num_38, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.111, %do.body.37
  %45 = load i32, i32* %word_num_38, align 4
  %46 = load i32, i32* %size_40, align 4
  %cmp46 = icmp ult i32 %45, %46
  br i1 %cmp46, label %for.body.48, label %for.end.113

for.body.48:                                      ; preds = %for.cond.45
  %47 = load i32, i32* %word_num_38, align 4
  %idxprom50 = zext i32 %47 to i64
  %48 = load i64*, i64** %ptr_42, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %48, i64 %idxprom50
  %49 = load i64, i64* %arrayidx51, align 8
  store i64 %49, i64* %word_49, align 8
  %50 = load i64, i64* %word_49, align 8
  %cmp52 = icmp ne i64 %50, 0
  br i1 %cmp52, label %if.then.54, label %if.end.110

if.then.54:                                       ; preds = %for.body.48
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.107, %if.then.54
  %51 = load i32, i32* %bit_num_39, align 4
  %cmp56 = icmp ult i32 %51, 64
  br i1 %cmp56, label %for.body.58, label %for.end.109

for.body.58:                                      ; preds = %for.cond.55
  %52 = load i32, i32* %bit_num_39, align 4
  %sh_prom60 = zext i32 %52 to i64
  %shl61 = shl i64 1, %sh_prom60
  store i64 %shl61, i64* %_mask59, align 8
  %53 = load i64, i64* %word_49, align 8
  %54 = load i64, i64* %_mask59, align 8
  %and62 = and i64 %53, %54
  %cmp63 = icmp ne i64 %and62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.106

if.then.65:                                       ; preds = %for.body.58
  %55 = load i64, i64* %_mask59, align 8
  %neg66 = xor i64 %55, -1
  %56 = load i64, i64* %word_49, align 8
  %and67 = and i64 %56, %neg66
  store i64 %and67, i64* %word_49, align 8
  %57 = load i32, i32* %word_num_38, align 4
  %mul68 = mul i32 %57, 64
  %58 = load i32, i32* %bit_num_39, align 4
  %add69 = add i32 %mul68, %58
  store i32 %add69, i32* %node, align 4
  %59 = load i32, i32* %node, align 4
  %idxprom70 = sext i32 %59 to i64
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data71 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %60, i32 0, i32 4
  %bb72 = bitcast %union.varray_data_tag* %data71 to [1 x %struct.basic_block_def*]*
  %arrayidx73 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb72, i32 0, i64 %idxprom70
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx73, align 8
  %succ74 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 5
  %62 = load %struct.edge_def*, %struct.edge_def** %succ74, align 8
  store %struct.edge_def* %62, %struct.edge_def** %e, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.99, %if.then.65
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool76 = icmp ne %struct.edge_def* %63, null
  br i1 %tobool76, label %for.body.77, label %for.end.101

for.body.77:                                      ; preds = %for.cond.75
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest79 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 3
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %dest79, align 8
  store %struct.basic_block_def* %65, %struct.basic_block_def** %dest78, align 8
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %dest78, align 8
  %cmp80 = icmp eq %struct.basic_block_def* %66, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp80, label %if.then.94, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %for.body.77
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %dest78, align 8
  %index83 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i32 0, i32 11
  %68 = load i32, i32* %index83, align 4
  %div84 = udiv i32 %68, 64
  %idxprom85 = zext i32 %div84 to i64
  %69 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms86 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %69, i32 0, i32 3
  %arrayidx87 = getelementptr inbounds [1 x i64], [1 x i64]* %elms86, i32 0, i64 %idxprom85
  %70 = load i64, i64* %arrayidx87, align 8
  %71 = load %struct.basic_block_def*, %struct.basic_block_def** %dest78, align 8
  %index88 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %71, i32 0, i32 11
  %72 = load i32, i32* %index88, align 4
  %rem89 = urem i32 %72, 64
  %sh_prom90 = zext i32 %rem89 to i64
  %shr91 = lshr i64 %70, %sh_prom90
  %and92 = and i64 %shr91, 1
  %tobool93 = icmp ne i64 %and92, 0
  br i1 %tobool93, label %if.end.98, label %if.then.94

if.then.94:                                       ; preds = %lor.lhs.false.82, %for.body.77
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %74 = load i32, i32* %num_exits, align 4
  %inc95 = add nsw i32 %74, 1
  store i32 %inc95, i32* %num_exits, align 4
  %idxprom96 = sext i32 %74 to i64
  %75 = load %struct.edge_def***, %struct.edge_def**** %exit_edges.addr, align 8
  %76 = load %struct.edge_def**, %struct.edge_def*** %75, align 8
  %arrayidx97 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %76, i64 %idxprom96
  store %struct.edge_def* %73, %struct.edge_def** %arrayidx97, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.94, %lor.lhs.false.82
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %77 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i32 0, i32 1
  %78 = load %struct.edge_def*, %struct.edge_def** %succ_next100, align 8
  store %struct.edge_def* %78, %struct.edge_def** %e, align 8
  br label %for.cond.75

for.end.101:                                      ; preds = %for.cond.75
  %79 = load i64, i64* %word_49, align 8
  %cmp102 = icmp eq i64 %79, 0
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %for.end.101
  br label %for.end.109

if.end.105:                                       ; preds = %for.end.101
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.body.58
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %80 = load i32, i32* %bit_num_39, align 4
  %inc108 = add i32 %80, 1
  store i32 %inc108, i32* %bit_num_39, align 4
  br label %for.cond.55

for.end.109:                                      ; preds = %if.then.104, %for.cond.55
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %for.body.48
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %81 = load i32, i32* %word_num_38, align 4
  %inc112 = add i32 %81, 1
  store i32 %inc112, i32* %word_num_38, align 4
  store i32 0, i32* %bit_num_39, align 4
  br label %for.cond.45

for.end.113:                                      ; preds = %for.cond.45
  br label %do.end.114

do.end.114:                                       ; preds = %for.end.113
  %82 = load i32, i32* %num_exits, align 4
  store i32 %82, i32* %retval
  br label %return

return:                                           ; preds = %do.end.114, %if.then.34
  %83 = load i32, i32* %retval
  ret i32 %83
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_and_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @flow_loop_pre_header_find(%struct.basic_block_def* %header, %struct.simple_bitmap_def** %dom) #0 {
entry:
  %header.addr = alloca %struct.basic_block_def*, align 8
  %dom.addr = alloca %struct.simple_bitmap_def**, align 8
  %pre_header = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %node = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %header, %struct.basic_block_def** %header.addr, align 8
  store %struct.simple_bitmap_def** %dom, %struct.simple_bitmap_def*** %dom.addr, align 8
  store %struct.basic_block_def* null, %struct.basic_block_def** %pre_header, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
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
  store %struct.basic_block_def* %4, %struct.basic_block_def** %node, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %node, align 8
  %cmp = icmp ne %struct.basic_block_def* %5, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index, align 4
  %div = udiv i32 %7, 64
  %idxprom = zext i32 %div to i64
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %node, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 11
  %9 = load i32, i32* %index1, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %10, i64 %idxprom2
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %12 = load i64, i64* %arrayidx3, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index4, align 4
  %rem = urem i32 %14, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %12, %sh_prom
  %and = and i64 %shr, 1
  %tobool5 = icmp ne i64 %and, 0
  br i1 %tobool5, label %if.end.8, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %pre_header, align 8
  %cmp6 = icmp eq %struct.basic_block_def* %15, null
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %node, align 8
  store %struct.basic_block_def* %16, %struct.basic_block_def** %pre_header, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  store %struct.basic_block_def* null, %struct.basic_block_def** %pre_header, align 8
  br label %for.end

if.end:                                           ; preds = %if.then.7
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.8
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 0
  %18 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %18, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %pre_header, align 8
  ret %struct.basic_block_def* %19
}

; Function Attrs: nounwind uwtable
define internal void @flow_loop_pre_header_scan(%struct.loop* %loop) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %num = alloca i32, align 4
  %ebb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_pre_header_edges = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 5
  store i32 0, i32* %num_pre_header_edges, align 4
  %1 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_entries = getelementptr inbounds %struct.loop, %struct.loop* %1, i32 0, i32 11
  %2 = load i32, i32* %num_entries, align 4
  %cmp = icmp ne i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.20

if.end:                                           ; preds = %entry
  %3 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %entry_edges = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 10
  %4 = load %struct.edge_def**, %struct.edge_def*** %entry_edges, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %4, i64 0
  %5 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 2
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %ebb, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %ebb, align 8
  %cmp1 = icmp eq %struct.basic_block_def* %7, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %for.end.20

if.end.3:                                         ; preds = %if.end
  store i32 1, i32* %num, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %ebb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 4
  %9 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %cmp5 = icmp ne %struct.basic_block_def* %10, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %ebb, align 8
  %pred6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 4
  %12 = load %struct.edge_def*, %struct.edge_def** %pred6, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 0
  %13 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool = icmp ne %struct.edge_def* %13, null
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %ebb, align 8
  %pred7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 4
  %16 = load %struct.edge_def*, %struct.edge_def** %pred7, align 8
  %src8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 2
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8
  store %struct.basic_block_def* %17, %struct.basic_block_def** %ebb, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %num, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %num, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %19 = load i32, i32* %num, align 4
  %conv = sext i32 %19 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %20 = bitcast i8* %call to %struct.edge_def**
  %21 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header_edges = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 4
  store %struct.edge_def** %20, %struct.edge_def*** %pre_header_edges, align 8
  %22 = load i32, i32* %num, align 4
  %23 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %num_pre_header_edges9 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 5
  store i32 %22, i32* %num_pre_header_edges9, align 4
  %24 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %entry_edges10 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 10
  %25 = load %struct.edge_def**, %struct.edge_def*** %entry_edges10, align 8
  %arrayidx11 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %25, i64 0
  %26 = load %struct.edge_def*, %struct.edge_def** %arrayidx11, align 8
  store %struct.edge_def* %26, %struct.edge_def** %e, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.17, %for.end
  %27 = load i32, i32* %num, align 4
  %tobool13 = icmp ne i32 %27, 0
  br i1 %tobool13, label %for.body.14, label %for.end.20

for.body.14:                                      ; preds = %for.cond.12
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %29 = load i32, i32* %num, align 4
  %dec = add nsw i32 %29, -1
  store i32 %dec, i32* %num, align 4
  %idxprom = sext i32 %dec to i64
  %30 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %pre_header_edges15 = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 4
  %31 = load %struct.edge_def**, %struct.edge_def*** %pre_header_edges15, align 8
  %arrayidx16 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %31, i64 %idxprom
  store %struct.edge_def* %28, %struct.edge_def** %arrayidx16, align 8
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.body.14
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 2
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %src18, align 8
  %pred19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %33, i32 0, i32 4
  %34 = load %struct.edge_def*, %struct.edge_def** %pred19, align 8
  store %struct.edge_def* %34, %struct.edge_def** %e, align 8
  br label %for.cond.12

for.end.20:                                       ; preds = %if.then, %if.then.2, %for.cond.12
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @flow_loops_find(%struct.loops* %loops, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %loops.addr = alloca %struct.loops*, align 8
  %flags.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %num_loops = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %headers = alloca %struct.simple_bitmap_def*, align 8
  %dom = alloca %struct.simple_bitmap_def**, align 8
  %dfs_order = alloca i32*, align 8
  %rc_order = alloca i32*, align 8
  %header = alloca %struct.basic_block_def*, align 8
  %latch = alloca %struct.basic_block_def*, align 8
  %latch44 = alloca %struct.basic_block_def*, align 8
  %header54 = alloca %struct.basic_block_def*, align 8
  %loop = alloca %struct.loop*, align 8
  %loop86 = alloca %struct.loop*, align 8
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32, i32* %flags.addr, align 4
  %and = and i32 %0, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 651, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.flow_loops_find, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %2 = bitcast %struct.loops* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 56, i32 8, i1 false)
  %3 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32* null, i32** %dfs_order, align 8
  store i32* null, i32** %rc_order, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %4, i32 %5)
  store %struct.simple_bitmap_def** %call, %struct.simple_bitmap_def*** %dom, align 8
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  call void @calculate_dominance_info(i32* null, %struct.simple_bitmap_def** %6, i32 0)
  store i32 0, i32* %num_loops, align 4
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %if.end.2
  %7 = load i32, i32* %b, align 4
  %8 = load i32, i32* @n_basic_blocks, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %b, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %11, %struct.basic_block_def** %header, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 12
  store i32 0, i32* %loop_depth, align 4
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 4
  %14 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %14, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool5 = icmp ne %struct.edge_def* %15, null
  br i1 %tobool5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 2
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %17, %struct.basic_block_def** %latch, align 8
  %18 = load i32, i32* %b, align 4
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index, align 4
  %cmp7 = icmp ne i32 %18, %20
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body.6
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 688, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.flow_loops_find, i32 0, i32 0)) #5
  unreachable

if.end.9:                                         ; preds = %for.body.6
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8
  %cmp10 = icmp ne %struct.basic_block_def* %21, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp10, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end.9
  %22 = load i32, i32* %b, align 4
  %div = udiv i32 %22, 64
  %idxprom11 = zext i32 %div to i64
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index12, align 4
  %idxprom13 = sext i32 %24 to i64
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %arrayidx14 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %25, i64 %idxprom13
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx14, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom11
  %27 = load i64, i64* %arrayidx15, align 8
  %28 = load i32, i32* %b, align 4
  %rem = urem i32 %28, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %27, %sh_prom
  %and16 = and i64 %shr, 1
  %tobool17 = icmp ne i64 %and16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %land.lhs.true
  %29 = load i32, i32* %num_loops, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %num_loops, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %land.lhs.true, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 0
  %31 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %31, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end
  %32 = load i32, i32* %b, align 4
  %inc21 = add nsw i32 %32, 1
  store i32 %inc21, i32* %b, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %33 = load i32, i32* %num_loops, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.end.22
  %34 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %34 to i64
  %mul = mul i64 %conv, 4
  %call25 = call noalias i8* @xmalloc(i64 %mul)
  %35 = bitcast i8* %call25 to i32*
  store i32* %35, i32** %dfs_order, align 8
  %36 = load i32, i32* @n_basic_blocks, align 4
  %conv26 = sext i32 %36 to i64
  %mul27 = mul i64 %conv26, 4
  %call28 = call noalias i8* @xmalloc(i64 %mul27)
  %37 = bitcast i8* %call28 to i32*
  store i32* %37, i32** %rc_order, align 8
  %38 = load i32*, i32** %dfs_order, align 8
  %39 = load i32*, i32** %rc_order, align 8
  %call29 = call i32 @flow_depth_first_order_compute(i32* %38, i32* %39)
  %40 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %41 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg = getelementptr inbounds %struct.loops, %struct.loops* %41, i32 0, i32 4
  %dom30 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg, i32 0, i32 0
  store %struct.simple_bitmap_def** %40, %struct.simple_bitmap_def*** %dom30, align 8
  %42 = load i32*, i32** %dfs_order, align 8
  %43 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg31 = getelementptr inbounds %struct.loops, %struct.loops* %43, i32 0, i32 4
  %dfs_order32 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg31, i32 0, i32 1
  store i32* %42, i32** %dfs_order32, align 8
  %44 = load i32*, i32** %rc_order, align 8
  %45 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %cfg33 = getelementptr inbounds %struct.loops, %struct.loops* %45, i32 0, i32 4
  %rc_order34 = getelementptr inbounds %struct.cfg, %struct.cfg* %cfg33, i32 0, i32 2
  store i32* %44, i32** %rc_order34, align 8
  %46 = load i32, i32* %num_loops, align 4
  %conv35 = sext i32 %46 to i64
  %call36 = call noalias i8* @xcalloc(i64 %conv35, i64 248)
  %47 = bitcast i8* %call36 to %struct.loop*
  %48 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %48, i32 0, i32 2
  store %struct.loop* %47, %struct.loop** %array, align 8
  %49 = load i32, i32* @n_basic_blocks, align 4
  %call37 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %49)
  store %struct.simple_bitmap_def* %call37, %struct.simple_bitmap_def** %headers, align 8
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %headers, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %50)
  %51 = load i32, i32* @n_basic_blocks, align 4
  %call38 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %51)
  %52 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers = getelementptr inbounds %struct.loops, %struct.loops* %52, i32 0, i32 5
  store %struct.simple_bitmap_def* %call38, %struct.simple_bitmap_def** %shared_headers, align 8
  %53 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers39 = getelementptr inbounds %struct.loops, %struct.loops* %53, i32 0, i32 5
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %shared_headers39, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %54)
  store i32 0, i32* %num_loops, align 4
  %55 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %55, 1
  store i32 %sub, i32* %b, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.80, %if.then.24
  %56 = load i32, i32* %b, align 4
  %cmp41 = icmp sge i32 %56, 0
  br i1 %cmp41, label %for.body.43, label %for.end.81

for.body.43:                                      ; preds = %for.cond.40
  %57 = load i32, i32* %b, align 4
  %idxprom45 = sext i32 %57 to i64
  %58 = load i32*, i32** %rc_order, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %58, i64 %idxprom45
  %59 = load i32, i32* %arrayidx46, align 4
  %idxprom47 = sext i32 %59 to i64
  %60 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data48 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %60, i32 0, i32 4
  %bb49 = bitcast %union.varray_data_tag* %data48 to [1 x %struct.basic_block_def*]*
  %arrayidx50 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb49, i32 0, i64 %idxprom47
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx50, align 8
  store %struct.basic_block_def* %61, %struct.basic_block_def** %latch44, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %latch44, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 5
  %63 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %63, %struct.edge_def** %e, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.78, %for.body.43
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool52 = icmp ne %struct.edge_def* %64, null
  br i1 %tobool52, label %for.body.53, label %for.end.79

for.body.53:                                      ; preds = %for.cond.51
  %65 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %65, i32 0, i32 3
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %66, %struct.basic_block_def** %header54, align 8
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %header54, align 8
  %cmp55 = icmp ne %struct.basic_block_def* %67, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp55, label %land.lhs.true.57, label %if.end.77

land.lhs.true.57:                                 ; preds = %for.body.53
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %header54, align 8
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index58, align 4
  %div59 = udiv i32 %69, 64
  %idxprom60 = zext i32 %div59 to i64
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %latch44, align 8
  %index61 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i32 0, i32 11
  %71 = load i32, i32* %index61, align 4
  %idxprom62 = sext i32 %71 to i64
  %72 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %arrayidx63 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %72, i64 %idxprom62
  %73 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx63, align 8
  %elms64 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %73, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [1 x i64], [1 x i64]* %elms64, i32 0, i64 %idxprom60
  %74 = load i64, i64* %arrayidx65, align 8
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %header54, align 8
  %index66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 11
  %76 = load i32, i32* %index66, align 4
  %rem67 = urem i32 %76, 64
  %sh_prom68 = zext i32 %rem67 to i64
  %shr69 = lshr i64 %74, %sh_prom68
  %and70 = and i64 %shr69, 1
  %tobool71 = icmp ne i64 %and70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.77

if.then.72:                                       ; preds = %land.lhs.true.57
  %77 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array73 = getelementptr inbounds %struct.loops, %struct.loops* %77, i32 0, i32 2
  %78 = load %struct.loop*, %struct.loop** %array73, align 8
  %79 = load i32, i32* %num_loops, align 4
  %idx.ext = sext i32 %79 to i64
  %add.ptr = getelementptr inbounds %struct.loop, %struct.loop* %78, i64 %idx.ext
  store %struct.loop* %add.ptr, %struct.loop** %loop, align 8
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %header54, align 8
  %81 = load %struct.loop*, %struct.loop** %loop, align 8
  %header74 = getelementptr inbounds %struct.loop, %struct.loop* %81, i32 0, i32 1
  store %struct.basic_block_def* %80, %struct.basic_block_def** %header74, align 8
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %latch44, align 8
  %83 = load %struct.loop*, %struct.loop** %loop, align 8
  %latch75 = getelementptr inbounds %struct.loop, %struct.loop* %83, i32 0, i32 2
  store %struct.basic_block_def* %82, %struct.basic_block_def** %latch75, align 8
  %84 = load i32, i32* %num_loops, align 4
  %85 = load %struct.loop*, %struct.loop** %loop, align 8
  %num = getelementptr inbounds %struct.loop, %struct.loop* %85, i32 0, i32 0
  store i32 %84, i32* %num, align 4
  %86 = load i32, i32* %num_loops, align 4
  %inc76 = add nsw i32 %86, 1
  store i32 %inc76, i32* %num_loops, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.72, %land.lhs.true.57, %for.body.53
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %87 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %87, i32 0, i32 1
  %88 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %88, %struct.edge_def** %e, align 8
  br label %for.cond.51

for.end.79:                                       ; preds = %for.cond.51
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.end.79
  %89 = load i32, i32* %b, align 4
  %dec = add nsw i32 %89, -1
  store i32 %dec, i32* %b, align 4
  br label %for.cond.40

for.end.81:                                       ; preds = %for.cond.40
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.146, %for.end.81
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* %num_loops, align 4
  %cmp83 = icmp slt i32 %90, %91
  br i1 %cmp83, label %for.body.85, label %for.end.148

for.body.85:                                      ; preds = %for.cond.82
  %92 = load i32, i32* %i, align 4
  %idxprom87 = sext i32 %92 to i64
  %93 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array88 = getelementptr inbounds %struct.loops, %struct.loops* %93, i32 0, i32 2
  %94 = load %struct.loop*, %struct.loop** %array88, align 8
  %arrayidx89 = getelementptr inbounds %struct.loop, %struct.loop* %94, i64 %idxprom87
  store %struct.loop* %arrayidx89, %struct.loop** %loop86, align 8
  %95 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header90 = getelementptr inbounds %struct.loop, %struct.loop* %95, i32 0, i32 1
  %96 = load %struct.basic_block_def*, %struct.basic_block_def** %header90, align 8
  %index91 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %96, i32 0, i32 11
  %97 = load i32, i32* %index91, align 4
  %div92 = udiv i32 %97, 64
  %idxprom93 = zext i32 %div92 to i64
  %98 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %headers, align 8
  %elms94 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %98, i32 0, i32 3
  %arrayidx95 = getelementptr inbounds [1 x i64], [1 x i64]* %elms94, i32 0, i64 %idxprom93
  %99 = load i64, i64* %arrayidx95, align 8
  %100 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header96 = getelementptr inbounds %struct.loop, %struct.loop* %100, i32 0, i32 1
  %101 = load %struct.basic_block_def*, %struct.basic_block_def** %header96, align 8
  %index97 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %101, i32 0, i32 11
  %102 = load i32, i32* %index97, align 4
  %rem98 = urem i32 %102, 64
  %sh_prom99 = zext i32 %rem98 to i64
  %shr100 = lshr i64 %99, %sh_prom99
  %and101 = and i64 %shr100, 1
  %tobool102 = icmp ne i64 %and101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.115

if.then.103:                                      ; preds = %for.body.85
  %103 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header104 = getelementptr inbounds %struct.loop, %struct.loop* %103, i32 0, i32 1
  %104 = load %struct.basic_block_def*, %struct.basic_block_def** %header104, align 8
  %index105 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %104, i32 0, i32 11
  %105 = load i32, i32* %index105, align 4
  %rem106 = urem i32 %105, 64
  %sh_prom107 = zext i32 %rem106 to i64
  %shl = shl i64 1, %sh_prom107
  %106 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header108 = getelementptr inbounds %struct.loop, %struct.loop* %106, i32 0, i32 1
  %107 = load %struct.basic_block_def*, %struct.basic_block_def** %header108, align 8
  %index109 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %107, i32 0, i32 11
  %108 = load i32, i32* %index109, align 4
  %div110 = udiv i32 %108, 64
  %idxprom111 = zext i32 %div110 to i64
  %109 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers112 = getelementptr inbounds %struct.loops, %struct.loops* %109, i32 0, i32 5
  %110 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %shared_headers112, align 8
  %elms113 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %110, i32 0, i32 3
  %arrayidx114 = getelementptr inbounds [1 x i64], [1 x i64]* %elms113, i32 0, i64 %idxprom111
  %111 = load i64, i64* %arrayidx114, align 8
  %or = or i64 %111, %shl
  store i64 %or, i64* %arrayidx114, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.103, %for.body.85
  %112 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header116 = getelementptr inbounds %struct.loop, %struct.loop* %112, i32 0, i32 1
  %113 = load %struct.basic_block_def*, %struct.basic_block_def** %header116, align 8
  %index117 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %113, i32 0, i32 11
  %114 = load i32, i32* %index117, align 4
  %rem118 = urem i32 %114, 64
  %sh_prom119 = zext i32 %rem118 to i64
  %shl120 = shl i64 1, %sh_prom119
  %115 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header121 = getelementptr inbounds %struct.loop, %struct.loop* %115, i32 0, i32 1
  %116 = load %struct.basic_block_def*, %struct.basic_block_def** %header121, align 8
  %index122 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %116, i32 0, i32 11
  %117 = load i32, i32* %index122, align 4
  %div123 = udiv i32 %117, 64
  %idxprom124 = zext i32 %div123 to i64
  %118 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %headers, align 8
  %elms125 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %118, i32 0, i32 3
  %arrayidx126 = getelementptr inbounds [1 x i64], [1 x i64]* %elms125, i32 0, i64 %idxprom124
  %119 = load i64, i64* %arrayidx126, align 8
  %or127 = or i64 %119, %shl120
  store i64 %or127, i64* %arrayidx126, align 8
  %120 = load i32, i32* @n_basic_blocks, align 4
  %call128 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %120)
  %121 = load %struct.loop*, %struct.loop** %loop86, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %121, i32 0, i32 8
  store %struct.simple_bitmap_def* %call128, %struct.simple_bitmap_def** %nodes, align 8
  %122 = load %struct.loop*, %struct.loop** %loop86, align 8
  %header129 = getelementptr inbounds %struct.loop, %struct.loop* %122, i32 0, i32 1
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %header129, align 8
  %124 = load %struct.loop*, %struct.loop** %loop86, align 8
  %latch130 = getelementptr inbounds %struct.loop, %struct.loop* %124, i32 0, i32 2
  %125 = load %struct.basic_block_def*, %struct.basic_block_def** %latch130, align 8
  %126 = load %struct.loop*, %struct.loop** %loop86, align 8
  %nodes131 = getelementptr inbounds %struct.loop, %struct.loop* %126, i32 0, i32 8
  %127 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes131, align 8
  %call132 = call i32 @flow_loop_nodes_find(%struct.basic_block_def* %123, %struct.basic_block_def* %125, %struct.simple_bitmap_def* %127)
  %128 = load %struct.loop*, %struct.loop** %loop86, align 8
  %num_nodes = getelementptr inbounds %struct.loop, %struct.loop* %128, i32 0, i32 9
  store i32 %call132, i32* %num_nodes, align 4
  %129 = load %struct.loop*, %struct.loop** %loop86, align 8
  %nodes133 = getelementptr inbounds %struct.loop, %struct.loop* %129, i32 0, i32 8
  %130 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes133, align 8
  %call134 = call i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %130)
  %idxprom135 = sext i32 %call134 to i64
  %131 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data136 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %131, i32 0, i32 4
  %bb137 = bitcast %union.varray_data_tag* %data136 to [1 x %struct.basic_block_def*]*
  %arrayidx138 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb137, i32 0, i64 %idxprom135
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx138, align 8
  %133 = load %struct.loop*, %struct.loop** %loop86, align 8
  %first = getelementptr inbounds %struct.loop, %struct.loop* %133, i32 0, i32 6
  store %struct.basic_block_def* %132, %struct.basic_block_def** %first, align 8
  %134 = load %struct.loop*, %struct.loop** %loop86, align 8
  %nodes139 = getelementptr inbounds %struct.loop, %struct.loop* %134, i32 0, i32 8
  %135 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes139, align 8
  %call140 = call i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def* %135)
  %idxprom141 = sext i32 %call140 to i64
  %136 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data142 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %136, i32 0, i32 4
  %bb143 = bitcast %union.varray_data_tag* %data142 to [1 x %struct.basic_block_def*]*
  %arrayidx144 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb143, i32 0, i64 %idxprom141
  %137 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx144, align 8
  %138 = load %struct.loop*, %struct.loop** %loop86, align 8
  %last = getelementptr inbounds %struct.loop, %struct.loop* %138, i32 0, i32 7
  store %struct.basic_block_def* %137, %struct.basic_block_def** %last, align 8
  %139 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %140 = load %struct.loop*, %struct.loop** %loop86, align 8
  %141 = load i32, i32* %flags.addr, align 4
  %call145 = call i32 @flow_loop_scan(%struct.loops* %139, %struct.loop* %140, i32 %141)
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.115
  %142 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %142, 1
  store i32 %inc147, i32* %i, align 4
  br label %for.cond.82

for.end.148:                                      ; preds = %for.cond.82
  store i32 0, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.178, %for.end.148
  %143 = load i32, i32* %i, align 4
  %144 = load i32, i32* %num_loops, align 4
  %cmp150 = icmp slt i32 %143, %144
  br i1 %cmp150, label %for.body.152, label %for.end.180

for.body.152:                                     ; preds = %for.cond.149
  %145 = load i32, i32* %i, align 4
  %idxprom153 = sext i32 %145 to i64
  %146 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array154 = getelementptr inbounds %struct.loops, %struct.loops* %146, i32 0, i32 2
  %147 = load %struct.loop*, %struct.loop** %array154, align 8
  %arrayidx155 = getelementptr inbounds %struct.loop, %struct.loop* %147, i64 %idxprom153
  %header156 = getelementptr inbounds %struct.loop, %struct.loop* %arrayidx155, i32 0, i32 1
  %148 = load %struct.basic_block_def*, %struct.basic_block_def** %header156, align 8
  %index157 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %148, i32 0, i32 11
  %149 = load i32, i32* %index157, align 4
  %div158 = udiv i32 %149, 64
  %idxprom159 = zext i32 %div158 to i64
  %150 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %shared_headers160 = getelementptr inbounds %struct.loops, %struct.loops* %150, i32 0, i32 5
  %151 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %shared_headers160, align 8
  %elms161 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %151, i32 0, i32 3
  %arrayidx162 = getelementptr inbounds [1 x i64], [1 x i64]* %elms161, i32 0, i64 %idxprom159
  %152 = load i64, i64* %arrayidx162, align 8
  %153 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %153 to i64
  %154 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array164 = getelementptr inbounds %struct.loops, %struct.loops* %154, i32 0, i32 2
  %155 = load %struct.loop*, %struct.loop** %array164, align 8
  %arrayidx165 = getelementptr inbounds %struct.loop, %struct.loop* %155, i64 %idxprom163
  %header166 = getelementptr inbounds %struct.loop, %struct.loop* %arrayidx165, i32 0, i32 1
  %156 = load %struct.basic_block_def*, %struct.basic_block_def** %header166, align 8
  %index167 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %156, i32 0, i32 11
  %157 = load i32, i32* %index167, align 4
  %rem168 = urem i32 %157, 64
  %sh_prom169 = zext i32 %rem168 to i64
  %shr170 = lshr i64 %152, %sh_prom169
  %and171 = and i64 %shr170, 1
  %tobool172 = icmp ne i64 %and171, 0
  br i1 %tobool172, label %if.then.173, label %if.end.177

if.then.173:                                      ; preds = %for.body.152
  %158 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %158 to i64
  %159 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array175 = getelementptr inbounds %struct.loops, %struct.loops* %159, i32 0, i32 2
  %160 = load %struct.loop*, %struct.loop** %array175, align 8
  %arrayidx176 = getelementptr inbounds %struct.loop, %struct.loop* %160, i64 %idxprom174
  %shared = getelementptr inbounds %struct.loop, %struct.loop* %arrayidx176, i32 0, i32 20
  store i32 1, i32* %shared, align 4
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.173, %for.body.152
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %161 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %161, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond.149

for.end.180:                                      ; preds = %for.cond.149
  %162 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %headers, align 8
  %163 = bitcast %struct.simple_bitmap_def* %162 to i8*
  call void @free(i8* %163) #4
  br label %if.end.181

if.else:                                          ; preds = %for.end.22
  %164 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dom, align 8
  %165 = bitcast %struct.simple_bitmap_def** %164 to i8*
  call void @free(i8* %165) #4
  br label %if.end.181

if.end.181:                                       ; preds = %if.else, %for.end.180
  %166 = load i32, i32* %num_loops, align 4
  %167 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num182 = getelementptr inbounds %struct.loops, %struct.loops* %167, i32 0, i32 0
  store i32 %166, i32* %num182, align 4
  %168 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  call void @flow_loops_tree_build(%struct.loops* %168)
  %169 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %call183 = call i32 @flow_loops_level_compute(%struct.loops* %169)
  %170 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %levels = getelementptr inbounds %struct.loops, %struct.loops* %170, i32 0, i32 1
  store i32 %call183, i32* %levels, align 4
  %171 = load i32, i32* %num_loops, align 4
  store i32 %171, i32* %retval
  br label %return

return:                                           ; preds = %if.end.181, %if.then.1
  %172 = load i32, i32* %retval
  ret i32 %172
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

declare noalias i8* @xmalloc(i64) #1

declare i32 @flow_depth_first_order_compute(i32*, i32*) #1

declare noalias i8* @xcalloc(i64, i64) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @flow_loop_nodes_find(%struct.basic_block_def* %header, %struct.basic_block_def* %latch, %struct.simple_bitmap_def* %nodes) #0 {
entry:
  %header.addr = alloca %struct.basic_block_def*, align 8
  %latch.addr = alloca %struct.basic_block_def*, align 8
  %nodes.addr = alloca %struct.simple_bitmap_def*, align 8
  %stack = alloca %struct.basic_block_def**, align 8
  %sp = alloca i32, align 4
  %num_nodes = alloca i32, align 4
  %node = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ancestor = alloca %struct.basic_block_def*, align 8
  store %struct.basic_block_def* %header, %struct.basic_block_def** %header.addr, align 8
  store %struct.basic_block_def* %latch, %struct.basic_block_def** %latch.addr, align 8
  store %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def** %nodes.addr, align 8
  store i32 0, i32* %num_nodes, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %2)
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 11
  %4 = load i32, i32* %index, align 4
  %rem = urem i32 %4, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index1, align 4
  %div = udiv i32 %6, 64
  %idxprom = zext i32 %div to i64
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %or = or i64 %8, %shl
  store i64 %or, i64* %arrayidx, align 8
  %9 = load i32, i32* %num_nodes, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_nodes, align 4
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %header.addr, align 8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 12
  %11 = load i32, i32* %loop_depth, align 4
  %inc2 = add nsw i32 %11, 1
  store i32 %inc2, i32* %loop_depth, align 4
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index3, align 4
  %div4 = udiv i32 %13, 64
  %idxprom5 = zext i32 %div4 to i64
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [1 x i64], [1 x i64]* %elms6, i32 0, i64 %idxprom5
  %15 = load i64, i64* %arrayidx7, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %index8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 11
  %17 = load i32, i32* %index8, align 4
  %rem9 = urem i32 %17, 64
  %sh_prom10 = zext i32 %rem9 to i64
  %shr = lshr i64 %15, %sh_prom10
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 11
  %19 = load i32, i32* %index11, align 4
  %rem12 = urem i32 %19, 64
  %sh_prom13 = zext i32 %rem12 to i64
  %shl14 = shl i64 1, %sh_prom13
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index15, align 4
  %div16 = udiv i32 %21, 64
  %idxprom17 = zext i32 %div16 to i64
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms18 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %22, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [1 x i64], [1 x i64]* %elms18, i32 0, i64 %idxprom17
  %23 = load i64, i64* %arrayidx19, align 8
  %or20 = or i64 %23, %shl14
  store i64 %or20, i64* %arrayidx19, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %loop_depth21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 12
  %25 = load i32, i32* %loop_depth21, align 4
  %inc22 = add nsw i32 %25, 1
  store i32 %inc22, i32* %loop_depth21, align 4
  %26 = load i32, i32* %num_nodes, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, i32* %num_nodes, align 4
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.addr, align 8
  %28 = load i32, i32* %sp, align 4
  %inc24 = add nsw i32 %28, 1
  store i32 %inc24, i32* %sp, align 4
  %idxprom25 = sext i32 %28 to i64
  %29 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %arrayidx26 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %29, i64 %idxprom25
  store %struct.basic_block_def* %27, %struct.basic_block_def** %arrayidx26, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end
  %30 = load i32, i32* %sp, align 4
  %tobool27 = icmp ne i32 %30, 0
  br i1 %tobool27, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %31 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %31, -1
  store i32 %dec, i32* %sp, align 4
  %idxprom28 = sext i32 %dec to i64
  %32 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %arrayidx29 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %32, i64 %idxprom28
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx29, align 8
  store %struct.basic_block_def* %33, %struct.basic_block_def** %node, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %node, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 4
  %35 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %35, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool30 = icmp ne %struct.edge_def* %36, null
  br i1 %tobool30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %37, i32 0, i32 2
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %38, %struct.basic_block_def** %ancestor, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %cmp = icmp ne %struct.basic_block_def* %39, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %for.body
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 11
  %41 = load i32, i32* %index32, align 4
  %div33 = udiv i32 %41, 64
  %idxprom34 = zext i32 %div33 to i64
  %42 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms35 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %42, i32 0, i32 3
  %arrayidx36 = getelementptr inbounds [1 x i64], [1 x i64]* %elms35, i32 0, i64 %idxprom34
  %43 = load i64, i64* %arrayidx36, align 8
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %index37 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  %45 = load i32, i32* %index37, align 4
  %rem38 = urem i32 %45, 64
  %sh_prom39 = zext i32 %rem38 to i64
  %shr40 = lshr i64 %43, %sh_prom39
  %and41 = and i64 %shr40, 1
  %tobool42 = icmp ne i64 %and41, 0
  br i1 %tobool42, label %if.end.60, label %if.then.43

if.then.43:                                       ; preds = %land.lhs.true
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %46, i32 0, i32 11
  %47 = load i32, i32* %index44, align 4
  %rem45 = urem i32 %47, 64
  %sh_prom46 = zext i32 %rem45 to i64
  %shl47 = shl i64 1, %sh_prom46
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 11
  %49 = load i32, i32* %index48, align 4
  %div49 = udiv i32 %49, 64
  %idxprom50 = zext i32 %div49 to i64
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms51 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %50, i32 0, i32 3
  %arrayidx52 = getelementptr inbounds [1 x i64], [1 x i64]* %elms51, i32 0, i64 %idxprom50
  %51 = load i64, i64* %arrayidx52, align 8
  %or53 = or i64 %51, %shl47
  store i64 %or53, i64* %arrayidx52, align 8
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %loop_depth54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 12
  %53 = load i32, i32* %loop_depth54, align 4
  %inc55 = add nsw i32 %53, 1
  store i32 %inc55, i32* %loop_depth54, align 4
  %54 = load i32, i32* %num_nodes, align 4
  %inc56 = add nsw i32 %54, 1
  store i32 %inc56, i32* %num_nodes, align 4
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %ancestor, align 8
  %56 = load i32, i32* %sp, align 4
  %inc57 = add nsw i32 %56, 1
  store i32 %inc57, i32* %sp, align 4
  %idxprom58 = sext i32 %56 to i64
  %57 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %arrayidx59 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %57, i64 %idxprom58
  store %struct.basic_block_def* %55, %struct.basic_block_def** %arrayidx59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.43, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %58 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %58, i32 0, i32 0
  %59 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %59, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %60 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %61 = bitcast %struct.basic_block_def** %60 to i8*
  call void @free(i8* %61) #4
  %62 = load i32, i32* %num_nodes, align 4
  ret i32 %62
}

declare i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def*) #1

declare i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal void @flow_loops_tree_build(%struct.loops* %loops) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %i = alloca i32, align 4
  %num_loops = alloca i32, align 4
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %num = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 0
  %1 = load i32, i32* %num, align 4
  store i32 %1, i32* %num_loops, align 4
  %2 = load i32, i32* %num_loops, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %3 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %3, i32 0, i32 2
  %4 = load %struct.loop*, %struct.loop** %array, align 8
  %arrayidx = getelementptr inbounds %struct.loop, %struct.loop* %4, i64 0
  %5 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %5, i32 0, i32 3
  store %struct.loop* %arrayidx, %struct.loop** %tree_root, align 8
  %6 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root1 = getelementptr inbounds %struct.loops, %struct.loops* %6, i32 0, i32 3
  %7 = load %struct.loop*, %struct.loop** %tree_root1, align 8
  %next = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 19
  store %struct.loop* null, %struct.loop** %next, align 8
  %8 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root2 = getelementptr inbounds %struct.loops, %struct.loops* %8, i32 0, i32 3
  %9 = load %struct.loop*, %struct.loop** %tree_root2, align 8
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 18
  store %struct.loop* null, %struct.loop** %inner, align 8
  %10 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root3 = getelementptr inbounds %struct.loops, %struct.loops* %10, i32 0, i32 3
  %11 = load %struct.loop*, %struct.loop** %tree_root3, align 8
  %outer = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 17
  store %struct.loop* null, %struct.loop** %outer, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %num_loops, align 4
  %cmp = icmp slt i32 %12, %13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %15 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array4 = getelementptr inbounds %struct.loops, %struct.loops* %15, i32 0, i32 2
  %16 = load %struct.loop*, %struct.loop** %array4, align 8
  %arrayidx5 = getelementptr inbounds %struct.loop, %struct.loop* %16, i64 %idxprom
  %17 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %17 to i64
  %18 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array7 = getelementptr inbounds %struct.loops, %struct.loops* %18, i32 0, i32 2
  %19 = load %struct.loop*, %struct.loop** %array7, align 8
  %arrayidx8 = getelementptr inbounds %struct.loop, %struct.loop* %19, i64 %idxprom6
  call void @flow_loop_tree_node_add(%struct.loop* %arrayidx5, %struct.loop* %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_loops_level_compute(%struct.loops* %loops) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %levels = alloca i32, align 4
  %loop = alloca %struct.loop*, align 8
  %level = alloca i32, align 4
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store i32 0, i32* %levels, align 4
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %tree_root = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 3
  %1 = load %struct.loop*, %struct.loop** %tree_root, align 8
  store %struct.loop* %1, %struct.loop** %loop, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.loop*, %struct.loop** %loop, align 8
  %tobool = icmp ne %struct.loop* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.loop*, %struct.loop** %loop, align 8
  %call = call i32 @flow_loop_level_compute(%struct.loop* %3, i32 1)
  store i32 %call, i32* %level, align 4
  %4 = load i32, i32* %levels, align 4
  %5 = load i32, i32* %level, align 4
  %cmp = icmp sgt i32 %4, %5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i32, i32* %levels, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load i32, i32* %level, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %levels, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load %struct.loop*, %struct.loop** %loop, align 8
  %next = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 19
  %9 = load %struct.loop*, %struct.loop** %next, align 8
  store %struct.loop* %9, %struct.loop** %loop, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %levels, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @flow_loops_update(%struct.loops* %loops, i32 %flags) #0 {
entry:
  %loops.addr = alloca %struct.loops*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.loops* %loops, %struct.loops** %loops.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %array = getelementptr inbounds %struct.loops, %struct.loops* %0, i32 0, i32 2
  %1 = load %struct.loop*, %struct.loop** %array, align 8
  %tobool = icmp ne %struct.loop* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  call void @flow_loops_free(%struct.loops* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.loops*, %struct.loops** %loops.addr, align 8
  %4 = load i32, i32* %flags.addr, align 4
  %call = call i32 @flow_loops_find(%struct.loops* %3, i32 %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @flow_loop_outside_edge_p(%struct.loop* %loop, %struct.edge_def* %e) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %e.addr = alloca %struct.edge_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %2 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %header = getelementptr inbounds %struct.loop, %struct.loop* %2, i32 0, i32 1
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8
  %cmp = icmp ne %struct.basic_block_def* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 832, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.flow_loop_outside_edge_p, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %4 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 2
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp1 = icmp eq %struct.basic_block_def* %5, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %6 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src2 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 2
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src2, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index, align 4
  %div = udiv i32 %8, 64
  %idxprom = zext i32 %div to i64
  %9 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %nodes = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 8
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %11 = load i64, i64* %arrayidx, align 8
  %12 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src3 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 2
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src3, align 8
  %index4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index4, align 4
  %rem = urem i32 %14, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %11, %sh_prom
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  %lnot = xor i1 %tobool, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %15 = phi i1 [ true, %if.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  ret i32 %lor.ext
}

declare i32 @sbitmap_a_subset_b_p(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @flow_loop_tree_node_add(%struct.loop* %prevloop, %struct.loop* %loop) #0 {
entry:
  %prevloop.addr = alloca %struct.loop*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  store %struct.loop* %prevloop, %struct.loop** %prevloop.addr, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %1 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %call = call i32 @flow_loop_nested_p(%struct.loop* %0, %struct.loop* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %3 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %inner = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 18
  store %struct.loop* %2, %struct.loop** %inner, align 8
  %4 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %5 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %outer = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 17
  store %struct.loop* %4, %struct.loop** %outer, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %outer1 = getelementptr inbounds %struct.loop, %struct.loop* %6, i32 0, i32 17
  %7 = load %struct.loop*, %struct.loop** %outer1, align 8
  %tobool2 = icmp ne %struct.loop* %7, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %outer3 = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 17
  %9 = load %struct.loop*, %struct.loop** %outer3, align 8
  %10 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %call4 = call i32 @flow_loop_nested_p(%struct.loop* %9, %struct.loop* %10)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %for.body
  %11 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %12 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %next = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 19
  store %struct.loop* %11, %struct.loop** %next, align 8
  %13 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %outer7 = getelementptr inbounds %struct.loop, %struct.loop* %13, i32 0, i32 17
  %14 = load %struct.loop*, %struct.loop** %outer7, align 8
  %15 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %outer8 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 17
  store %struct.loop* %14, %struct.loop** %outer8, align 8
  br label %return

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %16 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %outer10 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 17
  %17 = load %struct.loop*, %struct.loop** %outer10, align 8
  store %struct.loop* %17, %struct.loop** %prevloop.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %19 = load %struct.loop*, %struct.loop** %prevloop.addr, align 8
  %next11 = getelementptr inbounds %struct.loop, %struct.loop* %19, i32 0, i32 19
  store %struct.loop* %18, %struct.loop** %next11, align 8
  %20 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %outer12 = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 17
  store %struct.loop* null, %struct.loop** %outer12, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @flow_loop_level_compute(%struct.loop* %loop, i32 %depth) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %depth.addr = alloca i32, align 4
  %inner = alloca %struct.loop*, align 8
  %level = alloca i32, align 4
  %ilevel = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store i32 %depth, i32* %depth.addr, align 4
  store i32 1, i32* %level, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %tobool = icmp ne %struct.loop* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %inner1 = getelementptr inbounds %struct.loop, %struct.loop* %1, i32 0, i32 18
  %2 = load %struct.loop*, %struct.loop** %inner1, align 8
  store %struct.loop* %2, %struct.loop** %inner, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.loop*, %struct.loop** %inner, align 8
  %tobool2 = icmp ne %struct.loop* %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.loop*, %struct.loop** %inner, align 8
  %5 = load i32, i32* %depth.addr, align 4
  %add = add nsw i32 %5, 1
  %call = call i32 @flow_loop_level_compute(%struct.loop* %4, i32 %add)
  %add3 = add nsw i32 %call, 1
  store i32 %add3, i32* %ilevel, align 4
  %6 = load i32, i32* %ilevel, align 4
  %7 = load i32, i32* %level, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %8 = load i32, i32* %ilevel, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %9 = load i32, i32* %level, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %8, %cond.true ], [ %9, %cond.false ]
  store i32 %cond, i32* %level, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %10 = load %struct.loop*, %struct.loop** %inner, align 8
  %next = getelementptr inbounds %struct.loop, %struct.loop* %10, i32 0, i32 19
  %11 = load %struct.loop*, %struct.loop** %next, align 8
  store %struct.loop* %11, %struct.loop** %inner, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load i32, i32* %level, align 4
  %13 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %level4 = getelementptr inbounds %struct.loop, %struct.loop* %13, i32 0, i32 16
  store i32 %12, i32* %level4, align 4
  %14 = load i32, i32* %depth.addr, align 4
  %15 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %depth5 = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 15
  store i32 %14, i32* %depth5, align 4
  %16 = load i32, i32* %level, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
