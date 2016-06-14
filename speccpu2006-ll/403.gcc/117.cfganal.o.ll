; ModuleID = 'cfganal.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.edge_list = type { i32, i32, %struct.edge_def** }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.depth_first_search_dsS = type { %struct.basic_block_def**, i32, %struct.simple_bitmap_def* }
%struct.dfst_node = type { i32, %struct.dfst_node**, %struct.dfst_node* }

@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@rtx_class = external constant [153 x i8], align 16
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str = private unnamed_addr constant [59 x i8] c"Compressed edge list, %d BBs + entry & exit, and %d edges\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c" %-4d - edge(\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"entry,\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"exit)\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"*p* No index for edge from %d to %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"*p* Pred for index %d should be %d not %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"*p* Succ for index %d should be %d not %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"*** Edge (%d, %d) appears to not have an index\0A\00", align 1
@.str.10 = private unnamed_addr constant [54 x i8] c"*** Edge (%d, %d) has index %d, but there is no edge\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"*** Edge (entry, %d) appears to not have an index\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"*** Edge (entry, %d) has index %d, but no edge exists\0A\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"*** Edge (%d, exit) appears to not have an index\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"*** Edge (%d, exit) has index %d, but no edge exists\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s { \00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%d->%d \00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"cfganal.c\00", align 1
@__FUNCTION__.flow_depth_first_order_compute = private unnamed_addr constant [31 x i8] c"flow_depth_first_order_compute\00", align 1
@fixed_regs = external global [53 x i8], align 16

; Function Attrs: nounwind uwtable
define zeroext i1 @forwarder_block_p(%struct.basic_block_def* %bb) #0 {
entry:
  %retval = alloca i1, align 1
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %0, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp1 = icmp eq %struct.basic_block_def* %1, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 5
  %3 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool = icmp ne %struct.edge_def* %3, null
  br i1 %tobool, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.2
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ4 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ4, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %5, i32 0, i32 1
  %6 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool5 = icmp ne %struct.edge_def* %6, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false, %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp6 = icmp ne %struct.rtx_def* %9, %11
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %14 to i32
  %cmp7 = icmp eq i32 %conv, 105
  br i1 %cmp7, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @active_insn_p(%struct.rtx_def* %15)
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i1 false, i1* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load13 = load i32, i32* %19, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %idxprom15 = sext i32 %bf.clear14 to i64
  %arrayidx16 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom15
  %20 = load i8, i8* %arrayidx16, align 1
  %conv17 = sext i8 %20 to i32
  %cmp18 = icmp eq i32 %conv17, 105
  br i1 %cmp18, label %lor.lhs.false.20, label %lor.end

lor.lhs.false.20:                                 ; preds = %for.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load21 = load i32, i32* %22, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 33
  br i1 %cmp23, label %land.lhs.true.25, label %lor.rhs

land.lhs.true.25:                                 ; preds = %lor.lhs.false.20
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call26 = call i32 @simplejump_p(%struct.rtx_def* %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.25, %lor.lhs.false.20
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call28 = call i32 @active_insn_p(%struct.rtx_def* %24)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.25, %for.end
  %25 = phi i1 [ true, %land.lhs.true.25 ], [ true, %for.end ], [ %lnot, %lor.rhs ]
  store i1 %25, i1* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.10, %if.then
  %26 = load i1, i1* %retval
  ret i1 %26
}

declare i32 @active_insn_p(%struct.rtx_def*) #1

declare i32 @simplejump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @can_fallthru(%struct.basic_block_def* %src, %struct.basic_block_def* %target) #0 {
entry:
  %src.addr = alloca %struct.basic_block_def*, align 8
  %target.addr = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %insn2 = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %src, %struct.basic_block_def** %src.addr, align 8
  store %struct.basic_block_def* %target, %struct.basic_block_def** %target.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn2, align 8
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %src.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 11
  %5 = load i32, i32* %index, align 4
  %add = add nsw i32 %5, 1
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %target.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 11
  %7 = load i32, i32* %index1, align 4
  %cmp = icmp eq i32 %add, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %call = call i32 @active_insn_p(%struct.rtx_def* %8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %call2 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %9)
  store %struct.rtx_def* %call2, %struct.rtx_def** %insn2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call3 = call %struct.rtx_def* @next_active_insn(%struct.rtx_def* %10)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn2, align 8
  %cmp4 = icmp eq %struct.rtx_def* %call3, %11
  ret i1 %cmp4
}

declare %struct.rtx_def* @next_active_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define zeroext i1 @mark_dfs_back_edges() #0 {
entry:
  %stack = alloca %struct.edge_def**, align 8
  %pre = alloca i32*, align 8
  %post = alloca i32*, align 8
  %sp = alloca i32, align 4
  %prenum = alloca i32, align 4
  %postnum = alloca i32, align 4
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %found = alloca i8, align 1
  %e = alloca %struct.edge_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  store i32 1, i32* %prenum, align 4
  store i32 1, i32* %postnum, align 4
  store i8 0, i8* %found, align 1
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %pre, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv1, i64 4)
  %3 = bitcast i8* %call2 to i32*
  store i32* %3, i32** %post, align 8
  %4 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %4, 1
  %conv3 = sext i32 %add to i64
  %mul = mul i64 %conv3, 8
  %call4 = call noalias i8* @xmalloc(i64 %mul)
  %5 = bitcast i8* %call4 to %struct.edge_def**
  store %struct.edge_def** %5, %struct.edge_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %call5 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %6)
  store %struct.simple_bitmap_def* %call5, %struct.simple_bitmap_def** %visited, align 8
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %7)
  %8 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %9 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %10, i64 %idxprom
  store %struct.edge_def* %8, %struct.edge_def** %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.82, %entry
  %11 = load i32, i32* %sp, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i32, i32* %sp, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom6 = sext i32 %sub to i64
  %13 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx7 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %13, i64 %idxprom6
  %14 = load %struct.edge_def*, %struct.edge_def** %arrayidx7, align 8
  store %struct.edge_def* %14, %struct.edge_def** %e, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 2
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8
  store %struct.basic_block_def* %16, %struct.basic_block_def** %src, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest9 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 3
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest9, align 8
  store %struct.basic_block_def* %18, %struct.basic_block_def** %dest, align 8
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i32 0, i32 6
  %20 = load i32, i32* %flags, align 4
  %and = and i32 %20, -33
  store i32 %and, i32* %flags, align 4
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp = icmp ne %struct.basic_block_def* %21, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %land.lhs.true, label %if.else.38

land.lhs.true:                                    ; preds = %while.body
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index, align 4
  %div = udiv i32 %23, 64
  %idxprom11 = zext i32 %div to i64
  %24 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %24, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom11
  %25 = load i64, i64* %arrayidx12, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %26, i32 0, i32 11
  %27 = load i32, i32* %index13, align 4
  %rem = urem i32 %27, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %25, %sh_prom
  %and14 = and i64 %shr, 1
  %tobool15 = icmp ne i64 %and14, 0
  br i1 %tobool15, label %if.else.38, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 11
  %29 = load i32, i32* %index16, align 4
  %rem17 = urem i32 %29, 64
  %sh_prom18 = zext i32 %rem17 to i64
  %shl = shl i64 1, %sh_prom18
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index19, align 4
  %div20 = udiv i32 %31, 64
  %idxprom21 = zext i32 %div20 to i64
  %32 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms22 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %32, i32 0, i32 3
  %arrayidx23 = getelementptr inbounds [1 x i64], [1 x i64]* %elms22, i32 0, i64 %idxprom21
  %33 = load i64, i64* %arrayidx23, align 8
  %or = or i64 %33, %shl
  store i64 %or, i64* %arrayidx23, align 8
  %34 = load i32, i32* %prenum, align 4
  %inc24 = add nsw i32 %34, 1
  store i32 %inc24, i32* %prenum, align 4
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 11
  %36 = load i32, i32* %index25, align 4
  %idxprom26 = sext i32 %36 to i64
  %37 = load i32*, i32** %pre, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom26
  store i32 %34, i32* %arrayidx27, align 4
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 5
  %39 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool28 = icmp ne %struct.edge_def* %39, null
  br i1 %tobool28, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 5
  %41 = load %struct.edge_def*, %struct.edge_def** %succ30, align 8
  %42 = load i32, i32* %sp, align 4
  %inc31 = add nsw i32 %42, 1
  store i32 %inc31, i32* %sp, align 4
  %idxprom32 = sext i32 %42 to i64
  %43 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx33 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %43, i64 %idxprom32
  store %struct.edge_def* %41, %struct.edge_def** %arrayidx33, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %44 = load i32, i32* %postnum, align 4
  %inc34 = add nsw i32 %44, 1
  store i32 %inc34, i32* %postnum, align 4
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 11
  %46 = load i32, i32* %index35, align 4
  %idxprom36 = sext i32 %46 to i64
  %47 = load i32*, i32** %post, align 8
  %arrayidx37 = getelementptr inbounds i32, i32* %47, i64 %idxprom36
  store i32 %44, i32* %arrayidx37, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.29
  br label %if.end.82

if.else.38:                                       ; preds = %land.lhs.true, %while.body
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp39 = icmp ne %struct.basic_block_def* %48, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.62

land.lhs.true.41:                                 ; preds = %if.else.38
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp42 = icmp ne %struct.basic_block_def* %49, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.62

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index45 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index45, align 4
  %idxprom46 = sext i32 %51 to i64
  %52 = load i32*, i32** %pre, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %52, i64 %idxprom46
  %53 = load i32, i32* %arrayidx47, align 4
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 11
  %55 = load i32, i32* %index48, align 4
  %idxprom49 = sext i32 %55 to i64
  %56 = load i32*, i32** %pre, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %56, i64 %idxprom49
  %57 = load i32, i32* %arrayidx50, align 4
  %cmp51 = icmp sge i32 %53, %57
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.62

land.lhs.true.53:                                 ; preds = %land.lhs.true.44
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index54, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load i32*, i32** %post, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %60, i64 %idxprom55
  %61 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp eq i32 %61, 0
  br i1 %cmp57, label %if.then.59, label %if.end.62

if.then.59:                                       ; preds = %land.lhs.true.53
  %62 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %62, i32 0, i32 6
  %63 = load i32, i32* %flags60, align 4
  %or61 = or i32 %63, 32
  store i32 %or61, i32* %flags60, align 4
  store i8 1, i8* %found, align 1
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.59, %land.lhs.true.53, %land.lhs.true.44, %land.lhs.true.41, %if.else.38
  %64 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %64, i32 0, i32 1
  %65 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool63 = icmp ne %struct.edge_def* %65, null
  br i1 %tobool63, label %if.end.72, label %land.lhs.true.64

land.lhs.true.64:                                 ; preds = %if.end.62
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp65 = icmp ne %struct.basic_block_def* %66, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %land.lhs.true.64
  %67 = load i32, i32* %postnum, align 4
  %inc68 = add nsw i32 %67, 1
  store i32 %inc68, i32* %postnum, align 4
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index69 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %68, i32 0, i32 11
  %69 = load i32, i32* %index69, align 4
  %idxprom70 = sext i32 %69 to i64
  %70 = load i32*, i32** %post, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %70, i64 %idxprom70
  store i32 %67, i32* %arrayidx71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.67, %land.lhs.true.64, %if.end.62
  %71 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next73 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %71, i32 0, i32 1
  %72 = load %struct.edge_def*, %struct.edge_def** %succ_next73, align 8
  %tobool74 = icmp ne %struct.edge_def* %72, null
  br i1 %tobool74, label %if.then.75, label %if.else.80

if.then.75:                                       ; preds = %if.end.72
  %73 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next76 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %73, i32 0, i32 1
  %74 = load %struct.edge_def*, %struct.edge_def** %succ_next76, align 8
  %75 = load i32, i32* %sp, align 4
  %sub77 = sub nsw i32 %75, 1
  %idxprom78 = sext i32 %sub77 to i64
  %76 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx79 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %76, i64 %idxprom78
  store %struct.edge_def* %74, %struct.edge_def** %arrayidx79, align 8
  br label %if.end.81

if.else.80:                                       ; preds = %if.end.72
  %77 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %sp, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.80, %if.then.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %78 = load i32*, i32** %pre, align 8
  %79 = bitcast i32* %78 to i8*
  call void @free(i8* %79) #4
  %80 = load i32*, i32** %post, align 8
  %81 = bitcast i32* %80 to i8*
  call void @free(i8* %81) #4
  %82 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %83 = bitcast %struct.edge_def** %82 to i8*
  call void @free(i8* %83) #4
  %84 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %85 = bitcast %struct.simple_bitmap_def* %84 to i8*
  call void @free(i8* %85) #4
  %86 = load i8, i8* %found, align 1
  %tobool83 = trunc i8 %86 to i1
  ret i1 %tobool83
}

declare noalias i8* @xcalloc(i64, i64) #1

declare noalias i8* @xmalloc(i64) #1

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @flow_call_edges_add(%struct.simple_bitmap_def* %blocks) #0 {
entry:
  %blocks.addr = alloca %struct.simple_bitmap_def*, align 8
  %i = alloca i32, align 4
  %blocks_split = alloca i32, align 4
  %bb_num = alloca i32, align 4
  %bbs = alloca %struct.basic_block_def**, align 8
  %check_last_block = alloca i8, align 1
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %bb48 = alloca %struct.basic_block_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %bb77 = alloca %struct.basic_block_def*, align 8
  %insn80 = alloca %struct.rtx_def*, align 8
  %prev_insn = alloca %struct.rtx_def*, align 8
  %e88 = alloca %struct.edge_def*, align 8
  %split_at_insn = alloca %struct.rtx_def*, align 8
  store %struct.simple_bitmap_def* %blocks, %struct.simple_bitmap_def** %blocks.addr, align 8
  store i32 0, i32* %blocks_split, align 4
  store i32 0, i32* %bb_num, align 4
  store i8 0, i8* %check_last_block, align 1
  %0 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %bbs, align 8
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %8 = load i32, i32* %bb_num, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %bb_num, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.basic_block_def**, %struct.basic_block_def*** %bbs, align 8
  %arrayidx3 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %9, i64 %idxprom2
  store %struct.basic_block_def* %7, %struct.basic_block_def** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc4 = add nsw i32 %10, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8 1, i8* %check_last_block, align 1
  br label %if.end.45

