; ModuleID = 'dominance.c'
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
%struct.dom_info = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.basic_block_def**, i32, i32 }

@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@.str = private unnamed_addr constant [12 x i8] c"dominance.c\00", align 1
@__FUNCTION__.calc_dfs_tree = private unnamed_addr constant [14 x i8] c"calc_dfs_tree\00", align 1
@__FUNCTION__.calc_dfs_tree_nonrec = private unnamed_addr constant [21 x i8] c"calc_dfs_tree_nonrec\00", align 1

; Function Attrs: nounwind uwtable
define void @calculate_dominance_info(i32* %idom, %struct.simple_bitmap_def** %doms, i32 %reverse) #0 {
entry:
  %idom.addr = alloca i32*, align 8
  %doms.addr = alloca %struct.simple_bitmap_def**, align 8
  %reverse.addr = alloca i32, align 4
  %di = alloca %struct.dom_info, align 8
  %i = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %d = alloca i32, align 4
  store i32* %idom, i32** %idom.addr, align 8
  store %struct.simple_bitmap_def** %doms, %struct.simple_bitmap_def*** %doms.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %doms.addr, align 8
  %tobool = icmp ne %struct.simple_bitmap_def** %0, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load i32*, i32** %idom.addr, align 8
  %tobool1 = icmp ne i32* %1, null
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  call void @init_dom_info(%struct.dom_info* %di)
  %2 = load i32, i32* %reverse.addr, align 4
  call void @calc_dfs_tree(%struct.dom_info* %di, i32 %2)
  %3 = load i32, i32* %reverse.addr, align 4
  call void @calc_idoms(%struct.dom_info* %di, i32 %3)
  %4 = load i32*, i32** %idom.addr, align 8
  %tobool2 = icmp ne i32* %4, null
  br i1 %tobool2, label %if.then.3, label %if.end.16

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %9, %struct.basic_block_def** %b, align 8
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %10, i32 0, i32 11
  %11 = load i32, i32* %index, align 4
  %idxprom4 = sext i32 %11 to i64
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i32 0, i32 9
  %12 = load i32*, i32** %dfs_order, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = zext i32 %13 to i64
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i32 0, i32 5
  %14 = load i32*, i32** %dom, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %14, i64 %idxprom6
  %15 = load i32, i32* %arrayidx7, align 4
  store i32 %15, i32* %d, align 4
  %16 = load i32, i32* %d, align 4
  %cmp8 = icmp ugt i32 %16, 1
  br i1 %cmp8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %for.body
  %17 = load i32, i32* %d, align 4
  %idxprom10 = zext i32 %17 to i64
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %di, i32 0, i32 10
  %18 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %arrayidx11 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %18, i64 %idxprom10
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  %index12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 11
  %20 = load i32, i32* %index12, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %21 to i64
  %22 = load i32*, i32** %idom.addr, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  store i32 %20, i32* %arrayidx14, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %24 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %doms.addr, align 8
  %tobool17 = icmp ne %struct.simple_bitmap_def** %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.16
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %doms.addr, align 8
  call void @idoms_to_doms(%struct.dom_info* %di, %struct.simple_bitmap_def** %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.16
  call void @free_dom_info(%struct.dom_info* %di)
  br label %return

return:                                           ; preds = %if.end.19, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_dom_info(%struct.dom_info* %di) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %i3 = alloca i32, align 4
  %i13 = alloca i32, align 4
  %i36 = alloca i32, align 4
  %i41 = alloca i32, align 4
  %i46 = alloca i32, align 4
  %i51 = alloca i32, align 4
  %i56 = alloca i32, align 4
  %i72 = alloca i32, align 4
  %i77 = alloca i32, align 4
  %i83 = alloca i32, align 4
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %0, 1
  %add1 = add nsw i32 %add, 1
  store i32 %add1, i32* %num, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  %1 = load i32, i32* %num, align 4
  %conv = zext i32 %1 to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %2 = bitcast i8* %call to i32*
  %3 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %3, i32 0, i32 0
  store i32* %2, i32** %dfs_parent, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  store i32 1, i32* %i3, align 4
  %4 = load i32, i32* %i3, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body.2
  %5 = load i32, i32* %num, align 4
  %conv4 = zext i32 %5 to i64
  %call5 = call noalias i8* @xcalloc(i64 %conv4, i64 4)
  %6 = bitcast i8* %call5 to i32*
  %7 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %7, i32 0, i32 2
  store i32* %6, i32** %path_min, align 8
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load i32, i32* %num, align 4
  %conv6 = zext i32 %8 to i64
  %mul = mul i64 %conv6, 4
  %call7 = call noalias i8* @xmalloc(i64 %mul)
  %9 = bitcast i8* %call7 to i32*
  %10 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min8 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %10, i32 0, i32 2
  store i32* %9, i32** %path_min8, align 8
  store i32 0, i32* %i3, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %11 = load i32, i32* %i3, align 4
  %12 = load i32, i32* %num, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i3, align 4
  %14 = load i32, i32* %i3, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min10 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %15, i32 0, i32 2
  %16 = load i32*, i32** %path_min10, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  store i32 %13, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i3, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i3, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  br label %do.end.11

do.end.11:                                        ; preds = %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  store i32 1, i32* %i13, align 4
  %18 = load i32, i32* %i13, align 4
  %tobool14 = icmp ne i32 %18, 0
  br i1 %tobool14, label %if.else.18, label %if.then.15

if.then.15:                                       ; preds = %do.body.12
  %19 = load i32, i32* %num, align 4
  %conv16 = zext i32 %19 to i64
  %call17 = call noalias i8* @xcalloc(i64 %conv16, i64 4)
  %20 = bitcast i8* %call17 to i32*
  %21 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %21, i32 0, i32 1
  store i32* %20, i32** %key, align 8
  br label %if.end.33

if.else.18:                                       ; preds = %do.body.12
  %22 = load i32, i32* %num, align 4
  %conv19 = zext i32 %22 to i64
  %mul20 = mul i64 %conv19, 4
  %call21 = call noalias i8* @xmalloc(i64 %mul20)
  %23 = bitcast i8* %call21 to i32*
  %24 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key22 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %24, i32 0, i32 1
  store i32* %23, i32** %key22, align 8
  store i32 0, i32* %i13, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %if.else.18
  %25 = load i32, i32* %i13, align 4
  %26 = load i32, i32* %num, align 4
  %cmp24 = icmp ult i32 %25, %26
  br i1 %cmp24, label %for.body.26, label %for.end.32

for.body.26:                                      ; preds = %for.cond.23
  %27 = load i32, i32* %i13, align 4
  %28 = load i32, i32* %i13, align 4
  %idxprom27 = zext i32 %28 to i64
  %29 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key28 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %29, i32 0, i32 1
  %30 = load i32*, i32** %key28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %30, i64 %idxprom27
  store i32 %27, i32* %arrayidx29, align 4
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.26
  %31 = load i32, i32* %i13, align 4
  %inc31 = add i32 %31, 1
  store i32 %inc31, i32* %i13, align 4
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  br label %if.end.33

if.end.33:                                        ; preds = %for.end.32, %if.then.15
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %do.body.35

do.body.35:                                       ; preds = %do.end.34
  store i32 1, i32* %i36, align 4
  %32 = load i32, i32* %num, align 4
  %conv37 = zext i32 %32 to i64
  %call38 = call noalias i8* @xcalloc(i64 %conv37, i64 4)
  %33 = bitcast i8* %call38 to i32*
  %34 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %34, i32 0, i32 5
  store i32* %33, i32** %dom, align 8
  br label %do.end.39

do.end.39:                                        ; preds = %do.body.35
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  store i32 1, i32* %i41, align 4
  %35 = load i32, i32* %num, align 4
  %conv42 = zext i32 %35 to i64
  %call43 = call noalias i8* @xcalloc(i64 %conv42, i64 4)
  %36 = bitcast i8* %call43 to i32*
  %37 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %37, i32 0, i32 3
  store i32* %36, i32** %bucket, align 8
  br label %do.end.44

do.end.44:                                        ; preds = %do.body.40
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  store i32 1, i32* %i46, align 4
  %38 = load i32, i32* %num, align 4
  %conv47 = zext i32 %38 to i64
  %call48 = call noalias i8* @xcalloc(i64 %conv47, i64 4)
  %39 = bitcast i8* %call48 to i32*
  %40 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %40, i32 0, i32 4
  store i32* %39, i32** %next_bucket, align 8
  br label %do.end.49

do.end.49:                                        ; preds = %do.body.45
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  store i32 1, i32* %i51, align 4
  %41 = load i32, i32* %num, align 4
  %conv52 = zext i32 %41 to i64
  %call53 = call noalias i8* @xcalloc(i64 %conv52, i64 4)
  %42 = bitcast i8* %call53 to i32*
  %43 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %43, i32 0, i32 6
  store i32* %42, i32** %set_chain, align 8
  br label %do.end.54

do.end.54:                                        ; preds = %do.body.50
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  store i32 1, i32* %i56, align 4
  %44 = load i32, i32* %num, align 4
  %conv57 = zext i32 %44 to i64
  %mul58 = mul i64 %conv57, 4
  %call59 = call noalias i8* @xmalloc(i64 %mul58)
  %45 = bitcast i8* %call59 to i32*
  %46 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %46, i32 0, i32 7
  store i32* %45, i32** %set_size, align 8
  store i32 0, i32* %i56, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.67, %do.body.55
  %47 = load i32, i32* %i56, align 4
  %48 = load i32, i32* %num, align 4
  %cmp61 = icmp ult i32 %47, %48
  br i1 %cmp61, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.60
  %49 = load i32, i32* %i56, align 4
  %idxprom64 = zext i32 %49 to i64
  %50 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size65 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %50, i32 0, i32 7
  %51 = load i32*, i32** %set_size65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %51, i64 %idxprom64
  store i32 1, i32* %arrayidx66, align 4
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.63
  %52 = load i32, i32* %i56, align 4
  %inc68 = add i32 %52, 1
  store i32 %inc68, i32* %i56, align 4
  br label %for.cond.60

for.end.69:                                       ; preds = %for.cond.60
  br label %do.end.70

do.end.70:                                        ; preds = %for.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  store i32 1, i32* %i72, align 4
  %53 = load i32, i32* %num, align 4
  %conv73 = zext i32 %53 to i64
  %call74 = call noalias i8* @xcalloc(i64 %conv73, i64 4)
  %54 = bitcast i8* %call74 to i32*
  %55 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %55, i32 0, i32 8
  store i32* %54, i32** %set_child, align 8
  br label %do.end.75

do.end.75:                                        ; preds = %do.body.71
  br label %do.body.76

do.body.76:                                       ; preds = %do.end.75
  store i32 1, i32* %i77, align 4
  %56 = load i32, i32* @n_basic_blocks, align 4
  %add78 = add i32 %56, 1
  %conv79 = zext i32 %add78 to i64
  %call80 = call noalias i8* @xcalloc(i64 %conv79, i64 4)
  %57 = bitcast i8* %call80 to i32*
  %58 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %58, i32 0, i32 9
  store i32* %57, i32** %dfs_order, align 8
  br label %do.end.81

do.end.81:                                        ; preds = %do.body.76
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  store i32 1, i32* %i83, align 4
  %59 = load i32, i32* %num, align 4
  %conv84 = zext i32 %59 to i64
  %call85 = call noalias i8* @xcalloc(i64 %conv84, i64 8)
  %60 = bitcast i8* %call85 to %struct.basic_block_def**
  %61 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %61, i32 0, i32 10
  store %struct.basic_block_def** %60, %struct.basic_block_def*** %dfs_to_bb, align 8
  br label %do.end.86

do.end.86:                                        ; preds = %do.body.82
  %62 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %62, i32 0, i32 11
  store i32 1, i32* %dfsnum, align 4
  %63 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %63, i32 0, i32 12
  store i32 0, i32* %nodes, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_dfs_tree(%struct.dom_info* %di, i32 %reverse) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %reverse.addr = alloca i32, align 4
  %begin = alloca %struct.basic_block_def*, align 8
  %i = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  %0 = load i32, i32* %reverse.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  store %struct.basic_block_def* %cond, %struct.basic_block_def** %begin, align 8
  %1 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %1, i32 0, i32 11
  %2 = load i32, i32* %dfsnum, align 4
  %3 = load i32, i32* @n_basic_blocks, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %4, i32 0, i32 9
  %5 = load i32*, i32** %dfs_order, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %begin, align 8
  %7 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum1 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %7, i32 0, i32 11
  %8 = load i32, i32* %dfsnum1, align 4
  %idxprom2 = zext i32 %8 to i64
  %9 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %9, i32 0, i32 10
  %10 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %arrayidx3 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %10, i64 %idxprom2
  store %struct.basic_block_def* %6, %struct.basic_block_def** %arrayidx3, align 8
  %11 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum4 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %11, i32 0, i32 11
  %12 = load i32, i32* %dfsnum4, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %dfsnum4, align 4
  %13 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %begin, align 8
  %15 = load i32, i32* %reverse.addr, align 4
  call void @calc_dfs_tree_nonrec(%struct.dom_info* %13, %struct.basic_block_def* %14, i32 %15)
  %16 = load i32, i32* %reverse.addr, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then, label %if.end.24

if.then:                                          ; preds = %entry
  %17 = load i32, i32* @n_basic_blocks, align 4
  %sub = sub nsw i32 %17, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %18, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx7 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom6
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx7, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %b, align 8
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 11
  %23 = load i32, i32* %index, align 4
  %idxprom8 = sext i32 %23 to i64
  %24 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order9 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %24, i32 0, i32 9
  %25 = load i32*, i32** %dfs_order9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %25, i64 %idxprom8
  %26 = load i32, i32* %arrayidx10, align 4
  %tobool11 = icmp ne i32 %26, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %27 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum13 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %27, i32 0, i32 11
  %28 = load i32, i32* %dfsnum13, align 4
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 11
  %30 = load i32, i32* %index14, align 4
  %idxprom15 = sext i32 %30 to i64
  %31 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order16 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %31, i32 0, i32 9
  %32 = load i32*, i32** %dfs_order16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %32, i64 %idxprom15
  store i32 %28, i32* %arrayidx17, align 4
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %34 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum18 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %34, i32 0, i32 11
  %35 = load i32, i32* %dfsnum18, align 4
  %idxprom19 = zext i32 %35 to i64
  %36 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb20 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %36, i32 0, i32 10
  %37 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb20, align 8
  %arrayidx21 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %37, i64 %idxprom19
  store %struct.basic_block_def* %33, %struct.basic_block_def** %arrayidx21, align 8
  %38 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum22 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %38, i32 0, i32 11
  %39 = load i32, i32* %dfsnum22, align 4
  %inc23 = add i32 %39, 1
  store i32 %inc23, i32* %dfsnum22, align 4
  %40 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %42 = load i32, i32* %reverse.addr, align 4
  call void @calc_dfs_tree_nonrec(%struct.dom_info* %40, %struct.basic_block_def* %41, i32 %42)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then.12
  %43 = load i32, i32* %i, align 4
  %dec = add nsw i32 %43, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %entry
  %44 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum25 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %44, i32 0, i32 11
  %45 = load i32, i32* %dfsnum25, align 4
  %sub26 = sub i32 %45, 1
  %46 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %46, i32 0, i32 12
  store i32 %sub26, i32* %nodes, align 4
  %47 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes27 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %47, i32 0, i32 12
  %48 = load i32, i32* %nodes27, align 4
  %49 = load i32, i32* @n_basic_blocks, align 4
  %add = add i32 %49, 1
  %cmp28 = icmp ne i32 %48, %add
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 344, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.calc_dfs_tree, i32 0, i32 0)) #5
  unreachable

