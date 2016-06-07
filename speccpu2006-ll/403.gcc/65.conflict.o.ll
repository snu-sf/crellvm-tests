; ModuleID = 'conflict.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.conflict_graph_def = type { %struct.htab*, i32, %struct.conflict_graph_arc_def**, %struct.obstack }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct.conflict_graph_arc_def = type { %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def*, i32, i32 }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.print_context = type { %struct._IO_FILE*, i32, i32 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"conflict.c\00", align 1
@__FUNCTION__.conflict_graph_add = private unnamed_addr constant [19 x i8] c"conflict_graph_add\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Conflicts:\0A\00", align 1
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@rtx_class = external constant [153 x i8], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c" %d:\00", align 1
@__FUNCTION__.print_conflict = private unnamed_addr constant [15 x i8] c"print_conflict\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.conflict_graph_def* @conflict_graph_new(i32 %num_regs) #0 {
entry:
  %num_regs.addr = alloca i32, align 4
  %graph = alloca %struct.conflict_graph_def*, align 8
  store i32 %num_regs, i32* %num_regs.addr, align 4
  %call = call noalias i8* @xmalloc(i64 112)
  %0 = bitcast i8* %call to %struct.conflict_graph_def*
  store %struct.conflict_graph_def* %0, %struct.conflict_graph_def** %graph, align 8
  %1 = load i32, i32* %num_regs.addr, align 4
  %2 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %num_regs1 = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %2, i32 0, i32 1
  store i32 %1, i32* %num_regs1, align 4
  %call2 = call %struct.htab* @htab_create(i64 64, i32 (i8*)* @arc_hash, i32 (i8*, i8*)* @arc_eq, void (i8*)* null)
  %3 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %arc_hash_table = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %3, i32 0, i32 0
  store %struct.htab* %call2, %struct.htab** %arc_hash_table, align 8
  %4 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %arc_obstack = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %4, i32 0, i32 3
  %call3 = call i32 @_obstack_begin(%struct.obstack* %arc_obstack, i32 0, i32 0, i8* (i64)* @xmalloc, void (i8*)* @free)
  %5 = load i32, i32* %num_regs.addr, align 4
  %conv = sext i32 %5 to i64
  %mul = mul i64 %conv, 8
  %call4 = call noalias i8* @xmalloc(i64 %mul)
  %6 = bitcast i8* %call4 to %struct.conflict_graph_arc_def**
  %7 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %neighbor_heads = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %7, i32 0, i32 2
  store %struct.conflict_graph_arc_def** %6, %struct.conflict_graph_arc_def*** %neighbor_heads, align 8
  %8 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %neighbor_heads5 = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %8, i32 0, i32 2
  %9 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads5, align 8
  %10 = bitcast %struct.conflict_graph_arc_def** %9 to i8*
  %11 = load i32, i32* %num_regs.addr, align 4
  %conv6 = sext i32 %11 to i64
  %mul7 = mul i64 %conv6, 8
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 %mul7, i32 8, i1 false)
  %12 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  ret %struct.conflict_graph_def* %12
}

declare noalias i8* @xmalloc(i64) #1

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @arc_hash(i8* %arcp) #0 {
entry:
  %arcp.addr = alloca i8*, align 8
  %arc = alloca %struct.conflict_graph_arc_def*, align 8
  store i8* %arcp, i8** %arcp.addr, align 8
  %0 = load i8*, i8** %arcp.addr, align 8
  %1 = bitcast i8* %0 to %struct.conflict_graph_arc_def*
  store %struct.conflict_graph_arc_def* %1, %struct.conflict_graph_arc_def** %arc, align 8
  %2 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %2, i32 0, i32 3
  %3 = load i32, i32* %larger, align 4
  %4 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger1 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %4, i32 0, i32 3
  %5 = load i32, i32* %larger1, align 4
  %sub = sub nsw i32 %5, 1
  %mul = mul nsw i32 %3, %sub
  %div = sdiv i32 %mul, 2
  %6 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %6, i32 0, i32 2
  %7 = load i32, i32* %smaller, align 4
  %add = add nsw i32 %div, %7
  ret i32 %add
}

; Function Attrs: nounwind uwtable
define internal i32 @arc_eq(i8* %arcp1, i8* %arcp2) #0 {
entry:
  %arcp1.addr = alloca i8*, align 8
  %arcp2.addr = alloca i8*, align 8
  %arc1 = alloca %struct.conflict_graph_arc_def*, align 8
  %arc2 = alloca %struct.conflict_graph_arc_def*, align 8
  store i8* %arcp1, i8** %arcp1.addr, align 8
  store i8* %arcp2, i8** %arcp2.addr, align 8
  %0 = load i8*, i8** %arcp1.addr, align 8
  %1 = bitcast i8* %0 to %struct.conflict_graph_arc_def*
  store %struct.conflict_graph_arc_def* %1, %struct.conflict_graph_arc_def** %arc1, align 8
  %2 = load i8*, i8** %arcp2.addr, align 8
  %3 = bitcast i8* %2 to %struct.conflict_graph_arc_def*
  store %struct.conflict_graph_arc_def* %3, %struct.conflict_graph_arc_def** %arc2, align 8
  %4 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc1, align 8
  %smaller = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %4, i32 0, i32 2
  %5 = load i32, i32* %smaller, align 4
  %6 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc2, align 8
  %smaller1 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %6, i32 0, i32 2
  %7 = load i32, i32* %smaller1, align 4
  %cmp = icmp eq i32 %5, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %8 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc1, align 8
  %larger = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %8, i32 0, i32 3
  %9 = load i32, i32* %larger, align 4
  %10 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc2, align 8
  %larger2 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %10, i32 0, i32 3
  %11 = load i32, i32* %larger2, align 4
  %cmp3 = icmp eq i32 %9, %11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %12 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %12 to i32
  ret i32 %land.ext
}