if.else:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else
  store i32 0, i32* %bit_num_, align 4
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 1
  %12 = load i32, i32* %size, align 4
  store i32 %12, i32* %size_, align 4
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %blocks.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.42, %do.body
  %14 = load i32, i32* %word_num_, align 4
  %15 = load i32, i32* %size_, align 4
  %cmp6 = icmp ult i32 %14, %15
  br i1 %cmp6, label %for.body.8, label %for.end.44

for.body.8:                                       ; preds = %for.cond.5
  %16 = load i32, i32* %word_num_, align 4
  %idxprom9 = zext i32 %16 to i64
  %17 = load i64*, i64** %ptr_, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %17, i64 %idxprom9
  %18 = load i64, i64* %arrayidx10, align 8
  store i64 %18, i64* %word_, align 8
  %19 = load i64, i64* %word_, align 8
  %cmp11 = icmp ne i64 %19, 0
  br i1 %cmp11, label %if.then.13, label %if.end.41

if.then.13:                                       ; preds = %for.body.8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.38, %if.then.13
  %20 = load i32, i32* %bit_num_, align 4
  %cmp15 = icmp ult i32 %20, 64
  br i1 %cmp15, label %for.body.17, label %for.end.40

for.body.17:                                      ; preds = %for.cond.14
  %21 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %21 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %22 = load i64, i64* %word_, align 8
  %23 = load i64, i64* %_mask, align 8
  %and = and i64 %22, %23
  %cmp18 = icmp ne i64 %and, 0
  br i1 %cmp18, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %for.body.17
  %24 = load i64, i64* %_mask, align 8
  %neg = xor i64 %24, -1
  %25 = load i64, i64* %word_, align 8
  %and21 = and i64 %25, %neg
  store i64 %and21, i64* %word_, align 8
  %26 = load i32, i32* %word_num_, align 4
  %mul22 = mul i32 %26, 64
  %27 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul22, %27
  store i32 %add, i32* %i, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %28 to i64
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data24 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %bb25 = bitcast %union.varray_data_tag* %data24 to [1 x %struct.basic_block_def*]*
  %arrayidx26 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb25, i32 0, i64 %idxprom23
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx26, align 8
  %31 = load i32, i32* %bb_num, align 4
  %inc27 = add nsw i32 %31, 1
  store i32 %inc27, i32* %bb_num, align 4
  %idxprom28 = sext i32 %31 to i64
  %32 = load %struct.basic_block_def**, %struct.basic_block_def*** %bbs, align 8
  %arrayidx29 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %32, i64 %idxprom28
  store %struct.basic_block_def* %30, %struct.basic_block_def** %arrayidx29, align 8
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %34, 1
  %cmp30 = icmp eq i32 %33, %sub
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.20
  store i8 1, i8* %check_last_block, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.20
  %35 = load i64, i64* %word_, align 8
  %cmp33 = icmp eq i64 %35, 0
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end
  br label %for.end.40

if.end.36:                                        ; preds = %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %for.body.17
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %36 = load i32, i32* %bit_num_, align 4
  %inc39 = add i32 %36, 1
  store i32 %inc39, i32* %bit_num_, align 4
  br label %for.cond.14

for.end.40:                                       ; preds = %if.then.35, %for.cond.14
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %for.body.8
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %37 = load i32, i32* %word_num_, align 4
  %inc43 = add i32 %37, 1
  store i32 %inc43, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.5

for.end.44:                                       ; preds = %for.cond.5
  br label %do.end

do.end:                                           ; preds = %for.end.44
  br label %if.end.45

if.end.45:                                        ; preds = %do.end, %for.end
  %38 = load i8, i8* %check_last_block, align 1
  %tobool46 = trunc i8 %38 to i1
  br i1 %tobool46, label %if.then.47, label %if.end.72

if.then.47:                                       ; preds = %if.end.45
  %39 = load i32, i32* @n_basic_blocks, align 4
  %sub49 = sub nsw i32 %39, 1
  %idxprom50 = sext i32 %sub49 to i64
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data51 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 4
  %bb52 = bitcast %union.varray_data_tag* %data51 to [1 x %struct.basic_block_def*]*
  %arrayidx53 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb52, i32 0, i64 %idxprom50
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx53, align 8
  store %struct.basic_block_def* %41, %struct.basic_block_def** %bb48, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %bb48, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 1
  %43 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.47
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %bb48, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %45, i32 0, i32 0
  %46 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp54 = icmp ne %struct.rtx_def* %44, %46
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call56 = call zeroext i1 @keep_with_call_p(%struct.rtx_def* %47)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %48 = phi i1 [ false, %while.cond ], [ %call56, %land.rhs ]
  br i1 %48, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call59 = call zeroext i1 @need_fake_edge_p(%struct.rtx_def* %51)
  br i1 %call59, label %if.then.60, label %if.end.71

if.then.60:                                       ; preds = %while.end
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb48, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 5
  %53 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %53, %struct.edge_def** %e, align 8
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.68, %if.then.60
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool62 = icmp ne %struct.edge_def* %54, null
  br i1 %tobool62, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.61
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 3
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp64 = icmp eq %struct.basic_block_def* %56, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.body.63
  br label %for.end.69

if.end.67:                                        ; preds = %for.body.63
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %57 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i32 0, i32 1
  %58 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %58, %struct.edge_def** %e, align 8
  br label %for.cond.61

for.end.69:                                       ; preds = %if.then.66, %for.cond.61
  %59 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call70 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 48, i32 0, %struct.rtx_def* %59)
  %60 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %call70, %struct.edge_def* %60)
  call void @commit_edge_insertions()
  br label %if.end.71

if.end.71:                                        ; preds = %for.end.69, %while.end
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.end.45
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.123, %if.end.72
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %bb_num, align 4
  %cmp74 = icmp slt i32 %61, %62
  br i1 %cmp74, label %for.body.76, label %for.end.125

for.body.76:                                      ; preds = %for.cond.73
  %63 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %63 to i64
  %64 = load %struct.basic_block_def**, %struct.basic_block_def*** %bbs, align 8
  %arrayidx79 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %64, i64 %idxprom78
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx79, align 8
  store %struct.basic_block_def* %65, %struct.basic_block_def** %bb77, align 8
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %end81 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 1
  %67 = load %struct.rtx_def*, %struct.rtx_def** %end81, align 8
  store %struct.rtx_def* %67, %struct.rtx_def** %insn80, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.121, %for.body.76
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn80, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %prev_insn, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %insn80, align 8
  %call86 = call zeroext i1 @need_fake_edge_p(%struct.rtx_def* %70)
  br i1 %call86, label %if.then.87, label %if.end.115

if.then.87:                                       ; preds = %for.cond.82
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn80, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %split_at_insn, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn80, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load = load i32, i32* %73, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp89 = icmp eq i32 %bf.clear, 34
  br i1 %cmp89, label %if.then.91, label %if.end.108

if.then.91:                                       ; preds = %if.then.87
  br label %while.cond.92

while.cond.92:                                    ; preds = %while.body.103, %if.then.91
  %74 = load %struct.rtx_def*, %struct.rtx_def** %split_at_insn, align 8
  %75 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %end93 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %75, i32 0, i32 1
  %76 = load %struct.rtx_def*, %struct.rtx_def** %end93, align 8
  %cmp94 = icmp ne %struct.rtx_def* %74, %76
  br i1 %cmp94, label %land.rhs.96, label %land.end.102

land.rhs.96:                                      ; preds = %while.cond.92
  %77 = load %struct.rtx_def*, %struct.rtx_def** %split_at_insn, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 2
  %rtx99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx99, align 8
  %call100 = call zeroext i1 @keep_with_call_p(%struct.rtx_def* %78)
  br label %land.end.102

land.end.102:                                     ; preds = %land.rhs.96, %while.cond.92
  %79 = phi i1 [ false, %while.cond.92 ], [ %call100, %land.rhs.96 ]
  br i1 %79, label %while.body.103, label %while.end.107

while.body.103:                                   ; preds = %land.end.102
  %80 = load %struct.rtx_def*, %struct.rtx_def** %split_at_insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 2
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  store %struct.rtx_def* %81, %struct.rtx_def** %split_at_insn, align 8
  br label %while.cond.92

while.end.107:                                    ; preds = %land.end.102
  br label %if.end.108

if.end.108:                                       ; preds = %while.end.107, %if.then.87
  %82 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %split_at_insn, align 8
  %call109 = call %struct.edge_def* @split_block(%struct.basic_block_def* %82, %struct.rtx_def* %83)
  store %struct.edge_def* %call109, %struct.edge_def** %e88, align 8
  %84 = load %struct.edge_def*, %struct.edge_def** %e88, align 8
  %tobool110 = icmp ne %struct.edge_def* %84, null
  br i1 %tobool110, label %if.then.111, label %if.end.113

if.then.111:                                      ; preds = %if.end.108
  %85 = load i32, i32* %blocks_split, align 4
  %inc112 = add nsw i32 %85, 1
  store i32 %inc112, i32* %blocks_split, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.111, %if.end.108
  %86 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %call114 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %86, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 16)
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.113, %for.cond.82
  %87 = load %struct.rtx_def*, %struct.rtx_def** %insn80, align 8
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %bb77, align 8
  %head116 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 0
  %89 = load %struct.rtx_def*, %struct.rtx_def** %head116, align 8
  %cmp117 = icmp eq %struct.rtx_def* %87, %89
  br i1 %cmp117, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.end.115
  br label %for.end.122

if.end.120:                                       ; preds = %if.end.115
  br label %for.inc.121

for.inc.121:                                      ; preds = %if.end.120
  %90 = load %struct.rtx_def*, %struct.rtx_def** %prev_insn, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %insn80, align 8
  br label %for.cond.82

for.end.122:                                      ; preds = %if.then.119
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.end.122
  %91 = load i32, i32* %i, align 4
  %inc124 = add nsw i32 %91, 1
  store i32 %inc124, i32* %i, align 4
  br label %for.cond.73

for.end.125:                                      ; preds = %for.cond.73
  %92 = load i32, i32* %blocks_split, align 4
  %tobool126 = icmp ne i32 %92, 0
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %for.end.125
  call void @verify_flow_info()
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %for.end.125
  %93 = load %struct.basic_block_def**, %struct.basic_block_def*** %bbs, align 8
  %94 = bitcast %struct.basic_block_def** %93 to i8*
  call void @free(i8* %94) #4
  %95 = load i32, i32* %blocks_split, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @keep_with_call_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
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
  br i1 %cmp, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %idxprom4 = sext i32 %bf.clear3 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = sext i8 %5 to i32
  %cmp7 = icmp eq i32 %conv6, 105
  br i1 %cmp7, label %cond.true, label %cond.false.21

cond.true:                                        ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load10 = load i32, i32* %8, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 47
  br i1 %cmp12, label %cond.true.14, label %cond.false

cond.true.14:                                     ; preds = %cond.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %11, %struct.rtx_def* %13)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.14
  %cond = phi %struct.rtx_def* [ %10, %cond.true.14 ], [ %call, %cond.false ]
  br label %cond.end.22

cond.false.21:                                    ; preds = %land.lhs.true
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.end
  %cond23 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.21 ]
  store %struct.rtx_def* %cond23, %struct.rtx_def** %set, align 8
  %cmp24 = icmp ne %struct.rtx_def* %cond23, null
  br i1 %cmp24, label %if.then, label %if.end.84

if.then:                                          ; preds = %cond.end.22
  %14 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load29 = load i32, i32* %16, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp eq i32 %bf.clear30, 61
  br i1 %cmp31, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %19 = load i32, i32* %rtuint, align 4
  %idxprom39 = zext i32 %19 to i64
  %arrayidx40 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom39
  %20 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %20 to i32
  %tobool = icmp ne i32 %conv41, 0
  br i1 %tobool, label %land.lhs.true.42, label %if.end

land.lhs.true.42:                                 ; preds = %land.lhs.true.33
  %21 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %call46 = call i32 @general_operand(%struct.rtx_def* %22, i32 0)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %land.lhs.true.42
  store i1 true, i1* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.42, %land.lhs.true.33, %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load52 = load i32, i32* %25, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 61
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.83

land.lhs.true.56:                                 ; preds = %if.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %28 = load i32, i32* %rtuint62, align 4
  %call63 = call zeroext i1 @ix86_function_value_regno_p(i32 %28)
  br i1 %call63, label %land.lhs.true.65, label %if.end.83

land.lhs.true.65:                                 ; preds = %land.lhs.true.56
  %29 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load69 = load i32, i32* %31, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 61
  br i1 %cmp71, label %land.lhs.true.73, label %if.end.83

land.lhs.true.73:                                 ; preds = %land.lhs.true.65
  %32 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtuint79 = bitcast %union.rtunion_def* %arrayidx78 to i32*
  %34 = load i32, i32* %rtuint79, align 4
  %cmp80 = icmp uge i32 %34, 53
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %land.lhs.true.73
  store i1 true, i1* %retval
  br label %return

if.end.83:                                        ; preds = %land.lhs.true.73, %land.lhs.true.65, %land.lhs.true.56, %if.end
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %cond.end.22, %entry
  store i1 false, i1* %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then.82, %if.then.48
  %35 = load i1, i1* %retval
  ret i1 %35
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @need_fake_edge_p(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i1, align 1
  %insn.addr = alloca %struct.rtx_def*, align 8
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
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load2 = load i32, i32* %4, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %land.lhs.true, label %if.end.19

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load6 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load6, 24
  %bf.clear7 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear7, 0
  br i1 %tobool, label %if.end.19, label %land.lhs.true.8

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %7, i32 26, %struct.rtx_def* null)
  %tobool9 = icmp ne %struct.rtx_def* %call, null
  br i1 %tobool9, label %if.end.19, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call11 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %8, i32 29, %struct.rtx_def* null)
  %tobool12 = icmp ne %struct.rtx_def* %call11, null
  br i1 %tobool12, label %if.end.19, label %land.lhs.true.13