if.end.30:                                        ; preds = %if.end.24
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @calc_idoms(%struct.dom_info* %di, i32 %reverse) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %reverse.addr = alloca i32, align 4
  %v = alloca i32, align 4
  %w = alloca i32, align 4
  %k = alloca i32, align 4
  %par = alloca i32, align 4
  %en_block = alloca %struct.basic_block_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %e_next = alloca %struct.edge_def*, align 8
  %k1 = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  %0 = load i32, i32* %reverse.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %en_block, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %en_block, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %1, i32 0, i32 12
  %2 = load i32, i32* %nodes, align 4
  store i32 %2, i32* %v, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.65, %if.end
  %3 = load i32, i32* %v, align 4
  %cmp = icmp ugt i32 %3, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i32, i32* %v, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %5, i32 0, i32 10
  %6 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %6, i64 %idxprom
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %7, %struct.basic_block_def** %bb, align 8
  %8 = load i32, i32* %v, align 4
  %idxprom1 = zext i32 %8 to i64
  %9 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %9, i32 0, i32 0
  %10 = load i32*, i32** %dfs_parent, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %10, i64 %idxprom1
  %11 = load i32, i32* %arrayidx2, align 4
  store i32 %11, i32* %par, align 4
  %12 = load i32, i32* %v, align 4
  store i32 %12, i32* %k, align 4
  %13 = load i32, i32* %reverse.addr, align 4
  %tobool3 = icmp ne i32 %13, 0
  br i1 %tobool3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %while.body
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 5
  %15 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %15, %struct.edge_def** %e, align 8
  br label %if.end.6

