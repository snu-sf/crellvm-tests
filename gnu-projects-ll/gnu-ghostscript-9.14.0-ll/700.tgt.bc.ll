; ModuleID = './tgt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.opj_tgt_tree = type { i32, i32, i32, %struct.opj_tgt_node*, i32 }
%struct.opj_tgt_node = type { %struct.opj_tgt_node*, i32, i32, i32 }
%struct.opj_bio = type { i8*, i8*, i8*, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"ERROR in tgt_create while allocating tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WARNING in tgt_create tree->numnodes == 0, no tree created.\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ERROR in tgt_create while allocating node of the tree\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"ERROR Not enough memory to reinitialize the tag tree\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.opj_tgt_tree* @opj_tgt_create(i32 %numleafsh, i32 %numleafsv) #0 {
entry:
  %retval = alloca %struct.opj_tgt_tree*, align 8
  %numleafsh.addr = alloca i32, align 4
  %numleafsv.addr = alloca i32, align 4
  %nplh = alloca [32 x i32], align 16
  %nplv = alloca [32 x i32], align 16
  %node = alloca %struct.opj_tgt_node*, align 8
  %l_parent_node = alloca %struct.opj_tgt_node*, align 8
  %l_parent_node0 = alloca %struct.opj_tgt_node*, align 8
  %tree = alloca %struct.opj_tgt_tree*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %numlvls = alloca i32, align 4
  %n = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i32 %numleafsh, i32* %numleafsh.addr, align 4, !tbaa !1
  store i32 %numleafsv, i32* %numleafsv.addr, align 4, !tbaa !1
  %0 = bitcast [32 x i32]* %nplh to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [32 x i32]* %nplv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tgt_node** %l_parent_node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tgt_node** %l_parent_node0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  %5 = bitcast %struct.opj_tgt_tree** %tree to i8*
  call void @llvm.lifetime.start(i64 8, i8* %5) #1
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %6 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %numlvls to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %call = call noalias i8* @malloc(i64 32) #4
  %11 = bitcast i8* %call to %struct.opj_tgt_tree*
  store %struct.opj_tgt_tree* %11, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %12 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tgt_tree* %12, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0)) #5
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %14 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %15 = bitcast %struct.opj_tgt_tree* %14 to i8*
  %call2 = call i8* @memset(i8* %15, i32 0, i64 32) #4
  %16 = load i32, i32* %numleafsh.addr, align 4, !tbaa !1
  %17 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numleafsh3 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %17, i32 0, i32 0
  store i32 %16, i32* %numleafsh3, align 4, !tbaa !7
  %18 = load i32, i32* %numleafsv.addr, align 4, !tbaa !1
  %19 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numleafsv4 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %19, i32 0, i32 1
  store i32 %18, i32* %numleafsv4, align 4, !tbaa !9
  store i32 0, i32* %numlvls, align 4, !tbaa !1
  %20 = load i32, i32* %numleafsh.addr, align 4, !tbaa !1
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 0
  store i32 %20, i32* %arrayidx, align 4, !tbaa !1
  %21 = load i32, i32* %numleafsv.addr, align 4, !tbaa !1
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 0
  store i32 %21, i32* %arrayidx5, align 4, !tbaa !1
  %22 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %22, i32 0, i32 2
  store i32 0, i32* %numnodes, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %23 = load i32, i32* %numlvls, align 4, !tbaa !1
  %idxprom = zext i32 %23 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 %idxprom
  %24 = load i32, i32* %arrayidx6, align 4, !tbaa !1
  %25 = load i32, i32* %numlvls, align 4, !tbaa !1
  %idxprom7 = zext i32 %25 to i64
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 %idxprom7
  %26 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  %mul = mul nsw i32 %24, %26
  store i32 %mul, i32* %n, align 4, !tbaa !1
  %27 = load i32, i32* %numlvls, align 4, !tbaa !1
  %idxprom9 = zext i32 %27 to i64
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 %idxprom9
  %28 = load i32, i32* %arrayidx10, align 4, !tbaa !1
  %add = add nsw i32 %28, 1
  %div = sdiv i32 %add, 2
  %29 = load i32, i32* %numlvls, align 4, !tbaa !1
  %add11 = add i32 %29, 1
  %idxprom12 = zext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 %idxprom12
  store i32 %div, i32* %arrayidx13, align 4, !tbaa !1
  %30 = load i32, i32* %numlvls, align 4, !tbaa !1
  %idxprom14 = zext i32 %30 to i64
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 %idxprom14
  %31 = load i32, i32* %arrayidx15, align 4, !tbaa !1
  %add16 = add nsw i32 %31, 1
  %div17 = sdiv i32 %add16, 2
  %32 = load i32, i32* %numlvls, align 4, !tbaa !1
  %add18 = add i32 %32, 1
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 %idxprom19
  store i32 %div17, i32* %arrayidx20, align 4, !tbaa !1
  %33 = load i32, i32* %n, align 4, !tbaa !1
  %34 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes21 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %34, i32 0, i32 2
  %35 = load i32, i32* %numnodes21, align 4, !tbaa !10
  %add22 = add i32 %35, %33
  store i32 %add22, i32* %numnodes21, align 4, !tbaa !10
  %36 = load i32, i32* %numlvls, align 4, !tbaa !1
  %inc = add i32 %36, 1
  store i32 %inc, i32* %numlvls, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %37 = load i32, i32* %n, align 4, !tbaa !1
  %cmp = icmp ugt i32 %37, 1
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %38 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes23 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %38, i32 0, i32 2
  %39 = load i32, i32* %numnodes23, align 4, !tbaa !10
  %cmp24 = icmp eq i32 %39, 0
  br i1 %cmp24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %do.end
  %40 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %41 = bitcast %struct.opj_tgt_tree* %40 to i8*
  call void @free(i8* %41) #4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i32 0, i32 0)) #5
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.27:                                        ; preds = %do.end
  %43 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes28 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %43, i32 0, i32 2
  %44 = load i32, i32* %numnodes28, align 4, !tbaa !10
  %conv = zext i32 %44 to i64
  %cmp29 = icmp ne i64 %conv, 0
  br i1 %cmp29, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %if.end.27
  %45 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes31 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %45, i32 0, i32 2
  %46 = load i32, i32* %numnodes31, align 4, !tbaa !10
  %conv32 = zext i32 %46 to i64
  %cmp33 = icmp uge i64 %conv32, 768614336404564640
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %if.end.27
  %47 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes35 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %47, i32 0, i32 2
  %48 = load i32, i32* %numnodes35, align 4, !tbaa !10
  %conv36 = zext i32 %48 to i64
  %call37 = call noalias i8* @calloc(i64 %conv36, i64 24) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call37, %cond.false ]
  %49 = bitcast i8* %cond to %struct.opj_tgt_node*
  %50 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %50, i32 0, i32 3
  store %struct.opj_tgt_node* %49, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %51 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes38 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %51, i32 0, i32 3
  %52 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes38, align 8, !tbaa !11
  %tobool39 = icmp ne %struct.opj_tgt_node* %52, null
  br i1 %tobool39, label %if.end.42, label %if.then.40