land.lhs.true.13:                                 ; preds = %land.lhs.true.10
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load14 = load i32, i32* %10, align 8
  %bf.lshr15 = lshr i32 %bf.load14, 26
  %bf.clear16 = and i32 %bf.lshr15, 1
  %tobool17 = icmp ne i32 %bf.clear16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %land.lhs.true.13
  store i1 true, i1* %retval
  br label %return

if.end.19:                                        ; preds = %land.lhs.true.13, %land.lhs.true.10, %land.lhs.true.8, %land.lhs.true, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load21 = load i32, i32* %13, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 41
  br i1 %cmp23, label %land.lhs.true.25, label %lor.lhs.false

land.lhs.true.25:                                 ; preds = %if.end.19
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load29 = load i32, i32* %16, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 27
  %bf.clear31 = and i32 %bf.lshr30, 1
  %tobool32 = icmp ne i32 %bf.clear31, 0
  br i1 %tobool32, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.25, %if.end.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load36 = load i32, i32* %19, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 39
  br i1 %cmp38, label %land.lhs.true.40, label %lor.rhs

land.lhs.true.40:                                 ; preds = %lor.lhs.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call41 = call i32 @asm_noperands(%struct.rtx_def* %20)
  %cmp42 = icmp ne i32 %call41, -1
  br i1 %cmp42, label %land.lhs.true.44, label %lor.rhs

land.lhs.true.44:                                 ; preds = %land.lhs.true.40
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 3
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtvec_def**
  %23 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %23, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx50, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load51 = load i32, i32* %25, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 27
  %bf.clear53 = and i32 %bf.lshr52, 1
  %tobool54 = icmp ne i32 %bf.clear53, 0
  br i1 %tobool54, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.44, %land.lhs.true.40, %lor.lhs.false
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 3
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load58 = load i32, i32* %28, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 40
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.44, %land.lhs.true.25
  %29 = phi i1 [ true, %land.lhs.true.44 ], [ true, %land.lhs.true.25 ], [ %cmp60, %lor.rhs ]
  store i1 %29, i1* %retval
  br label %return

return:                                           ; preds = %lor.end, %if.then.18, %if.then
  %30 = load i1, i1* %retval
  ret i1 %30
}

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare void @commit_edge_insertions() #1

declare %struct.edge_def* @split_block(%struct.basic_block_def*, %struct.rtx_def*) #1

declare %struct.edge_def* @make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

declare void @verify_flow_info() #1

; Function Attrs: nounwind uwtable
define void @find_unreachable_blocks() #0 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %tos = alloca %struct.basic_block_def**, align 8
  %worklist = alloca %struct.basic_block_def**, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  store i32 %0, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  %call = call noalias i8* @xmalloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.basic_block_def**
  store %struct.basic_block_def** %2, %struct.basic_block_def*** %worklist, align 8
  store %struct.basic_block_def** %2, %struct.basic_block_def*** %tos, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 15
  %8 = load i32, i32* %flags, align 4
  %and = and i32 %8, -2
  store i32 %and, i32* %flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %10, %struct.edge_def** %e, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.6, %for.end
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %11, null
  br i1 %tobool, label %for.body.3, label %for.end.7

for.body.3:                                       ; preds = %for.cond.2
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 3
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %14 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %14, i32 1
  store %struct.basic_block_def** %incdec.ptr, %struct.basic_block_def*** %tos, align 8
  store %struct.basic_block_def* %13, %struct.basic_block_def** %14, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 3
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest4, align 8
  %flags5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 15
  %17 = load i32, i32* %flags5, align 4
  %or = or i32 %17, 1
  store i32 %or, i32* %flags5, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.3
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 1
  %19 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %19, %struct.edge_def** %e, align 8
  br label %for.cond.2

for.end.7:                                        ; preds = %for.cond.2
  br label %while.cond

while.cond:                                       ; preds = %for.end.25, %for.end.7
  %20 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %21 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %cmp8 = icmp ne %struct.basic_block_def** %20, %21
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %22 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr10 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %22, i32 -1
  store %struct.basic_block_def** %incdec.ptr10, %struct.basic_block_def*** %tos, align 8
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %incdec.ptr10, align 8
  store %struct.basic_block_def* %23, %struct.basic_block_def** %b, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 5
  %25 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %25, %struct.edge_def** %e, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.23, %while.body
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool12 = icmp ne %struct.edge_def* %26, null
  br i1 %tobool12, label %for.body.13, label %for.end.25

for.body.13:                                      ; preds = %for.cond.11
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 3
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest14, align 8
  %flags15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 15
  %29 = load i32, i32* %flags15, align 4
  %and16 = and i32 %29, 1
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.13
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 3
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest18, align 8
  %32 = load %struct.basic_block_def**, %struct.basic_block_def*** %tos, align 8
  %incdec.ptr19 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %32, i32 1
  store %struct.basic_block_def** %incdec.ptr19, %struct.basic_block_def*** %tos, align 8
  store %struct.basic_block_def* %31, %struct.basic_block_def** %32, align 8
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 3
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8
  %flags21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 15
  %35 = load i32, i32* %flags21, align 4
  %or22 = or i32 %35, 1
  store i32 %or22, i32* %flags21, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.13
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 1
  %37 = load %struct.edge_def*, %struct.edge_def** %succ_next24, align 8
  store %struct.edge_def* %37, %struct.edge_def** %e, align 8
  br label %for.cond.11

for.end.25:                                       ; preds = %for.cond.11
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct.basic_block_def**, %struct.basic_block_def*** %worklist, align 8
  %39 = bitcast %struct.basic_block_def** %38 to i8*
  call void @free(i8* %39) #4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.edge_list* @create_edge_list() #0 {
entry:
  %elist = alloca %struct.edge_list*, align 8
  %e = alloca %struct.edge_def*, align 8
  %num_edges = alloca i32, align 4
  %x = alloca i32, align 4
  %block_count = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %bb30 = alloca %struct.basic_block_def*, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %0, 2
  store i32 %add, i32* %block_count, align 4
  store i32 0, i32* %num_edges, align 4
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.4, %entry
  %1 = load i32, i32* %x, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %4, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %bb, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i32 0, i32 5
  %7 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %7, %struct.edge_def** %e, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %8, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %9 = load i32, i32* %num_edges, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %num_edges, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 1
  %11 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.4

for.inc.4:                                        ; preds = %for.end
  %12 = load i32, i32* %x, align 4
  %inc5 = add nsw i32 %12, 1
  store i32 %inc5, i32* %x, align 4
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  %13 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %13, %struct.edge_def** %e, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.11, %for.end.6
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool8 = icmp ne %struct.edge_def* %14, null
  br i1 %tobool8, label %for.body.9, label %for.end.13

for.body.9:                                       ; preds = %for.cond.7
  %15 = load i32, i32* %num_edges, align 4
  %inc10 = add nsw i32 %15, 1
  store i32 %inc10, i32* %num_edges, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.9
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 1
  %17 = load %struct.edge_def*, %struct.edge_def** %succ_next12, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond.7

for.end.13:                                       ; preds = %for.cond.7
  %call = call noalias i8* @xmalloc(i64 16)
  %18 = bitcast i8* %call to %struct.edge_list*
  store %struct.edge_list* %18, %struct.edge_list** %elist, align 8
  %19 = load i32, i32* %block_count, align 4
  %20 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  %num_blocks = getelementptr inbounds %struct.edge_list, %struct.edge_list* %20, i32 0, i32 0
  store i32 %19, i32* %num_blocks, align 4
  %21 = load i32, i32* %num_edges, align 4
  %22 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  %num_edges14 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %22, i32 0, i32 1
  store i32 %21, i32* %num_edges14, align 4
  %23 = load i32, i32* %num_edges, align 4
  %conv = sext i32 %23 to i64
  %mul = mul i64 8, %conv
  %call15 = call noalias i8* @xmalloc(i64 %mul)
  %24 = bitcast i8* %call15 to %struct.edge_def**
  %25 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %25, i32 0, i32 2
  store %struct.edge_def** %24, %struct.edge_def*** %index_to_edge, align 8
  store i32 0, i32* %num_edges, align 4
  %26 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %26, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.23, %for.end.13
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool17 = icmp ne %struct.edge_def* %27, null
  br i1 %tobool17, label %for.body.18, label %for.end.25

for.body.18:                                      ; preds = %for.cond.16
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %29 = load i32, i32* %num_edges, align 4
  %inc19 = add nsw i32 %29, 1
  store i32 %inc19, i32* %num_edges, align 4
  %idxprom20 = sext i32 %29 to i64
  %30 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  %index_to_edge21 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %30, i32 0, i32 2
  %31 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge21, align 8
  %arrayidx22 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %31, i64 %idxprom20
  store %struct.edge_def* %28, %struct.edge_def** %arrayidx22, align 8
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.18
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 1
  %33 = load %struct.edge_def*, %struct.edge_def** %succ_next24, align 8
  store %struct.edge_def* %33, %struct.edge_def** %e, align 8
  br label %for.cond.16

for.end.25:                                       ; preds = %for.cond.16
  store i32 0, i32* %x, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.46, %for.end.25
  %34 = load i32, i32* %x, align 4
  %35 = load i32, i32* @n_basic_blocks, align 4
  %cmp27 = icmp slt i32 %34, %35
  br i1 %cmp27, label %for.body.29, label %for.end.48

for.body.29:                                      ; preds = %for.cond.26
  %36 = load i32, i32* %x, align 4
  %idxprom31 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data32 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %bb33 = bitcast %union.varray_data_tag* %data32 to [1 x %struct.basic_block_def*]*
  %arrayidx34 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb33, i32 0, i64 %idxprom31
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx34, align 8
  store %struct.basic_block_def* %38, %struct.basic_block_def** %bb30, align 8
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bb30, align 8
  %succ35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 5
  %40 = load %struct.edge_def*, %struct.edge_def** %succ35, align 8
  store %struct.edge_def* %40, %struct.edge_def** %e, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %for.body.29
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool37 = icmp ne %struct.edge_def* %41, null
  br i1 %tobool37, label %for.body.38, label %for.end.45

for.body.38:                                      ; preds = %for.cond.36
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %43 = load i32, i32* %num_edges, align 4
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %num_edges, align 4
  %idxprom40 = sext i32 %43 to i64
  %44 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  %index_to_edge41 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %44, i32 0, i32 2
  %45 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge41, align 8
  %arrayidx42 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %45, i64 %idxprom40
  store %struct.edge_def* %42, %struct.edge_def** %arrayidx42, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.38
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next44 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 1
  %47 = load %struct.edge_def*, %struct.edge_def** %succ_next44, align 8
  store %struct.edge_def* %47, %struct.edge_def** %e, align 8
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %48 = load i32, i32* %x, align 4
  %inc47 = add nsw i32 %48, 1
  store i32 %inc47, i32* %x, align 4
  br label %for.cond.26

for.end.48:                                       ; preds = %for.cond.26
  %49 = load %struct.edge_list*, %struct.edge_list** %elist, align 8
  ret %struct.edge_list* %49
}

; Function Attrs: nounwind uwtable
define void @free_edge_list(%struct.edge_list* %elist) #0 {
entry:
  %elist.addr = alloca %struct.edge_list*, align 8
  store %struct.edge_list* %elist, %struct.edge_list** %elist.addr, align 8
  %0 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %tobool = icmp ne %struct.edge_list* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 2
  %2 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %3 = bitcast %struct.edge_def** %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %5 = bitcast %struct.edge_list* %4 to i8*
  call void @free(i8* %5) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @print_edge_list(%struct._IO_FILE* %f, %struct.edge_list* %elist) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %elist.addr = alloca %struct.edge_list*, align 8
  %x = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.edge_list* %elist, %struct.edge_list** %elist.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %1 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %num_blocks = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 0
  %2 = load i32, i32* %num_blocks, align 4
  %sub = sub nsw i32 %2, 2
  %3 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %3, i32 0, i32 1
  %4 = load i32, i32* %num_edges, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i32 %sub, i32 %4)
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %x, align 4
  %6 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %num_edges1 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %6, i32 0, i32 1
  %7 = load i32, i32* %num_edges1, align 4
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %9 = load i32, i32* %x, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 %9)
  %10 = load i32, i32* %x, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %11, i32 0, i32 2
  %12 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %12, i64 %idxprom
  %13 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 2
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %14, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end

if.else:                                          ; preds = %for.body
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %17 = load i32, i32* %x, align 4
  %idxprom5 = sext i32 %17 to i64
  %18 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge6 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %18, i32 0, i32 2
  %19 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge6, align 8
  %arrayidx7 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %19, i64 %idxprom5
  %20 = load %struct.edge_def*, %struct.edge_def** %arrayidx7, align 8
  %src8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 2
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %23 = load i32, i32* %x, align 4
  %idxprom10 = sext i32 %23 to i64
  %24 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge11 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %24, i32 0, i32 2
  %25 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge11, align 8
  %arrayidx12 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %25, i64 %idxprom10
  %26 = load %struct.edge_def*, %struct.edge_def** %arrayidx12, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 3
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %27, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp13, label %if.then.14, label %if.else.16

if.then.14:                                       ; preds = %if.end
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.23

