; ModuleID = './MultiSource.Applications.Burg/17.closure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.item = type { [4 x i16], %struct.rule* }

@rcsid_closure = global [49 x i8] c"$Id: closure.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@prevent_divergence = global i32 0, align 4
@rules = external global %struct.list*, align 8
@chainrules = common global %struct.list* null, align 8
@max_nonterminal = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @findChainRules() #0 {
entry:
  %pl = alloca %struct.list*, align 8
  %p = alloca %struct.rule*, align 8
  %0 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %0, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %2, i32 0, i32 0
  %3 = load i8*, i8** %x, align 8
  %4 = bitcast i8* %3 to %struct.rule*
  store %struct.rule* %4, %struct.rule** %p, align 8
  %5 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %5, i32 0, i32 5
  %6 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op = getelementptr inbounds %struct.pattern, %struct.pattern* %6, i32 0, i32 1
  %7 = load %struct.operator*, %struct.operator** %op, align 8
  %tobool1 = icmp ne %struct.operator* %7, null
  br i1 %tobool1, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load %struct.rule*, %struct.rule** %p, align 8
  %9 = bitcast %struct.rule* %8 to i8*
  %10 = load %struct.list*, %struct.list** @chainrules, align 8
  %call = call %struct.list* @newList(i8* %9, %struct.list* %10)
  store %struct.list* %call, %struct.list** @chainrules, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load %struct.rule*, %struct.rule** %p, align 8
  %12 = bitcast %struct.rule* %11 to i8*
  %13 = load %struct.rule*, %struct.rule** %p, align 8
  %pat2 = getelementptr inbounds %struct.rule, %struct.rule* %13, i32 0, i32 5
  %14 = load %struct.pattern*, %struct.pattern** %pat2, align 8
  %op3 = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 1
  %15 = load %struct.operator*, %struct.operator** %op3, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %15, i32 0, i32 6
  %16 = load %struct.table*, %struct.table** %table, align 8
  %rules = getelementptr inbounds %struct.table, %struct.table* %16, i32 0, i32 1
  %17 = load %struct.list*, %struct.list** %rules, align 8
  %call4 = call %struct.list* @newList(i8* %12, %struct.list* %17)
  %18 = load %struct.rule*, %struct.rule** %p, align 8
  %pat5 = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 5
  %19 = load %struct.pattern*, %struct.pattern** %pat5, align 8
  %op6 = getelementptr inbounds %struct.pattern, %struct.pattern* %19, i32 0, i32 1
  %20 = load %struct.operator*, %struct.operator** %op6, align 8
  %table7 = getelementptr inbounds %struct.operator, %struct.operator* %20, i32 0, i32 6
  %21 = load %struct.table*, %struct.table** %table7, align 8
  %rules8 = getelementptr inbounds %struct.table, %struct.table* %21, i32 0, i32 1
  store %struct.list* %call4, %struct.list** %rules8, align 8
  %22 = load %struct.rule*, %struct.rule** %p, align 8
  %pat9 = getelementptr inbounds %struct.rule, %struct.rule* %22, i32 0, i32 5
  %23 = load %struct.pattern*, %struct.pattern** %pat9, align 8
  %op10 = getelementptr inbounds %struct.pattern, %struct.pattern* %23, i32 0, i32 1
  %24 = load %struct.operator*, %struct.operator** %op10, align 8
  %table11 = getelementptr inbounds %struct.operator, %struct.operator* %24, i32 0, i32 6
  %25 = load %struct.table*, %struct.table** %table11, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %25, i32 0, i32 2
  %26 = load i16*, i16** %relevant, align 8
  %27 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %27, i32 0, i32 4
  %28 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %28, i32 0, i32 1
  %29 = load i32, i32* %num, align 4
  call void @addRelevant(i16* %26, i32 %29)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %30 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 1
  %31 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %31, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.list* @newList(i8*, %struct.list*) #1

declare void @addRelevant(i16*, i32) #1

; Function Attrs: nounwind uwtable
define void @zero(%struct.item_set* %t) #0 {
entry:
  %t.addr = alloca %struct.item_set*, align 8
  %i = alloca i32, align 4
  %base = alloca [4 x i16], align 2
  %exists = alloca i32, align 4
  %base_nt = alloca i32, align 4
  store %struct.item_set* %t, %struct.item_set** %t.addr, align 8
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  call void @ZEROCOST(i16* %arraydecay)
  store i32 0, i32* %exists, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_nonterminal, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %3, i32 0, i32 6
  %4 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %4, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %5 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool = icmp ne %struct.rule* %5, null
  br i1 %tobool, label %if.then, label %if.end.23

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %exists, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin4 = getelementptr inbounds %struct.item_set, %struct.item_set* %8, i32 0, i32 6
  %9 = load %struct.item*, %struct.item** %virgin4, align 8
  %arrayidx5 = getelementptr inbounds %struct.item, %struct.item* %9, i64 %idxprom3
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx5, i32 0, i32 0
  %arraydecay6 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  %arraydecay7 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %call = call i32 @LESSCOST(i16* %arraydecay6, i16* %arraydecay7)
  %tobool8 = icmp ne i32 %call, 0
  br i1 %tobool8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.2
  %arraydecay10 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %10 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %10 to i64
  %11 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin12 = getelementptr inbounds %struct.item_set, %struct.item_set* %11, i32 0, i32 6
  %12 = load %struct.item*, %struct.item** %virgin12, align 8
  %arrayidx13 = getelementptr inbounds %struct.item, %struct.item* %12, i64 %idxprom11
  %delta14 = getelementptr inbounds %struct.item, %struct.item* %arrayidx13, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [4 x i16], [4 x i16]* %delta14, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay10, i16* %arraydecay15)
  %13 = load i32, i32* %i, align 4
  store i32 %13, i32* %base_nt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then.2
  br label %if.end.22