if.then.40:                                       ; preds = %cond.end
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i32 0, i32 0)) #5
  %54 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %55 = bitcast %struct.opj_tgt_tree* %54 to i8*
  call void @free(i8* %55) #4
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.42:                                        ; preds = %cond.end
  %56 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes43 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %56, i32 0, i32 3
  %57 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes43, align 8, !tbaa !11
  %58 = bitcast %struct.opj_tgt_node* %57 to i8*
  %59 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes44 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %59, i32 0, i32 2
  %60 = load i32, i32* %numnodes44, align 4, !tbaa !10
  %conv45 = zext i32 %60 to i64
  %mul46 = mul i64 %conv45, 24
  %call47 = call i8* @memset(i8* %58, i32 0, i64 %mul46) #4
  %61 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numnodes48 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %61, i32 0, i32 2
  %62 = load i32, i32* %numnodes48, align 4, !tbaa !10
  %conv49 = zext i32 %62 to i64
  %mul50 = mul i64 %conv49, 24
  %conv51 = trunc i64 %mul50 to i32
  %63 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes_size = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %63, i32 0, i32 4
  store i32 %conv51, i32* %nodes_size, align 4, !tbaa !12
  %64 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes52 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %64, i32 0, i32 3
  %65 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes52, align 8, !tbaa !11
  store %struct.opj_tgt_node* %65, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %66 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numleafsh53 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %66, i32 0, i32 0
  %67 = load i32, i32* %numleafsh53, align 4, !tbaa !7
  %68 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %numleafsv54 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %68, i32 0, i32 1
  %69 = load i32, i32* %numleafsv54, align 4, !tbaa !9
  %mul55 = mul i32 %67, %69
  %idxprom56 = zext i32 %mul55 to i64
  %70 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  %nodes57 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %70, i32 0, i32 3
  %71 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes57, align 8, !tbaa !11
  %arrayidx58 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %71, i64 %idxprom56
  store %struct.opj_tgt_node* %arrayidx58, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %72 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  store %struct.opj_tgt_node* %72, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end.42
  %73 = load i32, i32* %i, align 4, !tbaa !1
  %74 = load i32, i32* %numlvls, align 4, !tbaa !1
  %sub = sub i32 %74, 1
  %cmp59 = icmp ult i32 %73, %sub
  br i1 %cmp59, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc, %for.body
  %75 = load i32, i32* %j, align 4, !tbaa !1
  %76 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom62 = zext i32 %76 to i64
  %arrayidx63 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 %idxprom62
  %77 = load i32, i32* %arrayidx63, align 4, !tbaa !1
  %cmp64 = icmp slt i32 %75, %77
  br i1 %cmp64, label %for.body.66, label %for.end

for.body.66:                                      ; preds = %for.cond.61
  %78 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom67 = zext i32 %78 to i64
  %arrayidx68 = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 %idxprom67
  %79 = load i32, i32* %arrayidx68, align 4, !tbaa !1
  store i32 %79, i32* %k, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.77, %for.body.66
  %80 = load i32, i32* %k, align 4, !tbaa !1
  %dec = add nsw i32 %80, -1
  store i32 %dec, i32* %k, align 4, !tbaa !1
  %cmp69 = icmp sge i32 %dec, 0
  br i1 %cmp69, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %81 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %82 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %82, i32 0, i32 0
  store %struct.opj_tgt_node* %81, %struct.opj_tgt_node** %parent, align 8, !tbaa !13
  %83 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %83, i32 1
  store %struct.opj_tgt_node* %incdec.ptr, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %84 = load i32, i32* %k, align 4, !tbaa !1
  %dec71 = add nsw i32 %84, -1
  store i32 %dec71, i32* %k, align 4, !tbaa !1
  %cmp72 = icmp sge i32 %dec71, 0
  br i1 %cmp72, label %if.then.74, label %if.end.77

if.then.74:                                       ; preds = %while.body
  %85 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %86 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent75 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %86, i32 0, i32 0
  store %struct.opj_tgt_node* %85, %struct.opj_tgt_node** %parent75, align 8, !tbaa !13
  %87 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %incdec.ptr76 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %87, i32 1
  store %struct.opj_tgt_node* %incdec.ptr76, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.74, %while.body
  %88 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %incdec.ptr78 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %88, i32 1
  store %struct.opj_tgt_node* %incdec.ptr78, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %89 = load i32, i32* %j, align 4, !tbaa !1
  %and = and i32 %89, 1
  %tobool79 = icmp ne i32 %and, 0
  br i1 %tobool79, label %if.then.85, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %90 = load i32, i32* %j, align 4, !tbaa !1
  %91 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom80 = zext i32 %91 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %nplv, i32 0, i64 %idxprom80
  %92 = load i32, i32* %arrayidx81, align 4, !tbaa !1
  %sub82 = sub nsw i32 %92, 1
  %cmp83 = icmp eq i32 %90, %sub82
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %lor.lhs.false, %while.end
  %93 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  store %struct.opj_tgt_node* %93, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  br label %if.end.88