if.else.16:                                       ; preds = %if.end
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %30 = load i32, i32* %x, align 4
  %idxprom17 = sext i32 %30 to i64
  %31 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge18 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %31, i32 0, i32 2
  %32 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge18, align 8
  %arrayidx19 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %32, i64 %idxprom17
  %33 = load %struct.edge_def*, %struct.edge_def** %arrayidx19, align 8
  %dest20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 3
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest20, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index21, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 %35)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.16, %if.then.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %36 = load i32, i32* %x, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @verify_edge_list(%struct._IO_FILE* %f, %struct.edge_list* %elist) #0 {
entry:
  %f.addr = alloca %struct._IO_FILE*, align 8
  %elist.addr = alloca %struct.edge_list*, align 8
  %x = alloca i32, align 4
  %pred = alloca i32, align 4
  %succ = alloca i32, align 4
  %index = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %p = alloca %struct.basic_block_def*, align 8
  %s = alloca %struct.basic_block_def*, align 8
  %found_edge = alloca i32, align 4
  %p167 = alloca %struct.basic_block_def*, align 8
  %s168 = alloca %struct.basic_block_def*, align 8
  %found_edge173 = alloca i32, align 4
  %p229 = alloca %struct.basic_block_def*, align 8
  %s234 = alloca %struct.basic_block_def*, align 8
  %found_edge235 = alloca i32, align 4
  store %struct._IO_FILE* %f, %struct._IO_FILE** %f.addr, align 8
  store %struct.edge_list* %elist, %struct.edge_list** %elist.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %x, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %bb, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ2, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %7, null
  br i1 %tobool, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.3
  %8 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 11
  %10 = load i32, i32* %index5, align 4
  store i32 %10, i32* %pred, align 4
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 3
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 11
  %13 = load i32, i32* %index6, align 4
  store i32 %13, i32* %succ, align 4
  %14 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %15 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src7 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %15, i32 0, i32 2
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src7, align 8
  %17 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %17, i32 0, i32 3
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %dest8, align 8
  %call = call i32 @find_edge_index(%struct.edge_list* %14, %struct.basic_block_def* %16, %struct.basic_block_def* %18)
  store i32 %call, i32* %index, align 4
  %19 = load i32, i32* %index, align 4
  %cmp9 = icmp eq i32 %19, -1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %21 = load i32, i32* %pred, align 4
  %22 = load i32, i32* %succ, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %21, i32 %22)
  br label %for.inc

if.end:                                           ; preds = %for.body.4
  %23 = load i32, i32* %index, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %24, i32 0, i32 2
  %25 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx12 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %25, i64 %idxprom11
  %26 = load %struct.edge_def*, %struct.edge_def** %arrayidx12, align 8
  %src13 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 2
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src13, align 8
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index14, align 4
  %29 = load i32, i32* %pred, align 4
  %cmp15 = icmp ne i32 %28, %29
  br i1 %cmp15, label %if.then.16, label %if.end.23

if.then.16:                                       ; preds = %if.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %31 = load i32, i32* %index, align 4
  %32 = load i32, i32* %pred, align 4
  %33 = load i32, i32* %index, align 4
  %idxprom17 = sext i32 %33 to i64
  %34 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge18 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %34, i32 0, i32 2
  %35 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge18, align 8
  %arrayidx19 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %35, i64 %idxprom17
  %36 = load %struct.edge_def*, %struct.edge_def** %arrayidx19, align 8
  %src20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 2
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %src20, align 8
  %index21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 11
  %38 = load i32, i32* %index21, align 4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i32 %31, i32 %32, i32 %38)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.end
  %39 = load i32, i32* %index, align 4
  %idxprom24 = sext i32 %39 to i64
  %40 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge25 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %40, i32 0, i32 2
  %41 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge25, align 8
  %arrayidx26 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %41, i64 %idxprom24
  %42 = load %struct.edge_def*, %struct.edge_def** %arrayidx26, align 8
  %dest27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 3
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %dest27, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 11
  %44 = load i32, i32* %index28, align 4
  %45 = load i32, i32* %succ, align 4
  %cmp29 = icmp ne i32 %44, %45
  br i1 %cmp29, label %if.then.30, label %if.end.37

if.then.30:                                       ; preds = %if.end.23
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %47 = load i32, i32* %index, align 4
  %48 = load i32, i32* %succ, align 4
  %49 = load i32, i32* %index, align 4
  %idxprom31 = sext i32 %49 to i64
  %50 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge32 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %50, i32 0, i32 2
  %51 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge32, align 8
  %arrayidx33 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %51, i64 %idxprom31
  %52 = load %struct.edge_def*, %struct.edge_def** %arrayidx33, align 8
  %dest34 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %52, i32 0, i32 3
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %dest34, align 8
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %53, i32 0, i32 11
  %54 = load i32, i32* %index35, align 4
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %47, i32 %48, i32 %54)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.30, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.37, %if.then
  %55 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %55, i32 0, i32 1
  %56 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %56, %struct.edge_def** %e, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.end
  %57 = load i32, i32* %x, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %58 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  store %struct.edge_def* %58, %struct.edge_def** %e, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.82, %for.end.39
  %59 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool41 = icmp ne %struct.edge_def* %59, null
  br i1 %tobool41, label %for.body.42, label %for.end.84

for.body.42:                                      ; preds = %for.cond.40
  %60 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %60, i32 0, i32 2
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %src43, align 8
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 11
  %62 = load i32, i32* %index44, align 4
  store i32 %62, i32* %pred, align 4
  %63 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest45 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i32 0, i32 3
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %dest45, align 8
  %index46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 11
  %65 = load i32, i32* %index46, align 4
  store i32 %65, i32* %succ, align 4
  %66 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %67 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src47 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %67, i32 0, i32 2
  %68 = load %struct.basic_block_def*, %struct.basic_block_def** %src47, align 8
  %69 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest48 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i32 0, i32 3
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %dest48, align 8
  %call49 = call i32 @find_edge_index(%struct.edge_list* %66, %struct.basic_block_def* %68, %struct.basic_block_def* %70)
  store i32 %call49, i32* %index, align 4
  %71 = load i32, i32* %index, align 4
  %cmp50 = icmp eq i32 %71, -1
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %for.body.42
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %73 = load i32, i32* %pred, align 4
  %74 = load i32, i32* %succ, align 4
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 %73, i32 %74)
  br label %for.inc.82

if.end.53:                                        ; preds = %for.body.42
  %75 = load i32, i32* %index, align 4
  %idxprom54 = sext i32 %75 to i64
  %76 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge55 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %76, i32 0, i32 2
  %77 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge55, align 8
  %arrayidx56 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %77, i64 %idxprom54
  %78 = load %struct.edge_def*, %struct.edge_def** %arrayidx56, align 8
  %src57 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %78, i32 0, i32 2
  %79 = load %struct.basic_block_def*, %struct.basic_block_def** %src57, align 8
  %index58 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %79, i32 0, i32 11
  %80 = load i32, i32* %index58, align 4
  %81 = load i32, i32* %pred, align 4
  %cmp59 = icmp ne i32 %80, %81
  br i1 %cmp59, label %if.then.60, label %if.end.67

if.then.60:                                       ; preds = %if.end.53
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %83 = load i32, i32* %index, align 4
  %84 = load i32, i32* %pred, align 4
  %85 = load i32, i32* %index, align 4
  %idxprom61 = sext i32 %85 to i64
  %86 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge62 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %86, i32 0, i32 2
  %87 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge62, align 8
  %arrayidx63 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %87, i64 %idxprom61
  %88 = load %struct.edge_def*, %struct.edge_def** %arrayidx63, align 8
  %src64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %88, i32 0, i32 2
  %89 = load %struct.basic_block_def*, %struct.basic_block_def** %src64, align 8
  %index65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %89, i32 0, i32 11
  %90 = load i32, i32* %index65, align 4
  %call66 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i32 0, i32 0), i32 %83, i32 %84, i32 %90)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.60, %if.end.53
  %91 = load i32, i32* %index, align 4
  %idxprom68 = sext i32 %91 to i64
  %92 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge69 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %92, i32 0, i32 2
  %93 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge69, align 8
  %arrayidx70 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %93, i64 %idxprom68
  %94 = load %struct.edge_def*, %struct.edge_def** %arrayidx70, align 8
  %dest71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %94, i32 0, i32 3
  %95 = load %struct.basic_block_def*, %struct.basic_block_def** %dest71, align 8
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %95, i32 0, i32 11
  %96 = load i32, i32* %index72, align 4
  %97 = load i32, i32* %succ, align 4
  %cmp73 = icmp ne i32 %96, %97
  br i1 %cmp73, label %if.then.74, label %if.end.81

if.then.74:                                       ; preds = %if.end.67
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %99 = load i32, i32* %index, align 4
  %100 = load i32, i32* %succ, align 4
  %101 = load i32, i32* %index, align 4
  %idxprom75 = sext i32 %101 to i64
  %102 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %index_to_edge76 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %102, i32 0, i32 2
  %103 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge76, align 8
  %arrayidx77 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %103, i64 %idxprom75
  %104 = load %struct.edge_def*, %struct.edge_def** %arrayidx77, align 8
  %dest78 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 3
  %105 = load %struct.basic_block_def*, %struct.basic_block_def** %dest78, align 8
  %index79 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %105, i32 0, i32 11
  %106 = load i32, i32* %index79, align 4
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i32 0, i32 0), i32 %99, i32 %100, i32 %106)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.74, %if.end.67
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81, %if.then.51
  %107 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next83 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %107, i32 0, i32 1
  %108 = load %struct.edge_def*, %struct.edge_def** %succ_next83, align 8
  store %struct.edge_def* %108, %struct.edge_def** %e, align 8
  br label %for.cond.40

for.end.84:                                       ; preds = %for.cond.40
  store i32 0, i32* %pred, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.161, %for.end.84
  %109 = load i32, i32* %pred, align 4
  %110 = load i32, i32* @n_basic_blocks, align 4
  %cmp86 = icmp slt i32 %109, %110
  br i1 %cmp86, label %for.body.87, label %for.end.163

for.body.87:                                      ; preds = %for.cond.85
  store i32 0, i32* %succ, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.158, %for.body.87
  %111 = load i32, i32* %succ, align 4
  %112 = load i32, i32* @n_basic_blocks, align 4
  %cmp89 = icmp slt i32 %111, %112
  br i1 %cmp89, label %for.body.90, label %for.end.160

for.body.90:                                      ; preds = %for.cond.88
  %113 = load i32, i32* %pred, align 4
  %idxprom91 = sext i32 %113 to i64
  %114 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data92 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %114, i32 0, i32 4
  %bb93 = bitcast %union.varray_data_tag* %data92 to [1 x %struct.basic_block_def*]*
  %arrayidx94 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb93, i32 0, i64 %idxprom91
  %115 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx94, align 8
  store %struct.basic_block_def* %115, %struct.basic_block_def** %p, align 8
  %116 = load i32, i32* %succ, align 4
  %idxprom95 = sext i32 %116 to i64
  %117 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data96 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %117, i32 0, i32 4
  %bb97 = bitcast %union.varray_data_tag* %data96 to [1 x %struct.basic_block_def*]*
  %arrayidx98 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb97, i32 0, i64 %idxprom95
  %118 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx98, align 8
  store %struct.basic_block_def* %118, %struct.basic_block_def** %s, align 8
  store i32 0, i32* %found_edge, align 4
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %p, align 8
  %succ99 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i32 0, i32 5
  %120 = load %struct.edge_def*, %struct.edge_def** %succ99, align 8
  store %struct.edge_def* %120, %struct.edge_def** %e, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.107, %for.body.90
  %121 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool101 = icmp ne %struct.edge_def* %121, null
  br i1 %tobool101, label %for.body.102, label %for.end.109

for.body.102:                                     ; preds = %for.cond.100
  %122 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest103 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %122, i32 0, i32 3
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %dest103, align 8
  %124 = load %struct.basic_block_def*, %struct.basic_block_def** %s, align 8
  %cmp104 = icmp eq %struct.basic_block_def* %123, %124
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %for.body.102
  store i32 1, i32* %found_edge, align 4
  br label %for.end.109

if.end.106:                                       ; preds = %for.body.102
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %125 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next108 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %125, i32 0, i32 1
  %126 = load %struct.edge_def*, %struct.edge_def** %succ_next108, align 8
  store %struct.edge_def* %126, %struct.edge_def** %e, align 8
  br label %for.cond.100

for.end.109:                                      ; preds = %if.then.105, %for.cond.100
  %127 = load %struct.basic_block_def*, %struct.basic_block_def** %s, align 8
  %pred110 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %127, i32 0, i32 4
  %128 = load %struct.edge_def*, %struct.edge_def** %pred110, align 8
  store %struct.edge_def* %128, %struct.edge_def** %e, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.118, %for.end.109
  %129 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool112 = icmp ne %struct.edge_def* %129, null
  br i1 %tobool112, label %for.body.113, label %for.end.119

for.body.113:                                     ; preds = %for.cond.111
  %130 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src114 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %130, i32 0, i32 2
  %131 = load %struct.basic_block_def*, %struct.basic_block_def** %src114, align 8
  %132 = load %struct.basic_block_def*, %struct.basic_block_def** %p, align 8
  %cmp115 = icmp eq %struct.basic_block_def* %131, %132
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %for.body.113
  store i32 1, i32* %found_edge, align 4
  br label %for.end.119

if.end.117:                                       ; preds = %for.body.113
  br label %for.inc.118

for.inc.118:                                      ; preds = %if.end.117
  %133 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %133, i32 0, i32 0
  %134 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %134, %struct.edge_def** %e, align 8
  br label %for.cond.111

for.end.119:                                      ; preds = %if.then.116, %for.cond.111
  %135 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %136 = load i32, i32* %pred, align 4
  %idxprom120 = sext i32 %136 to i64
  %137 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data121 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %137, i32 0, i32 4
  %bb122 = bitcast %union.varray_data_tag* %data121 to [1 x %struct.basic_block_def*]*
  %arrayidx123 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb122, i32 0, i64 %idxprom120
  %138 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx123, align 8
  %139 = load i32, i32* %succ, align 4
  %idxprom124 = sext i32 %139 to i64
  %140 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data125 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %140, i32 0, i32 4
  %bb126 = bitcast %union.varray_data_tag* %data125 to [1 x %struct.basic_block_def*]*
  %arrayidx127 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb126, i32 0, i64 %idxprom124
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx127, align 8
  %call128 = call i32 @find_edge_index(%struct.edge_list* %135, %struct.basic_block_def* %138, %struct.basic_block_def* %141)
  %cmp129 = icmp eq i32 %call128, -1
  br i1 %cmp129, label %land.lhs.true, label %if.end.133

