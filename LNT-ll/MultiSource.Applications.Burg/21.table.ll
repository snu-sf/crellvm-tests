; ModuleID = './MultiSource.Applications.Burg/21.table.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.list = type { i8*, %struct.list* }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.queue = type { %struct.list*, %struct.list* }

@rcsid_table = global [47 x i8] c"$Id: table.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@.str = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"BEGIN Index_Map: MaxSize (%d)\0A\00", align 1
@globalMap = external global %struct.mapping*, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"\09#%d: -> %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"END Index_Map:\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"BEGIN Dimension:\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Relevant: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"MaxSize of dimension = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"END Dimension\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"NO Table yet.\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"BEGIN Table:\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"BEGIN dimension(%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"END dimension(%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"END Table:\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"{ %d }\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%5d\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\0A}\0A\00", align 1
@rules = external global %struct.list*, align 8
@max_nonterminal = external global i32, align 4
@stub_rule = external global %struct.rule, align 8
@globalQ = external global %struct.queue*, align 8

; Function Attrs: nounwind uwtable
define void @addRelevant(i16* %r, i32 %nt) #0 {
entry:
  %r.addr = alloca i16*, align 8
  %nt.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i16* %r, i16** %r.addr, align 8
  store i32 %nt, i32* %nt.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i16*, i16** %r.addr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %2 = load i16, i16* %arrayidx, align 2
  %tobool = icmp ne i16 %2, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load i16*, i16** %r.addr, align 8
  %arrayidx2 = getelementptr inbounds i16, i16* %4, i64 %idxprom1
  %5 = load i16, i16* %arrayidx2, align 2
  %conv = sext i16 %5 to i32
  %6 = load i32, i32* %nt.addr, align 4
  %cmp = icmp eq i32 %conv, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %8 to i64
  %9 = load i16*, i16** %r.addr, align 8
  %arrayidx5 = getelementptr inbounds i16, i16* %9, i64 %idxprom4
  %10 = load i16, i16* %arrayidx5, align 2
  %tobool6 = icmp ne i16 %10, 0
  br i1 %tobool6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %for.end
  %11 = load i32, i32* %nt.addr, align 4
  %conv8 = trunc i32 %11 to i16
  %12 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i16*, i16** %r.addr, align 8
  %arrayidx10 = getelementptr inbounds i16, i16* %13, i64 %idxprom9
  store i16 %conv8, i16* %arrayidx10, align 2
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.table* @newTable(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %t = alloca %struct.table*, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %call = call i8* @zalloc(i32 48)
  %0 = bitcast i8* %call to %struct.table*
  store %struct.table* %0, %struct.table** %t, align 8
  %1 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %2 = load %struct.table*, %struct.table** %t, align 8
  %op1 = getelementptr inbounds %struct.table, %struct.table* %2, i32 0, i32 0
  store %struct.operator* %1, %struct.operator** %op1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %4, i32 0, i32 5
  %5 = load i32, i32* %arity, align 4
  %cmp = icmp slt i32 %3, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call2 = call %struct.dimension* @newDimension(%struct.operator* %6, i32 %7)
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.table*, %struct.table** %t, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %9, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 %idxprom
  store %struct.dimension* %call2, %struct.dimension** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %size, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.10, %for.end
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %arity4 = getelementptr inbounds %struct.operator, %struct.operator* %12, i32 0, i32 5
  %13 = load i32, i32* %arity4, align 4
  %cmp5 = icmp slt i32 %11, %13
  br i1 %cmp5, label %for.body.6, label %for.end.12

for.body.6:                                       ; preds = %for.cond.3
  %14 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %14 to i64
  %15 = load %struct.table*, %struct.table** %t, align 8
  %dimen8 = getelementptr inbounds %struct.table, %struct.table* %15, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen8, i32 0, i64 %idxprom7
  %16 = load %struct.dimension*, %struct.dimension** %arrayidx9, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %16, i32 0, i32 3
  %17 = load i32, i32* %max_size, align 4
  %18 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %18, %17
  store i32 %mul, i32* %size, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %19 = load i32, i32* %i, align 4
  %inc11 = add nsw i32 %19, 1
  store i32 %inc11, i32* %i, align 4
  br label %for.cond.3

for.end.12:                                       ; preds = %for.cond.3
  %20 = load i32, i32* %size, align 4
  %conv = sext i32 %20 to i64
  %mul13 = mul i64 %conv, 8
  %conv14 = trunc i64 %mul13 to i32
  %call15 = call i8* @zalloc(i32 %conv14)
  %21 = bitcast i8* %call15 to %struct.item_set**
  %22 = load %struct.table*, %struct.table** %t, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %22, i32 0, i32 4
  store %struct.item_set** %21, %struct.item_set*** %transition, align 8
  %call16 = call i16* @newRelevant()
  %23 = load %struct.table*, %struct.table** %t, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %23, i32 0, i32 2
  store i16* %call16, i16** %relevant, align 8
  %24 = load %struct.table*, %struct.table** %t, align 8
  ret %struct.table* %24
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.dimension* @newDimension(%struct.operator* %op, i32 %index) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  %index.addr = alloca i32, align 4
  %d = alloca %struct.dimension*, align 8
  %pl = alloca %struct.list*, align 8
  %r = alloca i16*, align 8
  %pr = alloca %struct.rule*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %call = call i8* @zalloc(i32 48)
  %0 = bitcast i8* %call to %struct.dimension*
  store %struct.dimension* %0, %struct.dimension** %d, align 8
  %call1 = call i16* @newRelevant()
  %1 = load %struct.dimension*, %struct.dimension** %d, align 8
  %relevant = getelementptr inbounds %struct.dimension, %struct.dimension* %1, i32 0, i32 0
  store i16* %call1, i16** %relevant, align 8
  store i16* %call1, i16** %r, align 8
  %2 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %2, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %4, i32 0, i32 0
  %5 = load i8*, i8** %x, align 8
  %6 = bitcast i8* %5 to %struct.rule*
  store %struct.rule* %6, %struct.rule** %pr, align 8
  %7 = load %struct.rule*, %struct.rule** %pr, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %7, i32 0, i32 5
  %8 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op2 = getelementptr inbounds %struct.pattern, %struct.pattern* %8, i32 0, i32 1
  %9 = load %struct.operator*, %struct.operator** %op2, align 8
  %10 = load %struct.operator*, %struct.operator** %op.addr, align 8
  %cmp = icmp eq %struct.operator* %9, %10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i16*, i16** %r, align 8
  %12 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.rule*, %struct.rule** %pr, align 8
  %pat3 = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 5
  %14 = load %struct.pattern*, %struct.pattern** %pat3, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 %idxprom
  %15 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %15, i32 0, i32 1
  %16 = load i32, i32* %num, align 4
  call void @addRelevant(i16* %11, i32 %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %17, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %18, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %19, i32 0, i32 1
  %max_size = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 0
  store i32 64, i32* %max_size, align 4
  %20 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map4 = getelementptr inbounds %struct.dimension, %struct.dimension* %20, i32 0, i32 1
  %max_size5 = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map4, i32 0, i32 0
  %21 = load i32, i32* %max_size5, align 4
  %conv = sext i32 %21 to i64
  %mul = mul i64 %conv, 8
  %conv6 = trunc i64 %mul to i32
  %call7 = call i8* @zalloc(i32 %conv6)
  %22 = bitcast i8* %call7 to %struct.item_set**
  %23 = load %struct.dimension*, %struct.dimension** %d, align 8
  %index_map8 = getelementptr inbounds %struct.dimension, %struct.dimension* %23, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map8, i32 0, i32 1
  store %struct.item_set** %22, %struct.item_set*** %class, align 8
  %call9 = call %struct.mapping* @newMapping(i32 256)
  %24 = load %struct.dimension*, %struct.dimension** %d, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %24, i32 0, i32 2
  store %struct.mapping* %call9, %struct.mapping** %map, align 8
  %25 = load %struct.dimension*, %struct.dimension** %d, align 8
  %max_size10 = getelementptr inbounds %struct.dimension, %struct.dimension* %25, i32 0, i32 3
  store i32 8, i32* %max_size10, align 4
  %26 = load %struct.dimension*, %struct.dimension** %d, align 8
  ret %struct.dimension* %26
}

; Function Attrs: nounwind uwtable
define internal i16* @newRelevant() #0 {
entry:
  %r = alloca i16*, align 8
  %0 = load i32, i32* @max_nonterminal, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 2
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv1)
  %1 = bitcast i8* %call to i16*
  store i16* %1, i16** %r, align 8
  %2 = load i16*, i16** %r, align 8
  ret i16* %2
}