if.else:                                          ; preds = %lor.lhs.false
  %94 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  store %struct.opj_tgt_node* %94, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %95 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom86 = zext i32 %95 to i64
  %arrayidx87 = getelementptr inbounds [32 x i32], [32 x i32]* %nplh, i32 0, i64 %idxprom86
  %96 = load i32, i32* %arrayidx87, align 4, !tbaa !1
  %97 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  %idx.ext = sext i32 %96 to i64
  %add.ptr = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %97, i64 %idx.ext
  store %struct.opj_tgt_node* %add.ptr, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %98 = load i32, i32* %j, align 4, !tbaa !1
  %inc89 = add nsw i32 %98, 1
  store i32 %inc89, i32* %j, align 4, !tbaa !1
  br label %for.cond.61

for.end:                                          ; preds = %for.cond.61
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.end
  %99 = load i32, i32* %i, align 4, !tbaa !1
  %inc91 = add i32 %99, 1
  store i32 %inc91, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %100 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent93 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %100, i32 0, i32 0
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %parent93, align 8, !tbaa !13
  %101 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %101) #5
  %102 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree, align 8, !tbaa !5
  store %struct.opj_tgt_tree* %102, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end.92, %if.then.40, %if.then.25, %if.then
  %103 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %103) #1
  %104 = bitcast i32* %numlvls to i8*
  call void @llvm.lifetime.end(i64 4, i8* %104) #1
  %105 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %105) #1
  %106 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %106) #1
  %107 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %107) #1
  %108 = bitcast %struct.opj_tgt_tree** %tree to i8*
  call void @llvm.lifetime.end(i64 8, i8* %108) #1
  %109 = bitcast %struct.opj_tgt_node** %l_parent_node0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %109) #1
  %110 = bitcast %struct.opj_tgt_node** %l_parent_node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %110) #1
  %111 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %111) #1
  %112 = bitcast [32 x i32]* %nplv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %112) #1
  %113 = bitcast [32 x i32]* %nplh to i8*
  call void @llvm.lifetime.end(i64 128, i8* %113) #1
  %114 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %retval
  ret %struct.opj_tgt_tree* %114
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @opj_tgt_reset(%struct.opj_tgt_tree* %p_tree) #0 {
entry:
  %p_tree.addr = alloca %struct.opj_tgt_tree*, align 8
  %i = alloca i32, align 4
  %l_current_node = alloca %struct.opj_tgt_node*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.opj_tgt_tree* %p_tree, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %0 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %0) #1
  %1 = bitcast %struct.opj_tgt_node** %l_current_node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  %2 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tgt_tree* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %3, i32 0, i32 3
  %4 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  store %struct.opj_tgt_node* %4, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4, !tbaa !1
  %6 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numnodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %6, i32 0, i32 2
  %7 = load i32, i32* %numnodes, align 4, !tbaa !10
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %8, i32 0, i32 1
  store i32 999, i32* %value, align 4, !tbaa !15
  %9 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  %low = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %9, i32 0, i32 2
  store i32 0, i32* %low, align 4, !tbaa !16
  %10 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  %known = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %10, i32 0, i32 3
  store i32 0, i32* %known, align 4, !tbaa !17
  %11 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %11, i32 1
  store %struct.opj_tgt_node* %incdec.ptr, %struct.opj_tgt_node** %l_current_node, align 8, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !tbaa !1
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then
  %13 = bitcast %struct.opj_tgt_node** %l_current_node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  %14 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define %struct.opj_tgt_tree* @opj_tgt_init(%struct.opj_tgt_tree* %p_tree, i32 %p_num_leafs_h, i32 %p_num_leafs_v) #0 {
entry:
  %retval = alloca %struct.opj_tgt_tree*, align 8
  %p_tree.addr = alloca %struct.opj_tgt_tree*, align 8
  %p_num_leafs_h.addr = alloca i32, align 4
  %p_num_leafs_v.addr = alloca i32, align 4
  %l_nplh = alloca [32 x i32], align 16
  %l_nplv = alloca [32 x i32], align 16
  %l_node = alloca %struct.opj_tgt_node*, align 8
  %l_parent_node = alloca %struct.opj_tgt_node*, align 8
  %l_parent_node0 = alloca %struct.opj_tgt_node*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l_num_levels = alloca i32, align 4
  %n = alloca i32, align 4
  %l_node_size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %new_nodes = alloca %struct.opj_tgt_node*, align 8
  store %struct.opj_tgt_tree* %p_tree, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  store i32 %p_num_leafs_h, i32* %p_num_leafs_h.addr, align 4, !tbaa !1
  store i32 %p_num_leafs_v, i32* %p_num_leafs_v.addr, align 4, !tbaa !1
  %0 = bitcast [32 x i32]* %l_nplh to i8*
  call void @llvm.lifetime.start(i64 128, i8* %0) #1
  %1 = bitcast [32 x i32]* %l_nplv to i8*
  call void @llvm.lifetime.start(i64 128, i8* %1) #1
  %2 = bitcast %struct.opj_tgt_node** %l_node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %3 = bitcast %struct.opj_tgt_node** %l_parent_node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %3) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %4 = bitcast %struct.opj_tgt_node** %l_parent_node0 to i8*
  call void @llvm.lifetime.start(i64 8, i8* %4) #1
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  %5 = bitcast i32* %i to i8*
  call void @llvm.lifetime.start(i64 4, i8* %5) #1
  %6 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start(i64 4, i8* %6) #1
  %7 = bitcast i32* %k to i8*
  call void @llvm.lifetime.start(i64 4, i8* %7) #1
  %8 = bitcast i32* %l_num_levels to i8*
  call void @llvm.lifetime.start(i64 4, i8* %8) #1
  %9 = bitcast i32* %n to i8*
  call void @llvm.lifetime.start(i64 4, i8* %9) #1
  %10 = bitcast i32* %l_node_size to i8*
  call void @llvm.lifetime.start(i64 4, i8* %10) #1
  %11 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tgt_tree* %11, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97