land.lhs.true:                                    ; preds = %for.end.119
  %142 = load i32, i32* %found_edge, align 4
  %cmp130 = icmp ne i32 %142, 0
  br i1 %cmp130, label %if.then.131, label %if.end.133

if.then.131:                                      ; preds = %land.lhs.true
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %144 = load i32, i32* %pred, align 4
  %145 = load i32, i32* %succ, align 4
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i32 0, i32 0), i32 %144, i32 %145)
  br label %if.end.133

if.end.133:                                       ; preds = %if.then.131, %land.lhs.true, %for.end.119
  %146 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %147 = load i32, i32* %pred, align 4
  %idxprom134 = sext i32 %147 to i64
  %148 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data135 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %148, i32 0, i32 4
  %bb136 = bitcast %union.varray_data_tag* %data135 to [1 x %struct.basic_block_def*]*
  %arrayidx137 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb136, i32 0, i64 %idxprom134
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx137, align 8
  %150 = load i32, i32* %succ, align 4
  %idxprom138 = sext i32 %150 to i64
  %151 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data139 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %151, i32 0, i32 4
  %bb140 = bitcast %union.varray_data_tag* %data139 to [1 x %struct.basic_block_def*]*
  %arrayidx141 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb140, i32 0, i64 %idxprom138
  %152 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx141, align 8
  %call142 = call i32 @find_edge_index(%struct.edge_list* %146, %struct.basic_block_def* %149, %struct.basic_block_def* %152)
  %cmp143 = icmp ne i32 %call142, -1
  br i1 %cmp143, label %land.lhs.true.144, label %if.end.157

land.lhs.true.144:                                ; preds = %if.end.133
  %153 = load i32, i32* %found_edge, align 4
  %cmp145 = icmp eq i32 %153, 0
  br i1 %cmp145, label %if.then.146, label %if.end.157

if.then.146:                                      ; preds = %land.lhs.true.144
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %155 = load i32, i32* %pred, align 4
  %156 = load i32, i32* %succ, align 4
  %157 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %158 = load i32, i32* %pred, align 4
  %idxprom147 = sext i32 %158 to i64
  %159 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data148 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %159, i32 0, i32 4
  %bb149 = bitcast %union.varray_data_tag* %data148 to [1 x %struct.basic_block_def*]*
  %arrayidx150 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb149, i32 0, i64 %idxprom147
  %160 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx150, align 8
  %161 = load i32, i32* %succ, align 4
  %idxprom151 = sext i32 %161 to i64
  %162 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data152 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %162, i32 0, i32 4
  %bb153 = bitcast %union.varray_data_tag* %data152 to [1 x %struct.basic_block_def*]*
  %arrayidx154 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb153, i32 0, i64 %idxprom151
  %163 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx154, align 8
  %call155 = call i32 @find_edge_index(%struct.edge_list* %157, %struct.basic_block_def* %160, %struct.basic_block_def* %163)
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %154, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.10, i32 0, i32 0), i32 %155, i32 %156, i32 %call155)
  br label %if.end.157

if.end.157:                                       ; preds = %if.then.146, %land.lhs.true.144, %if.end.133
  br label %for.inc.158

for.inc.158:                                      ; preds = %if.end.157
  %164 = load i32, i32* %succ, align 4
  %inc159 = add nsw i32 %164, 1
  store i32 %inc159, i32* %succ, align 4
  br label %for.cond.88

for.end.160:                                      ; preds = %for.cond.88
  br label %for.inc.161

for.inc.161:                                      ; preds = %for.end.160
  %165 = load i32, i32* %pred, align 4
  %inc162 = add nsw i32 %165, 1
  store i32 %inc162, i32* %pred, align 4
  br label %for.cond.85

for.end.163:                                      ; preds = %for.cond.85
  store i32 0, i32* %succ, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.223, %for.end.163
  %166 = load i32, i32* %succ, align 4
  %167 = load i32, i32* @n_basic_blocks, align 4
  %cmp165 = icmp slt i32 %166, %167
  br i1 %cmp165, label %for.body.166, label %for.end.225

for.body.166:                                     ; preds = %for.cond.164
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %p167, align 8
  %168 = load i32, i32* %succ, align 4
  %idxprom169 = sext i32 %168 to i64
  %169 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data170 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %169, i32 0, i32 4
  %bb171 = bitcast %union.varray_data_tag* %data170 to [1 x %struct.basic_block_def*]*
  %arrayidx172 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb171, i32 0, i64 %idxprom169
  %170 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx172, align 8
  store %struct.basic_block_def* %170, %struct.basic_block_def** %s168, align 8
  store i32 0, i32* %found_edge173, align 4
  %171 = load %struct.basic_block_def*, %struct.basic_block_def** %p167, align 8
  %succ174 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %171, i32 0, i32 5
  %172 = load %struct.edge_def*, %struct.edge_def** %succ174, align 8
  store %struct.edge_def* %172, %struct.edge_def** %e, align 8
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.182, %for.body.166
  %173 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool176 = icmp ne %struct.edge_def* %173, null
  br i1 %tobool176, label %for.body.177, label %for.end.184

for.body.177:                                     ; preds = %for.cond.175
  %174 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest178 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %174, i32 0, i32 3
  %175 = load %struct.basic_block_def*, %struct.basic_block_def** %dest178, align 8
  %176 = load %struct.basic_block_def*, %struct.basic_block_def** %s168, align 8
  %cmp179 = icmp eq %struct.basic_block_def* %175, %176
  br i1 %cmp179, label %if.then.180, label %if.end.181

if.then.180:                                      ; preds = %for.body.177
  store i32 1, i32* %found_edge173, align 4
  br label %for.end.184

if.end.181:                                       ; preds = %for.body.177
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %177 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next183 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %177, i32 0, i32 1
  %178 = load %struct.edge_def*, %struct.edge_def** %succ_next183, align 8
  store %struct.edge_def* %178, %struct.edge_def** %e, align 8
  br label %for.cond.175

for.end.184:                                      ; preds = %if.then.180, %for.cond.175
  %179 = load %struct.basic_block_def*, %struct.basic_block_def** %s168, align 8
  %pred185 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %179, i32 0, i32 4
  %180 = load %struct.edge_def*, %struct.edge_def** %pred185, align 8
  store %struct.edge_def* %180, %struct.edge_def** %e, align 8
  br label %for.cond.186

for.cond.186:                                     ; preds = %for.inc.193, %for.end.184
  %181 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool187 = icmp ne %struct.edge_def* %181, null
  br i1 %tobool187, label %for.body.188, label %for.end.195

for.body.188:                                     ; preds = %for.cond.186
  %182 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src189 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %182, i32 0, i32 2
  %183 = load %struct.basic_block_def*, %struct.basic_block_def** %src189, align 8
  %184 = load %struct.basic_block_def*, %struct.basic_block_def** %p167, align 8
  %cmp190 = icmp eq %struct.basic_block_def* %183, %184
  br i1 %cmp190, label %if.then.191, label %if.end.192

if.then.191:                                      ; preds = %for.body.188
  store i32 1, i32* %found_edge173, align 4
  br label %for.end.195

if.end.192:                                       ; preds = %for.body.188
  br label %for.inc.193

for.inc.193:                                      ; preds = %if.end.192
  %185 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next194 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %185, i32 0, i32 0
  %186 = load %struct.edge_def*, %struct.edge_def** %pred_next194, align 8
  store %struct.edge_def* %186, %struct.edge_def** %e, align 8
  br label %for.cond.186

for.end.195:                                      ; preds = %if.then.191, %for.cond.186
  %187 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %188 = load i32, i32* %succ, align 4
  %idxprom196 = sext i32 %188 to i64
  %189 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data197 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %189, i32 0, i32 4
  %bb198 = bitcast %union.varray_data_tag* %data197 to [1 x %struct.basic_block_def*]*
  %arrayidx199 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb198, i32 0, i64 %idxprom196
  %190 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx199, align 8
  %call200 = call i32 @find_edge_index(%struct.edge_list* %187, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %190)
  %cmp201 = icmp eq i32 %call200, -1
  br i1 %cmp201, label %land.lhs.true.202, label %if.end.206

land.lhs.true.202:                                ; preds = %for.end.195
  %191 = load i32, i32* %found_edge173, align 4
  %cmp203 = icmp ne i32 %191, 0
  br i1 %cmp203, label %if.then.204, label %if.end.206

if.then.204:                                      ; preds = %land.lhs.true.202
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %193 = load i32, i32* %succ, align 4
  %call205 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0), i32 %193)
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.204, %land.lhs.true.202, %for.end.195
  %194 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %195 = load i32, i32* %succ, align 4
  %idxprom207 = sext i32 %195 to i64
  %196 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data208 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %196, i32 0, i32 4
  %bb209 = bitcast %union.varray_data_tag* %data208 to [1 x %struct.basic_block_def*]*
  %arrayidx210 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb209, i32 0, i64 %idxprom207
  %197 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx210, align 8
  %call211 = call i32 @find_edge_index(%struct.edge_list* %194, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %197)
  %cmp212 = icmp ne i32 %call211, -1
  br i1 %cmp212, label %land.lhs.true.213, label %if.end.222

land.lhs.true.213:                                ; preds = %if.end.206
  %198 = load i32, i32* %found_edge173, align 4
  %cmp214 = icmp eq i32 %198, 0
  br i1 %cmp214, label %if.then.215, label %if.end.222

if.then.215:                                      ; preds = %land.lhs.true.213
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %200 = load i32, i32* %succ, align 4
  %201 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %202 = load i32, i32* %succ, align 4
  %idxprom216 = sext i32 %202 to i64
  %203 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data217 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %203, i32 0, i32 4
  %bb218 = bitcast %union.varray_data_tag* %data217 to [1 x %struct.basic_block_def*]*
  %arrayidx219 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb218, i32 0, i64 %idxprom216
  %204 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx219, align 8
  %call220 = call i32 @find_edge_index(%struct.edge_list* %201, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def* %204)
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i32 0, i32 0), i32 %200, i32 %call220)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.215, %land.lhs.true.213, %if.end.206
  br label %for.inc.223

for.inc.223:                                      ; preds = %if.end.222
  %205 = load i32, i32* %succ, align 4
  %inc224 = add nsw i32 %205, 1
  store i32 %inc224, i32* %succ, align 4
  br label %for.cond.164

for.end.225:                                      ; preds = %for.cond.164
  store i32 0, i32* %pred, align 4
  br label %for.cond.226

for.cond.226:                                     ; preds = %for.inc.285, %for.end.225
  %206 = load i32, i32* %pred, align 4
  %207 = load i32, i32* @n_basic_blocks, align 4
  %cmp227 = icmp slt i32 %206, %207
  br i1 %cmp227, label %for.body.228, label %for.end.287

for.body.228:                                     ; preds = %for.cond.226
  %208 = load i32, i32* %pred, align 4
  %idxprom230 = sext i32 %208 to i64
  %209 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data231 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %209, i32 0, i32 4
  %bb232 = bitcast %union.varray_data_tag* %data231 to [1 x %struct.basic_block_def*]*
  %arrayidx233 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb232, i32 0, i64 %idxprom230
  %210 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx233, align 8
  store %struct.basic_block_def* %210, %struct.basic_block_def** %p229, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %s234, align 8
  store i32 0, i32* %found_edge235, align 4
  %211 = load %struct.basic_block_def*, %struct.basic_block_def** %p229, align 8
  %succ236 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %211, i32 0, i32 5
  %212 = load %struct.edge_def*, %struct.edge_def** %succ236, align 8
  store %struct.edge_def* %212, %struct.edge_def** %e, align 8
  br label %for.cond.237

for.cond.237:                                     ; preds = %for.inc.244, %for.body.228
  %213 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool238 = icmp ne %struct.edge_def* %213, null
  br i1 %tobool238, label %for.body.239, label %for.end.246

for.body.239:                                     ; preds = %for.cond.237
  %214 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest240 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %214, i32 0, i32 3
  %215 = load %struct.basic_block_def*, %struct.basic_block_def** %dest240, align 8
  %216 = load %struct.basic_block_def*, %struct.basic_block_def** %s234, align 8
  %cmp241 = icmp eq %struct.basic_block_def* %215, %216
  br i1 %cmp241, label %if.then.242, label %if.end.243

if.then.242:                                      ; preds = %for.body.239
  store i32 1, i32* %found_edge235, align 4
  br label %for.end.246

if.end.243:                                       ; preds = %for.body.239
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.243
  %217 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next245 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %217, i32 0, i32 1
  %218 = load %struct.edge_def*, %struct.edge_def** %succ_next245, align 8
  store %struct.edge_def* %218, %struct.edge_def** %e, align 8
  br label %for.cond.237

for.end.246:                                      ; preds = %if.then.242, %for.cond.237
  %219 = load %struct.basic_block_def*, %struct.basic_block_def** %s234, align 8
  %pred247 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %219, i32 0, i32 4
  %220 = load %struct.edge_def*, %struct.edge_def** %pred247, align 8
  store %struct.edge_def* %220, %struct.edge_def** %e, align 8
  br label %for.cond.248

for.cond.248:                                     ; preds = %for.inc.255, %for.end.246
  %221 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool249 = icmp ne %struct.edge_def* %221, null
  br i1 %tobool249, label %for.body.250, label %for.end.257

for.body.250:                                     ; preds = %for.cond.248
  %222 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src251 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %222, i32 0, i32 2
  %223 = load %struct.basic_block_def*, %struct.basic_block_def** %src251, align 8
  %224 = load %struct.basic_block_def*, %struct.basic_block_def** %p229, align 8
  %cmp252 = icmp eq %struct.basic_block_def* %223, %224
  br i1 %cmp252, label %if.then.253, label %if.end.254

if.then.253:                                      ; preds = %for.body.250
  store i32 1, i32* %found_edge235, align 4
  br label %for.end.257

if.end.254:                                       ; preds = %for.body.250
  br label %for.inc.255

for.inc.255:                                      ; preds = %if.end.254
  %225 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next256 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %225, i32 0, i32 0
  %226 = load %struct.edge_def*, %struct.edge_def** %pred_next256, align 8
  store %struct.edge_def* %226, %struct.edge_def** %e, align 8
  br label %for.cond.248