declare i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @conflict_graph_delete(%struct.conflict_graph_def* %graph) #0 {
entry:
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__obj = alloca i8*, align 8
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  %0 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %arc_obstack = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %0, i32 0, i32 3
  store %struct.obstack* %arc_obstack, %struct.obstack** %__o, align 8
  store i8* null, i8** %__obj, align 8
  %1 = load i8*, i8** %__obj, align 8
  %2 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %2, i32 0, i32 1
  %3 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %4 = bitcast %struct._obstack_chunk* %3 to i8*
  %cmp = icmp ugt i8* %1, %4
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %5 = load i8*, i8** %__obj, align 8
  %6 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %6, i32 0, i32 4
  %7 = load i8*, i8** %chunk_limit, align 8
  %cmp1 = icmp ult i8* %5, %7
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %__obj, align 8
  %9 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %9, i32 0, i32 2
  store i8* %8, i8** %object_base, align 8
  %10 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i32 0, i32 3
  store i8* %8, i8** %next_free, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %12 = load i8*, i8** %__obj, align 8
  call void @obstack_free(%struct.obstack* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %arc_hash_table = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %13, i32 0, i32 0
  %14 = load %struct.htab*, %struct.htab** %arc_hash_table, align 8
  call void @htab_delete(%struct.htab* %14)
  %15 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %15, i32 0, i32 2
  %16 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads, align 8
  %17 = bitcast %struct.conflict_graph_arc_def** %16 to i8*
  call void @free(i8* %17) #3
  %18 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %19 = bitcast %struct.conflict_graph_def* %18 to i8*
  call void @free(i8* %19) #3
  ret void
}

declare void @obstack_free(%struct.obstack*, i8*) #1

declare void @htab_delete(%struct.htab*) #1

; Function Attrs: nounwind uwtable
define i32 @conflict_graph_add(%struct.conflict_graph_def* %graph, i32 %reg1, i32 %reg2) #0 {
entry:
  %retval = alloca i32, align 4
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %reg1.addr = alloca i32, align 4
  %reg2.addr = alloca i32, align 4
  %smaller = alloca i32, align 4
  %larger = alloca i32, align 4
  %dummy = alloca %struct.conflict_graph_arc_def, align 8
  %arc = alloca %struct.conflict_graph_arc_def*, align 8
  %slot = alloca i8**, align 8
  %__h = alloca %struct.obstack*, align 8
  %__o = alloca %struct.obstack*, align 8
  %__len = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %__o1 = alloca %struct.obstack*, align 8
  %value = alloca i8*, align 8
  %tmp49 = alloca i8*, align 8
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  store i32 %reg1, i32* %reg1.addr, align 4
  store i32 %reg2, i32* %reg2.addr, align 4
  %0 = load i32, i32* %reg1.addr, align 4
  %1 = load i32, i32* %reg2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %reg1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %reg2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  store i32 %cond, i32* %smaller, align 4
  %4 = load i32, i32* %reg1.addr, align 4
  %5 = load i32, i32* %reg2.addr, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load i32, i32* %reg1.addr, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i32, i32* %reg2.addr, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  store i32 %cond5, i32* %larger, align 4
  %8 = load i32, i32* %reg1.addr, align 4
  %9 = load i32, i32* %reg2.addr, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 207, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.conflict_graph_add, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end.4
  %10 = load i32, i32* %smaller, align 4
  %smaller7 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %dummy, i32 0, i32 2
  store i32 %10, i32* %smaller7, align 4
  %11 = load i32, i32* %larger, align 4
  %larger8 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %dummy, i32 0, i32 3
  store i32 %11, i32* %larger8, align 4
  %12 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %arc_hash_table = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %12, i32 0, i32 0
  %13 = load %struct.htab*, %struct.htab** %arc_hash_table, align 8
  %14 = bitcast %struct.conflict_graph_arc_def* %dummy to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %13, i8* %14, i32 1)
  store i8** %call, i8*** %slot, align 8
  %15 = load i8**, i8*** %slot, align 8
  %16 = load i8*, i8** %15, align 8
  %cmp9 = icmp ne i8* %16, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  %17 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %arc_obstack = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %17, i32 0, i32 3
  store %struct.obstack* %arc_obstack, %struct.obstack** %__h, align 8
  %18 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %18, %struct.obstack** %__o, align 8
  store i32 24, i32* %__len, align 4
  %19 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %19, i32 0, i32 4
  %20 = load i8*, i8** %chunk_limit, align 8
  %21 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %21, i32 0, i32 3
  %22 = load i8*, i8** %next_free, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %20 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %22 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %23 = load i32, i32* %__len, align 4
  %conv = sext i32 %23 to i64
  %cmp12 = icmp slt i64 %sub.ptr.sub, %conv
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.11
  %24 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %25 = load i32, i32* %__len, align 4
  call void @_obstack_newchunk(%struct.obstack* %24, i32 %25)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.11
  %26 = load i32, i32* %__len, align 4
  %27 = load %struct.obstack*, %struct.obstack** %__o, align 8
  %next_free16 = getelementptr inbounds %struct.obstack, %struct.obstack* %27, i32 0, i32 3
  %28 = load i8*, i8** %next_free16, align 8
  %idx.ext = sext i32 %26 to i64
  %add.ptr = getelementptr inbounds i8, i8* %28, i64 %idx.ext
  store i8* %add.ptr, i8** %next_free16, align 8
  %29 = load %struct.obstack*, %struct.obstack** %__h, align 8
  store %struct.obstack* %29, %struct.obstack** %__o1, align 8
  %30 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %30, i32 0, i32 2
  %31 = load i8*, i8** %object_base, align 8
  store i8* %31, i8** %value, align 8
  %32 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free19 = getelementptr inbounds %struct.obstack, %struct.obstack* %32, i32 0, i32 3
  %33 = load i8*, i8** %next_free19, align 8
  %34 = load i8*, i8** %value, align 8
  %cmp20 = icmp eq i8* %33, %34
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.15
  %35 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %maybe_empty_object = getelementptr inbounds %struct.obstack, %struct.obstack* %35, i32 0, i32 10
  %bf.load = load i8, i8* %maybe_empty_object, align 8
  %bf.clear = and i8 %bf.load, -3
  %bf.set = or i8 %bf.clear, 2
  store i8 %bf.set, i8* %maybe_empty_object, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end.15
  %36 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free24 = getelementptr inbounds %struct.obstack, %struct.obstack* %36, i32 0, i32 3
  %37 = load i8*, i8** %next_free24, align 8
  %sub.ptr.lhs.cast25 = ptrtoint i8* %37 to i64
  %sub.ptr.sub26 = sub i64 %sub.ptr.lhs.cast25, 0
  %38 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask = getelementptr inbounds %struct.obstack, %struct.obstack* %38, i32 0, i32 6
  %39 = load i32, i32* %alignment_mask, align 4
  %conv27 = sext i32 %39 to i64
  %add = add nsw i64 %sub.ptr.sub26, %conv27
  %40 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %alignment_mask28 = getelementptr inbounds %struct.obstack, %struct.obstack* %40, i32 0, i32 6
  %41 = load i32, i32* %alignment_mask28, align 4
  %neg = xor i32 %41, -1
  %conv29 = sext i32 %neg to i64
  %and = and i64 %add, %conv29
  %add.ptr30 = getelementptr inbounds i8, i8* null, i64 %and
  %42 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free31 = getelementptr inbounds %struct.obstack, %struct.obstack* %42, i32 0, i32 3
  store i8* %add.ptr30, i8** %next_free31, align 8
  %43 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free32 = getelementptr inbounds %struct.obstack, %struct.obstack* %43, i32 0, i32 3
  %44 = load i8*, i8** %next_free32, align 8
  %45 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %45, i32 0, i32 1
  %46 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk, align 8
  %47 = bitcast %struct._obstack_chunk* %46 to i8*
  %sub.ptr.lhs.cast33 = ptrtoint i8* %44 to i64
  %sub.ptr.rhs.cast34 = ptrtoint i8* %47 to i64
  %sub.ptr.sub35 = sub i64 %sub.ptr.lhs.cast33, %sub.ptr.rhs.cast34
  %48 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit36 = getelementptr inbounds %struct.obstack, %struct.obstack* %48, i32 0, i32 4
  %49 = load i8*, i8** %chunk_limit36, align 8
  %50 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk37 = getelementptr inbounds %struct.obstack, %struct.obstack* %50, i32 0, i32 1
  %51 = load %struct._obstack_chunk*, %struct._obstack_chunk** %chunk37, align 8
  %52 = bitcast %struct._obstack_chunk* %51 to i8*
  %sub.ptr.lhs.cast38 = ptrtoint i8* %49 to i64
  %sub.ptr.rhs.cast39 = ptrtoint i8* %52 to i64
  %sub.ptr.sub40 = sub i64 %sub.ptr.lhs.cast38, %sub.ptr.rhs.cast39
  %cmp41 = icmp sgt i64 %sub.ptr.sub35, %sub.ptr.sub40
  br i1 %cmp41, label %if.then.43, label %if.end.46