if.end:                                           ; preds = %entry
  %12 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsh = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %12, i32 0, i32 0
  %13 = load i32, i32* %numleafsh, align 4, !tbaa !7
  %14 = load i32, i32* %p_num_leafs_h.addr, align 4, !tbaa !1
  %cmp = icmp ne i32 %13, %14
  br i1 %cmp, label %if.then.2, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %15 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsv = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %15, i32 0, i32 1
  %16 = load i32, i32* %numleafsv, align 4, !tbaa !9
  %17 = load i32, i32* %p_num_leafs_v.addr, align 4, !tbaa !1
  %cmp1 = icmp ne i32 %16, %17
  br i1 %cmp1, label %if.then.2, label %if.end.96

if.then.2:                                        ; preds = %lor.lhs.false, %if.end
  %18 = load i32, i32* %p_num_leafs_h.addr, align 4, !tbaa !1
  %19 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsh3 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %19, i32 0, i32 0
  store i32 %18, i32* %numleafsh3, align 4, !tbaa !7
  %20 = load i32, i32* %p_num_leafs_v.addr, align 4, !tbaa !1
  %21 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsv4 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %21, i32 0, i32 1
  store i32 %20, i32* %numleafsv4, align 4, !tbaa !9
  store i32 0, i32* %l_num_levels, align 4, !tbaa !1
  %22 = load i32, i32* %p_num_leafs_h.addr, align 4, !tbaa !1
  %arrayidx = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 0
  store i32 %22, i32* %arrayidx, align 4, !tbaa !1
  %23 = load i32, i32* %p_num_leafs_v.addr, align 4, !tbaa !1
  %arrayidx5 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 0
  store i32 %23, i32* %arrayidx5, align 4, !tbaa !1
  %24 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numnodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %24, i32 0, i32 2
  store i32 0, i32* %numnodes, align 4, !tbaa !10
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.2
  %25 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %idxprom = zext i32 %25 to i64
  %arrayidx6 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx6, align 4, !tbaa !1
  %27 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %idxprom7 = zext i32 %27 to i64
  %arrayidx8 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 %idxprom7
  %28 = load i32, i32* %arrayidx8, align 4, !tbaa !1
  %mul = mul nsw i32 %26, %28
  store i32 %mul, i32* %n, align 4, !tbaa !1
  %29 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %idxprom9 = zext i32 %29 to i64
  %arrayidx10 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 %idxprom9
  %30 = load i32, i32* %arrayidx10, align 4, !tbaa !1
  %add = add nsw i32 %30, 1
  %div = sdiv i32 %add, 2
  %31 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %add11 = add i32 %31, 1
  %idxprom12 = zext i32 %add11 to i64
  %arrayidx13 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 %idxprom12
  store i32 %div, i32* %arrayidx13, align 4, !tbaa !1
  %32 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %idxprom14 = zext i32 %32 to i64
  %arrayidx15 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 %idxprom14
  %33 = load i32, i32* %arrayidx15, align 4, !tbaa !1
  %add16 = add nsw i32 %33, 1
  %div17 = sdiv i32 %add16, 2
  %34 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %add18 = add i32 %34, 1
  %idxprom19 = zext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 %idxprom19
  store i32 %div17, i32* %arrayidx20, align 4, !tbaa !1
  %35 = load i32, i32* %n, align 4, !tbaa !1
  %36 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numnodes21 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %36, i32 0, i32 2
  %37 = load i32, i32* %numnodes21, align 4, !tbaa !10
  %add22 = add i32 %37, %35
  store i32 %add22, i32* %numnodes21, align 4, !tbaa !10
  %38 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %inc = add i32 %38, 1
  store i32 %inc, i32* %l_num_levels, align 4, !tbaa !1
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %39 = load i32, i32* %n, align 4, !tbaa !1
  %cmp23 = icmp ugt i32 %39, 1
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %40 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numnodes24 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %40, i32 0, i32 2
  %41 = load i32, i32* %numnodes24, align 4, !tbaa !10
  %cmp25 = icmp eq i32 %41, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %do.end
  %42 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  call void @opj_tgt_destroy(%struct.opj_tgt_tree* %42) #5
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97

if.end.27:                                        ; preds = %do.end
  %43 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numnodes28 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %43, i32 0, i32 2
  %44 = load i32, i32* %numnodes28, align 4, !tbaa !10
  %conv = zext i32 %44 to i64
  %mul29 = mul i64 %conv, 24
  %conv30 = trunc i64 %mul29 to i32
  store i32 %conv30, i32* %l_node_size, align 4, !tbaa !1
  %45 = load i32, i32* %l_node_size, align 4, !tbaa !1
  %46 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes_size = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %46, i32 0, i32 4
  %47 = load i32, i32* %nodes_size, align 4, !tbaa !12
  %cmp31 = icmp ugt i32 %45, %47
  br i1 %cmp31, label %if.then.33, label %if.end.49

if.then.33:                                       ; preds = %if.end.27
  %48 = bitcast %struct.opj_tgt_node** %new_nodes to i8*
  call void @llvm.lifetime.start(i64 8, i8* %48) #1
  %49 = load i32, i32* %l_node_size, align 4, !tbaa !1
  %conv34 = zext i32 %49 to i64
  %cmp35 = icmp uge i64 %conv34, -256
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.33
  br label %cond.end