for.end.257:                                      ; preds = %if.then.253, %for.cond.248
  %227 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %228 = load i32, i32* %pred, align 4
  %idxprom258 = sext i32 %228 to i64
  %229 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data259 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %229, i32 0, i32 4
  %bb260 = bitcast %union.varray_data_tag* %data259 to [1 x %struct.basic_block_def*]*
  %arrayidx261 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb260, i32 0, i64 %idxprom258
  %230 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx261, align 8
  %call262 = call i32 @find_edge_index(%struct.edge_list* %227, %struct.basic_block_def* %230, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1))
  %cmp263 = icmp eq i32 %call262, -1
  br i1 %cmp263, label %land.lhs.true.264, label %if.end.268

land.lhs.true.264:                                ; preds = %for.end.257
  %231 = load i32, i32* %found_edge235, align 4
  %cmp265 = icmp ne i32 %231, 0
  br i1 %cmp265, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %land.lhs.true.264
  %232 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %233 = load i32, i32* %pred, align 4
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %232, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.13, i32 0, i32 0), i32 %233)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %land.lhs.true.264, %for.end.257
  %234 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %235 = load i32, i32* %pred, align 4
  %idxprom269 = sext i32 %235 to i64
  %236 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data270 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %236, i32 0, i32 4
  %bb271 = bitcast %union.varray_data_tag* %data270 to [1 x %struct.basic_block_def*]*
  %arrayidx272 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb271, i32 0, i64 %idxprom269
  %237 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx272, align 8
  %call273 = call i32 @find_edge_index(%struct.edge_list* %234, %struct.basic_block_def* %237, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1))
  %cmp274 = icmp ne i32 %call273, -1
  br i1 %cmp274, label %land.lhs.true.275, label %if.end.284

land.lhs.true.275:                                ; preds = %if.end.268
  %238 = load i32, i32* %found_edge235, align 4
  %cmp276 = icmp eq i32 %238, 0
  br i1 %cmp276, label %if.then.277, label %if.end.284

if.then.277:                                      ; preds = %land.lhs.true.275
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %f.addr, align 8
  %240 = load i32, i32* %pred, align 4
  %241 = load %struct.edge_list*, %struct.edge_list** %elist.addr, align 8
  %242 = load i32, i32* %pred, align 4
  %idxprom278 = sext i32 %242 to i64
  %243 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data279 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %243, i32 0, i32 4
  %bb280 = bitcast %union.varray_data_tag* %data279 to [1 x %struct.basic_block_def*]*
  %arrayidx281 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb280, i32 0, i64 %idxprom278
  %244 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx281, align 8
  %call282 = call i32 @find_edge_index(%struct.edge_list* %241, %struct.basic_block_def* %244, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1))
  %call283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i32 0, i32 0), i32 %240, i32 %call282)
  br label %if.end.284

if.end.284:                                       ; preds = %if.then.277, %land.lhs.true.275, %if.end.268
  br label %for.inc.285

for.inc.285:                                      ; preds = %if.end.284
  %245 = load i32, i32* %pred, align 4
  %inc286 = add nsw i32 %245, 1
  store i32 %inc286, i32* %pred, align 4
  br label %for.cond.226

for.end.287:                                      ; preds = %for.cond.226
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @find_edge_index(%struct.edge_list* %edge_list, %struct.basic_block_def* %pred, %struct.basic_block_def* %succ) #0 {
entry:
  %retval = alloca i32, align 4
  %edge_list.addr = alloca %struct.edge_list*, align 8
  %pred.addr = alloca %struct.basic_block_def*, align 8
  %succ.addr = alloca %struct.basic_block_def*, align 8
  %x = alloca i32, align 4
  store %struct.edge_list* %edge_list, %struct.edge_list** %edge_list.addr, align 8
  store %struct.basic_block_def* %pred, %struct.basic_block_def** %pred.addr, align 8
  store %struct.basic_block_def* %succ, %struct.basic_block_def** %succ.addr, align 8
  store i32 0, i32* %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %x, align 4
  %1 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %num_edges = getelementptr inbounds %struct.edge_list, %struct.edge_list* %1, i32 0, i32 1
  %2 = load i32, i32* %num_edges, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %x, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge = getelementptr inbounds %struct.edge_list, %struct.edge_list* %4, i32 0, i32 2
  %5 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %5, i64 %idxprom
  %6 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 2
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %pred.addr, align 8
  %cmp1 = icmp eq %struct.basic_block_def* %7, %8
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %9 to i64
  %10 = load %struct.edge_list*, %struct.edge_list** %edge_list.addr, align 8
  %index_to_edge3 = getelementptr inbounds %struct.edge_list, %struct.edge_list* %10, i32 0, i32 2
  %11 = load %struct.edge_def**, %struct.edge_def*** %index_to_edge3, align 8
  %arrayidx4 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %11, i64 %idxprom2
  %12 = load %struct.edge_def*, %struct.edge_def** %arrayidx4, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 3
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %succ.addr, align 8
  %cmp5 = icmp eq %struct.basic_block_def* %13, %14
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %15 = load i32, i32* %x, align 4
  store i32 %15, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %x, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @flow_nodes_print(i8* %str, %struct.simple_bitmap_def* %nodes, %struct._IO_FILE* %file) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %nodes.addr = alloca %struct.simple_bitmap_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %node = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  store %struct.simple_bitmap_def* %nodes, %struct.simple_bitmap_def** %nodes.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  br label %do.body

do.body:                                          ; preds = %if.end
  store i32 0, i32* %bit_num_, align 4
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i32 0, i32 1
  %4 = load i32, i32* %size, align 4
  store i32 %4, i32* %size_, align 4
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %nodes.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %do.body
  %6 = load i32, i32* %word_num_, align 4
  %7 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %word_num_, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load i64*, i64** %ptr_, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  store i64 %10, i64* %word_, align 8
  %11 = load i64, i64* %word_, align 8
  %cmp1 = icmp ne i64 %11, 0
  br i1 %cmp1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %for.body
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %if.then.2
  %12 = load i32, i32* %bit_num_, align 4
  %cmp4 = icmp ult i32 %12, 64
  br i1 %cmp4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.3
  %13 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %13 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %14 = load i64, i64* %word_, align 8
  %15 = load i64, i64* %_mask, align 8
  %and = and i64 %14, %15
  %cmp6 = icmp ne i64 %and, 0
  br i1 %cmp6, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %for.body.5
  %16 = load i64, i64* %_mask, align 8
  %neg = xor i64 %16, -1
  %17 = load i64, i64* %word_, align 8
  %and8 = and i64 %17, %neg
  store i64 %and8, i64* %word_, align 8
  %18 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %18, 64
  %19 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %19
  store i32 %add, i32* %node, align 4
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %21 = load i32, i32* %node, align 4
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 %21)
  %22 = load i64, i64* %word_, align 8
  %cmp10 = icmp eq i64 %22, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  br label %for.end

if.end.12:                                        ; preds = %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %23 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.3

for.end:                                          ; preds = %if.then.11, %for.cond.3
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %for.body
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %24 = load i32, i32* %word_num_, align 4
  %inc16 = add i32 %24, 1
  store i32 %inc16, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %return

return:                                           ; preds = %do.end, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @flow_edge_list_print(i8* %str, %struct.edge_def** %edge_list, i32 %num_edges, %struct._IO_FILE* %file) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %edge_list.addr = alloca %struct.edge_def**, align 8
  %num_edges.addr = alloca i32, align 4
  %file.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store %struct.edge_def** %edge_list, %struct.edge_def*** %edge_list.addr, align 8
  store i32 %num_edges, i32* %num_edges.addr, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.edge_def**, %struct.edge_def*** %edge_list.addr, align 8
  %tobool = icmp ne %struct.edge_def** %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %2 = load i8*, i8** %str.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %num_edges.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.edge_def**, %struct.edge_def*** %edge_list.addr, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %7, i64 %idxprom
  %8 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %8, i32 0, i32 2
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 11
  %10 = load i32, i32* %index, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.edge_def**, %struct.edge_def*** %edge_list.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %12, i64 %idxprom1
  %13 = load %struct.edge_def*, %struct.edge_def** %arrayidx2, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 3
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index3 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index3, align 4
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i32 %10, i32 %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %17)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_fake_edges() #0 {
entry:
  %x = alloca i32, align 4
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
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  call void @remove_fake_successors(%struct.basic_block_def* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %x, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @remove_fake_successors(%struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @remove_fake_successors(%struct.basic_block_def* %bb) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.edge_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 5
  %1 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %1, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  store %struct.edge_def* %3, %struct.edge_def** %tmp, align 8
  %4 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 1
  %5 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %5, %struct.edge_def** %e, align 8
  %6 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 6
  %7 = load i32, i32* %flags, align 4
  %and = and i32 %7, 16
  %cmp = icmp eq i32 %and, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.edge_def*, %struct.edge_def** %tmp, align 8
  call void @remove_edge(%struct.edge_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_noreturn_fake_exit_edges() #0 {
entry:
  %x = alloca i32, align 4
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
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i32 0, i32 5
  %5 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %cmp1 = icmp eq %struct.edge_def* %5, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %x, align 4
  %idxprom2 = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %call = call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %8, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %x, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %x, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) #1

; Function Attrs: nounwind uwtable
define void @connect_infinite_loops_to_exit() #0 {
entry:
  %unvisited_block = alloca %struct.basic_block_def*, align 8
  %dfs_ds = alloca %struct.depth_first_search_dsS, align 8
  call void @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS* %dfs_ds)
  call void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %dfs_ds, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1))
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %call = call %struct.basic_block_def* @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS* %dfs_ds)
  store %struct.basic_block_def* %call, %struct.basic_block_def** %unvisited_block, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %unvisited_block, align 8
  %tobool = icmp ne %struct.basic_block_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %unvisited_block, align 8
  %call1 = call %struct.edge_def* @make_edge(%struct.basic_block_def* %1, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), i32 16)
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %unvisited_block, align 8
  call void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %dfs_ds, %struct.basic_block_def* %2)
  br label %while.body

while.end:                                        ; preds = %if.then
  call void @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS* %dfs_ds)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flow_dfs_compute_reverse_init(%struct.depth_first_search_dsS* %data) #0 {
entry:
  %data.addr = alloca %struct.depth_first_search_dsS*, align 8
  store %struct.depth_first_search_dsS* %data, %struct.depth_first_search_dsS** %data.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, -2
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.basic_block_def**
  %2 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %2, i32 0, i32 0
  store %struct.basic_block_def** %1, %struct.basic_block_def*** %stack, align 8
  %3 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %3, i32 0, i32 1
  store i32 0, i32* %sp, align 4
  %4 = load i32, i32* @n_basic_blocks, align 4
  %sub1 = sub nsw i32 %4, -2
  %call2 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %sub1)
  %5 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %5, i32 0, i32 2
  store %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def** %visited_blocks, align 8
  %6 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks3 = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %6, i32 0, i32 2
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks3, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %data, %struct.basic_block_def* %bb) #0 {
entry:
  %data.addr = alloca %struct.depth_first_search_dsS*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  store %struct.depth_first_search_dsS* %data, %struct.depth_first_search_dsS** %data.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %1 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %1, i32 0, i32 1
  %2 = load i32, i32* %sp, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %3, i32 0, i32 0
  %4 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %4, i64 %idxprom
  store %struct.basic_block_def* %0, %struct.basic_block_def** %arrayidx, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %6, -2
  %rem = urem i32 %sub, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 11
  %8 = load i32, i32* %index1, align 4
  %sub2 = sub nsw i32 %8, -2
  %div = udiv i32 %sub2, 64
  %idxprom3 = zext i32 %div to i64
  %9 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %9, i32 0, i32 2
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  %or = or i64 %11, %shl
  store i64 %or, i64* %arrayidx4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.basic_block_def* @flow_dfs_compute_reverse_execute(%struct.depth_first_search_dsS* %data) #0 {
entry:
  %retval = alloca %struct.basic_block_def*, align 8
  %data.addr = alloca %struct.depth_first_search_dsS*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %i = alloca i32, align 4
  store %struct.depth_first_search_dsS* %data, %struct.depth_first_search_dsS** %data.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %sp = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %0, i32 0, i32 1
  %1 = load i32, i32* %sp, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %sp1 = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %2, i32 0, i32 1
  %3 = load i32, i32* %sp1, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %sp1, align 4
  %idxprom = zext i32 %dec to i64
  %4 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %4, i32 0, i32 0
  %5 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %5, i64 %idxprom
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %6, %struct.basic_block_def** %bb, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 4
  %8 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %8, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %10, i32 0, i32 2
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %11, i32 0, i32 11
  %12 = load i32, i32* %index, align 4
  %sub = sub nsw i32 %12, -2
  %div = udiv i32 %sub, 64
  %idxprom2 = zext i32 %div to i64
  %13 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %13, i32 0, i32 2
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom2
  %15 = load i64, i64* %arrayidx3, align 8
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 2
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  %index5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index5, align 4
  %sub6 = sub nsw i32 %18, -2
  %rem = urem i32 %sub6, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %15, %sh_prom
  %and = and i64 %shr, 1
  %tobool7 = icmp ne i64 %and, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %19 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 2
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8
  call void @flow_dfs_compute_reverse_add_bb(%struct.depth_first_search_dsS* %19, %struct.basic_block_def* %21)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 0
  %23 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %23, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load i32, i32* @n_basic_blocks, align 4
  %sub9 = sub nsw i32 %24, -2
  store i32 %sub9, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %if.end.29, %while.end
  %25 = load i32, i32* %i, align 4
  %dec11 = add nsw i32 %25, -1
  store i32 %dec11, i32* %i, align 4
  %cmp12 = icmp sge i32 %dec11, 0
  br i1 %cmp12, label %for.body.13, label %for.end.30