; Function Attrs: nounwind uwtable
define void @addToTable(%struct.table* %t, %struct.item_set* %ts) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %i = alloca i32, align 4
  %r = alloca %struct.item_set*, align 8
  %tmp = alloca %struct.item_set*, align 8
  %new = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 0
  %2 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %2, i32 0, i32 5
  %3 = load i32, i32* %arity, align 4
  %cmp = icmp slt i32 %0, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 %idxprom
  %6 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %7 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %call = call %struct.item_set* @restrict(%struct.dimension* %6, %struct.item_set* %7)
  store %struct.item_set* %call, %struct.item_set** %r, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen3 = getelementptr inbounds %struct.table, %struct.table* %9, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen3, i32 0, i64 %idxprom2
  %10 = load %struct.dimension*, %struct.dimension** %arrayidx4, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %10, i32 0, i32 2
  %11 = load %struct.mapping*, %struct.mapping** %map, align 8
  %12 = load %struct.item_set*, %struct.item_set** %r, align 8
  %call5 = call %struct.item_set* @encode(%struct.mapping* %11, %struct.item_set* %12, i32* %new)
  store %struct.item_set* %call5, %struct.item_set** %tmp, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen7 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen7, i32 0, i64 %idxprom6
  %15 = load %struct.dimension*, %struct.dimension** %arrayidx8, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %15, i32 0, i32 1
  %max_size = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map, i32 0, i32 0
  %16 = load i32, i32* %max_size, align 4
  %17 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %17, i32 0, i32 0
  %18 = load i32, i32* %num, align 4
  %cmp9 = icmp sle i32 %16, %18
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %19 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %19 to i64
  %20 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen11 = getelementptr inbounds %struct.table, %struct.table* %20, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen11, i32 0, i64 %idxprom10
  %21 = load %struct.dimension*, %struct.dimension** %arrayidx12, align 8
  %index_map13 = getelementptr inbounds %struct.dimension, %struct.dimension* %21, i32 0, i32 1
  call void @growIndex_Map(%struct.index_map* %index_map13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %22 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  %23 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num14 = getelementptr inbounds %struct.item_set, %struct.item_set* %23, i32 0, i32 0
  %24 = load i32, i32* %num14, align 4
  %idxprom15 = sext i32 %24 to i64
  %25 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %25 to i64
  %26 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen17 = getelementptr inbounds %struct.table, %struct.table* %26, i32 0, i32 3
  %arrayidx18 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen17, i32 0, i64 %idxprom16
  %27 = load %struct.dimension*, %struct.dimension** %arrayidx18, align 8
  %index_map19 = getelementptr inbounds %struct.dimension, %struct.dimension* %27, i32 0, i32 1
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %index_map19, i32 0, i32 1
  %28 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx20 = getelementptr inbounds %struct.item_set*, %struct.item_set** %28, i64 %idxprom15
  store %struct.item_set* %22, %struct.item_set** %arrayidx20, align 8
  %29 = load i32, i32* %new, align 4
  %tobool = icmp ne i32 %29, 0
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.end
  %30 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %30 to i64
  %31 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen23 = getelementptr inbounds %struct.table, %struct.table* %31, i32 0, i32 3
  %arrayidx24 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen23, i32 0, i64 %idxprom22
  %32 = load %struct.dimension*, %struct.dimension** %arrayidx24, align 8
  %max_size25 = getelementptr inbounds %struct.dimension, %struct.dimension* %32, i32 0, i32 3
  %33 = load i32, i32* %max_size25, align 4
  %34 = load %struct.item_set*, %struct.item_set** %r, align 8
  %num26 = getelementptr inbounds %struct.item_set, %struct.item_set* %34, i32 0, i32 0
  %35 = load i32, i32* %num26, align 4
  %cmp27 = icmp sle i32 %33, %35
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.21
  %36 = load %struct.table*, %struct.table** %t.addr, align 8
  %37 = load i32, i32* %i, align 4
  call void @growTransition(%struct.table* %36, i32 %37)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.21
  %38 = load %struct.table*, %struct.table** %t.addr, align 8
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.item_set*, %struct.item_set** %r, align 8
  call void @addHyperPlane(%struct.table* %38, i32 %39, %struct.item_set* %40)
  br label %if.end.30

if.else:                                          ; preds = %if.end
  %41 = load %struct.item_set*, %struct.item_set** %r, align 8
  call void @freeItem_Set(%struct.item_set* %41)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %42 = load i32, i32* %i, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.item_set* @restrict(%struct.dimension* %d, %struct.item_set* %ts) #0 {
entry:
  %d.addr = alloca %struct.dimension*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %base = alloca [4 x i16], align 2
  %r = alloca %struct.item_set*, align 8
  %found = alloca i32, align 4
  %r_ptr = alloca i16*, align 8
  %ts_current = alloca %struct.item*, align 8
  %r_current = alloca %struct.item*, align 8
  %i = alloca i32, align 4
  %nt = alloca i32, align 4
  store %struct.dimension* %d, %struct.dimension** %d.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %relevant = getelementptr inbounds %struct.dimension, %struct.dimension* %0, i32 0, i32 0
  %1 = load i16*, i16** %relevant, align 8
  store i16* %1, i16** %r_ptr, align 8
  %2 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 7
  %3 = load %struct.item*, %struct.item** %closed, align 8
  store %struct.item* %3, %struct.item** %ts_current, align 8
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay)
  store i32 0, i32* %found, align 4
  %4 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %relevant1 = getelementptr inbounds %struct.dimension, %struct.dimension* %4, i32 0, i32 0
  %5 = load i16*, i16** %relevant1, align 8
  %call = call %struct.item_set* @newItem_Set(i16* %5)
  store %struct.item_set* %call, %struct.item_set** %r, align 8
  %6 = load %struct.item_set*, %struct.item_set** %r, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %6, i32 0, i32 6
  %7 = load %struct.item*, %struct.item** %virgin, align 8
  store %struct.item* %7, %struct.item** %r_current, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i16*, i16** %r_ptr, align 8
  %arrayidx = getelementptr inbounds i16, i16* %9, i64 %idxprom
  %10 = load i16, i16* %arrayidx, align 2
  %conv = sext i16 %10 to i32
  store i32 %conv, i32* %nt, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %nt, align 4
  %idxprom3 = sext i32 %11 to i64
  %12 = load %struct.item*, %struct.item** %ts_current, align 8
  %arrayidx4 = getelementptr inbounds %struct.item, %struct.item* %12, i64 %idxprom3
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx4, i32 0, i32 1
  %13 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %13, null
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %nt, align 4
  %idxprom5 = sext i32 %14 to i64
  %15 = load %struct.item*, %struct.item** %r_current, align 8
  %arrayidx6 = getelementptr inbounds %struct.item, %struct.item* %15, i64 %idxprom5
  %rule7 = getelementptr inbounds %struct.item, %struct.item* %arrayidx6, i32 0, i32 1
  store %struct.rule* @stub_rule, %struct.rule** %rule7, align 8
  %16 = load i32, i32* %found, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.else, label %if.then.9

if.then.9:                                        ; preds = %if.then
  store i32 1, i32* %found, align 4
  %arraydecay10 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %17 = load i32, i32* %nt, align 4
  %idxprom11 = sext i32 %17 to i64
  %18 = load %struct.item*, %struct.item** %ts_current, align 8
  %arrayidx12 = getelementptr inbounds %struct.item, %struct.item* %18, i64 %idxprom11
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx12, i32 0, i32 0
  %arraydecay13 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay10, i16* %arraydecay13)
  br label %if.end.27

if.else:                                          ; preds = %if.then
  %19 = load i32, i32* %nt, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load %struct.item*, %struct.item** %ts_current, align 8
  %arrayidx15 = getelementptr inbounds %struct.item, %struct.item* %20, i64 %idxprom14
  %delta16 = getelementptr inbounds %struct.item, %struct.item* %arrayidx15, i32 0, i32 0
  %arraydecay17 = getelementptr inbounds [4 x i16], [4 x i16]* %delta16, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %call19 = call i32 @LESSCOST(i16* %arraydecay17, i16* %arraydecay18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else
  %arraydecay22 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %21 = load i32, i32* %nt, align 4
  %idxprom23 = sext i32 %21 to i64
  %22 = load %struct.item*, %struct.item** %ts_current, align 8
  %arrayidx24 = getelementptr inbounds %struct.item, %struct.item* %22, i64 %idxprom23
  %delta25 = getelementptr inbounds %struct.item, %struct.item* %arrayidx24, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x i16], [4 x i16]* %delta25, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay22, i16* %arraydecay26)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %if.then.9
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.55, %for.end
  %24 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %24 to i64
  %25 = load i16*, i16** %r_ptr, align 8
  %arrayidx31 = getelementptr inbounds i16, i16* %25, i64 %idxprom30
  %26 = load i16, i16* %arrayidx31, align 2
  %conv32 = sext i16 %26 to i32
  store i32 %conv32, i32* %nt, align 4
  %cmp33 = icmp ne i32 %conv32, 0
  br i1 %cmp33, label %for.body.35, label %for.end.57

for.body.35:                                      ; preds = %for.cond.29
  %27 = load i32, i32* %nt, align 4
  %idxprom36 = sext i32 %27 to i64
  %28 = load %struct.item*, %struct.item** %r_current, align 8
  %arrayidx37 = getelementptr inbounds %struct.item, %struct.item* %28, i64 %idxprom36
  %rule38 = getelementptr inbounds %struct.item, %struct.item* %arrayidx37, i32 0, i32 1
  %29 = load %struct.rule*, %struct.rule** %rule38, align 8
  %tobool39 = icmp ne %struct.rule* %29, null
  br i1 %tobool39, label %if.then.40, label %if.end.54

if.then.40:                                       ; preds = %for.body.35
  %30 = load i32, i32* %nt, align 4
  %idxprom41 = sext i32 %30 to i64
  %31 = load %struct.item*, %struct.item** %r_current, align 8
  %arrayidx42 = getelementptr inbounds %struct.item, %struct.item* %31, i64 %idxprom41
  %delta43 = getelementptr inbounds %struct.item, %struct.item* %arrayidx42, i32 0, i32 0
  %arraydecay44 = getelementptr inbounds [4 x i16], [4 x i16]* %delta43, i32 0, i32 0
  %32 = load i32, i32* %nt, align 4
  %idxprom45 = sext i32 %32 to i64
  %33 = load %struct.item*, %struct.item** %ts_current, align 8
  %arrayidx46 = getelementptr inbounds %struct.item, %struct.item* %33, i64 %idxprom45
  %delta47 = getelementptr inbounds %struct.item, %struct.item* %arrayidx46, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i16], [4 x i16]* %delta47, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay44, i16* %arraydecay48)
  %34 = load i32, i32* %nt, align 4
  %idxprom49 = sext i32 %34 to i64
  %35 = load %struct.item*, %struct.item** %r_current, align 8
  %arrayidx50 = getelementptr inbounds %struct.item, %struct.item* %35, i64 %idxprom49
  %delta51 = getelementptr inbounds %struct.item, %struct.item* %arrayidx50, i32 0, i32 0
  %arraydecay52 = getelementptr inbounds [4 x i16], [4 x i16]* %delta51, i32 0, i32 0
  %arraydecay53 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay52, i16* %arraydecay53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.40, %for.body.35
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %36 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.29

for.end.57:                                       ; preds = %for.cond.29
  %37 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %38 = load %struct.item_set*, %struct.item_set** %r, align 8
  %representative = getelementptr inbounds %struct.item_set, %struct.item_set* %38, i32 0, i32 4
  store %struct.item_set* %37, %struct.item_set** %representative, align 8
  %39 = load %struct.item_set*, %struct.item_set** %r, align 8
  ret %struct.item_set* %39
}

declare %struct.item_set* @encode(%struct.mapping*, %struct.item_set*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @growIndex_Map(%struct.index_map* %r) #0 {
entry:
  %r.addr = alloca %struct.index_map*, align 8
  %new = alloca %struct.index_map, align 8
  store %struct.index_map* %r, %struct.index_map** %r.addr, align 8
  %0 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %max_size = getelementptr inbounds %struct.index_map, %struct.index_map* %0, i32 0, i32 0
  %1 = load i32, i32* %max_size, align 4
  %add = add nsw i32 %1, 64
  %max_size1 = getelementptr inbounds %struct.index_map, %struct.index_map* %new, i32 0, i32 0
  store i32 %add, i32* %max_size1, align 4
  %max_size2 = getelementptr inbounds %struct.index_map, %struct.index_map* %new, i32 0, i32 0
  %2 = load i32, i32* %max_size2, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %conv3 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv3)
  %3 = bitcast i8* %call to %struct.item_set**
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %new, i32 0, i32 1
  store %struct.item_set** %3, %struct.item_set*** %class, align 8
  %class4 = getelementptr inbounds %struct.index_map, %struct.index_map* %new, i32 0, i32 1
  %4 = load %struct.item_set**, %struct.item_set*** %class4, align 8
  %5 = bitcast %struct.item_set** %4 to i8*
  %6 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %class5 = getelementptr inbounds %struct.index_map, %struct.index_map* %6, i32 0, i32 1
  %7 = load %struct.item_set**, %struct.item_set*** %class5, align 8
  %8 = bitcast %struct.item_set** %7 to i8*
  %9 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %max_size6 = getelementptr inbounds %struct.index_map, %struct.index_map* %9, i32 0, i32 0
  %10 = load i32, i32* %max_size6, align 4
  %conv7 = sext i32 %10 to i64
  %mul8 = mul i64 %conv7, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %8, i64 %mul8, i32 8, i1 false)
  %11 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %class9 = getelementptr inbounds %struct.index_map, %struct.index_map* %11, i32 0, i32 1
  %12 = load %struct.item_set**, %struct.item_set*** %class9, align 8
  %13 = bitcast %struct.item_set** %12 to i8*
  call void @zfree(i8* %13)
  %14 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %15 = bitcast %struct.index_map* %14 to i8*
  %16 = bitcast %struct.index_map* %new to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 16, i32 8, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @growTransition(%struct.table* %t, i32 %dim) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %dim.addr = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store i32 %dim, i32* %dim.addr, align 4
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 5
  %2 = load i32, i32* %arity, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog.5