if.else.5:                                        ; preds = %while.body
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i32 0, i32 4
  %17 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool7 = icmp ne %struct.edge_def* %18, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %reverse.addr, align 4
  %tobool8 = icmp ne i32 %19, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %for.body
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 3
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %b, align 8
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 1
  %23 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %23, %struct.edge_def** %e_next, align 8
  br label %if.end.11

if.else.10:                                       ; preds = %for.body
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 2
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %25, %struct.basic_block_def** %b, align 8
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 0
  %27 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %27, %struct.edge_def** %e_next, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.10, %if.then.9
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %en_block, align 8
  %cmp12 = icmp eq %struct.basic_block_def* %28, %29
  br i1 %cmp12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %if.end.11
  %30 = load i32, i32* @n_basic_blocks, align 4
  %idxprom14 = sext i32 %30 to i64
  %31 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %31, i32 0, i32 9
  %32 = load i32*, i32** %dfs_order, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %32, i64 %idxprom14
  %33 = load i32, i32* %arrayidx15, align 4
  store i32 %33, i32* %k1, align 4
  br label %if.end.20

if.else.16:                                       ; preds = %if.end.11
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 11
  %35 = load i32, i32* %index, align 4
  %idxprom17 = sext i32 %35 to i64
  %36 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order18 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %36, i32 0, i32 9
  %37 = load i32*, i32** %dfs_order18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %37, i64 %idxprom17
  %38 = load i32, i32* %arrayidx19, align 4
  store i32 %38, i32* %k1, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.16, %if.then.13
  %39 = load i32, i32* %k1, align 4
  %40 = load i32, i32* %v, align 4
  %cmp21 = icmp ugt i32 %39, %40
  br i1 %cmp21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.20
  %41 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %42 = load i32, i32* %k1, align 4
  %call = call i32 @eval(%struct.dom_info* %41, i32 %42)
  %idxprom23 = zext i32 %call to i64
  %43 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %43, i32 0, i32 1
  %44 = load i32*, i32** %key, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %44, i64 %idxprom23
  %45 = load i32, i32* %arrayidx24, align 4
  store i32 %45, i32* %k1, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.20
  %46 = load i32, i32* %k1, align 4
  %47 = load i32, i32* %k, align 4
  %cmp26 = icmp ult i32 %46, %47
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.25
  %48 = load i32, i32* %k1, align 4
  store i32 %48, i32* %k, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %49 = load %struct.edge_def*, %struct.edge_def** %e_next, align 8
  store %struct.edge_def* %49, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load i32, i32* %k, align 4
  %51 = load i32, i32* %v, align 4
  %idxprom29 = zext i32 %51 to i64
  %52 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key30 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %52, i32 0, i32 1
  %53 = load i32*, i32** %key30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %53, i64 %idxprom29
  store i32 %50, i32* %arrayidx31, align 4
  %54 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %55 = load i32, i32* %par, align 4
  %56 = load i32, i32* %v, align 4
  call void @link_roots(%struct.dom_info* %54, i32 %55, i32 %56)
  %57 = load i32, i32* %k, align 4
  %idxprom32 = zext i32 %57 to i64
  %58 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %58, i32 0, i32 3
  %59 = load i32*, i32** %bucket, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %59, i64 %idxprom32
  %60 = load i32, i32* %arrayidx33, align 4
  %61 = load i32, i32* %v, align 4
  %idxprom34 = zext i32 %61 to i64
  %62 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %62, i32 0, i32 4
  %63 = load i32*, i32** %next_bucket, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %63, i64 %idxprom34
  store i32 %60, i32* %arrayidx35, align 4
  %64 = load i32, i32* %v, align 4
  %65 = load i32, i32* %k, align 4
  %idxprom36 = zext i32 %65 to i64
  %66 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket37 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %66, i32 0, i32 3
  %67 = load i32*, i32** %bucket37, align 8
  %arrayidx38 = getelementptr inbounds i32, i32* %67, i64 %idxprom36
  store i32 %64, i32* %arrayidx38, align 4
  %68 = load i32, i32* %par, align 4
  %idxprom39 = zext i32 %68 to i64
  %69 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket40 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %69, i32 0, i32 3
  %70 = load i32*, i32** %bucket40, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %70, i64 %idxprom39
  %71 = load i32, i32* %arrayidx41, align 4
  store i32 %71, i32* %w, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.61, %for.end
  %72 = load i32, i32* %w, align 4
  %tobool43 = icmp ne i32 %72, 0
  br i1 %tobool43, label %for.body.44, label %for.end.65