cond.false:                                       ; preds = %if.then.33
  %50 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %50, i32 0, i32 3
  %51 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %52 = bitcast %struct.opj_tgt_node* %51 to i8*
  %53 = load i32, i32* %l_node_size, align 4, !tbaa !1
  %conv37 = zext i32 %53 to i64
  %call = call i8* @realloc(i8* %52, i64 %conv37) #4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ null, %cond.true ], [ %call, %cond.false ]
  %54 = bitcast i8* %cond to %struct.opj_tgt_node*
  store %struct.opj_tgt_node* %54, %struct.opj_tgt_node** %new_nodes, align 8, !tbaa !5
  %55 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %new_nodes, align 8, !tbaa !5
  %tobool38 = icmp ne %struct.opj_tgt_node* %55, null
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %cond.end
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !tbaa !5
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0)) #5
  %57 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  call void @opj_tgt_destroy(%struct.opj_tgt_tree* %57) #5
  store %struct.opj_tgt_tree* null, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end.41:                                        ; preds = %cond.end
  %58 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %new_nodes, align 8, !tbaa !5
  %59 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes42 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %59, i32 0, i32 3
  store %struct.opj_tgt_node* %58, %struct.opj_tgt_node** %nodes42, align 8, !tbaa !11
  %60 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes43 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %60, i32 0, i32 3
  %61 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes43, align 8, !tbaa !11
  %62 = bitcast %struct.opj_tgt_node* %61 to i8*
  %63 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes_size44 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %63, i32 0, i32 4
  %64 = load i32, i32* %nodes_size44, align 4, !tbaa !12
  %idx.ext = zext i32 %64 to i64
  %add.ptr = getelementptr inbounds i8, i8* %62, i64 %idx.ext
  %65 = load i32, i32* %l_node_size, align 4, !tbaa !1
  %66 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes_size45 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %66, i32 0, i32 4
  %67 = load i32, i32* %nodes_size45, align 4, !tbaa !12
  %sub = sub i32 %65, %67
  %conv46 = zext i32 %sub to i64
  %call47 = call i8* @memset(i8* %add.ptr, i32 0, i64 %conv46) #4
  %68 = load i32, i32* %l_node_size, align 4, !tbaa !1
  %69 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes_size48 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %69, i32 0, i32 4
  store i32 %68, i32* %nodes_size48, align 4, !tbaa !12
  store i32 0, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end.41, %if.then.39
  %70 = bitcast %struct.opj_tgt_node** %new_nodes to i8*
  call void @llvm.lifetime.end(i64 8, i8* %70) #1
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.97 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.49

if.end.49:                                        ; preds = %cleanup.cont, %if.end.27
  %71 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes50 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %71, i32 0, i32 3
  %72 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes50, align 8, !tbaa !11
  store %struct.opj_tgt_node* %72, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %73 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsh51 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %73, i32 0, i32 0
  %74 = load i32, i32* %numleafsh51, align 4, !tbaa !7
  %75 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %numleafsv52 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %75, i32 0, i32 1
  %76 = load i32, i32* %numleafsv52, align 4, !tbaa !9
  %mul53 = mul i32 %74, %76
  %idxprom54 = zext i32 %mul53 to i64
  %77 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes55 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %77, i32 0, i32 3
  %78 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes55, align 8, !tbaa !11
  %arrayidx56 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %78, i64 %idxprom54
  store %struct.opj_tgt_node* %arrayidx56, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %79 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  store %struct.opj_tgt_node* %79, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  store i32 0, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %if.end.49
  %80 = load i32, i32* %i, align 4, !tbaa !1
  %81 = load i32, i32* %l_num_levels, align 4, !tbaa !1
  %sub57 = sub i32 %81, 1
  %cmp58 = icmp ult i32 %80, %sub57
  br i1 %cmp58, label %for.body, label %for.end.94

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !tbaa !1
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc, %for.body
  %82 = load i32, i32* %j, align 4, !tbaa !1
  %83 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom61 = zext i32 %83 to i64
  %arrayidx62 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 %idxprom61
  %84 = load i32, i32* %arrayidx62, align 4, !tbaa !1
  %cmp63 = icmp slt i32 %82, %84
  br i1 %cmp63, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.60
  %85 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom66 = zext i32 %85 to i64
  %arrayidx67 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 %idxprom66
  %86 = load i32, i32* %arrayidx67, align 4, !tbaa !1
  store i32 %86, i32* %k, align 4, !tbaa !1
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %for.body.65
  %87 = load i32, i32* %k, align 4, !tbaa !1
  %dec = add nsw i32 %87, -1
  store i32 %dec, i32* %k, align 4, !tbaa !1
  %cmp68 = icmp sge i32 %dec, 0
  br i1 %cmp68, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %88 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %89 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %89, i32 0, i32 0
  store %struct.opj_tgt_node* %88, %struct.opj_tgt_node** %parent, align 8, !tbaa !13
  %90 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %90, i32 1
  store %struct.opj_tgt_node* %incdec.ptr, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %91 = load i32, i32* %k, align 4, !tbaa !1
  %dec70 = add nsw i32 %91, -1
  store i32 %dec70, i32* %k, align 4, !tbaa !1
  %cmp71 = icmp sge i32 %dec70, 0
  br i1 %cmp71, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %while.body
  %92 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %93 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %parent74 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %93, i32 0, i32 0
  store %struct.opj_tgt_node* %92, %struct.opj_tgt_node** %parent74, align 8, !tbaa !13
  %94 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %incdec.ptr75 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %94, i32 1
  store %struct.opj_tgt_node* %incdec.ptr75, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %while.body
  %95 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %incdec.ptr77 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %95, i32 1
  store %struct.opj_tgt_node* %incdec.ptr77, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %96 = load i32, i32* %j, align 4, !tbaa !1
  %and = and i32 %96, 1
  %tobool78 = icmp ne i32 %and, 0
  br i1 %tobool78, label %if.then.85, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %while.end
  %97 = load i32, i32* %j, align 4, !tbaa !1
  %98 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom80 = zext i32 %98 to i64
  %arrayidx81 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplv, i32 0, i64 %idxprom80
  %99 = load i32, i32* %arrayidx81, align 4, !tbaa !1
  %sub82 = sub nsw i32 %99, 1
  %cmp83 = icmp eq i32 %97, %sub82
  br i1 %cmp83, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %lor.lhs.false.79, %while.end
  %100 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  store %struct.opj_tgt_node* %100, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  br label %if.end.90

if.else:                                          ; preds = %lor.lhs.false.79
  %101 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  store %struct.opj_tgt_node* %101, %struct.opj_tgt_node** %l_parent_node, align 8, !tbaa !5
  %102 = load i32, i32* %i, align 4, !tbaa !1
  %idxprom86 = zext i32 %102 to i64
  %arrayidx87 = getelementptr inbounds [32 x i32], [32 x i32]* %l_nplh, i32 0, i64 %idxprom86
  %103 = load i32, i32* %arrayidx87, align 4, !tbaa !1
  %104 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  %idx.ext88 = sext i32 %103 to i64
  %add.ptr89 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %104, i64 %idx.ext88
  store %struct.opj_tgt_node* %add.ptr89, %struct.opj_tgt_node** %l_parent_node0, align 8, !tbaa !5
  br label %if.end.90