sw.bb:                                            ; preds = %entry
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  call void @GT_1(%struct.table* %3)
  br label %sw.epilog.5

sw.bb.1:                                          ; preds = %entry
  %4 = load i32, i32* %dim.addr, align 4
  switch i32 %4, label %sw.default.2 [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.4
  ]

sw.default.2:                                     ; preds = %sw.bb.1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %sw.bb.1
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  call void @GT_2_0(%struct.table* %5)
  br label %sw.epilog.5

sw.bb.4:                                          ; preds = %sw.bb.1
  %6 = load %struct.table*, %struct.table** %t.addr, align 8
  call void @GT_2_1(%struct.table* %6)
  br label %sw.epilog.5

sw.epilog:                                        ; preds = %sw.default.2
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.bb, %sw.bb.3, %sw.bb.4, %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addHyperPlane(%struct.table* %t, i32 %i, %struct.item_set* %ts) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %i.addr = alloca i32, align 4
  %ts.addr = alloca %struct.item_set*, align 8
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 5
  %2 = load i32, i32* %arity, align 4
  switch i32 %2, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.default:                                       ; preds = %entry
  br label %sw.epilog.5

sw.bb:                                            ; preds = %entry
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %4 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  call void @addHP_1(%struct.table* %3, %struct.item_set* %4)
  br label %sw.epilog.5

sw.bb.1:                                          ; preds = %entry
  %5 = load i32, i32* %i.addr, align 4
  switch i32 %5, label %sw.default.2 [
    i32 0, label %sw.bb.3
    i32 1, label %sw.bb.4
  ]

sw.default.2:                                     ; preds = %sw.bb.1
  br label %sw.epilog

sw.bb.3:                                          ; preds = %sw.bb.1
  %6 = load %struct.table*, %struct.table** %t.addr, align 8
  %7 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  call void @addHP_2_0(%struct.table* %6, %struct.item_set* %7)
  br label %sw.epilog.5

sw.bb.4:                                          ; preds = %sw.bb.1
  %8 = load %struct.table*, %struct.table** %t.addr, align 8
  %9 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  call void @addHP_2_1(%struct.table* %8, %struct.item_set* %9)
  br label %sw.epilog.5

sw.epilog:                                        ; preds = %sw.default.2
  br label %sw.epilog.5

sw.epilog.5:                                      ; preds = %sw.bb, %sw.bb.3, %sw.bb.4, %sw.epilog, %sw.default
  ret void
}

declare void @freeItem_Set(%struct.item_set*) #1

; Function Attrs: nounwind uwtable
define %struct.item_set** @transLval(%struct.table* %t, i32 %row, i32 %col) #0 {
entry:
  %retval = alloca %struct.item_set**, align 8
  %t.addr = alloca %struct.table*, align 8
  %row.addr = alloca i32, align 4
  %col.addr = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store i32 %row, i32* %row.addr, align 4
  store i32 %col, i32* %col.addr, align 4
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 5
  %2 = load i32, i32* %arity, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 4
  %4 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  store %struct.item_set** %4, %struct.item_set*** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition2 = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 4
  %6 = load %struct.item_set**, %struct.item_set*** %transition2, align 8
  %7 = load i32, i32* %row.addr, align 4
  %idx.ext = sext i32 %7 to i64
  %add.ptr = getelementptr inbounds %struct.item_set*, %struct.item_set** %6, i64 %idx.ext
  store %struct.item_set** %add.ptr, %struct.item_set*** %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  %8 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition4 = getelementptr inbounds %struct.table, %struct.table* %8, i32 0, i32 4
  %9 = load %struct.item_set**, %struct.item_set*** %transition4, align 8
  %10 = load i32, i32* %row.addr, align 4
  %11 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 1
  %12 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %12, i32 0, i32 3
  %13 = load i32, i32* %max_size, align 4
  %mul = mul nsw i32 %10, %13
  %idx.ext5 = sext i32 %mul to i64
  %add.ptr6 = getelementptr inbounds %struct.item_set*, %struct.item_set** %9, i64 %idx.ext5
  %14 = load i32, i32* %col.addr, align 4
  %idx.ext7 = sext i32 %14 to i64
  %add.ptr8 = getelementptr inbounds %struct.item_set*, %struct.item_set** %add.ptr6, i64 %idx.ext7
  store %struct.item_set** %add.ptr8, %struct.item_set*** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  store %struct.item_set** null, %struct.item_set*** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.3, %sw.bb.1, %sw.bb
  %15 = load %struct.item_set**, %struct.item_set*** %retval
  ret %struct.item_set** %15
}

; Function Attrs: nounwind uwtable
define void @dumpRelevant(i16* %r) #0 {
entry:
  %r.addr = alloca i16*, align 8
  store i16* %r, i16** %r.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i16*, i16** %r.addr, align 8
  %1 = load i16, i16* %0, align 2
  %tobool = icmp ne i16 %1, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i16*, i16** %r.addr, align 8
  %3 = load i16, i16* %2, align 2
  %conv = sext i16 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i16*, i16** %r.addr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %r.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @dumpIndex_Map(%struct.index_map* %r) #0 {
entry:
  %r.addr = alloca %struct.index_map*, align 8
  %i = alloca i32, align 4
  store %struct.index_map* %r, %struct.index_map** %r.addr, align 8
  %0 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %max_size = getelementptr inbounds %struct.index_map, %struct.index_map* %0, i32 0, i32 0
  %1 = load i32, i32* %max_size, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i32 %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.index_map*, %struct.index_map** %r.addr, align 8
  %class = getelementptr inbounds %struct.index_map, %struct.index_map* %7, i32 0, i32 1
  %8 = load %struct.item_set**, %struct.item_set*** %class, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %8, i64 %idxprom
  %9 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %9, i32 0, i32 0
  %10 = load i32, i32* %num, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i32 %5, i32 %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @dumpDimension(%struct.dimension* %d) #0 {
entry:
  %d.addr = alloca %struct.dimension*, align 8
  store %struct.dimension* %d, %struct.dimension** %d.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %0 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %relevant = getelementptr inbounds %struct.dimension, %struct.dimension* %0, i32 0, i32 0
  %1 = load i16*, i16** %relevant, align 8
  call void @dumpRelevant(i16* %1)
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %2 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %index_map = getelementptr inbounds %struct.dimension, %struct.dimension* %2, i32 0, i32 1
  call void @dumpIndex_Map(%struct.index_map* %index_map)
  %3 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %3, i32 0, i32 2
  %4 = load %struct.mapping*, %struct.mapping** %map, align 8
  call void @dumpMapping(%struct.mapping* %4)
  %5 = load %struct.dimension*, %struct.dimension** %d.addr, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %5, i32 0, i32 3
  %6 = load i32, i32* %max_size, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 %6)
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

declare void @dumpMapping(%struct.mapping*) #1

; Function Attrs: nounwind uwtable
define void @dumpTable(%struct.table* %t, i32 %full) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %full.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store i32 %full, i32* %full.addr, align 4
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %tobool = icmp ne %struct.table* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0))
  %1 = load i32, i32* %full.addr, align 4
  %tobool2 = icmp ne i32 %1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %2, i32 0, i32 0
  %3 = load %struct.operator*, %struct.operator** %op, align 8
  call void @dumpOperator(%struct.operator* %3, i32 0)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %op5 = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 0
  %6 = load %struct.operator*, %struct.operator** %op5, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %6, i32 0, i32 5
  %7 = load i32, i32* %arity, align 4
  %cmp = icmp slt i32 %4, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i32 %8)
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 %idxprom
  %11 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  call void @dumpDimension(%struct.dimension* %11)
  %12 = load i32, i32* %i, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.table*, %struct.table** %t.addr, align 8
  call void @dumpTransition(%struct.table* %14)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @dumpOperator(%struct.operator*, i32) #1

; Function Attrs: nounwind uwtable
define void @dumpTransition(%struct.table* %t) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %ts = alloca %struct.item_set**, align 8
  store %struct.table* %t, %struct.table** %t.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 0
  %1 = load %struct.operator*, %struct.operator** %op, align 8
  %arity = getelementptr inbounds %struct.operator, %struct.operator* %1, i32 0, i32 5
  %2 = load i32, i32* %arity, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 4
  %4 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %4, i64 0
  %5 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  %num = getelementptr inbounds %struct.item_set, %struct.item_set* %5, i32 0, i32 0
  %6 = load i32, i32* %num, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 %6)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %8, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %9 = load %struct.dimension*, %struct.dimension** %arrayidx3, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %9, i32 0, i32 2
  %10 = load %struct.mapping*, %struct.mapping** %map, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %10, i32 0, i32 3
  %11 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %7, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %cmp4 = icmp sgt i32 %12, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition6 = getelementptr inbounds %struct.table, %struct.table* %14, i32 0, i32 4
  %15 = load %struct.item_set**, %struct.item_set*** %transition6, align 8
  %arrayidx7 = getelementptr inbounds %struct.item_set*, %struct.item_set** %15, i64 %idxprom
  %16 = load %struct.item_set*, %struct.item_set** %arrayidx7, align 8
  %num8 = getelementptr inbounds %struct.item_set, %struct.item_set* %16, i32 0, i32 0
  %17 = load i32, i32* %num8, align 4
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %17)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.44, %sw.bb.11
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen14 = getelementptr inbounds %struct.table, %struct.table* %20, i32 0, i32 3
  %arrayidx15 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen14, i32 0, i64 0
  %21 = load %struct.dimension*, %struct.dimension** %arrayidx15, align 8
  %map16 = getelementptr inbounds %struct.dimension, %struct.dimension* %21, i32 0, i32 2
  %22 = load %struct.mapping*, %struct.mapping** %map16, align 8
  %count17 = getelementptr inbounds %struct.mapping, %struct.mapping* %22, i32 0, i32 3
  %23 = load i32, i32* %count17, align 4
  %cmp18 = icmp slt i32 %19, %23
  br i1 %cmp18, label %for.body.19, label %for.end.46