for.body.44:                                      ; preds = %for.cond.42
  %73 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %74 = load i32, i32* %w, align 4
  %call45 = call i32 @eval(%struct.dom_info* %73, i32 %74)
  store i32 %call45, i32* %k, align 4
  %75 = load i32, i32* %k, align 4
  %idxprom46 = zext i32 %75 to i64
  %76 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key47 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %76, i32 0, i32 1
  %77 = load i32*, i32** %key47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %77, i64 %idxprom46
  %78 = load i32, i32* %arrayidx48, align 4
  %79 = load i32, i32* %w, align 4
  %idxprom49 = zext i32 %79 to i64
  %80 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key50 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %80, i32 0, i32 1
  %81 = load i32*, i32** %key50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %81, i64 %idxprom49
  %82 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp ult i32 %78, %82
  br i1 %cmp52, label %if.then.53, label %if.else.56

if.then.53:                                       ; preds = %for.body.44
  %83 = load i32, i32* %k, align 4
  %84 = load i32, i32* %w, align 4
  %idxprom54 = zext i32 %84 to i64
  %85 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %85, i32 0, i32 5
  %86 = load i32*, i32** %dom, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %86, i64 %idxprom54
  store i32 %83, i32* %arrayidx55, align 4
  br label %if.end.60

if.else.56:                                       ; preds = %for.body.44
  %87 = load i32, i32* %par, align 4
  %88 = load i32, i32* %w, align 4
  %idxprom57 = zext i32 %88 to i64
  %89 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom58 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %89, i32 0, i32 5
  %90 = load i32*, i32** %dom58, align 8
  %arrayidx59 = getelementptr inbounds i32, i32* %90, i64 %idxprom57
  store i32 %87, i32* %arrayidx59, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.56, %if.then.53
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %91 = load i32, i32* %w, align 4
  %idxprom62 = zext i32 %91 to i64
  %92 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %next_bucket63 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %92, i32 0, i32 4
  %93 = load i32*, i32** %next_bucket63, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %93, i64 %idxprom62
  %94 = load i32, i32* %arrayidx64, align 4
  store i32 %94, i32* %w, align 4
  br label %for.cond.42

for.end.65:                                       ; preds = %for.cond.42
  %95 = load i32, i32* %par, align 4
  %idxprom66 = zext i32 %95 to i64
  %96 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket67 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %96, i32 0, i32 3
  %97 = load i32*, i32** %bucket67, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %97, i64 %idxprom66
  store i32 0, i32* %arrayidx68, align 4
  %98 = load i32, i32* %v, align 4
  %dec = add i32 %98, -1
  store i32 %dec, i32* %v, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %99 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom69 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %99, i32 0, i32 5
  %100 = load i32*, i32** %dom69, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 0, i32* %arrayidx70, align 4
  store i32 2, i32* %v, align 4
  br label %for.cond.71

for.cond.71:                                      ; preds = %for.inc.93, %while.end
  %101 = load i32, i32* %v, align 4
  %102 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes72 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %102, i32 0, i32 12
  %103 = load i32, i32* %nodes72, align 4
  %cmp73 = icmp ule i32 %101, %103
  br i1 %cmp73, label %for.body.74, label %for.end.94

for.body.74:                                      ; preds = %for.cond.71
  %104 = load i32, i32* %v, align 4
  %idxprom75 = zext i32 %104 to i64
  %105 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom76 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %105, i32 0, i32 5
  %106 = load i32*, i32** %dom76, align 8
  %arrayidx77 = getelementptr inbounds i32, i32* %106, i64 %idxprom75
  %107 = load i32, i32* %arrayidx77, align 4
  %108 = load i32, i32* %v, align 4
  %idxprom78 = zext i32 %108 to i64
  %109 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key79 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %109, i32 0, i32 1
  %110 = load i32*, i32** %key79, align 8
  %arrayidx80 = getelementptr inbounds i32, i32* %110, i64 %idxprom78
  %111 = load i32, i32* %arrayidx80, align 4
  %cmp81 = icmp ne i32 %107, %111
  br i1 %cmp81, label %if.then.82, label %if.end.92

if.then.82:                                       ; preds = %for.body.74
  %112 = load i32, i32* %v, align 4
  %idxprom83 = zext i32 %112 to i64
  %113 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom84 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %113, i32 0, i32 5
  %114 = load i32*, i32** %dom84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %114, i64 %idxprom83
  %115 = load i32, i32* %arrayidx85, align 4
  %idxprom86 = zext i32 %115 to i64
  %116 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom87 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %116, i32 0, i32 5
  %117 = load i32*, i32** %dom87, align 8
  %arrayidx88 = getelementptr inbounds i32, i32* %117, i64 %idxprom86
  %118 = load i32, i32* %arrayidx88, align 4
  %119 = load i32, i32* %v, align 4
  %idxprom89 = zext i32 %119 to i64
  %120 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom90 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %120, i32 0, i32 5
  %121 = load i32*, i32** %dom90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %121, i64 %idxprom89
  store i32 %118, i32* %arrayidx91, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.82, %for.body.74
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %122 = load i32, i32* %v, align 4
  %inc = add i32 %122, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond.71