if.then.43:                                       ; preds = %if.end.23
  %53 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %chunk_limit44 = getelementptr inbounds %struct.obstack, %struct.obstack* %53, i32 0, i32 4
  %54 = load i8*, i8** %chunk_limit44, align 8
  %55 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free45 = getelementptr inbounds %struct.obstack, %struct.obstack* %55, i32 0, i32 3
  store i8* %54, i8** %next_free45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.43, %if.end.23
  %56 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %next_free47 = getelementptr inbounds %struct.obstack, %struct.obstack* %56, i32 0, i32 3
  %57 = load i8*, i8** %next_free47, align 8
  %58 = load %struct.obstack*, %struct.obstack** %__o1, align 8
  %object_base48 = getelementptr inbounds %struct.obstack, %struct.obstack* %58, i32 0, i32 2
  store i8* %57, i8** %object_base48, align 8
  %59 = load i8*, i8** %value, align 8
  store i8* %59, i8** %tmp49
  %60 = load i8*, i8** %tmp49
  store i8* %60, i8** %tmp
  %61 = load i8*, i8** %tmp
  %62 = bitcast i8* %61 to %struct.conflict_graph_arc_def*
  store %struct.conflict_graph_arc_def* %62, %struct.conflict_graph_arc_def** %arc, align 8
  %63 = load i32, i32* %smaller, align 4
  %64 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller50 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %64, i32 0, i32 2
  store i32 %63, i32* %smaller50, align 4
  %65 = load i32, i32* %larger, align 4
  %66 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger51 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %66, i32 0, i32 3
  store i32 %65, i32* %larger51, align 4
  %67 = load i32, i32* %smaller, align 4
  %idxprom = sext i32 %67 to i64
  %68 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %68, i32 0, i32 2
  %69 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads, align 8
  %arrayidx = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %69, i64 %idxprom
  %70 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arrayidx, align 8
  %71 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %71, i32 0, i32 0
  store %struct.conflict_graph_arc_def* %70, %struct.conflict_graph_arc_def** %smaller_next, align 8
  %72 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %73 = load i32, i32* %smaller, align 4
  %idxprom52 = sext i32 %73 to i64
  %74 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads53 = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %74, i32 0, i32 2
  %75 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads53, align 8
  %arrayidx54 = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %75, i64 %idxprom52
  store %struct.conflict_graph_arc_def* %72, %struct.conflict_graph_arc_def** %arrayidx54, align 8
  %76 = load i32, i32* %larger, align 4
  %idxprom55 = sext i32 %76 to i64
  %77 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads56 = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %77, i32 0, i32 2
  %78 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads56, align 8
  %arrayidx57 = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %78, i64 %idxprom55
  %79 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arrayidx57, align 8
  %80 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %80, i32 0, i32 1
  store %struct.conflict_graph_arc_def* %79, %struct.conflict_graph_arc_def** %larger_next, align 8
  %81 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %82 = load i32, i32* %larger, align 4
  %idxprom58 = sext i32 %82 to i64
  %83 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads59 = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %83, i32 0, i32 2
  %84 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads59, align 8
  %arrayidx60 = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %84, i64 %idxprom58
  store %struct.conflict_graph_arc_def* %81, %struct.conflict_graph_arc_def** %arrayidx60, align 8
  %85 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %86 = bitcast %struct.conflict_graph_arc_def* %85 to i8*
  %87 = load i8**, i8*** %slot, align 8
  store i8* %86, i8** %87, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.10
  %88 = load i32, i32* %retval
  ret i32 %88
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #4