for.body.19:                                      ; preds = %for.cond.13
  %24 = load i32, i32* %i, align 4
  %cmp20 = icmp sgt i32 %24, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body.19
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body.19
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.40, %if.end.23
  %25 = load i32, i32* %j, align 4
  %26 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen27 = getelementptr inbounds %struct.table, %struct.table* %26, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen27, i32 0, i64 1
  %27 = load %struct.dimension*, %struct.dimension** %arrayidx28, align 8
  %map29 = getelementptr inbounds %struct.dimension, %struct.dimension* %27, i32 0, i32 2
  %28 = load %struct.mapping*, %struct.mapping** %map29, align 8
  %count30 = getelementptr inbounds %struct.mapping, %struct.mapping* %28, i32 0, i32 3
  %29 = load i32, i32* %count30, align 4
  %cmp31 = icmp slt i32 %25, %29
  br i1 %cmp31, label %for.body.32, label %for.end.42

for.body.32:                                      ; preds = %for.cond.26
  %30 = load %struct.table*, %struct.table** %t.addr, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %call33 = call %struct.item_set** @transLval(%struct.table* %30, i32 %31, i32 %32)
  store %struct.item_set** %call33, %struct.item_set*** %ts, align 8
  %33 = load i32, i32* %j, align 4
  %cmp34 = icmp sgt i32 %33, 0
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body.32
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.body.32
  %34 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %35 = load %struct.item_set*, %struct.item_set** %34, align 8
  %num38 = getelementptr inbounds %struct.item_set, %struct.item_set* %35, i32 0, i32 0
  %36 = load i32, i32* %num38, align 4
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 %36)
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.37
  %37 = load i32, i32* %j, align 4
  %inc41 = add nsw i32 %37, 1
  store i32 %inc41, i32* %j, align 4
  br label %for.cond.26

for.end.42:                                       ; preds = %for.cond.26
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0))
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.42
  %38 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %38, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.13

for.end.46:                                       ; preds = %for.cond.13
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.46, %for.end, %sw.bb
  ret void
}

declare %struct.mapping* @newMapping(i32) #1

declare void @ZEROCOST(i16*) #1

declare %struct.item_set* @newItem_Set(i16*) #1

declare void @ASSIGNCOST(i16*, i16*) #1

declare i32 @LESSCOST(i16*, i16*) #1

declare void @MINUSCOST(i16*, i16*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @zfree(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @GT_1(%struct.table* %t) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts = alloca %struct.item_set**, align 8
  %oldsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %1 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %1, i32 0, i32 3
  %2 = load i32, i32* %max_size, align 4
  store i32 %2, i32* %oldsize, align 4
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen1 = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen1, i32 0, i64 0
  %4 = load %struct.dimension*, %struct.dimension** %arrayidx2, align 8
  %max_size3 = getelementptr inbounds %struct.dimension, %struct.dimension* %4, i32 0, i32 3
  %5 = load i32, i32* %max_size3, align 4
  %add = add nsw i32 %5, 8
  store i32 %add, i32* %newsize, align 4
  %6 = load i32, i32* %newsize, align 4
  %7 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen4 = getelementptr inbounds %struct.table, %struct.table* %7, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen4, i32 0, i64 0
  %8 = load %struct.dimension*, %struct.dimension** %arrayidx5, align 8
  %max_size6 = getelementptr inbounds %struct.dimension, %struct.dimension* %8, i32 0, i32 3
  store i32 %6, i32* %max_size6, align 4
  %9 = load i32, i32* %newsize, align 4
  %conv = sext i32 %9 to i64
  %mul = mul i64 %conv, 8
  %conv7 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv7)
  %10 = bitcast i8* %call to %struct.item_set**
  store %struct.item_set** %10, %struct.item_set*** %ts, align 8
  %11 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %12 = bitcast %struct.item_set** %11 to i8*
  %13 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %13, i32 0, i32 4
  %14 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %15 = bitcast %struct.item_set** %14 to i8*
  %16 = load i32, i32* %oldsize, align 4
  %conv8 = sext i32 %16 to i64
  %mul9 = mul i64 %conv8, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %15, i64 %mul9, i32 8, i1 false)
  %17 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition10 = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 4
  %18 = load %struct.item_set**, %struct.item_set*** %transition10, align 8
  %19 = bitcast %struct.item_set** %18 to i8*
  call void @zfree(i8* %19)
  %20 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %21 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition11 = getelementptr inbounds %struct.table, %struct.table* %21, i32 0, i32 4
  store %struct.item_set** %20, %struct.item_set*** %transition11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GT_2_0(%struct.table* %t) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts = alloca %struct.item_set**, align 8
  %oldsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %size = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %1 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %1, i32 0, i32 3
  %2 = load i32, i32* %max_size, align 4
  store i32 %2, i32* %oldsize, align 4
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen1 = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen1, i32 0, i64 0
  %4 = load %struct.dimension*, %struct.dimension** %arrayidx2, align 8
  %max_size3 = getelementptr inbounds %struct.dimension, %struct.dimension* %4, i32 0, i32 3
  %5 = load i32, i32* %max_size3, align 4
  %add = add nsw i32 %5, 8
  store i32 %add, i32* %newsize, align 4
  %6 = load i32, i32* %newsize, align 4
  %7 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen4 = getelementptr inbounds %struct.table, %struct.table* %7, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen4, i32 0, i64 0
  %8 = load %struct.dimension*, %struct.dimension** %arrayidx5, align 8
  %max_size6 = getelementptr inbounds %struct.dimension, %struct.dimension* %8, i32 0, i32 3
  store i32 %6, i32* %max_size6, align 4
  %9 = load i32, i32* %newsize, align 4
  %10 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen7 = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen7, i32 0, i64 1
  %11 = load %struct.dimension*, %struct.dimension** %arrayidx8, align 8
  %max_size9 = getelementptr inbounds %struct.dimension, %struct.dimension* %11, i32 0, i32 3
  %12 = load i32, i32* %max_size9, align 4
  %mul = mul nsw i32 %9, %12
  store i32 %mul, i32* %size, align 4
  %13 = load i32, i32* %size, align 4
  %conv = sext i32 %13 to i64
  %mul10 = mul i64 %conv, 8
  %conv11 = trunc i64 %mul10 to i32
  %call = call i8* @zalloc(i32 %conv11)
  %14 = bitcast i8* %call to %struct.item_set**
  store %struct.item_set** %14, %struct.item_set*** %ts, align 8
  %15 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %16 = bitcast %struct.item_set** %15 to i8*
  %17 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %17, i32 0, i32 4
  %18 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %19 = bitcast %struct.item_set** %18 to i8*
  %20 = load i32, i32* %oldsize, align 4
  %21 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen12 = getelementptr inbounds %struct.table, %struct.table* %21, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen12, i32 0, i64 1
  %22 = load %struct.dimension*, %struct.dimension** %arrayidx13, align 8
  %max_size14 = getelementptr inbounds %struct.dimension, %struct.dimension* %22, i32 0, i32 3
  %23 = load i32, i32* %max_size14, align 4
  %mul15 = mul nsw i32 %20, %23
  %conv16 = sext i32 %mul15 to i64
  %mul17 = mul i64 %conv16, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %19, i64 %mul17, i32 8, i1 false)
  %24 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition18 = getelementptr inbounds %struct.table, %struct.table* %24, i32 0, i32 4
  %25 = load %struct.item_set**, %struct.item_set*** %transition18, align 8
  %26 = bitcast %struct.item_set** %25 to i8*
  call void @zfree(i8* %26)
  %27 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %28 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition19 = getelementptr inbounds %struct.table, %struct.table* %28, i32 0, i32 4
  store %struct.item_set** %27, %struct.item_set*** %transition19, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @GT_2_1(%struct.table* %t) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts = alloca %struct.item_set**, align 8
  %oldsize = alloca i32, align 4
  %newsize = alloca i32, align 4
  %size = alloca i32, align 4
  %from = alloca %struct.item_set**, align 8
  %to = alloca %struct.item_set**, align 8
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  store %struct.table* %t, %struct.table** %t.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 1
  %1 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %1, i32 0, i32 3
  %2 = load i32, i32* %max_size, align 4
  store i32 %2, i32* %oldsize, align 4
  %3 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen1 = getelementptr inbounds %struct.table, %struct.table* %3, i32 0, i32 3
  %arrayidx2 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen1, i32 0, i64 1
  %4 = load %struct.dimension*, %struct.dimension** %arrayidx2, align 8
  %max_size3 = getelementptr inbounds %struct.dimension, %struct.dimension* %4, i32 0, i32 3
  %5 = load i32, i32* %max_size3, align 4
  %add = add nsw i32 %5, 8
  store i32 %add, i32* %newsize, align 4
  %6 = load i32, i32* %newsize, align 4
  %7 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen4 = getelementptr inbounds %struct.table, %struct.table* %7, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen4, i32 0, i64 1
  %8 = load %struct.dimension*, %struct.dimension** %arrayidx5, align 8
  %max_size6 = getelementptr inbounds %struct.dimension, %struct.dimension* %8, i32 0, i32 3
  store i32 %6, i32* %max_size6, align 4
  %9 = load i32, i32* %newsize, align 4
  %10 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen7 = getelementptr inbounds %struct.table, %struct.table* %10, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen7, i32 0, i64 0
  %11 = load %struct.dimension*, %struct.dimension** %arrayidx8, align 8
  %max_size9 = getelementptr inbounds %struct.dimension, %struct.dimension* %11, i32 0, i32 3
  %12 = load i32, i32* %max_size9, align 4
  %mul = mul nsw i32 %9, %12
  store i32 %mul, i32* %size, align 4
  %13 = load i32, i32* %size, align 4
  %conv = sext i32 %13 to i64
  %mul10 = mul i64 %conv, 8
  %conv11 = trunc i64 %mul10 to i32
  %call = call i8* @zalloc(i32 %conv11)
  %14 = bitcast i8* %call to %struct.item_set**
  store %struct.item_set** %14, %struct.item_set*** %ts, align 8
  %15 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %15, i32 0, i32 4
  %16 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  store %struct.item_set** %16, %struct.item_set*** %from, align 8
  %17 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  store %struct.item_set** %17, %struct.item_set*** %to, align 8
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %18 = load i32, i32* %i1, align 4
  %19 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen12 = getelementptr inbounds %struct.table, %struct.table* %19, i32 0, i32 3
  %arrayidx13 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen12, i32 0, i64 0
  %20 = load %struct.dimension*, %struct.dimension** %arrayidx13, align 8
  %max_size14 = getelementptr inbounds %struct.dimension, %struct.dimension* %20, i32 0, i32 3
  %21 = load i32, i32* %max_size14, align 4
  %cmp = icmp slt i32 %18, %21
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i2, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body
  %22 = load i32, i32* %i2, align 4
  %23 = load i32, i32* %oldsize, align 4
  %cmp17 = icmp slt i32 %22, %23
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.16
  %24 = load i32, i32* %i2, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.item_set**, %struct.item_set*** %from, align 8
  %arrayidx20 = getelementptr inbounds %struct.item_set*, %struct.item_set** %25, i64 %idxprom
  %26 = load %struct.item_set*, %struct.item_set** %arrayidx20, align 8
  %27 = load i32, i32* %i2, align 4
  %idxprom21 = sext i32 %27 to i64
  %28 = load %struct.item_set**, %struct.item_set*** %to, align 8
  %arrayidx22 = getelementptr inbounds %struct.item_set*, %struct.item_set** %28, i64 %idxprom21
  store %struct.item_set* %26, %struct.item_set** %arrayidx22, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %29 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %30 = load i32, i32* %newsize, align 4
  %31 = load %struct.item_set**, %struct.item_set*** %to, align 8
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds %struct.item_set*, %struct.item_set** %31, i64 %idx.ext
  store %struct.item_set** %add.ptr, %struct.item_set*** %to, align 8
  %32 = load i32, i32* %oldsize, align 4
  %33 = load %struct.item_set**, %struct.item_set*** %from, align 8
  %idx.ext23 = sext i32 %32 to i64
  %add.ptr24 = getelementptr inbounds %struct.item_set*, %struct.item_set** %33, i64 %idx.ext23
  store %struct.item_set** %add.ptr24, %struct.item_set*** %from, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %34 = load i32, i32* %i1, align 4
  %inc26 = add nsw i32 %34, 1
  store i32 %inc26, i32* %i1, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  %35 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition28 = getelementptr inbounds %struct.table, %struct.table* %35, i32 0, i32 4
  %36 = load %struct.item_set**, %struct.item_set*** %transition28, align 8
  %37 = bitcast %struct.item_set** %36 to i8*
  call void @zfree(i8* %37)
  %38 = load %struct.item_set**, %struct.item_set*** %ts, align 8
  %39 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition29 = getelementptr inbounds %struct.table, %struct.table* %39, i32 0, i32 4
  store %struct.item_set** %38, %struct.item_set*** %transition29, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addHP_1(%struct.table* %t, %struct.item_set* %ts) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %pl = alloca %struct.list*, align 8
  %e = alloca %struct.item_set*, align 8
  %tmp = alloca %struct.item_set*, align 8
  %new = alloca i32, align 4
  %p = alloca %struct.rule*, align 8
  %dc = alloca [4 x i16], align 2
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  %0 = load %struct.table*, %struct.table** %t.addr, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %0, i32 0, i32 2
  %1 = load i16*, i16** %relevant, align 8
  %call = call %struct.item_set* @newItem_Set(i16* %1)
  store %struct.item_set* %call, %struct.item_set** %e, align 8
  %2 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %representative = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 4
  %3 = load %struct.item_set*, %struct.item_set** %representative, align 8
  %4 = load %struct.item_set*, %struct.item_set** %e, align 8
  %kids = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids, i32 0, i64 0
  store %struct.item_set* %3, %struct.item_set** %arrayidx, align 8
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 1
  %6 = load %struct.list*, %struct.list** %rules, align 8
  store %struct.list* %6, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %8, i32 0, i32 0
  %9 = load i8*, i8** %x, align 8
  %10 = bitcast i8* %9 to %struct.rule*
  store %struct.rule* %10, %struct.rule** %p, align 8
  %11 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 0
  %12 = load %struct.operator*, %struct.operator** %op, align 8
  %13 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 5
  %14 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op3 = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 1
  %15 = load %struct.operator*, %struct.operator** %op3, align 8
  %cmp = icmp eq %struct.operator* %12, %15
  br i1 %cmp, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %for.body
  %16 = load %struct.rule*, %struct.rule** %p, align 8
  %pat4 = getelementptr inbounds %struct.rule, %struct.rule* %16, i32 0, i32 5
  %17 = load %struct.pattern*, %struct.pattern** %pat4, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 2
  %arrayidx5 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %18 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx5, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %18, i32 0, i32 1
  %19 = load i32, i32* %num, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %20, i32 0, i32 6
  %21 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx6 = getelementptr inbounds %struct.item, %struct.item* %21, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx6, i32 0, i32 1
  %22 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool7 = icmp ne %struct.rule* %22, null
  br i1 %tobool7, label %if.then, label %if.end.53