for.end.94:                                       ; preds = %for.cond.71
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @idoms_to_doms(%struct.dom_info* %di, %struct.simple_bitmap_def** %dominators) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %dominators.addr = alloca %struct.simple_bitmap_def**, align 8
  %i = alloca i32, align 4
  %e_index = alloca i32, align 4
  %bb = alloca i32, align 4
  %bb_idom = alloca i32, align 4
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store %struct.simple_bitmap_def** %dominators, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %1 = load i32, i32* @n_basic_blocks, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %0, i32 %1)
  %2 = load i32, i32* @n_basic_blocks, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %3, i32 0, i32 9
  %4 = load i32*, i32** %dfs_order, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %e_index, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %nodes = getelementptr inbounds %struct.dom_info, %struct.dom_info* %7, i32 0, i32 12
  %8 = load i32, i32* %nodes, align 4
  %cmp = icmp ule i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %e_index, align 4
  %cmp1 = icmp eq i32 %9, %10
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %11 to i64
  %12 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %12, i32 0, i32 10
  %13 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %arrayidx3 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %13, i64 %idxprom2
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx3, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i32 0, i32 11
  %15 = load i32, i32* %index, align 4
  store i32 %15, i32* %bb, align 4
  %16 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %16 to i64
  %17 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %17, i32 0, i32 5
  %18 = load i32*, i32** %dom, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %18, i64 %idxprom4
  %19 = load i32, i32* %arrayidx5, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %idxprom6 = zext i32 %20 to i64
  %21 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom7 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %21, i32 0, i32 5
  %22 = load i32*, i32** %dom7, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %22, i64 %idxprom6
  %23 = load i32, i32* %arrayidx8, align 4
  %24 = load i32, i32* %e_index, align 4
  %cmp9 = icmp ne i32 %23, %24
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true
  %25 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %25 to i64
  %26 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom12 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %26, i32 0, i32 5
  %27 = load i32*, i32** %dom12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %27, i64 %idxprom11
  %28 = load i32, i32* %arrayidx13, align 4
  %idxprom14 = zext i32 %28 to i64
  %29 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb15 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %29, i32 0, i32 10
  %30 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb15, align 8
  %arrayidx16 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %30, i64 %idxprom14
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx16, align 8
  %index17 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index17, align 4
  store i32 %32, i32* %bb_idom, align 4
  %33 = load i32, i32* %bb, align 4
  %idxprom18 = sext i32 %33 to i64
  %34 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %arrayidx19 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %34, i64 %idxprom18
  %35 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx19, align 8
  %36 = load i32, i32* %bb_idom, align 4
  %idxprom20 = sext i32 %36 to i64
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %37, i64 %idxprom20
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx21, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %35, %struct.simple_bitmap_def* %38)
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true, %if.end
  %39 = load i32, i32* %i, align 4
  %idxprom22 = zext i32 %39 to i64
  %40 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom23 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %40, i32 0, i32 5
  %41 = load i32*, i32** %dom23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %41, i64 %idxprom22
  %42 = load i32, i32* %arrayidx24, align 4
  %tobool25 = icmp ne i32 %42, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %if.else
  %43 = load i32, i32* %bb, align 4
  %idxprom27 = sext i32 %43 to i64
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %44, i64 %idxprom27
  %45 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx28, align 8
  call void @sbitmap_ones(%struct.simple_bitmap_def* %45)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.else
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.10
  %46 = load i32, i32* %bb, align 4
  %rem = urem i32 %46, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %47 = load i32, i32* %bb, align 4
  %div = udiv i32 %47, 64
  %idxprom31 = zext i32 %div to i64
  %48 = load i32, i32* %bb, align 4
  %idxprom32 = sext i32 %48 to i64
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dominators.addr, align 8
  %arrayidx33 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %49, i64 %idxprom32
  %50 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx33, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %50, i32 0, i32 3
  %arrayidx34 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom31
  %51 = load i64, i64* %arrayidx34, align 8
  %or = or i64 %51, %shl
  store i64 %or, i64* %arrayidx34, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.30, %if.then
  %52 = load i32, i32* %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @free_dom_info(%struct.dom_info* %di) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  %0 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %0, i32 0, i32 0
  %1 = load i32*, i32** %dfs_parent, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #6
  %3 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %3, i32 0, i32 2
  %4 = load i32*, i32** %path_min, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #6
  %6 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %6, i32 0, i32 1
  %7 = load i32*, i32** %key, align 8
  %8 = bitcast i32* %7 to i8*
  call void @free(i8* %8) #6
  %9 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dom = getelementptr inbounds %struct.dom_info, %struct.dom_info* %9, i32 0, i32 5
  %10 = load i32*, i32** %dom, align 8
  %11 = bitcast i32* %10 to i8*
  call void @free(i8* %11) #6
  %12 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %12, i32 0, i32 3
  %13 = load i32*, i32** %bucket, align 8
  %14 = bitcast i32* %13 to i8*
  call void @free(i8* %14) #6
  %15 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %next_bucket = getelementptr inbounds %struct.dom_info, %struct.dom_info* %15, i32 0, i32 4
  %16 = load i32*, i32** %next_bucket, align 8
  %17 = bitcast i32* %16 to i8*
  call void @free(i8* %17) #6
  %18 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %18, i32 0, i32 6
  %19 = load i32*, i32** %set_chain, align 8
  %20 = bitcast i32* %19 to i8*
  call void @free(i8* %20) #6
  %21 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %21, i32 0, i32 7
  %22 = load i32*, i32** %set_size, align 8
  %23 = bitcast i32* %22 to i8*
  call void @free(i8* %23) #6
  %24 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %24, i32 0, i32 8
  %25 = load i32*, i32** %set_child, align 8
  %26 = bitcast i32* %25 to i8*
  call void @free(i8* %26) #6
  %27 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %27, i32 0, i32 9
  %28 = load i32*, i32** %dfs_order, align 8
  %29 = bitcast i32* %28 to i8*
  call void @free(i8* %29) #6
  %30 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %30, i32 0, i32 10
  %31 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %32 = bitcast %struct.basic_block_def** %31 to i8*
  call void @free(i8* %32) #6
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define internal void @calc_dfs_tree_nonrec(%struct.dom_info* %di, %struct.basic_block_def* %bb, i32 %reverse) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %reverse.addr = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %child_i = alloca i32, align 4
  %my_i = alloca i32, align 4
  %stack = alloca %struct.edge_def**, align 8
  %sp = alloca i32, align 4
  %en_block = alloca %struct.basic_block_def*, align 8
  %ex_block = alloca %struct.basic_block_def*, align 8
  %bn = alloca %struct.basic_block_def*, align 8
  %e_next = alloca %struct.edge_def*, align 8
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 %reverse, i32* %reverse.addr, align 4
  store i32 0, i32* %my_i, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %add = add nsw i32 %0, 3
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.edge_def**
  store %struct.edge_def** %1, %struct.edge_def*** %stack, align 8
  store i32 0, i32* %sp, align 4
  %2 = load i32, i32* %reverse.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 4
  %4 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %4, %struct.edge_def** %e, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %en_block, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %ex_block, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 5
  %6 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %6, %struct.edge_def** %e, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0), %struct.basic_block_def** %en_block, align 8
  store %struct.basic_block_def* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1), %struct.basic_block_def** %ex_block, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.body

while.body:                                       ; preds = %if.end, %if.end.63
  br label %while.cond.1

while.cond.1:                                     ; preds = %if.end.41, %if.then.21, %if.then.8, %while.body
  %7 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool2 = icmp ne %struct.edge_def* %7, null
  br i1 %tobool2, label %while.body.3, label %while.end

while.body.3:                                     ; preds = %while.cond.1
  %8 = load i32, i32* %reverse.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.else.11

if.then.5:                                        ; preds = %while.body.3
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 2
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  store %struct.basic_block_def* %10, %struct.basic_block_def** %bn, align 8
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %ex_block, align 8
  %cmp = icmp eq %struct.basic_block_def* %11, %12
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.5
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order = getelementptr inbounds %struct.dom_info, %struct.dom_info* %15, i32 0, i32 9
  %16 = load i32*, i32** %dfs_order, align 8
  %arrayidx = getelementptr inbounds i32, i32* %16, i64 %idxprom
  %17 = load i32, i32* %arrayidx, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false, %if.then.5
  %18 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %18, i32 0, i32 0
  %19 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %19, %struct.edge_def** %e, align 8
  br label %while.cond.1

if.end.9:                                         ; preds = %lor.lhs.false
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i32 0, i32 3
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %bb.addr, align 8
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %pred10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %22, i32 0, i32 4
  %23 = load %struct.edge_def*, %struct.edge_def** %pred10, align 8
  store %struct.edge_def* %23, %struct.edge_def** %e_next, align 8
  br label %if.end.25

if.else.11:                                       ; preds = %while.body.3
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest12 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 3
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %dest12, align 8
  store %struct.basic_block_def* %25, %struct.basic_block_def** %bn, align 8
  %26 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %ex_block, align 8
  %cmp13 = icmp eq %struct.basic_block_def* %26, %27
  br i1 %cmp13, label %if.then.21, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.else.11
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %index16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 11
  %29 = load i32, i32* %index16, align 4
  %idxprom17 = sext i32 %29 to i64
  %30 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order18 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %30, i32 0, i32 9
  %31 = load i32*, i32** %dfs_order18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %31, i64 %idxprom17
  %32 = load i32, i32* %arrayidx19, align 4
  %tobool20 = icmp ne i32 %32, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %lor.lhs.false.15, %if.else.11
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 1
  %34 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %34, %struct.edge_def** %e, align 8
  br label %while.cond.1

if.end.22:                                        ; preds = %lor.lhs.false.15
  %35 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %35, i32 0, i32 2
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %src23, align 8
  store %struct.basic_block_def* %36, %struct.basic_block_def** %bb.addr, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %succ24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 5
  %38 = load %struct.edge_def*, %struct.edge_def** %succ24, align 8
  store %struct.edge_def* %38, %struct.edge_def** %e_next, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.22, %if.end.9
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %en_block, align 8
  %cmp26 = icmp eq %struct.basic_block_def* %39, %40
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  call void @fancy_abort(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 266, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.calc_dfs_tree_nonrec, i32 0, i32 0)) #5
  unreachable