if.else:                                          ; preds = %if.then
  %arraydecay16 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %15 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin18 = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 6
  %16 = load %struct.item*, %struct.item** %virgin18, align 8
  %arrayidx19 = getelementptr inbounds %struct.item, %struct.item* %16, i64 %idxprom17
  %delta20 = getelementptr inbounds %struct.item, %struct.item* %arrayidx19, i32 0, i32 0
  %arraydecay21 = getelementptr inbounds [4 x i16], [4 x i16]* %delta20, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay16, i16* %arraydecay21)
  store i32 1, i32* %exists, align 4
  %17 = load i32, i32* %i, align 4
  store i32 %17, i32* %base_nt, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %exists, align 4
  %tobool24 = icmp ne i32 %19, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %for.end
  br label %for.end.53

if.end.26:                                        ; preds = %for.end
  store i32 0, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.51, %if.end.26
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @max_nonterminal, align 4
  %cmp28 = icmp slt i32 %20, %21
  br i1 %cmp28, label %for.body.29, label %for.end.53

for.body.29:                                      ; preds = %for.cond.27
  %22 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %22 to i64
  %23 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin31 = getelementptr inbounds %struct.item_set, %struct.item_set* %23, i32 0, i32 6
  %24 = load %struct.item*, %struct.item** %virgin31, align 8
  %arrayidx32 = getelementptr inbounds %struct.item, %struct.item* %24, i64 %idxprom30
  %rule33 = getelementptr inbounds %struct.item, %struct.item* %arrayidx32, i32 0, i32 1
  %25 = load %struct.rule*, %struct.rule** %rule33, align 8
  %tobool34 = icmp ne %struct.rule* %25, null
  br i1 %tobool34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %for.body.29
  %26 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %26 to i64
  %27 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin37 = getelementptr inbounds %struct.item_set, %struct.item_set* %27, i32 0, i32 6
  %28 = load %struct.item*, %struct.item** %virgin37, align 8
  %arrayidx38 = getelementptr inbounds %struct.item, %struct.item* %28, i64 %idxprom36
  %delta39 = getelementptr inbounds %struct.item, %struct.item* %arrayidx38, i32 0, i32 0
  %arraydecay40 = getelementptr inbounds [4 x i16], [4 x i16]* %delta39, i32 0, i32 0
  %arraydecay41 = getelementptr inbounds [4 x i16], [4 x i16]* %base, i32 0, i32 0
  call void @MINUSCOST(i16* %arraydecay40, i16* %arraydecay41)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.35, %for.body.29
  %29 = load i32, i32* @prevent_divergence, align 4
  %cmp43 = icmp sgt i32 %29, 0
  br i1 %cmp43, label %if.then.44, label %if.end.50

if.then.44:                                       ; preds = %if.end.42
  %30 = load i32, i32* %i, align 4
  %idxprom45 = sext i32 %30 to i64
  %31 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin46 = getelementptr inbounds %struct.item_set, %struct.item_set* %31, i32 0, i32 6
  %32 = load %struct.item*, %struct.item** %virgin46, align 8
  %arrayidx47 = getelementptr inbounds %struct.item, %struct.item* %32, i64 %idxprom45
  %delta48 = getelementptr inbounds %struct.item, %struct.item* %arrayidx47, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [4 x i16], [4 x i16]* %delta48, i32 0, i32 0
  %33 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %base_nt, align 4
  call void @CHECKDIVERGE(i16* %arraydecay49, %struct.item_set* %33, i32 %34, i32 %35)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.44, %if.end.42
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %36 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %36, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.27

for.end.53:                                       ; preds = %if.then.25, %for.cond.27
  ret void
}

declare void @ZEROCOST(i16*) #1

declare i32 @LESSCOST(i16*, i16*) #1

declare void @ASSIGNCOST(i16*, i16*) #1

declare void @MINUSCOST(i16*, i16*) #1