declare i8** @htab_find_slot(%struct.htab*, i8*, i32) #1

declare void @_obstack_newchunk(%struct.obstack*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @conflict_graph_conflict_p(%struct.conflict_graph_def* %graph, i32 %reg1, i32 %reg2) #0 {
entry:
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %reg1.addr = alloca i32, align 4
  %reg2.addr = alloca i32, align 4
  %arc = alloca %struct.conflict_graph_arc_def, align 8
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  store i32 %reg1, i32* %reg1.addr, align 4
  store i32 %reg2, i32* %reg2.addr, align 4
  %0 = load i32, i32* %reg1.addr, align 4
  %1 = load i32, i32* %reg2.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %reg1.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i32, i32* %reg2.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %3, %cond.false ]
  %smaller = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %arc, i32 0, i32 2
  store i32 %cond, i32* %smaller, align 4
  %4 = load i32, i32* %reg1.addr, align 4
  %5 = load i32, i32* %reg2.addr, align 4
  %cmp1 = icmp sgt i32 %4, %5
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %6 = load i32, i32* %reg1.addr, align 4
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  %7 = load i32, i32* %reg2.addr, align 4
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond5 = phi i32 [ %6, %cond.true.2 ], [ %7, %cond.false.3 ]
  %larger = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %arc, i32 0, i32 3
  store i32 %cond5, i32* %larger, align 4
  %8 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %arc_hash_table = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %8, i32 0, i32 0
  %9 = load %struct.htab*, %struct.htab** %arc_hash_table, align 8
  %10 = bitcast %struct.conflict_graph_arc_def* %arc to i8*
  %call = call i8* @htab_find(%struct.htab* %9, i8* %10)
  %cmp6 = icmp ne i8* %call, null
  %conv = zext i1 %cmp6 to i32
  ret i32 %conv
}

declare i8* @htab_find(%struct.htab*, i8*) #1