if.end.29:                                        ; preds = %if.end.25
  %41 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %en_block, align 8
  %cmp30 = icmp ne %struct.basic_block_def* %41, %42
  br i1 %cmp30, label %if.then.32, label %if.else.37

if.then.32:                                       ; preds = %if.end.29
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 11
  %44 = load i32, i32* %index33, align 4
  %idxprom34 = sext i32 %44 to i64
  %45 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order35 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %45, i32 0, i32 9
  %46 = load i32*, i32** %dfs_order35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %46, i64 %idxprom34
  %47 = load i32, i32* %arrayidx36, align 4
  store i32 %47, i32* %my_i, align 4
  br label %if.end.41

if.else.37:                                       ; preds = %if.end.29
  %48 = load i32, i32* @n_basic_blocks, align 4
  %idxprom38 = sext i32 %48 to i64
  %49 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order39 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %49, i32 0, i32 9
  %50 = load i32*, i32** %dfs_order39, align 8
  %arrayidx40 = getelementptr inbounds i32, i32* %50, i64 %idxprom38
  %51 = load i32, i32* %arrayidx40, align 4
  store i32 %51, i32* %my_i, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.37, %if.then.32
  %52 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfsnum = getelementptr inbounds %struct.dom_info, %struct.dom_info* %52, i32 0, i32 11
  %53 = load i32, i32* %dfsnum, align 4
  %inc = add i32 %53, 1
  store i32 %inc, i32* %dfsnum, align 4
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %index42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %54, i32 0, i32 11
  %55 = load i32, i32* %index42, align 4
  %idxprom43 = sext i32 %55 to i64
  %56 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_order44 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %56, i32 0, i32 9
  %57 = load i32*, i32** %dfs_order44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %57, i64 %idxprom43
  store i32 %53, i32* %arrayidx45, align 4
  store i32 %53, i32* %child_i, align 4
  %58 = load %struct.basic_block_def*, %struct.basic_block_def** %bn, align 8
  %59 = load i32, i32* %child_i, align 4
  %idxprom46 = zext i32 %59 to i64
  %60 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_to_bb = getelementptr inbounds %struct.dom_info, %struct.dom_info* %60, i32 0, i32 10
  %61 = load %struct.basic_block_def**, %struct.basic_block_def*** %dfs_to_bb, align 8
  %arrayidx47 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %61, i64 %idxprom46
  store %struct.basic_block_def* %58, %struct.basic_block_def** %arrayidx47, align 8
  %62 = load i32, i32* %my_i, align 4
  %63 = load i32, i32* %child_i, align 4
  %idxprom48 = zext i32 %63 to i64
  %64 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %dfs_parent = getelementptr inbounds %struct.dom_info, %struct.dom_info* %64, i32 0, i32 0
  %65 = load i32*, i32** %dfs_parent, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %65, i64 %idxprom48
  store i32 %62, i32* %arrayidx49, align 4
  %66 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %67 = load i32, i32* %sp, align 4
  %inc50 = add nsw i32 %67, 1
  store i32 %inc50, i32* %sp, align 4
  %idxprom51 = sext i32 %67 to i64
  %68 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx52 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %68, i64 %idxprom51
  store %struct.edge_def* %66, %struct.edge_def** %arrayidx52, align 8
  %69 = load %struct.edge_def*, %struct.edge_def** %e_next, align 8
  store %struct.edge_def* %69, %struct.edge_def** %e, align 8
  br label %while.cond.1

while.end:                                        ; preds = %while.cond.1
  %70 = load i32, i32* %sp, align 4
  %tobool53 = icmp ne i32 %70, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %while.end
  br label %while.end.64

if.end.55:                                        ; preds = %while.end
  %71 = load i32, i32* %sp, align 4
  %dec = add nsw i32 %71, -1
  store i32 %dec, i32* %sp, align 4
  %idxprom56 = sext i32 %dec to i64
  %72 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %arrayidx57 = getelementptr inbounds %struct.edge_def*, %struct.edge_def** %72, i64 %idxprom56
  %73 = load %struct.edge_def*, %struct.edge_def** %arrayidx57, align 8
  store %struct.edge_def* %73, %struct.edge_def** %e, align 8
  %74 = load i32, i32* %reverse.addr, align 4
  %tobool58 = icmp ne i32 %74, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.end.55
  %75 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next60 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %75, i32 0, i32 0
  %76 = load %struct.edge_def*, %struct.edge_def** %pred_next60, align 8
  store %struct.edge_def* %76, %struct.edge_def** %e, align 8
  br label %if.end.63

if.else.61:                                       ; preds = %if.end.55
  %77 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next62 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %77, i32 0, i32 1
  %78 = load %struct.edge_def*, %struct.edge_def** %succ_next62, align 8
  store %struct.edge_def* %78, %struct.edge_def** %e, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.59
  br label %while.body

