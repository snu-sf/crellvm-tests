; ModuleID = 'engine/sgffile.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@outfilename = external global [128 x i8], align 16
@board_size = external global i32, align 4
@board = external global [421 x i8], align 16
@output_flags = external global i32, align 4
@dragon = external global [400 x %struct.dragon_data], align 16
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@potential_moves = external global [19 x [19 x float]], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"<1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Value of move: %d\00", align 1
@sgffile_begindump.local_tree = internal global %struct.SGFTree_t zeroinitializer, align 8
@sgf_dumptree = external global %struct.SGFTree_t*, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"engine/sgffile.c\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sgf_dumptree == ((void*)0)\00", align 1
@komi = external global float, align 4
@black_captured = external global i32, align 4
@white_captured = external global i32, align 4
@random_seed = external global i32, align 4
@level = external global i32, align 4
@chinese_rules = external global i32, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"GNU Go %s load and print\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"IL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tree\00", align 1

; Function Attrs: nounwind uwtable
define void @sgffile_add_debuginfo(%struct.SGFNode_t* %node, i32 %value) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %value.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %comment = alloca [24 x i8], align 16
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i64 0), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.56

if.end:                                           ; preds = %entry
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.end
  %1 = load i32, i32* %m, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %n, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %n, align 4
  %add4 = add nsw i32 %add, %6
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %tobool5 = icmp ne i32 %conv, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body.3
  %8 = load i32, i32* @output_flags, align 4
  %and = and i32 %8, 1
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %land.lhs.true
  %9 = load i32, i32* %m, align 4
  %mul8 = mul nsw i32 %9, 20
  %add9 = add nsw i32 21, %mul8
  %10 = load i32, i32* %n, align 4
  %add10 = add nsw i32 %add9, %10
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i32 0, i64 %idxprom11
  %crude_status = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %arrayidx12, i32 0, i32 5
  %11 = load i32, i32* %crude_status, align 4
  switch i32 %11, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %if.then.7
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %13 = load i32, i32* %m, align 4
  %14 = load i32, i32* %n, align 4
  %call = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 %13, i32 %14)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %if.then.7
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %16 = load i32, i32* %m, align 4
  %17 = load i32, i32* %n, align 4
  %call14 = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i32 %16, i32 %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.7, %sw.bb.13, %sw.bb
  br label %if.end.15

if.end.15:                                        ; preds = %sw.epilog, %land.lhs.true, %for.body.3
  %18 = load i32, i32* %n, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i32, i32* %m, align 4
  %idxprom17 = sext i32 %19 to i64
  %arrayidx18 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx18, i32 0, i64 %idxprom16
  %20 = load float, float* %arrayidx19, align 4
  %conv20 = fpext float %20 to double
  %cmp21 = fcmp ogt double %conv20, 0.000000e+00
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.43

land.lhs.true.23:                                 ; preds = %if.end.15
  %21 = load i32, i32* @output_flags, align 4
  %and24 = and i32 %21, 2
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.43

if.then.26:                                       ; preds = %land.lhs.true.23
  %22 = load i32, i32* %n, align 4
  %idxprom27 = sext i32 %22 to i64
  %23 = load i32, i32* %m, align 4
  %idxprom28 = sext i32 %23 to i64
  %arrayidx29 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom28
  %arrayidx30 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx29, i32 0, i64 %idxprom27
  %24 = load float, float* %arrayidx30, align 4
  %conv31 = fpext float %24 to double
  %cmp32 = fcmp olt double %conv31, 1.000000e+00
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.26
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %26 = load i32, i32* %m, align 4
  %27 = load i32, i32* %n, align 4
  %call35 = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32 %26, i32 %27)
  br label %if.end.42

if.else:                                          ; preds = %if.then.26
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %29 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %m, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [19 x float], [19 x float]* %arrayidx38, i32 0, i64 %idxprom36
  %31 = load float, float* %arrayidx39, align 4
  %conv40 = fptosi float %31 to i32
  %32 = load i32, i32* %m, align 4
  %33 = load i32, i32* %n, align 4
  %call41 = call %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t* %28, i32 %conv40, i32 %32, i32 %33)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.then.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.23, %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %34 = load i32, i32* %n, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end
  %35 = load i32, i32* %m, align 4
  %inc45 = add nsw i32 %35, 1
  store i32 %inc45, i32* %m, align 4
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %36 = load i32, i32* %value.addr, align 4
  %cmp47 = icmp sgt i32 %36, 0
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.56

land.lhs.true.49:                                 ; preds = %for.end.46
  %37 = load i32, i32* @output_flags, align 4
  %and50 = and i32 %37, 2
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %land.lhs.true.49
  %arraydecay = getelementptr inbounds [24 x i8], [24 x i8]* %comment, i32 0, i32 0
  %38 = load i32, i32* %value.addr, align 4
  %call53 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i32 %38) #3
  %39 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %arraydecay54 = getelementptr inbounds [24 x i8], [24 x i8]* %comment, i32 0, i32 0
  %call55 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %39, i8* %arraydecay54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then, %if.then.52, %land.lhs.true.49, %for.end.46
  ret void
}