if.end.90:                                        ; preds = %if.else, %if.then.85
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %105 = load i32, i32* %j, align 4, !tbaa !1
  %inc91 = add nsw i32 %105, 1
  store i32 %inc91, i32* %j, align 4, !tbaa !1
  br label %for.cond.60

for.end:                                          ; preds = %for.cond.60
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end
  %106 = load i32, i32* %i, align 4, !tbaa !1
  %inc93 = add i32 %106, 1
  store i32 %inc93, i32* %i, align 4, !tbaa !1
  br label %for.cond

for.end.94:                                       ; preds = %for.cond
  %107 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %l_node, align 8, !tbaa !5
  %parent95 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %107, i32 0, i32 0
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %parent95, align 8, !tbaa !13
  br label %if.end.96

if.end.96:                                        ; preds = %for.end.94, %lor.lhs.false
  %108 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  call void @opj_tgt_reset(%struct.opj_tgt_tree* %108) #5
  %109 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  store %struct.opj_tgt_tree* %109, %struct.opj_tgt_tree** %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.97

cleanup.97:                                       ; preds = %if.end.96, %cleanup, %if.then.26, %if.then
  %110 = bitcast i32* %l_node_size to i8*
  call void @llvm.lifetime.end(i64 4, i8* %110) #1
  %111 = bitcast i32* %n to i8*
  call void @llvm.lifetime.end(i64 4, i8* %111) #1
  %112 = bitcast i32* %l_num_levels to i8*
  call void @llvm.lifetime.end(i64 4, i8* %112) #1
  %113 = bitcast i32* %k to i8*
  call void @llvm.lifetime.end(i64 4, i8* %113) #1
  %114 = bitcast i32* %j to i8*
  call void @llvm.lifetime.end(i64 4, i8* %114) #1
  %115 = bitcast i32* %i to i8*
  call void @llvm.lifetime.end(i64 4, i8* %115) #1
  %116 = bitcast %struct.opj_tgt_node** %l_parent_node0 to i8*
  call void @llvm.lifetime.end(i64 8, i8* %116) #1
  %117 = bitcast %struct.opj_tgt_node** %l_parent_node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %117) #1
  %118 = bitcast %struct.opj_tgt_node** %l_node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %118) #1
  %119 = bitcast [32 x i32]* %l_nplv to i8*
  call void @llvm.lifetime.end(i64 128, i8* %119) #1
  %120 = bitcast [32 x i32]* %l_nplh to i8*
  call void @llvm.lifetime.end(i64 128, i8* %120) #1
  %121 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %retval
  ret %struct.opj_tgt_tree* %121
}

; Function Attrs: nounwind uwtable
define void @opj_tgt_destroy(%struct.opj_tgt_tree* %p_tree) #0 {
entry:
  %p_tree.addr = alloca %struct.opj_tgt_tree*, align 8
  store %struct.opj_tgt_tree* %p_tree, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %0 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tgt_tree* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %1, i32 0, i32 3
  %2 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %tobool1 = icmp ne %struct.opj_tgt_node* %2, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes3 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %3, i32 0, i32 3
  %4 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes3, align 8, !tbaa !11
  %5 = bitcast %struct.opj_tgt_node* %4 to i8*
  call void @free(i8* %5) #4
  %6 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %nodes4 = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %6, i32 0, i32 3
  store %struct.opj_tgt_node* null, %struct.opj_tgt_node** %nodes4, align 8, !tbaa !11
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %p_tree.addr, align 8, !tbaa !5
  %8 = bitcast %struct.opj_tgt_tree* %7 to i8*
  call void @free(i8* %8) #4
  br label %return

return:                                           ; preds = %if.end.5, %if.then
  ret void
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #2

; Function Attrs: nounwind uwtable
define void @opj_tgt_setvalue(%struct.opj_tgt_tree* %tree, i32 %leafno, i32 %value) #0 {
entry:
  %tree.addr = alloca %struct.opj_tgt_tree*, align 8
  %leafno.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %node = alloca %struct.opj_tgt_node*, align 8
  store %struct.opj_tgt_tree* %tree, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  store i32 %leafno, i32* %leafno.addr, align 4, !tbaa !1
  store i32 %value, i32* %value.addr, align 4, !tbaa !1
  %0 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i32, i32* %leafno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %1 to i64
  %2 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %2, i32 0, i32 3
  %3 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %3, i64 %idxprom
  store %struct.opj_tgt_node* %arrayidx, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %tobool = icmp ne %struct.opj_tgt_node* %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value1 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %5, i32 0, i32 1
  %6 = load i32, i32* %value1, align 4, !tbaa !15
  %7 = load i32, i32* %value.addr, align 4, !tbaa !1
  %cmp = icmp sgt i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %value.addr, align 4, !tbaa !1
  %10 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value2 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %10, i32 0, i32 1
  store i32 %9, i32* %value2, align 4, !tbaa !15
  %11 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %11, i32 0, i32 0
  %12 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %parent, align 8, !tbaa !13
  store %struct.opj_tgt_node* %12, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %13) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @opj_tgt_encode(%struct.opj_bio* %bio, %struct.opj_tgt_tree* %tree, i32 %leafno, i32 %threshold) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %tree.addr = alloca %struct.opj_tgt_tree*, align 8
  %leafno.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %stk = alloca [31 x %struct.opj_tgt_node*], align 16
  %stkptr = alloca %struct.opj_tgt_node**, align 8
  %node = alloca %struct.opj_tgt_node*, align 8
  %low = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !5
  store %struct.opj_tgt_tree* %tree, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  store i32 %leafno, i32* %leafno.addr, align 4, !tbaa !1
  store i32 %threshold, i32* %threshold.addr, align 4, !tbaa !1
  %0 = bitcast [31 x %struct.opj_tgt_node*]* %stk to i8*
  call void @llvm.lifetime.start(i64 248, i8* %0) #1
  %1 = bitcast %struct.opj_tgt_node*** %stkptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %low to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %arraydecay = getelementptr inbounds [31 x %struct.opj_tgt_node*], [31 x %struct.opj_tgt_node*]* %stk, i32 0, i32 0
  store %struct.opj_tgt_node** %arraydecay, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %4 = load i32, i32* %leafno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %5, i32 0, i32 3
  %6 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %6, i64 %idxprom
  store %struct.opj_tgt_node* %arrayidx, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %7, i32 0, i32 0
  %8 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %parent, align 8, !tbaa !13
  %tobool = icmp ne %struct.opj_tgt_node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %10 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tgt_node*, %struct.opj_tgt_node** %10, i32 1
  store %struct.opj_tgt_node** %incdec.ptr, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  store %struct.opj_tgt_node* %9, %struct.opj_tgt_node** %10, align 8, !tbaa !5
  %11 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent1 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %11, i32 0, i32 0
  %12 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %parent1, align 8, !tbaa !13
  store %struct.opj_tgt_node* %12, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %low, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.20, %while.end
  %13 = load i32, i32* %low, align 4, !tbaa !1
  %14 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low2 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %14, i32 0, i32 2
  %15 = load i32, i32* %low2, align 4, !tbaa !16
  %cmp = icmp sgt i32 %13, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %16 = load i32, i32* %low, align 4, !tbaa !1
  %17 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low3 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %17, i32 0, i32 2
  store i32 %16, i32* %low3, align 4, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %for.cond
  %18 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low4 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %18, i32 0, i32 2
  %19 = load i32, i32* %low4, align 4, !tbaa !16
  store i32 %19, i32* %low, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.14, %if.end
  %20 = load i32, i32* %low, align 4, !tbaa !1
  %21 = load i32, i32* %threshold.addr, align 4, !tbaa !1
  %cmp6 = icmp slt i32 %20, %21
  br i1 %cmp6, label %while.body.7, label %while.end.15