for.body.13:                                      ; preds = %for.cond.10
  %26 = load i32, i32* %i, align 4
  %div14 = udiv i32 %26, 64
  %idxprom15 = zext i32 %div14 to i64
  %27 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks16 = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %27, i32 0, i32 2
  %28 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks16, align 8
  %elms17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %28, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %elms17, i32 0, i64 %idxprom15
  %29 = load i64, i64* %arrayidx18, align 8
  %30 = load i32, i32* %i, align 4
  %rem19 = urem i32 %30, 64
  %sh_prom20 = zext i32 %rem19 to i64
  %shr21 = lshr i64 %29, %sh_prom20
  %and22 = and i64 %shr21, 1
  %tobool23 = icmp ne i64 %and22, 0
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %for.body.13
  %31 = load i32, i32* %i, align 4
  %add = add nsw i32 %31, -2
  %idxprom25 = sext i32 %add to i64
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data26 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %32, i32 0, i32 4
  %bb27 = bitcast %union.varray_data_tag* %data26 to [1 x %struct.basic_block_def*]*
  %arrayidx28 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb27, i32 0, i64 %idxprom25
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx28, align 8
  store %struct.basic_block_def* %33, %struct.basic_block_def** %retval
  br label %return

if.end.29:                                        ; preds = %for.body.13
  br label %for.cond.10

for.end.30:                                       ; preds = %for.cond.10
  store %struct.basic_block_def* null, %struct.basic_block_def** %retval
  br label %return

return:                                           ; preds = %for.end.30, %if.then.24
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %retval
  ret %struct.basic_block_def* %34
}

; Function Attrs: nounwind uwtable
define internal void @flow_dfs_compute_reverse_finish(%struct.depth_first_search_dsS* %data) #0 {
entry:
  %data.addr = alloca %struct.depth_first_search_dsS*, align 8
  store %struct.depth_first_search_dsS* %data, %struct.depth_first_search_dsS** %data.addr, align 8
  %0 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %stack = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %0, i32 0, i32 0
  %1 = load %struct.basic_block_def**, %struct.basic_block_def*** %stack, align 8
  %2 = bitcast %struct.basic_block_def** %1 to i8*
  call void @free(i8* %2) #4
  %3 = load %struct.depth_first_search_dsS*, %struct.depth_first_search_dsS** %data.addr, align 8
  %visited_blocks = getelementptr inbounds %struct.depth_first_search_dsS, %struct.depth_first_search_dsS* %3, i32 0, i32 2
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited_blocks, align 8
  %5 = bitcast %struct.simple_bitmap_def* %4 to i8*
  call void @free(i8* %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define void @flow_reverse_top_sort_order_compute(i32* %rts_order) #0 {
entry:
  %rts_order.addr = alloca i32*, align 8
  %stack = alloca %struct.edge_def**, align 8
  %sp = alloca i32, align 4
  %postnum = alloca i32, align 4
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  store i32* %rts_order, i32** %rts_order.addr, align 8
  store i32 0, i32* %postnum, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.edge_def**
  store %struct.edge_def** %1, %struct.edge_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %call1 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %2)
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %visited, align 8
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %3)
  %4 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %5 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %6, i64 %idxprom
  store %struct.edge_def* %4, %struct.edge_def** %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %entry
  %7 = load i32, i32* %sp, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %sp, align 4
  %sub = sub nsw i32 %8, 1
  %idxprom2 = sext i32 %sub to i64
  %9 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx3 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %9, i64 %idxprom2
  %10 = load %struct.edge_def*, %struct.edge_def** %arrayidx3, align 8
  store %struct.edge_def* %10, %struct.edge_def** %e, align 8
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src4 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %11, i32 0, i32 2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src4, align 8
  store %struct.basic_block_def* %12, %struct.basic_block_def** %src, align 8
  %13 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %13, i32 0, i32 3
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8
  store %struct.basic_block_def* %14, %struct.basic_block_def** %dest, align 8
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp = icmp ne %struct.basic_block_def* %15, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %land.lhs.true, label %if.else.29

land.lhs.true:                                    ; preds = %while.body
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 11
  %17 = load i32, i32* %index, align 4
  %div = udiv i32 %17, 64
  %idxprom7 = zext i32 %div to i64
  %18 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %18, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom7
  %19 = load i64, i64* %arrayidx8, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %20, i32 0, i32 11
  %21 = load i32, i32* %index9, align 4
  %rem = urem i32 %21, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %19, %sh_prom
  %and = and i64 %shr, 1
  %tobool10 = icmp ne i64 %and, 0
  br i1 %tobool10, label %if.else.29, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index11, align 4
  %rem12 = urem i32 %23, 64
  %sh_prom13 = zext i32 %rem12 to i64
  %shl = shl i64 1, %sh_prom13
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index14, align 4
  %div15 = udiv i32 %25, 64
  %idxprom16 = zext i32 %div15 to i64
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [1 x i64], [1 x i64]* %elms17, i32 0, i64 %idxprom16
  %27 = load i64, i64* %arrayidx18, align 8
  %or = or i64 %27, %shl
  store i64 %or, i64* %arrayidx18, align 8
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 5
  %29 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool19 = icmp ne %struct.edge_def* %29, null
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 5
  %31 = load %struct.edge_def*, %struct.edge_def** %succ21, align 8
  %32 = load i32, i32* %sp, align 4
  %inc22 = add nsw i32 %32, 1
  store i32 %inc22, i32* %sp, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx24 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %33, i64 %idxprom23
  store %struct.edge_def* %31, %struct.edge_def** %arrayidx24, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index25 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index25, align 4
  %36 = load i32, i32* %postnum, align 4
  %inc26 = add nsw i32 %36, 1
  store i32 %inc26, i32* %postnum, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load i32*, i32** %rts_order.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %37, i64 %idxprom27
  store i32 %35, i32* %arrayidx28, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.49

if.else.29:                                       ; preds = %land.lhs.true, %while.body
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 1
  %39 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool30 = icmp ne %struct.edge_def* %39, null
  br i1 %tobool30, label %if.end.39, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %if.else.29
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp32 = icmp ne %struct.basic_block_def* %40, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp32, label %if.then.34, label %if.end.39

if.then.34:                                       ; preds = %land.lhs.true.31
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %41, i32 0, i32 11
  %42 = load i32, i32* %index35, align 4
  %43 = load i32, i32* %postnum, align 4
  %inc36 = add nsw i32 %43, 1
  store i32 %inc36, i32* %postnum, align 4
  %idxprom37 = sext i32 %43 to i64
  %44 = load i32*, i32** %rts_order.addr, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %44, i64 %idxprom37
  store i32 %42, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.34, %land.lhs.true.31, %if.else.29
  %45 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next40 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %45, i32 0, i32 1
  %46 = load %struct.edge_def*, %struct.edge_def** %succ_next40, align 8
  %tobool41 = icmp ne %struct.edge_def* %46, null
  br i1 %tobool41, label %if.then.42, label %if.else.47

if.then.42:                                       ; preds = %if.end.39
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next43 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 1
  %48 = load %struct.edge_def*, %struct.edge_def** %succ_next43, align 8
  %49 = load i32, i32* %sp, align 4
  %sub44 = sub nsw i32 %49, 1
  %idxprom45 = sext i32 %sub44 to i64
  %50 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx46 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %50, i64 %idxprom45
  store %struct.edge_def* %48, %struct.edge_def** %arrayidx46, align 8
  br label %if.end.48

if.else.47:                                       ; preds = %if.end.39
  %51 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %sp, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %52 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %53 = bitcast %struct.edge_def** %52 to i8*
  call void @free(i8* %53) #4
  %54 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %55 = bitcast %struct.simple_bitmap_def* %54 to i8*
  call void @free(i8* %55) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @flow_depth_first_order_compute(i32* %dfs_order, i32* %rc_order) #0 {
entry:
  %dfs_order.addr = alloca i32*, align 8
  %rc_order.addr = alloca i32*, align 8
  %stack = alloca %struct.edge_def**, align 8
  %sp = alloca i32, align 4
  %dfsnum = alloca i32, align 4
  %rcnum = alloca i32, align 4
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  store i32* %dfs_order, i32** %dfs_order.addr, align 8
  store i32* %rc_order, i32** %rc_order.addr, align 8
  store i32 0, i32* %dfsnum, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %rcnum, align 4
  %1 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %2 = bitcast i8* %call to %struct.edge_def**
  store %struct.edge_def** %2, %struct.edge_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %call1 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %3)
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %visited, align 8
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %4)
  %5 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %6 = load i32, i32* %sp, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %sp, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %7, i64 %idxprom
  store %struct.edge_def* %5, %struct.edge_def** %arrayidx, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %entry
  %8 = load i32, i32* %sp, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i32, i32* %sp, align 4
  %sub2 = sub nsw i32 %9, 1
  %idxprom3 = sext i32 %sub2 to i64
  %10 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx4 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %10, i64 %idxprom3
  %11 = load %struct.edge_def*, %struct.edge_def** %arrayidx4, align 8
  store %struct.edge_def* %11, %struct.edge_def** %e, align 8
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 2
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src5, align 8
  store %struct.basic_block_def* %13, %struct.basic_block_def** %src, align 8
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest6 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %14, i32 0, i32 3
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest6, align 8
  store %struct.basic_block_def* %15, %struct.basic_block_def** %dest, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp = icmp ne %struct.basic_block_def* %16, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %land.lhs.true, label %if.else.39

land.lhs.true:                                    ; preds = %while.body
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i32 0, i32 11
  %18 = load i32, i32* %index, align 4
  %div = udiv i32 %18, 64
  %idxprom8 = zext i32 %div to i64
  %19 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %19, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom8
  %20 = load i64, i64* %arrayidx9, align 8
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 11
  %22 = load i32, i32* %index10, align 4
  %rem = urem i32 %22, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %20, %sh_prom
  %and = and i64 %shr, 1
  %tobool11 = icmp ne i64 %and, 0
  br i1 %tobool11, label %if.else.39, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 11
  %24 = load i32, i32* %index12, align 4
  %rem13 = urem i32 %24, 64
  %sh_prom14 = zext i32 %rem13 to i64
  %shl = shl i64 1, %sh_prom14
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 11
  %26 = load i32, i32* %index15, align 4
  %div16 = udiv i32 %26, 64
  %idxprom17 = zext i32 %div16 to i64
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms18 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %27, i32 0, i32 3
  %arrayidx19 = getelementptr inbounds [1 x i64], [1 x i64]* %elms18, i32 0, i64 %idxprom17
  %28 = load i64, i64* %arrayidx19, align 8
  %or = or i64 %28, %shl
  store i64 %or, i64* %arrayidx19, align 8
  %29 = load i32*, i32** %dfs_order.addr, align 8
  %tobool20 = icmp ne i32* %29, null
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.then
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index22 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %30, i32 0, i32 11
  %31 = load i32, i32* %index22, align 4
  %32 = load i32, i32* %dfsnum, align 4
  %idxprom23 = sext i32 %32 to i64
  %33 = load i32*, i32** %dfs_order.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %33, i64 %idxprom23
  store i32 %31, i32* %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.then
  %34 = load i32, i32* %dfsnum, align 4
  %inc25 = add nsw i32 %34, 1
  store i32 %inc25, i32* %dfsnum, align 4
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 5
  %36 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %tobool26 = icmp ne %struct.edge_def* %36, null
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.end
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 5
  %38 = load %struct.edge_def*, %struct.edge_def** %succ28, align 8
  %39 = load i32, i32* %sp, align 4
  %inc29 = add nsw i32 %39, 1
  store i32 %inc29, i32* %sp, align 4
  %idxprom30 = sext i32 %39 to i64
  %40 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx31 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %40, i64 %idxprom30
  store %struct.edge_def* %38, %struct.edge_def** %arrayidx31, align 8
  br label %if.end.38

if.else:                                          ; preds = %if.end
  %41 = load i32*, i32** %rc_order.addr, align 8
  %tobool32 = icmp ne i32* %41, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %if.else
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index34, align 4
  %44 = load i32, i32* %rcnum, align 4
  %dec = add nsw i32 %44, -1
  store i32 %dec, i32* %rcnum, align 4
  %idxprom35 = sext i32 %44 to i64
  %45 = load i32*, i32** %rc_order.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %45, i64 %idxprom35
  store i32 %43, i32* %arrayidx36, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.27
  br label %if.end.62

if.else.39:                                       ; preds = %land.lhs.true, %while.body
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 1
  %47 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool40 = icmp ne %struct.edge_def* %47, null
  br i1 %tobool40, label %if.end.51, label %land.lhs.true.41

land.lhs.true.41:                                 ; preds = %if.else.39
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp42 = icmp ne %struct.basic_block_def* %48, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.51

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %49 = load i32*, i32** %rc_order.addr, align 8
  %tobool45 = icmp ne i32* %49, null
  br i1 %tobool45, label %if.then.46, label %if.end.51

if.then.46:                                       ; preds = %land.lhs.true.44
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index47 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index47, align 4
  %52 = load i32, i32* %rcnum, align 4
  %dec48 = add nsw i32 %52, -1
  store i32 %dec48, i32* %rcnum, align 4
  %idxprom49 = sext i32 %52 to i64
  %53 = load i32*, i32** %rc_order.addr, align 8
  %arrayidx50 = getelementptr inbounds i32, i32* %53, i64 %idxprom49
  store i32 %51, i32* %arrayidx50, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.46, %land.lhs.true.44, %land.lhs.true.41, %if.else.39
  %54 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next52 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %54, i32 0, i32 1
  %55 = load %struct.edge_def*, %struct.edge_def** %succ_next52, align 8
  %tobool53 = icmp ne %struct.edge_def* %55, null
  br i1 %tobool53, label %if.then.54, label %if.else.59

if.then.54:                                       ; preds = %if.end.51
  %56 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %56, i32 0, i32 1
  %57 = load %struct.edge_def*, %struct.edge_def** %succ_next55, align 8
  %58 = load i32, i32* %sp, align 4
  %sub56 = sub nsw i32 %58, 1
  %idxprom57 = sext i32 %sub56 to i64
  %59 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx58 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %59, i64 %idxprom57
  store %struct.edge_def* %57, %struct.edge_def** %arrayidx58, align 8
  br label %if.end.61