if.then:                                          ; preds = %land.lhs.true
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %23 = load %struct.rule*, %struct.rule** %p, align 8
  %pat9 = getelementptr inbounds %struct.rule, %struct.rule* %23, i32 0, i32 5
  %24 = load %struct.pattern*, %struct.pattern** %pat9, align 8
  %children10 = getelementptr inbounds %struct.pattern, %struct.pattern* %24, i32 0, i32 2
  %arrayidx11 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children10, i32 0, i64 0
  %25 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx11, align 8
  %num12 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %25, i32 0, i32 1
  %26 = load i32, i32* %num12, align 4
  %idxprom13 = sext i32 %26 to i64
  %27 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin14 = getelementptr inbounds %struct.item_set, %struct.item_set* %27, i32 0, i32 6
  %28 = load %struct.item*, %struct.item** %virgin14, align 8
  %arrayidx15 = getelementptr inbounds %struct.item, %struct.item* %28, i64 %idxprom13
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx15, i32 0, i32 0
  %arraydecay16 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay, i16* %arraydecay16)
  %arraydecay17 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %29 = load %struct.rule*, %struct.rule** %p, align 8
  %delta18 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 0
  %arraydecay19 = getelementptr inbounds [4 x i16], [4 x i16]* %delta18, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay17, i16* %arraydecay19)
  %30 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %30, i32 0, i32 4
  %31 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num20 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %31, i32 0, i32 1
  %32 = load i32, i32* %num20, align 4
  %idxprom21 = sext i32 %32 to i64
  %33 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin22 = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 6
  %34 = load %struct.item*, %struct.item** %virgin22, align 8
  %arrayidx23 = getelementptr inbounds %struct.item, %struct.item* %34, i64 %idxprom21
  %rule24 = getelementptr inbounds %struct.item, %struct.item* %arrayidx23, i32 0, i32 1
  %35 = load %struct.rule*, %struct.rule** %rule24, align 8
  %tobool25 = icmp ne %struct.rule* %35, null
  br i1 %tobool25, label %lor.lhs.false, label %if.then.36

lor.lhs.false:                                    ; preds = %if.then
  %arraydecay26 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %36 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs27 = getelementptr inbounds %struct.rule, %struct.rule* %36, i32 0, i32 4
  %37 = load %struct.nonterminal*, %struct.nonterminal** %lhs27, align 8
  %num28 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %37, i32 0, i32 1
  %38 = load i32, i32* %num28, align 4
  %idxprom29 = sext i32 %38 to i64
  %39 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin30 = getelementptr inbounds %struct.item_set, %struct.item_set* %39, i32 0, i32 6
  %40 = load %struct.item*, %struct.item** %virgin30, align 8
  %arrayidx31 = getelementptr inbounds %struct.item, %struct.item* %40, i64 %idxprom29
  %delta32 = getelementptr inbounds %struct.item, %struct.item* %arrayidx31, i32 0, i32 0
  %arraydecay33 = getelementptr inbounds [4 x i16], [4 x i16]* %delta32, i32 0, i32 0
  %call34 = call i32 @LESSCOST(i16* %arraydecay26, i16* %arraydecay33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %lor.lhs.false, %if.then
  %41 = load %struct.rule*, %struct.rule** %p, align 8
  %42 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs37 = getelementptr inbounds %struct.rule, %struct.rule* %42, i32 0, i32 4
  %43 = load %struct.nonterminal*, %struct.nonterminal** %lhs37, align 8
  %num38 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %43, i32 0, i32 1
  %44 = load i32, i32* %num38, align 4
  %idxprom39 = sext i32 %44 to i64
  %45 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin40 = getelementptr inbounds %struct.item_set, %struct.item_set* %45, i32 0, i32 6
  %46 = load %struct.item*, %struct.item** %virgin40, align 8
  %arrayidx41 = getelementptr inbounds %struct.item, %struct.item* %46, i64 %idxprom39
  %rule42 = getelementptr inbounds %struct.item, %struct.item* %arrayidx41, i32 0, i32 1
  store %struct.rule* %41, %struct.rule** %rule42, align 8
  %47 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs43 = getelementptr inbounds %struct.rule, %struct.rule* %47, i32 0, i32 4
  %48 = load %struct.nonterminal*, %struct.nonterminal** %lhs43, align 8
  %num44 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %48, i32 0, i32 1
  %49 = load i32, i32* %num44, align 4
  %idxprom45 = sext i32 %49 to i64
  %50 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin46 = getelementptr inbounds %struct.item_set, %struct.item_set* %50, i32 0, i32 6
  %51 = load %struct.item*, %struct.item** %virgin46, align 8
  %arrayidx47 = getelementptr inbounds %struct.item, %struct.item* %51, i64 %idxprom45
  %delta48 = getelementptr inbounds %struct.item, %struct.item* %arrayidx47, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [4 x i16], [4 x i16]* %delta48, i32 0, i32 0
  %arraydecay50 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay49, i16* %arraydecay50)
  %52 = load %struct.table*, %struct.table** %t.addr, align 8
  %op51 = getelementptr inbounds %struct.table, %struct.table* %52, i32 0, i32 0
  %53 = load %struct.operator*, %struct.operator** %op51, align 8
  %54 = load %struct.item_set*, %struct.item_set** %e, align 8
  %op52 = getelementptr inbounds %struct.item_set, %struct.item_set* %54, i32 0, i32 2
  store %struct.operator* %53, %struct.operator** %op52, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.36, %lor.lhs.false
  br label %if.end.53

if.end.53:                                        ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %55 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %55, i32 0, i32 1
  %56 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %56, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %57 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @trim(%struct.item_set* %57)
  %58 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @zero(%struct.item_set* %58)
  %59 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %60 = load %struct.item_set*, %struct.item_set** %e, align 8
  %call54 = call %struct.item_set* @encode(%struct.mapping* %59, %struct.item_set* %60, i32* %new)
  store %struct.item_set* %call54, %struct.item_set** %tmp, align 8
  %61 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  %62 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num55 = getelementptr inbounds %struct.item_set, %struct.item_set* %62, i32 0, i32 0
  %63 = load i32, i32* %num55, align 4
  %idxprom56 = sext i32 %63 to i64
  %64 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %64, i32 0, i32 4
  %65 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx57 = getelementptr inbounds %struct.item_set*, %struct.item_set** %65, i64 %idxprom56
  store %struct.item_set* %61, %struct.item_set** %arrayidx57, align 8
  %66 = load i32, i32* %new, align 4
  %tobool58 = icmp ne i32 %66, 0
  br i1 %tobool58, label %if.then.59, label %if.else