while.body.7:                                     ; preds = %while.cond.5
  %22 = load i32, i32* %low, align 4, !tbaa !1
  %23 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %23, i32 0, i32 1
  %24 = load i32, i32* %value, align 4, !tbaa !15
  %cmp8 = icmp sge i32 %22, %24
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %while.body.7
  %25 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %known = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %25, i32 0, i32 3
  %26 = load i32, i32* %known, align 4, !tbaa !17
  %tobool10 = icmp ne i32 %26, 0
  br i1 %tobool10, label %if.end.13, label %if.then.11

if.then.11:                                       ; preds = %if.then.9
  %27 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !5
  call void @opj_bio_write(%struct.opj_bio* %27, i32 1, i32 1) #5
  %28 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %known12 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %28, i32 0, i32 3
  store i32 1, i32* %known12, align 4, !tbaa !17
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.then.9
  br label %while.end.15

if.end.14:                                        ; preds = %while.body.7
  %29 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !5
  call void @opj_bio_write(%struct.opj_bio* %29, i32 0, i32 1) #5
  %30 = load i32, i32* %low, align 4, !tbaa !1
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %low, align 4, !tbaa !1
  br label %while.cond.5

while.end.15:                                     ; preds = %if.end.13, %while.cond.5
  %31 = load i32, i32* %low, align 4, !tbaa !1
  %32 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low16 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %32, i32 0, i32 2
  store i32 %31, i32* %low16, align 4, !tbaa !16
  %33 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %arraydecay17 = getelementptr inbounds [31 x %struct.opj_tgt_node*], [31 x %struct.opj_tgt_node*]* %stk, i32 0, i32 0
  %cmp18 = icmp eq %struct.opj_tgt_node** %33, %arraydecay17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %while.end.15
  br label %for.end

if.end.20:                                        ; preds = %while.end.15
  %34 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %incdec.ptr21 = getelementptr inbounds %struct.opj_tgt_node*, %struct.opj_tgt_node** %34, i32 -1
  store %struct.opj_tgt_node** %incdec.ptr21, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %35 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %incdec.ptr21, align 8, !tbaa !5
  store %struct.opj_tgt_node* %35, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.19
  %36 = bitcast i32* %low to i8*
  call void @llvm.lifetime.end(i64 4, i8* %36) #1
  %37 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %37) #1
  %38 = bitcast %struct.opj_tgt_node*** %stkptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %38) #1
  %39 = bitcast [31 x %struct.opj_tgt_node*]* %stk to i8*
  call void @llvm.lifetime.end(i64 248, i8* %39) #1
  ret void
}

declare void @opj_bio_write(%struct.opj_bio*, i32, i32) #3

; Function Attrs: nounwind uwtable
define i32 @opj_tgt_decode(%struct.opj_bio* %bio, %struct.opj_tgt_tree* %tree, i32 %leafno, i32 %threshold) #0 {
entry:
  %bio.addr = alloca %struct.opj_bio*, align 8
  %tree.addr = alloca %struct.opj_tgt_tree*, align 8
  %leafno.addr = alloca i32, align 4
  %threshold.addr = alloca i32, align 4
  %stk = alloca [31 x %struct.opj_tgt_node*], align 16
  %stkptr = alloca %struct.opj_tgt_node**, align 8
  %node = alloca %struct.opj_tgt_node*, align 8
  %low = alloca i32, align 4
  store %struct.opj_bio* %bio, %struct.opj_bio** %bio.addr, align 8, !tbaa !5
  store %struct.opj_tgt_tree* %tree, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  store i32 %leafno, i32* %leafno.addr, align 4, !tbaa !1
  store i32 %threshold, i32* %threshold.addr, align 4, !tbaa !1
  %0 = bitcast [31 x %struct.opj_tgt_node*]* %stk to i8*
  call void @llvm.lifetime.start(i64 248, i8* %0) #1
  %1 = bitcast %struct.opj_tgt_node*** %stkptr to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %2 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.start(i64 8, i8* %2) #1
  %3 = bitcast i32* %low to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %arraydecay = getelementptr inbounds [31 x %struct.opj_tgt_node*], [31 x %struct.opj_tgt_node*]* %stk, i32 0, i32 0
  store %struct.opj_tgt_node** %arraydecay, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %4 = load i32, i32* %leafno.addr, align 4, !tbaa !1
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.opj_tgt_tree*, %struct.opj_tgt_tree** %tree.addr, align 8, !tbaa !5
  %nodes = getelementptr inbounds %struct.opj_tgt_tree, %struct.opj_tgt_tree* %5, i32 0, i32 3
  %6 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %nodes, align 8, !tbaa !11
  %arrayidx = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %6, i64 %idxprom
  store %struct.opj_tgt_node* %arrayidx, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %7, i32 0, i32 0
  %8 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %parent, align 8, !tbaa !13
  %tobool = icmp ne %struct.opj_tgt_node* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %10 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %incdec.ptr = getelementptr inbounds %struct.opj_tgt_node*, %struct.opj_tgt_node** %10, i32 1
  store %struct.opj_tgt_node** %incdec.ptr, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  store %struct.opj_tgt_node* %9, %struct.opj_tgt_node** %10, align 8, !tbaa !5
  %11 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %parent1 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %11, i32 0, i32 0
  %12 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %parent1, align 8, !tbaa !13
  store %struct.opj_tgt_node* %12, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %low, align 4, !tbaa !1
  br label %for.cond