; Function Attrs: nounwind uwtable
define void @conflict_graph_enum(%struct.conflict_graph_def* %graph, i32 %reg, i32 (i32, i32, i8*)* %enum_fn, i8* %extra) #0 {
entry:
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %reg.addr = alloca i32, align 4
  %enum_fn.addr = alloca i32 (i32, i32, i8*)*, align 8
  %extra.addr = alloca i8*, align 8
  %arc = alloca %struct.conflict_graph_arc_def*, align 8
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  store i32 %reg, i32* %reg.addr, align 4
  store i32 (i32, i32, i8*)* %enum_fn, i32 (i32, i32, i8*)** %enum_fn.addr, align 8
  store i8* %extra, i8** %extra.addr, align 8
  %0 = load i32, i32* %reg.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %1, i32 0, i32 2
  %2 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads, align 8
  %arrayidx = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %2, i64 %idxprom
  %3 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arrayidx, align 8
  store %struct.conflict_graph_arc_def* %3, %struct.conflict_graph_arc_def** %arc, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.4, %entry
  %4 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %cmp = icmp ne %struct.conflict_graph_arc_def* %4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %enum_fn.addr, align 8
  %6 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %6, i32 0, i32 2
  %7 = load i32, i32* %smaller, align 4
  %8 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %8, i32 0, i32 3
  %9 = load i32, i32* %larger, align 4
  %10 = load i8*, i8** %extra.addr, align 8
  %call = call i32 %5(i32 %7, i32 %9, i8* %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %11 = load i32, i32* %reg.addr, align 4
  %12 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger1 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %12, i32 0, i32 3
  %13 = load i32, i32* %larger1, align 4
  %cmp2 = icmp slt i32 %11, %13
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %14 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %14, i32 0, i32 0
  %15 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %smaller_next, align 8
  store %struct.conflict_graph_arc_def* %15, %struct.conflict_graph_arc_def** %arc, align 8
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %16 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %16, i32 0, i32 1
  %17 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %larger_next, align 8
  store %struct.conflict_graph_arc_def* %17, %struct.conflict_graph_arc_def** %arc, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @conflict_graph_merge_regs(%struct.conflict_graph_def* %graph, i32 %target, i32 %src) #0 {
entry:
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %target.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %arc = alloca %struct.conflict_graph_arc_def*, align 8
  %other = alloca i32, align 4
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  store i32 %target, i32* %target.addr, align 4
  store i32 %src, i32* %src.addr, align 4
  %0 = load i32, i32* %src.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %neighbor_heads = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %1, i32 0, i32 2
  %2 = load %struct.conflict_graph_arc_def**, %struct.conflict_graph_arc_def*** %neighbor_heads, align 8
  %arrayidx = getelementptr inbounds %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %2, i64 %idxprom
  %3 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arrayidx, align 8
  store %struct.conflict_graph_arc_def* %3, %struct.conflict_graph_arc_def** %arc, align 8
  %4 = load i32, i32* %target.addr, align 4
  %5 = load i32, i32* %src.addr, align 4
  %cmp = icmp eq i32 %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %if.end
  %6 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %cmp1 = icmp ne %struct.conflict_graph_arc_def* %6, null
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %7, i32 0, i32 2
  %8 = load i32, i32* %smaller, align 4
  store i32 %8, i32* %other, align 4
  %9 = load i32, i32* %other, align 4
  %10 = load i32, i32* %src.addr, align 4
  %cmp2 = icmp eq i32 %9, %10
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %while.body
  %11 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %11, i32 0, i32 3
  %12 = load i32, i32* %larger, align 4
  store i32 %12, i32* %other, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %while.body
  %13 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %14 = load i32, i32* %target.addr, align 4
  %15 = load i32, i32* %other, align 4
  %call = call i32 @conflict_graph_add(%struct.conflict_graph_def* %13, i32 %14, i32 %15)
  %16 = load i32, i32* %src.addr, align 4
  %17 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger5 = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %17, i32 0, i32 3
  %18 = load i32, i32* %larger5, align 4
  %cmp6 = icmp slt i32 %16, %18
  br i1 %cmp6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %19 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %smaller_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %19, i32 0, i32 0
  %20 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %smaller_next, align 8
  store %struct.conflict_graph_arc_def* %20, %struct.conflict_graph_arc_def** %arc, align 8
  br label %if.end.8

if.else:                                          ; preds = %if.end.4
  %21 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %arc, align 8
  %larger_next = getelementptr inbounds %struct.conflict_graph_arc_def, %struct.conflict_graph_arc_def* %21, i32 0, i32 1
  %22 = load %struct.conflict_graph_arc_def*, %struct.conflict_graph_arc_def** %larger_next, align 8
  store %struct.conflict_graph_arc_def* %22, %struct.conflict_graph_arc_def** %arc, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else, %if.then.7
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @conflict_graph_print(%struct.conflict_graph_def* %graph, %struct._IO_FILE* %fp) #0 {
entry:
  %graph.addr = alloca %struct.conflict_graph_def*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %reg = alloca i32, align 4
  %context = alloca %struct.print_context, align 8
  store %struct.conflict_graph_def* %graph, %struct.conflict_graph_def** %graph.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %fp1 = getelementptr inbounds %struct.print_context, %struct.print_context* %context, i32 0, i32 0
  store %struct._IO_FILE* %0, %struct._IO_FILE** %fp1, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %reg, align 4
  %3 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %num_regs = getelementptr inbounds %struct.conflict_graph_def, %struct.conflict_graph_def* %3, i32 0, i32 1
  %4 = load i32, i32* %num_regs, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %reg, align 4
  %reg2 = getelementptr inbounds %struct.print_context, %struct.print_context* %context, i32 0, i32 1
  store i32 %5, i32* %reg2, align 4
  %started = getelementptr inbounds %struct.print_context, %struct.print_context* %context, i32 0, i32 2
  store i32 0, i32* %started, align 4
  %6 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph.addr, align 8
  %7 = load i32, i32* %reg, align 4
  %8 = bitcast %struct.print_context* %context to i8*
  call void @conflict_graph_enum(%struct.conflict_graph_def* %6, i32 %7, i32 (i32, i32, i8*)* @print_conflict, i8* %8)
  %started3 = getelementptr inbounds %struct.print_context, %struct.print_context* %context, i32 0, i32 2
  %9 = load i32, i32* %started3, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call4 = call i32 @fputc(i32 10, %struct._IO_FILE* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %reg, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %reg, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @print_conflict(i32 %reg1, i32 %reg2, i8* %contextp) #0 {
entry:
  %reg1.addr = alloca i32, align 4
  %reg2.addr = alloca i32, align 4
  %contextp.addr = alloca i8*, align 8
  %context = alloca %struct.print_context*, align 8
  %reg = alloca i32, align 4
  store i32 %reg1, i32* %reg1.addr, align 4
  store i32 %reg2, i32* %reg2.addr, align 4
  store i8* %contextp, i8** %contextp.addr, align 8
  %0 = load i8*, i8** %contextp.addr, align 8
  %1 = bitcast i8* %0 to %struct.print_context*
  store %struct.print_context* %1, %struct.print_context** %context, align 8
  %2 = load %struct.print_context*, %struct.print_context** %context, align 8
  %started = getelementptr inbounds %struct.print_context, %struct.print_context* %2, i32 0, i32 2
  %3 = load i32, i32* %started, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct.print_context*, %struct.print_context** %context, align 8
  %fp = getelementptr inbounds %struct.print_context, %struct.print_context* %4, i32 0, i32 0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %6 = load %struct.print_context*, %struct.print_context** %context, align 8
  %reg3 = getelementptr inbounds %struct.print_context, %struct.print_context* %6, i32 0, i32 1
  %7 = load i32, i32* %reg3, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %7)
  %8 = load %struct.print_context*, %struct.print_context** %context, align 8
  %started4 = getelementptr inbounds %struct.print_context, %struct.print_context* %8, i32 0, i32 2
  store i32 1, i32* %started4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* %reg1.addr, align 4
  %10 = load %struct.print_context*, %struct.print_context** %context, align 8
  %reg5 = getelementptr inbounds %struct.print_context, %struct.print_context* %10, i32 0, i32 1
  %11 = load i32, i32* %reg5, align 4
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %12 = load i32, i32* %reg2.addr, align 4
  store i32 %12, i32* %reg, align 4
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %13 = load i32, i32* %reg2.addr, align 4
  %14 = load %struct.print_context*, %struct.print_context** %context, align 8
  %reg7 = getelementptr inbounds %struct.print_context, %struct.print_context* %14, i32 0, i32 1
  %15 = load i32, i32* %reg7, align 4
  %cmp8 = icmp eq i32 %13, %15
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else
  %16 = load i32, i32* %reg1.addr, align 4
  store i32 %16, i32* %reg, align 4
  br label %if.end.11

if.else.10:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 356, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.print_conflict, i32 0, i32 0)) #5
  unreachable