if.then.59:                                       ; preds = %for.end
  %67 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @closure(%struct.item_set* %67)
  %68 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %69 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  call void @addQ(%struct.queue* %68, %struct.item_set* %69)
  br label %if.end.60

if.else:                                          ; preds = %for.end
  %70 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @freeItem_Set(%struct.item_set* %70)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else, %if.then.59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addHP_2_0(%struct.table* %t, %struct.item_set* %ts) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %pl = alloca %struct.list*, align 8
  %e = alloca %struct.item_set*, align 8
  %tmp = alloca %struct.item_set*, align 8
  %new = alloca i32, align 4
  %i2 = alloca i32, align 4
  %p = alloca %struct.rule*, align 8
  %dc = alloca [4 x i16], align 2
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  store i32 0, i32* %i2, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.108, %entry
  %0 = load i32, i32* %i2, align 4
  %1 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 1
  %2 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %2, i32 0, i32 2
  %3 = load %struct.mapping*, %struct.mapping** %map, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %4
  br i1 %cmp, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 2
  %6 = load i16*, i16** %relevant, align 8
  %call = call %struct.item_set* @newItem_Set(i16* %6)
  store %struct.item_set* %call, %struct.item_set** %e, align 8
  %7 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %representative = getelementptr inbounds %struct.item_set, %struct.item_set* %7, i32 0, i32 4
  %8 = load %struct.item_set*, %struct.item_set** %representative, align 8
  %9 = load %struct.item_set*, %struct.item_set** %e, align 8
  %kids = getelementptr inbounds %struct.item_set, %struct.item_set* %9, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids, i32 0, i64 0
  store %struct.item_set* %8, %struct.item_set** %arrayidx3, align 8
  %10 = load i32, i32* %i2, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen4 = getelementptr inbounds %struct.table, %struct.table* %11, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen4, i32 0, i64 1
  %12 = load %struct.dimension*, %struct.dimension** %arrayidx5, align 8
  %map6 = getelementptr inbounds %struct.dimension, %struct.dimension* %12, i32 0, i32 2
  %13 = load %struct.mapping*, %struct.mapping** %map6, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %13, i32 0, i32 4
  %14 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx7 = getelementptr inbounds %struct.item_set*, %struct.item_set** %14, i64 %idxprom
  %15 = load %struct.item_set*, %struct.item_set** %arrayidx7, align 8
  %representative8 = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 4
  %16 = load %struct.item_set*, %struct.item_set** %representative8, align 8
  %17 = load %struct.item_set*, %struct.item_set** %e, align 8
  %kids9 = getelementptr inbounds %struct.item_set, %struct.item_set* %17, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids9, i32 0, i64 1
  store %struct.item_set* %16, %struct.item_set** %arrayidx10, align 8
  %18 = load %struct.table*, %struct.table** %t.addr, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %18, i32 0, i32 1
  %19 = load %struct.list*, %struct.list** %rules, align 8
  store %struct.list* %19, %struct.list** %pl, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %20 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %20, null
  br i1 %tobool, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.11
  %21 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 0
  %22 = load i8*, i8** %x, align 8
  %23 = bitcast i8* %22 to %struct.rule*
  store %struct.rule* %23, %struct.rule** %p, align 8
  %24 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %24, i32 0, i32 0
  %25 = load %struct.operator*, %struct.operator** %op, align 8
  %26 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 5
  %27 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op14 = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 1
  %28 = load %struct.operator*, %struct.operator** %op14, align 8
  %cmp15 = icmp eq %struct.operator* %25, %28
  br i1 %cmp15, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %for.body.12
  %29 = load %struct.rule*, %struct.rule** %p, align 8
  %pat16 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 5
  %30 = load %struct.pattern*, %struct.pattern** %pat16, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %31 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx17, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %31, i32 0, i32 1
  %32 = load i32, i32* %num, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 6
  %34 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx19 = getelementptr inbounds %struct.item, %struct.item* %34, i64 %idxprom18
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx19, i32 0, i32 1
  %35 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool20 = icmp ne %struct.rule* %35, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.98

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %36 = load %struct.rule*, %struct.rule** %p, align 8
  %pat22 = getelementptr inbounds %struct.rule, %struct.rule* %36, i32 0, i32 5
  %37 = load %struct.pattern*, %struct.pattern** %pat22, align 8
  %children23 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children23, i32 0, i64 1
  %38 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx24, align 8
  %num25 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %38, i32 0, i32 1
  %39 = load i32, i32* %num25, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load i32, i32* %i2, align 4
  %idxprom27 = sext i32 %40 to i64
  %41 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen28 = getelementptr inbounds %struct.table, %struct.table* %41, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen28, i32 0, i64 1
  %42 = load %struct.dimension*, %struct.dimension** %arrayidx29, align 8
  %map30 = getelementptr inbounds %struct.dimension, %struct.dimension* %42, i32 0, i32 2
  %43 = load %struct.mapping*, %struct.mapping** %map30, align 8
  %set31 = getelementptr inbounds %struct.mapping, %struct.mapping* %43, i32 0, i32 4
  %44 = load %struct.item_set**, %struct.item_set*** %set31, align 8
  %arrayidx32 = getelementptr inbounds %struct.item_set*, %struct.item_set** %44, i64 %idxprom27
  %45 = load %struct.item_set*, %struct.item_set** %arrayidx32, align 8
  %virgin33 = getelementptr inbounds %struct.item_set, %struct.item_set* %45, i32 0, i32 6
  %46 = load %struct.item*, %struct.item** %virgin33, align 8
  %arrayidx34 = getelementptr inbounds %struct.item, %struct.item* %46, i64 %idxprom26
  %rule35 = getelementptr inbounds %struct.item, %struct.item* %arrayidx34, i32 0, i32 1
  %47 = load %struct.rule*, %struct.rule** %rule35, align 8
  %tobool36 = icmp ne %struct.rule* %47, null
  br i1 %tobool36, label %if.then, label %if.end.98

if.then:                                          ; preds = %land.lhs.true.21
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %48 = load %struct.rule*, %struct.rule** %p, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %48, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay, i16* %arraydecay38)
  %arraydecay39 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %49 = load %struct.rule*, %struct.rule** %p, align 8
  %pat40 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 5
  %50 = load %struct.pattern*, %struct.pattern** %pat40, align 8
  %children41 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children41, i32 0, i64 0
  %51 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx42, align 8
  %num43 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %51, i32 0, i32 1
  %52 = load i32, i32* %num43, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin45 = getelementptr inbounds %struct.item_set, %struct.item_set* %53, i32 0, i32 6
  %54 = load %struct.item*, %struct.item** %virgin45, align 8
  %arrayidx46 = getelementptr inbounds %struct.item, %struct.item* %54, i64 %idxprom44
  %delta47 = getelementptr inbounds %struct.item, %struct.item* %arrayidx46, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i16], [4 x i16]* %delta47, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay39, i16* %arraydecay48)
  %arraydecay49 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %55 = load %struct.rule*, %struct.rule** %p, align 8
  %pat50 = getelementptr inbounds %struct.rule, %struct.rule* %55, i32 0, i32 5
  %56 = load %struct.pattern*, %struct.pattern** %pat50, align 8
  %children51 = getelementptr inbounds %struct.pattern, %struct.pattern* %56, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children51, i32 0, i64 1
  %57 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx52, align 8
  %num53 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %57, i32 0, i32 1
  %58 = load i32, i32* %num53, align 4
  %idxprom54 = sext i32 %58 to i64
  %59 = load i32, i32* %i2, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen56 = getelementptr inbounds %struct.table, %struct.table* %60, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen56, i32 0, i64 1
  %61 = load %struct.dimension*, %struct.dimension** %arrayidx57, align 8
  %map58 = getelementptr inbounds %struct.dimension, %struct.dimension* %61, i32 0, i32 2
  %62 = load %struct.mapping*, %struct.mapping** %map58, align 8
  %set59 = getelementptr inbounds %struct.mapping, %struct.mapping* %62, i32 0, i32 4
  %63 = load %struct.item_set**, %struct.item_set*** %set59, align 8
  %arrayidx60 = getelementptr inbounds %struct.item_set*, %struct.item_set** %63, i64 %idxprom55
  %64 = load %struct.item_set*, %struct.item_set** %arrayidx60, align 8
  %virgin61 = getelementptr inbounds %struct.item_set, %struct.item_set* %64, i32 0, i32 6
  %65 = load %struct.item*, %struct.item** %virgin61, align 8
  %arrayidx62 = getelementptr inbounds %struct.item, %struct.item* %65, i64 %idxprom54
  %delta63 = getelementptr inbounds %struct.item, %struct.item* %arrayidx62, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [4 x i16], [4 x i16]* %delta63, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay49, i16* %arraydecay64)
  %66 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %66, i32 0, i32 4
  %67 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num65 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %67, i32 0, i32 1
  %68 = load i32, i32* %num65, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin67 = getelementptr inbounds %struct.item_set, %struct.item_set* %69, i32 0, i32 6
  %70 = load %struct.item*, %struct.item** %virgin67, align 8
  %arrayidx68 = getelementptr inbounds %struct.item, %struct.item* %70, i64 %idxprom66
  %rule69 = getelementptr inbounds %struct.item, %struct.item* %arrayidx68, i32 0, i32 1
  %71 = load %struct.rule*, %struct.rule** %rule69, align 8
  %tobool70 = icmp ne %struct.rule* %71, null
  br i1 %tobool70, label %lor.lhs.false, label %if.then.81

lor.lhs.false:                                    ; preds = %if.then
  %arraydecay71 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %72 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs72 = getelementptr inbounds %struct.rule, %struct.rule* %72, i32 0, i32 4
  %73 = load %struct.nonterminal*, %struct.nonterminal** %lhs72, align 8
  %num73 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %73, i32 0, i32 1
  %74 = load i32, i32* %num73, align 4
  %idxprom74 = sext i32 %74 to i64
  %75 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin75 = getelementptr inbounds %struct.item_set, %struct.item_set* %75, i32 0, i32 6
  %76 = load %struct.item*, %struct.item** %virgin75, align 8
  %arrayidx76 = getelementptr inbounds %struct.item, %struct.item* %76, i64 %idxprom74
  %delta77 = getelementptr inbounds %struct.item, %struct.item* %arrayidx76, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [4 x i16], [4 x i16]* %delta77, i32 0, i32 0
  %call79 = call i32 @LESSCOST(i16* %arraydecay71, i16* %arraydecay78)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end