declare %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t*, i8*, i32, i32) #1

declare %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgffile_output(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i64 0), align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %1, i32 0, i32 0
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %call = call i32 @writesgf(%struct.SGFNode_t* %2, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @writesgf(%struct.SGFNode_t*, i8*) #1

; Function Attrs: nounwind uwtable
define void @sgffile_begindump(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %cmp = icmp eq %struct.SGFTree_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %cmp1 = icmp eq %struct.SGFTree_t* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.end
  store %struct.SGFTree_t* @sgffile_begindump.local_tree, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %if.end.4

if.else.3:                                        ; preds = %if.end
  %2 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  store %struct.SGFTree_t* %2, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else.3, %if.then.2
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftree_clear(%struct.SGFTree_t* %3)
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %5 = load i32, i32* @board_size, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %4, i32 %5, float 0.000000e+00)
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgffile_printboard(%struct.SGFTree_t* %6)
  ret void
}

declare void @abortgo(i8*, i32, i8*, i32, i32) #1

declare void @sgftree_clear(%struct.SGFTree_t*) #1

declare void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #1

; Function Attrs: nounwind uwtable
define void @sgffile_printboard(%struct.SGFTree_t* %tree) #0 {
entry:
  %tree.addr = alloca %struct.SGFTree_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %node = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %tree, %struct.SGFTree_t** %tree.addr, align 8
  %0 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %tobool = icmp ne %struct.SGFTree_t* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %if.end

if.else:                                          ; preds = %entry
  call void @abortgo(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %1, i32 0, i32 1
  %2 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %call = call %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %2)
  store %struct.SGFNode_t* %call, %struct.SGFNode_t** %node, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %7 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %7, 20
  %add = add nsw i32 21, %mul
  %8 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %8
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %9 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %cmp5 = icmp eq i32 %conv, 1
  br i1 %cmp5, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.body.3
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %j, align 4
  %call8 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %10, i32 1, i32 %11, i32 %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.35, %for.end.12
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* @board_size, align 4
  %cmp14 = icmp slt i32 %15, %16
  br i1 %cmp14, label %for.body.16, label %for.end.37

for.body.16:                                      ; preds = %for.cond.13
  store i32 0, i32* %j, align 4
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.32, %for.body.16
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* @board_size, align 4
  %cmp18 = icmp slt i32 %17, %18
  br i1 %cmp18, label %for.body.20, label %for.end.34

for.body.20:                                      ; preds = %for.cond.17
  %19 = load i32, i32* %i, align 4
  %mul21 = mul nsw i32 %19, 20
  %add22 = add nsw i32 21, %mul21
  %20 = load i32, i32* %j, align 4
  %add23 = add nsw i32 %add22, %20
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom24
  %21 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 2
  br i1 %cmp27, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %for.body.20
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %call30 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %22, i32 2, i32 %23, i32 %24)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.body.20
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %25 = load i32, i32* %j, align 4
  %inc33 = add nsw i32 %25, 1
  store i32 %inc33, i32* %j, align 4
  br label %for.cond.17

for.end.34:                                       ; preds = %for.cond.17
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %26 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %26, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.13