declare void @CHECKDIVERGE(i16*, %struct.item_set*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @closure(%struct.item_set* %t) #0 {
entry:
  %t.addr = alloca %struct.item_set*, align 8
  %changes = alloca i32, align 4
  %pl = alloca %struct.list*, align 8
  %p = alloca %struct.rule*, align 8
  %rhs_item = alloca %struct.item*, align 8
  %dc = alloca [4 x i16], align 2
  %lhs_item = alloca %struct.item*, align 8
  store %struct.item_set* %t, %struct.item_set** %t.addr, align 8
  %0 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %0, i32 0, i32 6
  %1 = load %struct.item*, %struct.item** %virgin, align 8
  %call = call %struct.item* @itemArrayCopy(%struct.item* %1)
  %2 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 7
  store %struct.item* %call, %struct.item** %closed, align 8
  store i32 1, i32* %changes, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i32, i32* %changes, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changes, align 4
  %4 = load %struct.list*, %struct.list** @chainrules, align 8
  store %struct.list* %4, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load %struct.list*, %struct.list** %pl, align 8
  %tobool1 = icmp ne %struct.list* %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0
  %7 = load i8*, i8** %x, align 8
  %8 = bitcast i8* %7 to %struct.rule*
  store %struct.rule* %8, %struct.rule** %p, align 8
  %9 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %9, i32 0, i32 5
  %10 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %children = getelementptr inbounds %struct.pattern, %struct.pattern* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [2 x %struct.nonterminal*], [2 x %struct.nonterminal*]* %children, i32 0, i64 0
  %11 = load %struct.nonterminal*, %struct.nonterminal** %arrayidx, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %11, i32 0, i32 1
  %12 = load i32, i32* %num, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %closed2 = getelementptr inbounds %struct.item_set, %struct.item_set* %13, i32 0, i32 7
  %14 = load %struct.item*, %struct.item** %closed2, align 8
  %arrayidx3 = getelementptr inbounds %struct.item, %struct.item* %14, i64 %idxprom
  store %struct.item* %arrayidx3, %struct.item** %rhs_item, align 8
  %15 = load %struct.item*, %struct.item** %rhs_item, align 8
  %rule = getelementptr inbounds %struct.item, %struct.item* %15, i32 0, i32 1
  %16 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool4 = icmp ne %struct.rule* %16, null
  br i1 %tobool4, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body
  %17 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %17, i32 0, i32 4
  %18 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num5 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %18, i32 0, i32 1
  %19 = load i32, i32* %num5, align 4
  %idxprom6 = sext i32 %19 to i64
  %20 = load %struct.item_set*, %struct.item_set** %t.addr, align 8
  %closed7 = getelementptr inbounds %struct.item_set, %struct.item_set* %20, i32 0, i32 7
  %21 = load %struct.item*, %struct.item** %closed7, align 8
  %arrayidx8 = getelementptr inbounds %struct.item, %struct.item* %21, i64 %idxprom6
  store %struct.item* %arrayidx8, %struct.item** %lhs_item, align 8
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %22 = load %struct.item*, %struct.item** %rhs_item, align 8
  %delta = getelementptr inbounds %struct.item, %struct.item* %22, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay, i16* %arraydecay9)
  %arraydecay10 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %23 = load %struct.rule*, %struct.rule** %p, align 8
  %delta11 = getelementptr inbounds %struct.rule, %struct.rule* %23, i32 0, i32 0
  %arraydecay12 = getelementptr inbounds [4 x i16], [4 x i16]* %delta11, i32 0, i32 0
  call void @ADDCOST(i16* %arraydecay10, i16* %arraydecay12)
  %arraydecay13 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  %24 = load %struct.item*, %struct.item** %lhs_item, align 8
  %delta14 = getelementptr inbounds %struct.item, %struct.item* %24, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [4 x i16], [4 x i16]* %delta14, i32 0, i32 0
  %call16 = call i32 @LESSCOST(i16* %arraydecay13, i16* %arraydecay15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %25 = load %struct.item*, %struct.item** %lhs_item, align 8
  %rule18 = getelementptr inbounds %struct.item, %struct.item* %25, i32 0, i32 1
  %26 = load %struct.rule*, %struct.rule** %rule18, align 8
  %tobool19 = icmp ne %struct.rule* %26, null
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %lor.lhs.false, %if.then
  %27 = load %struct.item*, %struct.item** %lhs_item, align 8
  %delta21 = getelementptr inbounds %struct.item, %struct.item* %27, i32 0, i32 0
  %arraydecay22 = getelementptr inbounds [4 x i16], [4 x i16]* %delta21, i32 0, i32 0
  %arraydecay23 = getelementptr inbounds [4 x i16], [4 x i16]* %dc, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay22, i16* %arraydecay23)
  %28 = load %struct.rule*, %struct.rule** %p, align 8
  %29 = load %struct.item*, %struct.item** %lhs_item, align 8
  %rule24 = getelementptr inbounds %struct.item, %struct.item* %29, i32 0, i32 1
  store %struct.rule* %28, %struct.rule** %rule24, align 8
  store i32 1, i32* %changes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.20, %lor.lhs.false
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %30 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %30, i32 0, i32 1
  %31 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %31, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.item* @itemArrayCopy(%struct.item*) #1

declare void @ADDCOST(i16*, i16*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