if.then.81:                                       ; preds = %lor.lhs.false, %if.then
  %77 = load %struct.rule*, %struct.rule** %p, align 8
  %78 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs82 = getelementptr inbounds %struct.rule, %struct.rule* %78, i32 0, i32 4
  %79 = load %struct.nonterminal*, %struct.nonterminal** %lhs82, align 8
  %num83 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %79, i32 0, i32 1
  %80 = load i32, i32* %num83, align 4
  %idxprom84 = sext i32 %80 to i64
  %81 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin85 = getelementptr inbounds %struct.item_set, %struct.item_set* %81, i32 0, i32 6
  %82 = load %struct.item*, %struct.item** %virgin85, align 8
  %arrayidx86 = getelementptr inbounds %struct.item, %struct.item* %82, i64 %idxprom84
  %rule87 = getelementptr inbounds %struct.item, %struct.item* %arrayidx86, i32 0, i32 1
  store %struct.rule* %77, %struct.rule** %rule87, align 8
  %83 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs88 = getelementptr inbounds %struct.rule, %struct.rule* %83, i32 0, i32 4
  %84 = load %struct.nonterminal*, %struct.nonterminal** %lhs88, align 8
  %num89 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %84, i32 0, i32 1
  %85 = load i32, i32* %num89, align 4
  %idxprom90 = sext i32 %85 to i64
  %86 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin91 = getelementptr inbounds %struct.item_set, %struct.item_set* %86, i32 0, i32 6
  %87 = load %struct.item*, %struct.item** %virgin91, align 8
  %arrayidx92 = getelementptr inbounds %struct.item, %struct.item* %87, i64 %idxprom90
  %delta93 = getelementptr inbounds %struct.item, %struct.item* %arrayidx92, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [4 x i16], [4 x i16]* %delta93, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay94, i16* %arraydecay95)
  %88 = load %struct.table*, %struct.table** %t.addr, align 8
  %op96 = getelementptr inbounds %struct.table, %struct.table* %88, i32 0, i32 0
  %89 = load %struct.operator*, %struct.operator** %op96, align 8
  %90 = load %struct.item_set*, %struct.item_set** %e, align 8
  %op97 = getelementptr inbounds %struct.item_set, %struct.item_set* %90, i32 0, i32 2
  store %struct.operator* %89, %struct.operator** %op97, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.81, %lor.lhs.false
  br label %if.end.98

if.end.98:                                        ; preds = %if.end, %land.lhs.true.21, %land.lhs.true, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %91 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %91, i32 0, i32 1
  %92 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %92, %struct.list** %pl, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %93 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @trim(%struct.item_set* %93)
  %94 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @zero(%struct.item_set* %94)
  %95 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %96 = load %struct.item_set*, %struct.item_set** %e, align 8
  %call99 = call %struct.item_set* @encode(%struct.mapping* %95, %struct.item_set* %96, i32* %new)
  store %struct.item_set* %call99, %struct.item_set** %tmp, align 8
  %97 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  %98 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num100 = getelementptr inbounds %struct.item_set, %struct.item_set* %98, i32 0, i32 0
  %99 = load i32, i32* %num100, align 4
  %100 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen101 = getelementptr inbounds %struct.table, %struct.table* %100, i32 0, i32 3
  %arrayidx102 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen101, i32 0, i64 1
  %101 = load %struct.dimension*, %struct.dimension** %arrayidx102, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %101, i32 0, i32 3
  %102 = load i32, i32* %max_size, align 4
  %mul = mul nsw i32 %99, %102
  %103 = load i32, i32* %i2, align 4
  %add = add nsw i32 %mul, %103
  %idxprom103 = sext i32 %add to i64
  %104 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %104, i32 0, i32 4
  %105 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx104 = getelementptr inbounds %struct.item_set*, %struct.item_set** %105, i64 %idxprom103
  store %struct.item_set* %97, %struct.item_set** %arrayidx104, align 8
  %106 = load i32, i32* %new, align 4
  %tobool105 = icmp ne i32 %106, 0
  br i1 %tobool105, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %for.end
  %107 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @closure(%struct.item_set* %107)
  %108 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %109 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  call void @addQ(%struct.queue* %108, %struct.item_set* %109)
  br label %if.end.107

if.else:                                          ; preds = %for.end
  %110 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @freeItem_Set(%struct.item_set* %110)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.106
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %111 = load i32, i32* %i2, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i2, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @addHP_2_1(%struct.table* %t, %struct.item_set* %ts) #0 {
entry:
  %t.addr = alloca %struct.table*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %pl = alloca %struct.list*, align 8
  %e = alloca %struct.item_set*, align 8
  %tmp = alloca %struct.item_set*, align 8
  %new = alloca i32, align 4
  %i1 = alloca i32, align 4
  %p = alloca %struct.rule*, align 8
  %dc = alloca [4 x i16], align 2
  store %struct.table* %t, %struct.table** %t.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.108, %entry
  %0 = load i32, i32* %i1, align 4
  %1 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 3
  %arrayidx = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen, i32 0, i64 0
  %2 = load %struct.dimension*, %struct.dimension** %arrayidx, align 8
  %map = getelementptr inbounds %struct.dimension, %struct.dimension* %2, i32 0, i32 2
  %3 = load %struct.mapping*, %struct.mapping** %map, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %3, i32 0, i32 3
  %4 = load i32, i32* %count, align 4
  %cmp = icmp slt i32 %0, %4
  br i1 %cmp, label %for.body, label %for.end.109

for.body:                                         ; preds = %for.cond
  %5 = load %struct.table*, %struct.table** %t.addr, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %5, i32 0, i32 2
  %6 = load i16*, i16** %relevant, align 8
  %call = call %struct.item_set* @newItem_Set(i16* %6)
  store %struct.item_set* %call, %struct.item_set** %e, align 8
  %7 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen3 = getelementptr inbounds %struct.table, %struct.table* %8, i32 0, i32 3
  %arrayidx4 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen3, i32 0, i64 0
  %9 = load %struct.dimension*, %struct.dimension** %arrayidx4, align 8
  %map5 = getelementptr inbounds %struct.dimension, %struct.dimension* %9, i32 0, i32 2
  %10 = load %struct.mapping*, %struct.mapping** %map5, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %10, i32 0, i32 4
  %11 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx6 = getelementptr inbounds %struct.item_set*, %struct.item_set** %11, i64 %idxprom
  %12 = load %struct.item_set*, %struct.item_set** %arrayidx6, align 8
  %representative = getelementptr inbounds %struct.item_set, %struct.item_set* %12, i32 0, i32 4
  %13 = load %struct.item_set*, %struct.item_set** %representative, align 8
  %14 = load %struct.item_set*, %struct.item_set** %e, align 8
  %kids = getelementptr inbounds %struct.item_set, %struct.item_set* %14, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids, i32 0, i64 0
  store %struct.item_set* %13, %struct.item_set** %arrayidx7, align 8
  %15 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %representative8 = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 4
  %16 = load %struct.item_set*, %struct.item_set** %representative8, align 8
  %17 = load %struct.item_set*, %struct.item_set** %e, align 8
  %kids9 = getelementptr inbounds %struct.item_set, %struct.item_set* %17, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [2 x %struct.item_set*], [2 x %struct.item_set*]* %kids9, i32 0, i64 1
  store %struct.item_set* %16, %struct.item_set** %arrayidx10, align 8
  %18 = load %struct.table*, %struct.table** %t.addr, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %18, i32 0, i32 1
  %19 = load %struct.list*, %struct.list** %rules, align 8
  store %struct.list* %19, %struct.list** %pl, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %for.body
  %20 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %20, null
  br i1 %tobool, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.11
  %21 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 0
  %22 = load i8*, i8** %x, align 8
  %23 = bitcast i8* %22 to %struct.rule*
  store %struct.rule* %23, %struct.rule** %p, align 8
  %24 = load %struct.table*, %struct.table** %t.addr, align 8
  %op = getelementptr inbounds %struct.table, %struct.table* %24, i32 0, i32 0
  %25 = load %struct.operator*, %struct.operator** %op, align 8
  %26 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %26, i32 0, i32 5
  %27 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op14 = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 1
  %28 = load %struct.operator*, %struct.operator** %op14, align 8
  %cmp15 = icmp eq %struct.operator* %25, %28
  br i1 %cmp15, label %land.lhs.true, label %if.end.98

land.lhs.true:                                    ; preds = %for.body.12
  %29 = load %struct.rule*, %struct.rule** %p, align 8
  %pat16 = getelementptr inbounds %struct.rule, %struct.rule* %29, i32 0, i32 5
  %30 = load %struct.pattern*, %struct.pattern** %pat16, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 2
  %arrayidx17 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 1
  %31 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx17, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %31, i32 0, i32 1
  %32 = load i32, i32* %num, align 4
  %idxprom18 = sext i32 %32 to i64
  %33 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 6
  %34 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx19 = getelementptr inbounds %struct.item, %struct.item* %34, i64 %idxprom18
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx19, i32 0, i32 1
  %35 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool20 = icmp ne %struct.rule* %35, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.98

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %36 = load %struct.rule*, %struct.rule** %p, align 8
  %pat22 = getelementptr inbounds %struct.rule, %struct.rule* %36, i32 0, i32 5
  %37 = load %struct.pattern*, %struct.pattern** %pat22, align 8
  %children23 = getelementptr inbounds %struct.pattern, %struct.pattern* %37, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children23, i32 0, i64 0
  %38 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx24, align 8
  %num25 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %38, i32 0, i32 1
  %39 = load i32, i32* %num25, align 4
  %idxprom26 = sext i32 %39 to i64
  %40 = load i32, i32* %i1, align 4
  %idxprom27 = sext i32 %40 to i64
  %41 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen28 = getelementptr inbounds %struct.table, %struct.table* %41, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen28, i32 0, i64 0
  %42 = load %struct.dimension*, %struct.dimension** %arrayidx29, align 8
  %map30 = getelementptr inbounds %struct.dimension, %struct.dimension* %42, i32 0, i32 2
  %43 = load %struct.mapping*, %struct.mapping** %map30, align 8
  %set31 = getelementptr inbounds %struct.mapping, %struct.mapping* %43, i32 0, i32 4
  %44 = load %struct.item_set**, %struct.item_set*** %set31, align 8
  %arrayidx32 = getelementptr inbounds %struct.item_set*, %struct.item_set** %44, i64 %idxprom27
  %45 = load %struct.item_set*, %struct.item_set** %arrayidx32, align 8
  %virgin33 = getelementptr inbounds %struct.item_set, %struct.item_set* %45, i32 0, i32 6
  %46 = load %struct.item*, %struct.item** %virgin33, align 8
  %arrayidx34 = getelementptr inbounds %struct.item, %struct.item* %46, i64 %idxprom26
  %rule35 = getelementptr inbounds %struct.item, %struct.item* %arrayidx34, i32 0, i32 1
  %47 = load %struct.rule*, %struct.rule** %rule35, align 8
  %tobool36 = icmp ne %struct.rule* %47, null
  br i1 %tobool36, label %if.then, label %if.end.98