for.cond:                                         ; preds = %if.end.19, %while.end
  %13 = load i32, i32* %low, align 4, !tbaa !1
  %14 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low2 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %14, i32 0, i32 2
  %15 = load i32, i32* %low2, align 4, !tbaa !16
  %cmp = icmp sgt i32 %13, %15
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %16 = load i32, i32* %low, align 4, !tbaa !1
  %17 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low3 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %17, i32 0, i32 2
  store i32 %16, i32* %low3, align 4, !tbaa !16
  br label %if.end

if.else:                                          ; preds = %for.cond
  %18 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low4 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %18, i32 0, i32 2
  %19 = load i32, i32* %low4, align 4, !tbaa !16
  store i32 %19, i32* %low, align 4, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond.5

while.cond.5:                                     ; preds = %if.end.13, %if.end
  %20 = load i32, i32* %low, align 4, !tbaa !1
  %21 = load i32, i32* %threshold.addr, align 4, !tbaa !1
  %cmp6 = icmp slt i32 %20, %21
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.5
  %22 = load i32, i32* %low, align 4, !tbaa !1
  %23 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %23, i32 0, i32 1
  %24 = load i32, i32* %value, align 4, !tbaa !15
  %cmp7 = icmp slt i32 %22, %24
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.5
  %25 = phi i1 [ false, %while.cond.5 ], [ %cmp7, %land.rhs ]
  br i1 %25, label %while.body.8, label %while.end.14

while.body.8:                                     ; preds = %land.end
  %26 = load %struct.opj_bio*, %struct.opj_bio** %bio.addr, align 8, !tbaa !5
  %call = call i32 @opj_bio_read(%struct.opj_bio* %26, i32 1) #5
  %tobool9 = icmp ne i32 %call, 0
  br i1 %tobool9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %while.body.8
  %27 = load i32, i32* %low, align 4, !tbaa !1
  %28 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value11 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %28, i32 0, i32 1
  store i32 %27, i32* %value11, align 4, !tbaa !15
  br label %if.end.13

if.else.12:                                       ; preds = %while.body.8
  %29 = load i32, i32* %low, align 4, !tbaa !1
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %low, align 4, !tbaa !1
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.10
  br label %while.cond.5

while.end.14:                                     ; preds = %land.end
  %30 = load i32, i32* %low, align 4, !tbaa !1
  %31 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %low15 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %31, i32 0, i32 2
  store i32 %30, i32* %low15, align 4, !tbaa !16
  %32 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %arraydecay16 = getelementptr inbounds [31 x %struct.opj_tgt_node*], [31 x %struct.opj_tgt_node*]* %stk, i32 0, i32 0
  %cmp17 = icmp eq %struct.opj_tgt_node** %32, %arraydecay16
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %while.end.14
  br label %for.end

if.end.19:                                        ; preds = %while.end.14
  %33 = load %struct.opj_tgt_node**, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %incdec.ptr20 = getelementptr inbounds %struct.opj_tgt_node*, %struct.opj_tgt_node** %33, i32 -1
  store %struct.opj_tgt_node** %incdec.ptr20, %struct.opj_tgt_node*** %stkptr, align 8, !tbaa !5
  %34 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %incdec.ptr20, align 8, !tbaa !5
  store %struct.opj_tgt_node* %34, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  br label %for.cond

for.end:                                          ; preds = %if.then.18
  %35 = load %struct.opj_tgt_node*, %struct.opj_tgt_node** %node, align 8, !tbaa !5
  %value21 = getelementptr inbounds %struct.opj_tgt_node, %struct.opj_tgt_node* %35, i32 0, i32 1
  %36 = load i32, i32* %value21, align 4, !tbaa !15
  %37 = load i32, i32* %threshold.addr, align 4, !tbaa !1
  %cmp22 = icmp slt i32 %36, %37
  %cond = select i1 %cmp22, i32 1, i32 0
  %38 = bitcast i32* %low to i8*
  call void @llvm.lifetime.end(i64 4, i8* %38) #1
  %39 = bitcast %struct.opj_tgt_node** %node to i8*
  call void @llvm.lifetime.end(i64 8, i8* %39) #1
  %40 = bitcast %struct.opj_tgt_node*** %stkptr to i8*
  call void @llvm.lifetime.end(i64 8, i8* %40) #1
  %41 = bitcast [31 x %struct.opj_tgt_node*]* %stk to i8*
  call void @llvm.lifetime.end(i64 248, i8* %41) #1
  ret i32 %cond
}

declare i32 @opj_bio_read(%struct.opj_bio*, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin nounwind }
attributes #5 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"int", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !3, i64 0}
!7 = !{!8, !2, i64 0}
!8 = !{!"opj_tgt_tree", !2, i64 0, !2, i64 4, !2, i64 8, !6, i64 16, !2, i64 24}
!9 = !{!8, !2, i64 4}
!10 = !{!8, !2, i64 8}
!11 = !{!8, !6, i64 16}
!12 = !{!8, !2, i64 24}
!13 = !{!14, !6, i64 0}
!14 = !{!"opj_tgt_node", !6, i64 0, !2, i64 8, !2, i64 12, !2, i64 16}
!15 = !{!14, !2, i64 8}
!16 = !{!14, !2, i64 12}
!17 = !{!14, !2, i64 16}