for.end.37:                                       ; preds = %for.cond.13
  %27 = load %struct.SGFTree_t*, %struct.SGFTree_t** %tree.addr, align 8
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node, align 8
  call void @sgftreeSetLastNode(%struct.SGFTree_t* %27, %struct.SGFNode_t* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define void @sgffile_enddump(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** %filename.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv = sext i8 %2 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %tobool3 = icmp ne %struct.SGFTree_t* %3, null
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 0
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %call = call i32 @writesgf(%struct.SGFNode_t* %5, i8* %6)
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %root4 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %7, i32 0, i32 0
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root4, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %8)
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare void @sgfFreeNode(%struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define void @sgffile_printsgf(i32 %color_to_play, i8* %filename) #0 {
entry:
  %color_to_play.addr = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %sgftree = alloca %struct.SGFTree_t, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %pos = alloca [3 x i8], align 1
  %str = alloca [128 x i8], align 16
  %relative_komi = alloca float, align 4
  store i32 %color_to_play, i32* %color_to_play.addr, align 4
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load float, float* @komi, align 4
  %1 = load i32, i32* @black_captured, align 4
  %conv = sitofp i32 %1 to float
  %add = fadd float %0, %conv
  %2 = load i32, i32* @white_captured, align 4
  %conv1 = sitofp i32 %2 to float
  %sub = fsub float %add, %conv1
  store float %sub, float* %relative_komi, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %sgftree)
  %3 = load i32, i32* @board_size, align 4
  %4 = load float, float* %relative_komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %sgftree, i32 %3, float %4)
  %root = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root, align 8
  %6 = load i32, i32* @random_seed, align 4
  %7 = load float, float* %relative_komi, align 4
  %8 = load i32, i32* @level, align 4
  %9 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %5, i32 1, i32 %6, float %7, i32 %8, i32 %9)
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %str, i32 0, i32 0
  %call = call i8* @gg_version()
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay, i64 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %call)
  %root2 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root2, align 8
  %arraydecay3 = getelementptr inbounds [128 x i8], [128 x i8]* %str, i32 0, i32 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay3)
  call void @sgffile_printboard(%struct.SGFTree_t* %sgftree)
  %11 = load i32, i32* %color_to_play.addr, align 4
  %cmp = icmp ne i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %lastnode = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 1
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode, align 8
  %13 = load i32, i32* %color_to_play.addr, align 4
  %cmp5 = icmp eq i32 %13, 1
  %cond = select i1 %cmp5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)
  call void @sgfAddProperty(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* %cond)
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %if.then
  %14 = load i32, i32* %m, align 4
  %15 = load i32, i32* @board_size, align 4
  %cmp7 = icmp slt i32 %14, %15
  br i1 %cmp7, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %for.body
  %16 = load i32, i32* %n, align 4
  %17 = load i32, i32* @board_size, align 4
  %cmp10 = icmp slt i32 %16, %17
  br i1 %cmp10, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.9
  %18 = load i32, i32* %m, align 4
  %mul = mul nsw i32 %18, 20
  %add13 = add nsw i32 21, %mul
  %19 = load i32, i32* %n, align 4
  %add14 = add nsw i32 %add13, %19
  %idxprom = sext i32 %add14 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx, align 1
  %conv15 = zext i8 %20 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.12
  %21 = load i32, i32* %m, align 4
  %mul18 = mul nsw i32 %21, 20
  %add19 = add nsw i32 21, %mul18
  %22 = load i32, i32* %n, align 4
  %add20 = add nsw i32 %add19, %22
  %23 = load i32, i32* %color_to_play.addr, align 4
  %call21 = call i32 @is_legal(i32 %add20, i32 %23)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.end, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true
  %arraydecay23 = getelementptr inbounds [3 x i8], [3 x i8]* %pos, i32 0, i32 0
  %24 = load i32, i32* %n, align 4
  %add24 = add nsw i32 97, %24
  %25 = load i32, i32* %m, align 4
  %add25 = add nsw i32 97, %25
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %arraydecay23, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 %add24, i32 %add25)
  %lastnode26 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 1
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %lastnode26, align 8
  %arraydecay27 = getelementptr inbounds [3 x i8], [3 x i8]* %pos, i32 0, i32 0
  call void @sgfAddProperty(%struct.SGFNode_t* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay27)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %n, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %n, align 4
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.end
  %28 = load i32, i32* %m, align 4
  %inc29 = add nsw i32 %28, 1
  store i32 %inc29, i32* %m, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %entry
  %root32 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %sgftree, i32 0, i32 0
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %root32, align 8
  %30 = load i8*, i8** %filename.addr, align 8
  %call33 = call i32 @writesgf(%struct.SGFNode_t* %29, i8* %30)
  ret void
}

declare void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #1

declare void @gg_snprintf(i8*, i64, i8*, ...) #1

declare i8* @gg_version() #1

declare void @sgfOverwriteProperty(%struct.SGFNode_t*, i8*, i8*) #1

declare void @sgfAddProperty(%struct.SGFNode_t*, i8*, i8*) #1

declare i32 @is_legal(i32, i32) #1

declare %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t*) #1

declare %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t*, i32, i32, i32) #1

declare void @sgftreeSetLastNode(%struct.SGFTree_t*, %struct.SGFNode_t*) #1

; Function Attrs: nounwind uwtable
define void @sgffile_recordboard(%struct.SGFNode_t* %node) #0 {
entry:
  %node.addr = alloca %struct.SGFNode_t*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.SGFNode_t* %node, %struct.SGFNode_t** %node.addr, align 8
  %0 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %tobool = icmp ne %struct.SGFNode_t* %0, null
  br i1 %tobool, label %if.then, label %if.end.11

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.8, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @board_size, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* @board_size, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %i, align 4
  %mul = mul nsw i32 %5, 20
  %add = add nsw i32 21, %mul
  %6 = load i32, i32* %j, align 4
  %add4 = add nsw i32 %add, %6
  %idxprom = sext i32 %add4 to i64
  %arrayidx = getelementptr inbounds [421 x i8], [421 x i8]* @board, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %cmp5 = icmp eq i32 %conv, 2
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body.3
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %node.addr, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %call = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %8, i32 2, i32 %9, i32 %10)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %j, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %12 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %12, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  br label %if.end.11

if.end.11:                                        ; preds = %for.end.10, %entry
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