if.then:                                          ; preds = %land.lhs.true.21
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %48 = load %struct.rule*, %struct.rule** %p, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %48, i32 0, i32 0
  %arraydecay38 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay, i16* %arraydecay38)
  %arraydecay39 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %49 = load %struct.rule*, %struct.rule** %p, align 8
  %pat40 = getelementptr inbounds %struct.rule, %struct.rule* %49, i32 0, i32 5
  %50 = load %struct.pattern*, %struct.pattern** %pat40, align 8
  %children41 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children41, i32 0, i64 1
  %51 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx42, align 8
  %num43 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %51, i32 0, i32 1
  %52 = load i32, i32* %num43, align 4
  %idxprom44 = sext i32 %52 to i64
  %53 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin45 = getelementptr inbounds %struct.item_set, %struct.item_set* %53, i32 0, i32 6
  %54 = load %struct.item*, %struct.item** %virgin45, align 8
  %arrayidx46 = getelementptr inbounds %struct.item, %struct.item* %54, i64 %idxprom44
  %delta47 = getelementptr inbounds %struct.item, %struct.item* %arrayidx46, i32 0, i32 0
  %arraydecay48 = getelementptr inbounds [4 x i16], [4 x i16]* %delta47, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay39, i16* %arraydecay48)
  %arraydecay49 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %55 = load %struct.rule*, %struct.rule** %p, align 8
  %pat50 = getelementptr inbounds %struct.rule, %struct.rule* %55, i32 0, i32 5
  %56 = load %struct.pattern*, %struct.pattern** %pat50, align 8
  %children51 = getelementptr inbounds %struct.pattern, %struct.pattern* %56, i32 0, i32 2
  %arrayidx52 = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children51, i32 0, i64 0
  %57 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx52, align 8
  %num53 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %57, i32 0, i32 1
  %58 = load i32, i32* %num53, align 4
  %idxprom54 = sext i32 %58 to i64
  %59 = load i32, i32* %i1, align 4
  %idxprom55 = sext i32 %59 to i64
  %60 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen56 = getelementptr inbounds %struct.table, %struct.table* %60, i32 0, i32 3
  %arrayidx57 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen56, i32 0, i64 0
  %61 = load %struct.dimension*, %struct.dimension** %arrayidx57, align 8
  %map58 = getelementptr inbounds %struct.dimension, %struct.dimension* %61, i32 0, i32 2
  %62 = load %struct.mapping*, %struct.mapping** %map58, align 8
  %set59 = getelementptr inbounds %struct.mapping, %struct.mapping* %62, i32 0, i32 4
  %63 = load %struct.item_set**, %struct.item_set*** %set59, align 8
  %arrayidx60 = getelementptr inbounds %struct.item_set*, %struct.item_set** %63, i64 %idxprom55
  %64 = load %struct.item_set*, %struct.item_set** %arrayidx60, align 8
  %virgin61 = getelementptr inbounds %struct.item_set, %struct.item_set* %64, i32 0, i32 6
  %65 = load %struct.item*, %struct.item** %virgin61, align 8
  %arrayidx62 = getelementptr inbounds %struct.item, %struct.item* %65, i64 %idxprom54
  %delta63 = getelementptr inbounds %struct.item, %struct.item* %arrayidx62, i32 0, i32 0
  %arraydecay64 = getelementptr inbounds [4 x i16], [4 x i16]* %delta63, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay49, i16* %arraydecay64)
  %66 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %66, i32 0, i32 4
  %67 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num65 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %67, i32 0, i32 1
  %68 = load i32, i32* %num65, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin67 = getelementptr inbounds %struct.item_set, %struct.item_set* %69, i32 0, i32 6
  %70 = load %struct.item*, %struct.item** %virgin67, align 8
  %arrayidx68 = getelementptr inbounds %struct.item, %struct.item* %70, i64 %idxprom66
  %rule69 = getelementptr inbounds %struct.item, %struct.item* %arrayidx68, i32 0, i32 1
  %71 = load %struct.rule*, %struct.rule** %rule69, align 8
  %tobool70 = icmp ne %struct.rule* %71, null
  br i1 %tobool70, label %lor.lhs.false, label %if.then.81

lor.lhs.false:                                    ; preds = %if.then
  %arraydecay71 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %72 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs72 = getelementptr inbounds %struct.rule, %struct.rule* %72, i32 0, i32 4
  %73 = load %struct.nonterminal*, %struct.nonterminal** %lhs72, align 8
  %num73 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %73, i32 0, i32 1
  %74 = load i32, i32* %num73, align 4
  %idxprom74 = sext i32 %74 to i64
  %75 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin75 = getelementptr inbounds %struct.item_set, %struct.item_set* %75, i32 0, i32 6
  %76 = load %struct.item*, %struct.item** %virgin75, align 8
  %arrayidx76 = getelementptr inbounds %struct.item, %struct.item* %76, i64 %idxprom74
  %delta77 = getelementptr inbounds %struct.item, %struct.item* %arrayidx76, i32 0, i32 0
  %arraydecay78 = getelementptr inbounds [4 x i16], [4 x i16]* %delta77, i32 0, i32 0
  %call79 = call i32 @LESSCOST(i16* %arraydecay71, i16* %arraydecay78)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end

if.then.81:                                       ; preds = %lor.lhs.false, %if.then
  %77 = load %struct.rule*, %struct.rule** %p, align 8
  %78 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs82 = getelementptr inbounds %struct.rule, %struct.rule* %78, i32 0, i32 4
  %79 = load %struct.nonterminal*, %struct.nonterminal** %lhs82, align 8
  %num83 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %79, i32 0, i32 1
  %80 = load i32, i32* %num83, align 4
  %idxprom84 = sext i32 %80 to i64
  %81 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin85 = getelementptr inbounds %struct.item_set, %struct.item_set* %81, i32 0, i32 6
  %82 = load %struct.item*, %struct.item** %virgin85, align 8
  %arrayidx86 = getelementptr inbounds %struct.item, %struct.item* %82, i64 %idxprom84
  %rule87 = getelementptr inbounds %struct.item, %struct.item* %arrayidx86, i32 0, i32 1
  store %struct.rule* %77, %struct.rule** %rule87, align 8
  %83 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs88 = getelementptr inbounds %struct.rule, %struct.rule* %83, i32 0, i32 4
  %84 = load %struct.nonterminal*, %struct.nonterminal** %lhs88, align 8
  %num89 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %84, i32 0, i32 1
  %85 = load i32, i32* %num89, align 4
  %idxprom90 = sext i32 %85 to i64
  %86 = load %struct.item_set*, %struct.item_set** %e, align 8
  %virgin91 = getelementptr inbounds %struct.item_set, %struct.item_set* %86, i32 0, i32 6
  %87 = load %struct.item*, %struct.item** %virgin91, align 8
  %arrayidx92 = getelementptr inbounds %struct.item, %struct.item* %87, i64 %idxprom90
  %delta93 = getelementptr inbounds %struct.item, %struct.item* %arrayidx92, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [4 x i16], [4 x i16]* %delta93, i32 0, i32 0
  %arraydecay95 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay94, i16* %arraydecay95)
  %88 = load %struct.table*, %struct.table** %t.addr, align 8
  %op96 = getelementptr inbounds %struct.table, %struct.table* %88, i32 0, i32 0
  %89 = load %struct.operator*, %struct.operator** %op96, align 8
  %90 = load %struct.item_set*, %struct.item_set** %e, align 8
  %op97 = getelementptr inbounds %struct.item_set, %struct.item_set* %90, i32 0, i32 2
  store %struct.operator* %89, %struct.operator** %op97, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.81, %lor.lhs.false
  br label %if.end.98

if.end.98:                                        ; preds = %if.end, %land.lhs.true.21, %land.lhs.true, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %91 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %91, i32 0, i32 1
  %92 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %92, %struct.list** %pl, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  %93 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @trim(%struct.item_set* %93)
  %94 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @zero(%struct.item_set* %94)
  %95 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %96 = load %struct.item_set*, %struct.item_set** %e, align 8
  %call99 = call %struct.item_set* @encode(%struct.mapping* %95, %struct.item_set* %96, i32* %new)
  store %struct.item_set* %call99, %struct.item_set** %tmp, align 8
  %97 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  %98 = load i32, i32* %i1, align 4
  %99 = load %struct.table*, %struct.table** %t.addr, align 8
  %dimen100 = getelementptr inbounds %struct.table, %struct.table* %99, i32 0, i32 3
  %arrayidx101 = getelementptr inbounds [2 x %struct.dimension*], [2 x %struct.dimension*]* %dimen100, i32 0, i64 1
  %100 = load %struct.dimension*, %struct.dimension** %arrayidx101, align 8
  %max_size = getelementptr inbounds %struct.dimension, %struct.dimension* %100, i32 0, i32 3
  %101 = load i32, i32* %max_size, align 4
  %mul = mul nsw i32 %98, %101
  %102 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num102 = getelementptr inbounds %struct.item_set, %struct.item_set* %102, i32 0, i32 0
  %103 = load i32, i32* %num102, align 4
  %add = add nsw i32 %mul, %103
  %idxprom103 = sext i32 %add to i64
  %104 = load %struct.table*, %struct.table** %t.addr, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %104, i32 0, i32 4
  %105 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx104 = getelementptr inbounds %struct.item_set*, %struct.item_set** %105, i64 %idxprom103
  store %struct.item_set* %97, %struct.item_set** %arrayidx104, align 8
  %106 = load i32, i32* %new, align 4
  %tobool105 = icmp ne i32 %106, 0
  br i1 %tobool105, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %for.end
  %107 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @closure(%struct.item_set* %107)
  %108 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %109 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  call void @addQ(%struct.queue* %108, %struct.item_set* %109)
  br label %if.end.107

if.else:                                          ; preds = %for.end
  %110 = load %struct.item_set*, %struct.item_set** %e, align 8
  call void @freeItem_Set(%struct.item_set* %110)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else, %if.then.106
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %111 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %111, 1
  store i32 %inc, i32* %i1, align 4
  br label %for.cond

for.end.109:                                      ; preds = %for.cond
  ret void
}

declare void @ADDCOST(i16*, i16*) #1

declare void @trim(%struct.item_set*) #1

declare void @zero(%struct.item_set*) #1

declare void @closure(%struct.item_set*) #1

declare void @addQ(%struct.queue*, %struct.item_set*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