if.else.59:                                       ; preds = %if.end.51
  %60 = load i32, i32* %sp, align 4
  %dec60 = add nsw i32 %60, -1
  store i32 %dec60, i32* %sp, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.59, %if.then.54
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end.38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %62 = bitcast %struct.edge_def** %61 to i8*
  call void @free(i8* %62) #4
  %63 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %64 = bitcast %struct.simple_bitmap_def* %63 to i8*
  call void @free(i8* %64) #4
  %65 = load i32, i32* %dfsnum, align 4
  %66 = load i32, i32* @n_basic_blocks, align 4
  %cmp63 = icmp sgt i32 %65, %66
  br i1 %cmp63, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %while.end
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 969, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.flow_depth_first_order_compute, i32 0, i32 0)) #5
  unreachable

if.end.66:                                        ; preds = %while.end
  %67 = load i32, i32* %dfsnum, align 4
  %68 = load i32, i32* @n_basic_blocks, align 4
  %cmp67 = icmp slt i32 %67, %68
  br i1 %cmp67, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.66
  call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 973, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.flow_depth_first_order_compute, i32 0, i32 0)) #5
  unreachable

if.end.70:                                        ; preds = %if.end.66
  %69 = load i32, i32* %dfsnum, align 4
  ret i32 %69
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

; Function Attrs: nounwind uwtable
define void @flow_preorder_transversal_compute(i32* %pot_order) #0 {
entry:
  %pot_order.addr = alloca i32*, align 8
  %e = alloca %struct.edge_def*, align 8
  %stack = alloca %struct.edge_def**, align 8
  %i = alloca i32, align 4
  %max_successors = alloca i32, align 4
  %sp = alloca i32, align 4
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %node = alloca %struct.dfst_node*, align 8
  %dfst = alloca %struct.dfst_node*, align 8
  %src = alloca %struct.basic_block_def*, align 8
  %dest = alloca %struct.basic_block_def*, align 8
  store i32* %pot_order, i32** %pot_order.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %0, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.edge_def**
  store %struct.edge_def** %1, %struct.edge_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %2 = load i32, i32* @n_basic_blocks, align 4
  %conv1 = sext i32 %2 to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv1, i64 24)
  %3 = bitcast i8* %call2 to %struct.dfst_node*
  store %struct.dfst_node* %3, %struct.dfst_node** %dfst, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %max_successors, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 5
  %9 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %9, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %10 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %10, null
  br i1 %tobool, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %11 = load i32, i32* %max_successors, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %max_successors, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.5
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 1
  %13 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %13, %struct.edge_def** %e, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %14 = load i32, i32* %max_successors, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %15 = load i32, i32* %max_successors, align 4
  %conv7 = sext i32 %15 to i64
  %call8 = call noalias i8* @xcalloc(i64 %conv7, i64 8)
  %16 = bitcast i8* %call8 to %struct.dfst_node**
  br label %cond.end

cond.false:                                       ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.dfst_node** [ %16, %cond.true ], [ null, %cond.false ]
  %17 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %17 to i64
  %18 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx10 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %18, i64 %idxprom9
  %node11 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx10, i32 0, i32 1
  store %struct.dfst_node** %cond, %struct.dfst_node*** %node11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %cond.end
  %19 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %20 = load i32, i32* @n_basic_blocks, align 4
  %call15 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %20)
  store %struct.simple_bitmap_def* %call15, %struct.simple_bitmap_def** %visited, align 8
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %21)
  %22 = load %struct.edge_def*, %struct.edge_def** getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 5), align 8
  %23 = load i32, i32* %sp, align 4
  %inc16 = add nsw i32 %23, 1
  store i32 %inc16, i32* %sp, align 4
  %idxprom17 = sext i32 %23 to i64
  %24 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx18 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %24, i64 %idxprom17
  store %struct.edge_def* %22, %struct.edge_def** %arrayidx18, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %for.end.14
  %25 = load i32, i32* %sp, align 4
  %tobool19 = icmp ne i32 %25, 0
  br i1 %tobool19, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %26 = load i32, i32* %sp, align 4
  %sub = sub nsw i32 %26, 1
  %idxprom20 = sext i32 %sub to i64
  %27 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx21 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %27, i64 %idxprom20
  %28 = load %struct.edge_def*, %struct.edge_def** %arrayidx21, align 8
  store %struct.edge_def* %28, %struct.edge_def** %e, align 8
  %29 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i32 0, i32 2
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src22, align 8
  store %struct.basic_block_def* %30, %struct.basic_block_def** %src, align 8
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 3
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %dest23, align 8
  store %struct.basic_block_def* %32, %struct.basic_block_def** %dest, align 8
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp24 = icmp ne %struct.basic_block_def* %33, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp24, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index, align 4
  %div = udiv i32 %35, 64
  %idxprom26 = zext i32 %div to i64
  %36 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %36, i32 0, i32 3
  %arrayidx27 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom26
  %37 = load i64, i64* %arrayidx27, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index28 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 11
  %39 = load i32, i32* %index28, align 4
  %rem = urem i32 %39, 64
  %sh_prom = zext i32 %rem to i64
  %shr = lshr i64 %37, %sh_prom
  %and = and i64 %shr, 1
  %tobool29 = icmp ne i64 %and, 0
  br i1 %tobool29, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index30 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 11
  %41 = load i32, i32* %index30, align 4
  %rem31 = urem i32 %41, 64
  %sh_prom32 = zext i32 %rem31 to i64
  %shl = shl i64 1, %sh_prom32
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %42, i32 0, i32 11
  %43 = load i32, i32* %index33, align 4
  %div34 = udiv i32 %43, 64
  %idxprom35 = zext i32 %div34 to i64
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms36 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx37 = getelementptr inbounds [1 x i64], [1 x i64]* %elms36, i32 0, i64 %idxprom35
  %45 = load i64, i64* %arrayidx37, align 8
  %or = or i64 %45, %shl
  store i64 %or, i64* %arrayidx37, align 8
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp38 = icmp ne %struct.basic_block_def* %46, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp38, label %if.then.40, label %if.end

if.then.40:                                       ; preds = %if.then
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 11
  %48 = load i32, i32* %index41, align 4
  %idxprom42 = sext i32 %48 to i64
  %49 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx43 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %49, i64 %idxprom42
  %50 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %50, i32 0, i32 11
  %51 = load i32, i32* %index44, align 4
  %idxprom45 = sext i32 %51 to i64
  %52 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx46 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %52, i64 %idxprom45
  %nnodes = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx46, i32 0, i32 0
  %53 = load i32, i32* %nnodes, align 4
  %inc47 = add i32 %53, 1
  store i32 %inc47, i32* %nnodes, align 4
  %idxprom48 = zext i32 %53 to i64
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 11
  %55 = load i32, i32* %index49, align 4
  %idxprom50 = sext i32 %55 to i64
  %56 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx51 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %56, i64 %idxprom50
  %node52 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx51, i32 0, i32 1
  %57 = load %struct.dfst_node**, %struct.dfst_node*** %node52, align 8
  %arrayidx53 = getelementptr inbounds %struct.dfst_node*, %struct.dfst_node** %57, i64 %idxprom48
  store %struct.dfst_node* %arrayidx43, %struct.dfst_node** %arrayidx53, align 8
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %58, i32 0, i32 11
  %59 = load i32, i32* %index54, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx56 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %60, i64 %idxprom55
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %index57 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i32 0, i32 11
  %62 = load i32, i32* %index57, align 4
  %idxprom58 = sext i32 %62 to i64
  %63 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx59 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %63, i64 %idxprom58
  %up = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx59, i32 0, i32 2
  store %struct.dfst_node* %arrayidx56, %struct.dfst_node** %up, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.40, %if.then
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ60 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %64, i32 0, i32 5
  %65 = load %struct.edge_def*, %struct.edge_def** %succ60, align 8
  %tobool61 = icmp ne %struct.edge_def* %65, null
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end
  %66 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %succ63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %66, i32 0, i32 5
  %67 = load %struct.edge_def*, %struct.edge_def** %succ63, align 8
  %68 = load i32, i32* %sp, align 4
  %inc64 = add nsw i32 %68, 1
  store i32 %inc64, i32* %sp, align 4
  %idxprom65 = sext i32 %68 to i64
  %69 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx66 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %69, i64 %idxprom65
  store %struct.edge_def* %67, %struct.edge_def** %arrayidx66, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %if.end
  br label %if.end.77

if.else:                                          ; preds = %land.lhs.true, %while.body
  %70 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next68 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %70, i32 0, i32 1
  %71 = load %struct.edge_def*, %struct.edge_def** %succ_next68, align 8
  %tobool69 = icmp ne %struct.edge_def* %71, null
  br i1 %tobool69, label %if.then.70, label %if.else.75

if.then.70:                                       ; preds = %if.else
  %72 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next71 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i32 0, i32 1
  %73 = load %struct.edge_def*, %struct.edge_def** %succ_next71, align 8
  %74 = load i32, i32* %sp, align 4
  %sub72 = sub nsw i32 %74, 1
  %idxprom73 = sext i32 %sub72 to i64
  %75 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx74 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %75, i64 %idxprom73
  store %struct.edge_def* %73, %struct.edge_def** %arrayidx74, align 8
  br label %if.end.76

if.else.75:                                       ; preds = %if.else
  %76 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %76, -1
  store i32 %dec, i32* %sp, align 4
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.70
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.67
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %77 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %78 = bitcast %struct.edge_def** %77 to i8*
  call void @free(i8* %78) #4
  %79 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %80 = bitcast %struct.simple_bitmap_def* %79 to i8*
  call void @free(i8* %80) #4
  store i32 0, i32* %i, align 4
  %81 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx78 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %81, i64 0
  store %struct.dfst_node* %arrayidx78, %struct.dfst_node** %node, align 8
  %82 = load i32, i32* %i, align 4
  %inc79 = add nsw i32 %82, 1
  store i32 %inc79, i32* %i, align 4
  %idxprom80 = sext i32 %82 to i64
  %83 = load i32*, i32** %pot_order.addr, align 8
  %arrayidx81 = getelementptr inbounds i32, i32* %83, i64 %idxprom80
  store i32 0, i32* %arrayidx81, align 4
  br label %while.cond.82

while.cond.82:                                    ; preds = %if.end.99, %while.end
  %84 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %tobool83 = icmp ne %struct.dfst_node* %84, null
  br i1 %tobool83, label %while.body.84, label %while.end.100

while.body.84:                                    ; preds = %while.cond.82
  %85 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %nnodes85 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %85, i32 0, i32 0
  %86 = load i32, i32* %nnodes85, align 4
  %tobool86 = icmp ne i32 %86, 0
  br i1 %tobool86, label %if.then.87, label %if.else.97

if.then.87:                                       ; preds = %while.body.84
  %87 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %nnodes88 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %87, i32 0, i32 0
  %88 = load i32, i32* %nnodes88, align 4
  %dec89 = add i32 %88, -1
  store i32 %dec89, i32* %nnodes88, align 4
  %idxprom90 = zext i32 %dec89 to i64
  %89 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %node91 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %89, i32 0, i32 1
  %90 = load %struct.dfst_node**, %struct.dfst_node*** %node91, align 8
  %arrayidx92 = getelementptr inbounds %struct.dfst_node*, %struct.dfst_node** %90, i64 %idxprom90
  %91 = load %struct.dfst_node*, %struct.dfst_node** %arrayidx92, align 8
  store %struct.dfst_node* %91, %struct.dfst_node** %node, align 8
  %92 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %93 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.dfst_node* %92 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.dfst_node* %93 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv93 = trunc i64 %sub.ptr.div to i32
  %94 = load i32, i32* %i, align 4
  %inc94 = add nsw i32 %94, 1
  store i32 %inc94, i32* %i, align 4
  %idxprom95 = sext i32 %94 to i64
  %95 = load i32*, i32** %pot_order.addr, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %95, i64 %idxprom95
  store i32 %conv93, i32* %arrayidx96, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %while.body.84
  %96 = load %struct.dfst_node*, %struct.dfst_node** %node, align 8
  %up98 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %96, i32 0, i32 2
  %97 = load %struct.dfst_node*, %struct.dfst_node** %up98, align 8
  store %struct.dfst_node* %97, %struct.dfst_node** %node, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.87
  br label %while.cond.82

while.end.100:                                    ; preds = %while.cond.82
  store i32 0, i32* %i, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.114, %while.end.100
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* @n_basic_blocks, align 4
  %cmp102 = icmp slt i32 %98, %99
  br i1 %cmp102, label %for.body.104, label %for.end.116

for.body.104:                                     ; preds = %for.cond.101
  %100 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %100 to i64
  %101 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx106 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %101, i64 %idxprom105
  %node107 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx106, i32 0, i32 1
  %102 = load %struct.dfst_node**, %struct.dfst_node*** %node107, align 8
  %tobool108 = icmp ne %struct.dfst_node** %102, null
  br i1 %tobool108, label %if.then.109, label %if.end.113

if.then.109:                                      ; preds = %for.body.104
  %103 = load i32, i32* %i, align 4
  %idxprom110 = sext i32 %103 to i64
  %104 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %arrayidx111 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %104, i64 %idxprom110
  %node112 = getelementptr inbounds %struct.dfst_node, %struct.dfst_node* %arrayidx111, i32 0, i32 1
  %105 = load %struct.dfst_node**, %struct.dfst_node*** %node112, align 8
  %106 = bitcast %struct.dfst_node** %105 to i8*
  call void @free(i8* %106) #4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.109, %for.body.104
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %107 = load i32, i32* %i, align 4
  %inc115 = add nsw i32 %107, 1
  store i32 %inc115, i32* %i, align 4
  br label %for.cond.101

for.end.116:                                      ; preds = %for.cond.101
  %108 = load %struct.dfst_node*, %struct.dfst_node** %dfst, align 8
  %109 = bitcast %struct.dfst_node* %108 to i8*
  call void @free(i8* %109) #4
  ret void
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @general_operand(%struct.rtx_def*, i32) #1

declare zeroext i1 @ix86_function_value_regno_p(i32) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

declare void @remove_edge(%struct.edge_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