while.end.64:                                     ; preds = %if.then.54
  %79 = load %struct.edge_def**, %struct.edge_def*** %stack, align 8
  %80 = bitcast %struct.edge_def** %79 to i8*
  call void @free(i8* %80) #6
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @eval(%struct.dom_info* %di, i32 %v) #4 {
entry:
  %retval = alloca i32, align 4
  %di.addr = alloca %struct.dom_info*, align 8
  %v.addr = alloca i32, align 4
  %rep = alloca i32, align 4
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %1, i32 0, i32 6
  %2 = load i32*, i32** %set_chain, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %rep, align 4
  %4 = load i32, i32* %rep, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %v.addr, align 4
  %idxprom1 = zext i32 %5 to i64
  %6 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %6, i32 0, i32 2
  %7 = load i32*, i32** %path_min, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %7, i64 %idxprom1
  %8 = load i32, i32* %arrayidx2, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %rep, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain4 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %10, i32 0, i32 6
  %11 = load i32*, i32** %set_chain4, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %11, i64 %idxprom3
  %12 = load i32, i32* %arrayidx5, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  %13 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %14 = load i32, i32* %v.addr, align 4
  call void @compress(%struct.dom_info* %13, i32 %14)
  %15 = load i32, i32* %v.addr, align 4
  %idxprom8 = zext i32 %15 to i64
  %16 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain9 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %16, i32 0, i32 6
  %17 = load i32*, i32** %set_chain9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %17, i64 %idxprom8
  %18 = load i32, i32* %arrayidx10, align 4
  store i32 %18, i32* %rep, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.end
  %19 = load i32, i32* %rep, align 4
  %idxprom12 = zext i32 %19 to i64
  %20 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min13 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %20, i32 0, i32 2
  %21 = load i32*, i32** %path_min13, align 8
  %arrayidx14 = getelementptr inbounds i32, i32* %21, i64 %idxprom12
  %22 = load i32, i32* %arrayidx14, align 4
  %idxprom15 = zext i32 %22 to i64
  %23 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %23, i32 0, i32 1
  %24 = load i32*, i32** %key, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4
  %26 = load i32, i32* %v.addr, align 4
  %idxprom17 = zext i32 %26 to i64
  %27 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min18 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %27, i32 0, i32 2
  %28 = load i32*, i32** %path_min18, align 8
  %arrayidx19 = getelementptr inbounds i32, i32* %28, i64 %idxprom17
  %29 = load i32, i32* %arrayidx19, align 4
  %idxprom20 = zext i32 %29 to i64
  %30 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key21 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %30, i32 0, i32 1
  %31 = load i32*, i32** %key21, align 8
  %arrayidx22 = getelementptr inbounds i32, i32* %31, i64 %idxprom20
  %32 = load i32, i32* %arrayidx22, align 4
  %cmp = icmp uge i32 %25, %32
  br i1 %cmp, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %if.end.11
  %33 = load i32, i32* %v.addr, align 4
  %idxprom24 = zext i32 %33 to i64
  %34 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min25 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %34, i32 0, i32 2
  %35 = load i32*, i32** %path_min25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %35, i64 %idxprom24
  %36 = load i32, i32* %arrayidx26, align 4
  store i32 %36, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.11
  %37 = load i32, i32* %rep, align 4
  %idxprom27 = zext i32 %37 to i64
  %38 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min28 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %38, i32 0, i32 2
  %39 = load i32*, i32** %path_min28, align 8
  %arrayidx29 = getelementptr inbounds i32, i32* %39, i64 %idxprom27
  %40 = load i32, i32* %arrayidx29, align 4
  store i32 %40, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.23, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal void @link_roots(%struct.dom_info* %di, i32 %v, i32 %w) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %v.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %s = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  %0 = load i32, i32* %w.addr, align 4
  store i32 %0, i32* %s, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %w.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %2, i32 0, i32 2
  %3 = load i32*, i32** %path_min, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %5, i32 0, i32 1
  %6 = load i32*, i32** %key, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %8 = load i32, i32* %s, align 4
  %idxprom3 = zext i32 %8 to i64
  %9 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child = getelementptr inbounds %struct.dom_info, %struct.dom_info* %9, i32 0, i32 8
  %10 = load i32*, i32** %set_child, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %10, i64 %idxprom3
  %11 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = zext i32 %11 to i64
  %12 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min6 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %12, i32 0, i32 2
  %13 = load i32*, i32** %path_min6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom5
  %14 = load i32, i32* %arrayidx7, align 4
  %idxprom8 = zext i32 %14 to i64
  %15 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key9 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %15, i32 0, i32 1
  %16 = load i32*, i32** %key9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %16, i64 %idxprom8
  %17 = load i32, i32* %arrayidx10, align 4
  %cmp = icmp ult i32 %7, %17
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load i32, i32* %s, align 4
  %idxprom11 = zext i32 %18 to i64
  %19 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size = getelementptr inbounds %struct.dom_info, %struct.dom_info* %19, i32 0, i32 7
  %20 = load i32*, i32** %set_size, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %20, i64 %idxprom11
  %21 = load i32, i32* %arrayidx12, align 4
  %22 = load i32, i32* %s, align 4
  %idxprom13 = zext i32 %22 to i64
  %23 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child14 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %23, i32 0, i32 8
  %24 = load i32*, i32** %set_child14, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %24, i64 %idxprom13
  %25 = load i32, i32* %arrayidx15, align 4
  %idxprom16 = zext i32 %25 to i64
  %26 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child17 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %26, i32 0, i32 8
  %27 = load i32*, i32** %set_child17, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %27, i64 %idxprom16
  %28 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = zext i32 %28 to i64
  %29 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size20 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %29, i32 0, i32 7
  %30 = load i32*, i32** %set_size20, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %30, i64 %idxprom19
  %31 = load i32, i32* %arrayidx21, align 4
  %add = add i32 %21, %31
  %32 = load i32, i32* %s, align 4
  %idxprom22 = zext i32 %32 to i64
  %33 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child23 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %33, i32 0, i32 8
  %34 = load i32*, i32** %set_child23, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %34, i64 %idxprom22
  %35 = load i32, i32* %arrayidx24, align 4
  %idxprom25 = zext i32 %35 to i64
  %36 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size26 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %36, i32 0, i32 7
  %37 = load i32*, i32** %set_size26, align 8
  %arrayidx27 = getelementptr inbounds i32, i32* %37, i64 %idxprom25
  %38 = load i32, i32* %arrayidx27, align 4
  %mul = mul i32 2, %38
  %cmp28 = icmp uge i32 %add, %mul
  br i1 %cmp28, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %39 = load i32, i32* %s, align 4
  %40 = load i32, i32* %s, align 4
  %idxprom29 = zext i32 %40 to i64
  %41 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child30 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %41, i32 0, i32 8
  %42 = load i32*, i32** %set_child30, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %42, i64 %idxprom29
  %43 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = zext i32 %43 to i64
  %44 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %44, i32 0, i32 6
  %45 = load i32*, i32** %set_chain, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %45, i64 %idxprom32
  store i32 %39, i32* %arrayidx33, align 4
  %46 = load i32, i32* %s, align 4
  %idxprom34 = zext i32 %46 to i64
  %47 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child35 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %47, i32 0, i32 8
  %48 = load i32*, i32** %set_child35, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %48, i64 %idxprom34
  %49 = load i32, i32* %arrayidx36, align 4
  %idxprom37 = zext i32 %49 to i64
  %50 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child38 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %50, i32 0, i32 8
  %51 = load i32*, i32** %set_child38, align 8
  %arrayidx39 = getelementptr inbounds i32, i32* %51, i64 %idxprom37
  %52 = load i32, i32* %arrayidx39, align 4
  %53 = load i32, i32* %s, align 4
  %idxprom40 = zext i32 %53 to i64
  %54 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child41 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %54, i32 0, i32 8
  %55 = load i32*, i32** %set_child41, align 8
  %arrayidx42 = getelementptr inbounds i32, i32* %55, i64 %idxprom40
  store i32 %52, i32* %arrayidx42, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %56 = load i32, i32* %s, align 4
  %idxprom43 = zext i32 %56 to i64
  %57 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size44 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %57, i32 0, i32 7
  %58 = load i32*, i32** %set_size44, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %58, i64 %idxprom43
  %59 = load i32, i32* %arrayidx45, align 4
  %60 = load i32, i32* %s, align 4
  %idxprom46 = zext i32 %60 to i64
  %61 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child47 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %61, i32 0, i32 8
  %62 = load i32*, i32** %set_child47, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %62, i64 %idxprom46
  %63 = load i32, i32* %arrayidx48, align 4
  %idxprom49 = zext i32 %63 to i64
  %64 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size50 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %64, i32 0, i32 7
  %65 = load i32*, i32** %set_size50, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %65, i64 %idxprom49
  store i32 %59, i32* %arrayidx51, align 4
  %66 = load i32, i32* %s, align 4
  %idxprom52 = zext i32 %66 to i64
  %67 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child53 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %67, i32 0, i32 8
  %68 = load i32*, i32** %set_child53, align 8
  %arrayidx54 = getelementptr inbounds i32, i32* %68, i64 %idxprom52
  %69 = load i32, i32* %arrayidx54, align 4
  %70 = load i32, i32* %s, align 4
  %idxprom55 = zext i32 %70 to i64
  %71 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain56 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %71, i32 0, i32 6
  %72 = load i32*, i32** %set_chain56, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %72, i64 %idxprom55
  store i32 %69, i32* %arrayidx57, align 4
  store i32 %69, i32* %s, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %73 = load i32, i32* %w.addr, align 4
  %idxprom58 = zext i32 %73 to i64
  %74 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min59 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %74, i32 0, i32 2
  %75 = load i32*, i32** %path_min59, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %75, i64 %idxprom58
  %76 = load i32, i32* %arrayidx60, align 4
  %77 = load i32, i32* %s, align 4
  %idxprom61 = zext i32 %77 to i64
  %78 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min62 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %78, i32 0, i32 2
  %79 = load i32*, i32** %path_min62, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %79, i64 %idxprom61
  store i32 %76, i32* %arrayidx63, align 4
  %80 = load i32, i32* %w.addr, align 4
  %idxprom64 = zext i32 %80 to i64
  %81 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size65 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %81, i32 0, i32 7
  %82 = load i32*, i32** %set_size65, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %82, i64 %idxprom64
  %83 = load i32, i32* %arrayidx66, align 4
  %84 = load i32, i32* %v.addr, align 4
  %idxprom67 = zext i32 %84 to i64
  %85 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size68 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %85, i32 0, i32 7
  %86 = load i32*, i32** %set_size68, align 8
  %arrayidx69 = getelementptr inbounds i32, i32* %86, i64 %idxprom67
  %87 = load i32, i32* %arrayidx69, align 4
  %add70 = add i32 %87, %83
  store i32 %add70, i32* %arrayidx69, align 4
  %88 = load i32, i32* %v.addr, align 4
  %idxprom71 = zext i32 %88 to i64
  %89 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size72 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %89, i32 0, i32 7
  %90 = load i32*, i32** %set_size72, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %90, i64 %idxprom71
  %91 = load i32, i32* %arrayidx73, align 4
  %92 = load i32, i32* %w.addr, align 4
  %idxprom74 = zext i32 %92 to i64
  %93 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_size75 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %93, i32 0, i32 7
  %94 = load i32*, i32** %set_size75, align 8
  %arrayidx76 = getelementptr inbounds i32, i32* %94, i64 %idxprom74
  %95 = load i32, i32* %arrayidx76, align 4
  %mul77 = mul i32 2, %95
  %cmp78 = icmp ult i32 %91, %mul77
  br i1 %cmp78, label %if.then.79, label %if.end.86