if.end.11:                                        ; preds = %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.6
  %17 = load %struct.print_context*, %struct.print_context** %context, align 8
  %fp13 = getelementptr inbounds %struct.print_context, %struct.print_context* %17, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %fp13, align 8
  %19 = load i32, i32* %reg, align 4
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %19)
  ret i32 0
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.conflict_graph_def* @conflict_graph_compute(%struct.bitmap_head_def* %regs, %struct.partition_def* %p) #0 {
entry:
  %regs.addr = alloca %struct.bitmap_head_def*, align 8
  %p.addr = alloca %struct.partition_def*, align 8
  %b = alloca i32, align 4
  %graph = alloca %struct.conflict_graph_def*, align 8
  %live_head = alloca %struct.bitmap_head_def, align 8
  %live = alloca %struct.bitmap_head_def*, align 8
  %born_head = alloca %struct.bitmap_head_def, align 8
  %born = alloca %struct.bitmap_head_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %head = alloca %struct.rtx_def*, align 8
  %born_reg = alloca i32, align 4
  %live_reg = alloca i32, align 4
  %link = alloca %struct.rtx_def*, align 8
  %ptr_ = alloca %struct.bitmap_element_def*, align 8
  %indx_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %word_ = alloca i64, align 8
  %mask_ = alloca i64, align 8
  %ptr_53 = alloca %struct.bitmap_element_def*, align 8
  %indx_55 = alloca i32, align 4
  %bit_num_56 = alloca i32, align 4
  %word_num_57 = alloca i32, align 4
  %word_85 = alloca i64, align 8
  %mask_96 = alloca i64, align 8
  %b110 = alloca i32, align 4
  %l = alloca i32, align 4
  %regno = alloca i32, align 4
  store %struct.bitmap_head_def* %regs, %struct.bitmap_head_def** %regs.addr, align 8
  store %struct.partition_def* %p, %struct.partition_def** %p.addr, align 8
  %call = call i32 @max_reg_num()
  %call1 = call %struct.conflict_graph_def* @conflict_graph_new(i32 %call)
  store %struct.conflict_graph_def* %call1, %struct.conflict_graph_def** %graph, align 8
  store %struct.bitmap_head_def* %live_head, %struct.bitmap_head_def** %live, align 8
  store %struct.bitmap_head_def* %born_head, %struct.bitmap_head_def** %born, align 8
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %call2 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %0)
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %call3 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %1)
  %2 = load i32, i32* @n_basic_blocks, align 4
  store i32 %2, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end.180, %entry
  %3 = load i32, i32* %b, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %b, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end.181

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %b, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %5, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %global_live_at_end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 9
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_end, align 8
  call void @bitmap_copy(%struct.bitmap_head_def* %7, %struct.bitmap_head_def* %9)
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs.addr, align 8
  %call5 = call i32 @bitmap_operation(%struct.bitmap_head_def* %10, %struct.bitmap_head_def* %11, %struct.bitmap_head_def* %12, i32 0)
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head6, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %head, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %end7, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %insn, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.176, %for.body
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp9 = icmp ne %struct.rtx_def* %19, %20
  br i1 %cmp9, label %for.body.10, label %for.end.180

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load = load i32, i32* %22, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom11 = sext i32 %bf.clear to i64
  %arrayidx12 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom11
  %23 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %23 to i32
  %cmp13 = icmp eq i32 %conv, 105
  br i1 %cmp13, label %if.then, label %if.end.175

if.then:                                          ; preds = %for.body.10
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %24)
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %28 = bitcast %struct.bitmap_head_def* %27 to i8*
  call void @note_stores(%struct.rtx_def* %26, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @mark_reg, i8* %28)
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %30 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs.addr, align 8
  %call16 = call i32 @bitmap_operation(%struct.bitmap_head_def* %29, %struct.bitmap_head_def* %30, %struct.bitmap_head_def* %31, i32 0)
  %32 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %33 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %34 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %call17 = call i32 @bitmap_operation(%struct.bitmap_head_def* %32, %struct.bitmap_head_def* %33, %struct.bitmap_head_def* %34, i32 1)
  br label %do.body

do.body:                                          ; preds = %if.then
  %35 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %35, i32 0, i32 0
  %36 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8
  store %struct.bitmap_element_def* %36, %struct.bitmap_element_def** %ptr_, align 8
  store i32 0, i32* %indx_, align 4
  store i32 53, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %37 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp18 = icmp ne %struct.bitmap_element_def* %37, null
  br i1 %cmp18, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %38 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %38, i32 0, i32 2
  %39 = load i32, i32* %indx, align 4
  %40 = load i32, i32* %indx_, align 4
  %cmp20 = icmp ult i32 %39, %40
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %cmp20, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %42, i32 0, i32 0
  %43 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next, align 8
  store %struct.bitmap_element_def* %43, %struct.bitmap_element_def** %ptr_, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %44 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp22 = icmp ne %struct.bitmap_element_def* %44, null
  br i1 %cmp22, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %45 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx24 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %45, i32 0, i32 2
  %46 = load i32, i32* %indx24, align 4
  %47 = load i32, i32* %indx_, align 4
  %cmp25 = icmp ne i32 %46, %47
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %land.lhs.true
  store i32 0, i32* %bit_num_, align 4
  store i32 0, i32* %word_num_, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true, %while.end
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.146, %if.end
  %48 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %cmp29 = icmp ne %struct.bitmap_element_def* %48, null
  br i1 %cmp29, label %for.body.31, label %for.end.148

for.body.31:                                      ; preds = %for.cond.28
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.143, %for.body.31
  %49 = load i32, i32* %word_num_, align 4
  %cmp33 = icmp ult i32 %49, 2
  br i1 %cmp33, label %for.body.35, label %for.end.145

for.body.35:                                      ; preds = %for.cond.32
  %50 = load i32, i32* %word_num_, align 4
  %idxprom36 = zext i32 %50 to i64
  %51 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %bits = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %51, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [2 x i64], [2 x i64]* %bits, i32 0, i64 %idxprom36
  %52 = load i64, i64* %arrayidx37, align 8
  store i64 %52, i64* %word_, align 8
  %53 = load i64, i64* %word_, align 8
  %cmp38 = icmp ne i64 %53, 0
  br i1 %cmp38, label %if.then.40, label %if.end.142

if.then.40:                                       ; preds = %for.body.35
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.139, %if.then.40
  %54 = load i32, i32* %bit_num_, align 4
  %cmp42 = icmp ult i32 %54, 64
  br i1 %cmp42, label %for.body.44, label %for.end.141

for.body.44:                                      ; preds = %for.cond.41
  %55 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %55 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %mask_, align 8
  %56 = load i64, i64* %word_, align 8
  %57 = load i64, i64* %mask_, align 8
  %and = and i64 %56, %57
  %cmp45 = icmp ne i64 %and, 0
  br i1 %cmp45, label %if.then.47, label %if.end.138

if.then.47:                                       ; preds = %for.body.44
  %58 = load i64, i64* %mask_, align 8
  %neg = xor i64 %58, -1
  %59 = load i64, i64* %word_, align 8
  %and48 = and i64 %59, %neg
  store i64 %and48, i64* %word_, align 8
  %60 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %indx49 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %60, i32 0, i32 2
  %61 = load i32, i32* %indx49, align 4
  %mul = mul i32 %61, 128
  %62 = load i32, i32* %word_num_, align 4
  %mul50 = mul i32 %62, 64
  %add = add i32 %mul, %mul50
  %63 = load i32, i32* %bit_num_, align 4
  %add51 = add i32 %add, %63
  store i32 %add51, i32* %born_reg, align 4
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.47
  %64 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %first54 = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %64, i32 0, i32 0
  %65 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first54, align 8
  store %struct.bitmap_element_def* %65, %struct.bitmap_element_def** %ptr_53, align 8
  store i32 0, i32* %indx_55, align 4
  store i32 53, i32* %bit_num_56, align 4
  store i32 0, i32* %word_num_57, align 4
  br label %while.cond.58

while.cond.58:                                    ; preds = %while.body.66, %do.body.52
  %66 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %cmp59 = icmp ne %struct.bitmap_element_def* %66, null
  br i1 %cmp59, label %land.rhs.61, label %land.end.65

land.rhs.61:                                      ; preds = %while.cond.58
  %67 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %indx62 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %67, i32 0, i32 2
  %68 = load i32, i32* %indx62, align 4
  %69 = load i32, i32* %indx_55, align 4
  %cmp63 = icmp ult i32 %68, %69
  br label %land.end.65

land.end.65:                                      ; preds = %land.rhs.61, %while.cond.58
  %70 = phi i1 [ false, %while.cond.58 ], [ %cmp63, %land.rhs.61 ]
  br i1 %70, label %while.body.66, label %while.end.68

while.body.66:                                    ; preds = %land.end.65
  %71 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %next67 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %71, i32 0, i32 0
  %72 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next67, align 8
  store %struct.bitmap_element_def* %72, %struct.bitmap_element_def** %ptr_53, align 8
  br label %while.cond.58

while.end.68:                                     ; preds = %land.end.65
  %73 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %cmp69 = icmp ne %struct.bitmap_element_def* %73, null
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.76

land.lhs.true.71:                                 ; preds = %while.end.68
  %74 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %indx72 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %74, i32 0, i32 2
  %75 = load i32, i32* %indx72, align 4
  %76 = load i32, i32* %indx_55, align 4
  %cmp73 = icmp ne i32 %75, %76
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %land.lhs.true.71
  store i32 0, i32* %bit_num_56, align 4
  store i32 0, i32* %word_num_57, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.75, %land.lhs.true.71, %while.end.68
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc.131, %if.end.76
  %77 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %cmp78 = icmp ne %struct.bitmap_element_def* %77, null
  br i1 %cmp78, label %for.body.80, label %for.end.133

for.body.80:                                      ; preds = %for.cond.77
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.128, %for.body.80
  %78 = load i32, i32* %word_num_57, align 4
  %cmp82 = icmp ult i32 %78, 2
  br i1 %cmp82, label %for.body.84, label %for.end.130

for.body.84:                                      ; preds = %for.cond.81
  %79 = load i32, i32* %word_num_57, align 4
  %idxprom86 = zext i32 %79 to i64
  %80 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %bits87 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %80, i32 0, i32 3
  %arrayidx88 = getelementptr inbounds [2 x i64], [2 x i64]* %bits87, i32 0, i64 %idxprom86
  %81 = load i64, i64* %arrayidx88, align 8
  store i64 %81, i64* %word_85, align 8
  %82 = load i64, i64* %word_85, align 8
  %cmp89 = icmp ne i64 %82, 0
  br i1 %cmp89, label %if.then.91, label %if.end.127

if.then.91:                                       ; preds = %for.body.84
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc, %if.then.91
  %83 = load i32, i32* %bit_num_56, align 4
  %cmp93 = icmp ult i32 %83, 64
  br i1 %cmp93, label %for.body.95, label %for.end

for.body.95:                                      ; preds = %for.cond.92
  %84 = load i32, i32* %bit_num_56, align 4
  %sh_prom97 = zext i32 %84 to i64
  %shl98 = shl i64 1, %sh_prom97
  store i64 %shl98, i64* %mask_96, align 8
  %85 = load i64, i64* %word_85, align 8
  %86 = load i64, i64* %mask_96, align 8
  %and99 = and i64 %85, %86
  %cmp100 = icmp ne i64 %and99, 0
  br i1 %cmp100, label %if.then.102, label %if.end.126

if.then.102:                                      ; preds = %for.body.95
  %87 = load i64, i64* %mask_96, align 8
  %neg103 = xor i64 %87, -1
  %88 = load i64, i64* %word_85, align 8
  %and104 = and i64 %88, %neg103
  store i64 %and104, i64* %word_85, align 8
  %89 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %indx105 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %89, i32 0, i32 2
  %90 = load i32, i32* %indx105, align 4
  %mul106 = mul i32 %90, 128
  %91 = load i32, i32* %word_num_57, align 4
  %mul107 = mul i32 %91, 64
  %add108 = add i32 %mul106, %mul107
  %92 = load i32, i32* %bit_num_56, align 4
  %add109 = add i32 %add108, %92
  store i32 %add109, i32* %live_reg, align 4
  %93 = load i32, i32* %born_reg, align 4
  %idxprom111 = sext i32 %93 to i64
  %94 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %94, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom111
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx112, i32 0, i32 0
  %95 = load i32, i32* %class_element, align 4
  store i32 %95, i32* %b110, align 4
  %96 = load i32, i32* %live_reg, align 4
  %idxprom113 = sext i32 %96 to i64
  %97 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %elements114 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %97, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements114, i32 0, i64 %idxprom113
  %class_element116 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx115, i32 0, i32 0
  %98 = load i32, i32* %class_element116, align 4
  store i32 %98, i32* %l, align 4
  %99 = load i32, i32* %b110, align 4
  %100 = load i32, i32* %l, align 4
  %cmp117 = icmp ne i32 %99, %100
  br i1 %cmp117, label %if.then.119, label %if.end.121