if.then.79:                                       ; preds = %while.end
  %96 = load i32, i32* %s, align 4
  store i32 %96, i32* %tmp, align 4
  %97 = load i32, i32* %v.addr, align 4
  %idxprom80 = zext i32 %97 to i64
  %98 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child81 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %98, i32 0, i32 8
  %99 = load i32*, i32** %set_child81, align 8
  %arrayidx82 = getelementptr inbounds i32, i32* %99, i64 %idxprom80
  %100 = load i32, i32* %arrayidx82, align 4
  store i32 %100, i32* %s, align 4
  %101 = load i32, i32* %tmp, align 4
  %102 = load i32, i32* %v.addr, align 4
  %idxprom83 = zext i32 %102 to i64
  %103 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child84 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %103, i32 0, i32 8
  %104 = load i32*, i32** %set_child84, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %104, i64 %idxprom83
  store i32 %101, i32* %arrayidx85, align 4
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.79, %while.end
  br label %while.cond.87

while.cond.87:                                    ; preds = %while.body.88, %if.end.86
  %105 = load i32, i32* %s, align 4
  %tobool = icmp ne i32 %105, 0
  br i1 %tobool, label %while.body.88, label %while.end.95

while.body.88:                                    ; preds = %while.cond.87
  %106 = load i32, i32* %v.addr, align 4
  %107 = load i32, i32* %s, align 4
  %idxprom89 = zext i32 %107 to i64
  %108 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain90 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %108, i32 0, i32 6
  %109 = load i32*, i32** %set_chain90, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %109, i64 %idxprom89
  store i32 %106, i32* %arrayidx91, align 4
  %110 = load i32, i32* %s, align 4
  %idxprom92 = zext i32 %110 to i64
  %111 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_child93 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %111, i32 0, i32 8
  %112 = load i32*, i32** %set_child93, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %112, i64 %idxprom92
  %113 = load i32, i32* %arrayidx94, align 4
  store i32 %113, i32* %s, align 4
  br label %while.cond.87

while.end.95:                                     ; preds = %while.cond.87
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compress(%struct.dom_info* %di, i32 %v) #0 {
entry:
  %di.addr = alloca %struct.dom_info*, align 8
  %v.addr = alloca i32, align 4
  %parent = alloca i32, align 4
  store %struct.dom_info* %di, %struct.dom_info** %di.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  %0 = load i32, i32* %v.addr, align 4
  %idxprom = zext i32 %0 to i64
  %1 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain = getelementptr inbounds %struct.dom_info, %struct.dom_info* %1, i32 0, i32 6
  %2 = load i32*, i32** %set_chain, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %parent, align 4
  %4 = load i32, i32* %parent, align 4
  %idxprom1 = zext i32 %4 to i64
  %5 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain2 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %5, i32 0, i32 6
  %6 = load i32*, i32** %set_chain2, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx3, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %8 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %9 = load i32, i32* %parent, align 4
  call void @compress(%struct.dom_info* %8, i32 %9)
  %10 = load i32, i32* %parent, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min = getelementptr inbounds %struct.dom_info, %struct.dom_info* %11, i32 0, i32 2
  %12 = load i32*, i32** %path_min, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %12, i64 %idxprom4
  %13 = load i32, i32* %arrayidx5, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key = getelementptr inbounds %struct.dom_info, %struct.dom_info* %14, i32 0, i32 1
  %15 = load i32*, i32** %key, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %15, i64 %idxprom6
  %16 = load i32, i32* %arrayidx7, align 4
  %17 = load i32, i32* %v.addr, align 4
  %idxprom8 = zext i32 %17 to i64
  %18 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min9 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %18, i32 0, i32 2
  %19 = load i32*, i32** %path_min9, align 8
  %arrayidx10 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  %20 = load i32, i32* %arrayidx10, align 4
  %idxprom11 = zext i32 %20 to i64
  %21 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %key12 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %21, i32 0, i32 1
  %22 = load i32*, i32** %key12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %22, i64 %idxprom11
  %23 = load i32, i32* %arrayidx13, align 4
  %cmp = icmp ult i32 %16, %23
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then
  %24 = load i32, i32* %parent, align 4
  %idxprom15 = zext i32 %24 to i64
  %25 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min16 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %25, i32 0, i32 2
  %26 = load i32*, i32** %path_min16, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %26, i64 %idxprom15
  %27 = load i32, i32* %arrayidx17, align 4
  %28 = load i32, i32* %v.addr, align 4
  %idxprom18 = zext i32 %28 to i64
  %29 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %path_min19 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %29, i32 0, i32 2
  %30 = load i32*, i32** %path_min19, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %30, i64 %idxprom18
  store i32 %27, i32* %arrayidx20, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then
  %31 = load i32, i32* %parent, align 4
  %idxprom21 = zext i32 %31 to i64
  %32 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain22 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %32, i32 0, i32 6
  %33 = load i32*, i32** %set_chain22, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %33, i64 %idxprom21
  %34 = load i32, i32* %arrayidx23, align 4
  %35 = load i32, i32* %v.addr, align 4
  %idxprom24 = zext i32 %35 to i64
  %36 = load %struct.dom_info*, %struct.dom_info** %di.addr, align 8
  %set_chain25 = getelementptr inbounds %struct.dom_info, %struct.dom_info* %36, i32 0, i32 6
  %37 = load i32*, i32** %set_chain25, align 8
  %arrayidx26 = getelementptr inbounds i32, i32* %37, i64 %idxprom24
  store i32 %34, i32* %arrayidx26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %entry
  ret void
}

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare void @sbitmap_ones(%struct.simple_bitmap_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