if.then.119:                                      ; preds = %if.then.102
  %101 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  %102 = load i32, i32* %b110, align 4
  %103 = load i32, i32* %l, align 4
  %call120 = call i32 @conflict_graph_add(%struct.conflict_graph_def* %101, i32 %102, i32 %103)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %if.then.102
  %104 = load i64, i64* %word_85, align 8
  %cmp122 = icmp eq i64 %104, 0
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.121
  br label %for.end

if.end.125:                                       ; preds = %if.end.121
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %for.body.95
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %105 = load i32, i32* %bit_num_56, align 4
  %inc = add i32 %105, 1
  store i32 %inc, i32* %bit_num_56, align 4
  br label %for.cond.92

for.end:                                          ; preds = %if.then.124, %for.cond.92
  br label %if.end.127

if.end.127:                                       ; preds = %for.end, %for.body.84
  store i32 0, i32* %bit_num_56, align 4
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %106 = load i32, i32* %word_num_57, align 4
  %inc129 = add i32 %106, 1
  store i32 %inc129, i32* %word_num_57, align 4
  br label %for.cond.81

for.end.130:                                      ; preds = %for.cond.81
  store i32 0, i32* %word_num_57, align 4
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %107 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_53, align 8
  %next132 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %107, i32 0, i32 0
  %108 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next132, align 8
  store %struct.bitmap_element_def* %108, %struct.bitmap_element_def** %ptr_53, align 8
  br label %for.cond.77

for.end.133:                                      ; preds = %for.cond.77
  br label %do.end

do.end:                                           ; preds = %for.end.133
  %109 = load i64, i64* %word_, align 8
  %cmp134 = icmp eq i64 %109, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %do.end
  br label %for.end.141

if.end.137:                                       ; preds = %do.end
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %for.body.44
  br label %for.inc.139

for.inc.139:                                      ; preds = %if.end.138
  %110 = load i32, i32* %bit_num_, align 4
  %inc140 = add i32 %110, 1
  store i32 %inc140, i32* %bit_num_, align 4
  br label %for.cond.41

for.end.141:                                      ; preds = %if.then.136, %for.cond.41
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %for.body.35
  store i32 0, i32* %bit_num_, align 4
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %111 = load i32, i32* %word_num_, align 4
  %inc144 = add i32 %111, 1
  store i32 %inc144, i32* %word_num_, align 4
  br label %for.cond.32

for.end.145:                                      ; preds = %for.cond.32
  store i32 0, i32* %word_num_, align 4
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.end.145
  %112 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %ptr_, align 8
  %next147 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %112, i32 0, i32 0
  %113 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %next147, align 8
  store %struct.bitmap_element_def* %113, %struct.bitmap_element_def** %ptr_, align 8
  br label %for.cond.28

for.end.148:                                      ; preds = %for.cond.28
  br label %do.end.149

do.end.149:                                       ; preds = %for.end.148
  %114 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 6
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  store %struct.rtx_def* %115, %struct.rtx_def** %link, align 8
  br label %for.cond.153

for.cond.153:                                     ; preds = %for.inc.170, %do.end.149
  %116 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool = icmp ne %struct.rtx_def* %116, null
  br i1 %tobool, label %for.body.154, label %for.end.174

for.body.154:                                     ; preds = %for.cond.153
  %117 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load155 = load i32, i32* %118, align 8
  %bf.lshr = lshr i32 %bf.load155, 16
  %bf.clear156 = and i32 %bf.lshr, 255
  %cmp157 = icmp eq i32 %bf.clear156, 1
  br i1 %cmp157, label %if.then.159, label %if.end.169

if.then.159:                                      ; preds = %for.body.154
  %119 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtx162 = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx162, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %121 = load i32, i32* %rtuint, align 4
  store i32 %121, i32* %regno, align 4
  %122 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %regs.addr, align 8
  %123 = load i32, i32* %regno, align 4
  %call165 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %122, i32 %123)
  %tobool166 = icmp ne i32 %call165, 0
  br i1 %tobool166, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %if.then.159
  %124 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %125 = load i32, i32* %regno, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %124, i32 %125)
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.167, %if.then.159
  br label %if.end.169

if.end.169:                                       ; preds = %if.end.168, %for.body.154
  br label %for.inc.170

for.inc.170:                                      ; preds = %if.end.169
  %126 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 1
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  store %struct.rtx_def* %127, %struct.rtx_def** %link, align 8
  br label %for.cond.153

for.end.174:                                      ; preds = %for.cond.153
  br label %if.end.175

if.end.175:                                       ; preds = %for.end.174, %for.body.10
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 1
  %rtx179 = bitcast %union.rtunion_def* %arrayidx178 to %struct.rtx_def**
  %129 = load %struct.rtx_def*, %struct.rtx_def** %rtx179, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %insn, align 8
  br label %for.cond.8

for.end.180:                                      ; preds = %for.cond.8
  br label %for.cond

for.end.181:                                      ; preds = %for.cond
  br label %do.body.182

do.body.182:                                      ; preds = %for.end.181
  %130 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  %tobool183 = icmp ne %struct.bitmap_head_def* %130, null
  br i1 %tobool183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %do.body.182
  %131 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %live, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %131)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %live, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.184, %do.body.182
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %do.body.187

do.body.187:                                      ; preds = %do.end.186
  %132 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  %tobool188 = icmp ne %struct.bitmap_head_def* %132, null
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %do.body.187
  %133 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %born, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %133)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %born, align 8
  br label %if.end.190

if.end.190:                                       ; preds = %if.then.189, %do.body.187
  br label %do.end.191

do.end.191:                                       ; preds = %if.end.190
  %134 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %graph, align 8
  ret %struct.conflict_graph_def* %134
}

declare i32 @max_reg_num() #1

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_copy(%struct.bitmap_head_def*, %struct.bitmap_head_def*) #1

declare i32 @bitmap_operation(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_reg(%struct.rtx_def* %reg, %struct.rtx_def* %setter, i8* %data) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %setter.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  %set = alloca %struct.bitmap_head_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %setter, %struct.rtx_def** %setter.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.bitmap_head_def*
  store %struct.bitmap_head_def* %1, %struct.bitmap_head_def** %set, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %reg.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp ne i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %10 = load i32, i32* %rtuint, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %8, i32 %10)
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4
  ret void
}

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
