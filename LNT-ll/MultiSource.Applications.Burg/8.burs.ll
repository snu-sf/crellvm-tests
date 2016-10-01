; ModuleID = './MultiSource.Applications.Burg/8.burs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.queue = type { %struct.list*, %struct.list* }
%struct.list = type { i8*, %struct.list* }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
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

@rcsid_burs = global [48 x i8] c"$Id: burs.c 4613 2002-11-07 23:37:19Z lattner $\00", align 16
@globalQ = external global %struct.queue*, align 8
@globalMap = external global %struct.mapping*, align 8
@errorState = common global %struct.item_set* null, align 8
@leaves = external global %struct.list*, align 8
@debugTables = external global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"---initial set of states ---\0A\00", align 1
@operators = external global %struct.list*, align 8
@rules = external global %struct.list*, align 8

; Function Attrs: nounwind uwtable
define void @build() #0 {
entry:
  %new = alloca i32, align 4
  %ol = alloca %struct.list*, align 8
  %ts = alloca %struct.item_set*, align 8
  %op = alloca %struct.operator*, align 8
  %call = call %struct.queue* @newQ()
  store %struct.queue* %call, %struct.queue** @globalQ, align 8
  %call1 = call %struct.mapping* @newMapping(i32 32768)
  store %struct.mapping* %call1, %struct.mapping** @globalMap, align 8
  %call2 = call %struct.item_set* @newItem_Set(i16* null)
  store %struct.item_set* %call2, %struct.item_set** %ts, align 8
  %0 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %1 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %call3 = call %struct.item_set* @encode(%struct.mapping* %0, %struct.item_set* %1, i32* %new)
  store %struct.item_set* %call3, %struct.item_set** @errorState, align 8
  %2 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 6
  %3 = load %struct.item*, %struct.item** %virgin, align 8
  %4 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %closed = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i32 0, i32 7
  store %struct.item* %3, %struct.item** %closed, align 8
  %5 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %6 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @addQ(%struct.queue* %5, %struct.item_set* %6)
  %7 = load %struct.list*, %struct.list** @leaves, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.operator*)* @doLeaf to i8* (i8*)*), %struct.list* %7)
  %8 = load i32, i32* @debugTables, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load i32, i32* @debugTables, align 4
  %tobool5 = icmp ne i32 %9, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  %10 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  call void @dumpMapping(%struct.mapping* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.end
  %11 = load i32, i32* @debugTables, align 4
  %tobool8 = icmp ne i32 %11, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %head = getelementptr inbounds %struct.queue, %struct.queue* %12, i32 0, i32 0
  %13 = load %struct.list*, %struct.list** %head, align 8
  call void @foreachList(i8* (i8*)* bitcast (void (%struct.item_set*)* @dumpItem_Set to i8* (i8*)*), %struct.list* %13)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.7
  %14 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %call11 = call %struct.item_set* @popQ(%struct.queue* %14)
  store %struct.item_set* %call11, %struct.item_set** %ts, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %if.end.10
  %15 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %tobool12 = icmp ne %struct.item_set* %15, null
  br i1 %tobool12, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %16 = load %struct.list*, %struct.list** @operators, align 8
  store %struct.list* %16, %struct.list** %ol, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %17 = load %struct.list*, %struct.list** %ol, align 8
  %tobool14 = icmp ne %struct.list* %17, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %18 = load %struct.list*, %struct.list** %ol, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %18, i32 0, i32 0
  %19 = load i8*, i8** %x, align 8
  %20 = bitcast i8* %19 to %struct.operator*
  store %struct.operator* %20, %struct.operator** %op, align 8
  %21 = load %struct.operator*, %struct.operator** %op, align 8
  %call16 = call %struct.operator* @addTypeInfo(%struct.operator* %21)
  store %struct.operator* %call16, %struct.operator** %op, align 8
  %22 = load %struct.operator*, %struct.operator** %op, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %22, i32 0, i32 6
  %23 = load %struct.table*, %struct.table** %table, align 8
  %24 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @addToTable(%struct.table* %23, %struct.item_set* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %25 = load %struct.list*, %struct.list** %ol, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %25, i32 0, i32 1
  %26 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %26, %struct.list** %ol, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %27 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %call18 = call %struct.item_set* @popQ(%struct.queue* %27)
  store %struct.item_set* %call18, %struct.item_set** %ts, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  ret void
}

declare %struct.queue* @newQ() #1

declare %struct.mapping* @newMapping(i32) #1

declare %struct.item_set* @newItem_Set(i16*) #1

declare %struct.item_set* @encode(%struct.mapping*, %struct.item_set*, i32*) #1

declare void @addQ(%struct.queue*, %struct.item_set*) #1

declare void @foreachList(i8* (i8*)*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define internal void @doLeaf(%struct.operator* %leaf) #0 {
entry:
  %leaf.addr = alloca %struct.operator*, align 8
  %new = alloca i32, align 4
  %pl = alloca %struct.list*, align 8
  %ts = alloca %struct.item_set*, align 8
  %tmp = alloca %struct.item_set*, align 8
  %p = alloca %struct.rule*, align 8
  store %struct.operator* %leaf, %struct.operator** %leaf.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %leaf.addr, align 8
  %table = getelementptr inbounds %struct.operator, %struct.operator* %0, i32 0, i32 6
  %1 = load %struct.table*, %struct.table** %table, align 8
  %relevant = getelementptr inbounds %struct.table, %struct.table* %1, i32 0, i32 2
  %2 = load i16*, i16** %relevant, align 8
  %call = call %struct.item_set* @newItem_Set(i16* %2)
  store %struct.item_set* %call, %struct.item_set** %ts, align 8
  %3 = load %struct.list*, %struct.list** @rules, align 8
  store %struct.list* %3, %struct.list** %pl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.list*, %struct.list** %pl, align 8
  %tobool = icmp ne %struct.list* %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.list*, %struct.list** %pl, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %5, i32 0, i32 0
  %6 = load i8*, i8** %x, align 8
  %7 = bitcast i8* %6 to %struct.rule*
  store %struct.rule* %7, %struct.rule** %p, align 8
  %8 = load %struct.rule*, %struct.rule** %p, align 8
  %pat = getelementptr inbounds %struct.rule, %struct.rule* %8, i32 0, i32 5
  %9 = load %struct.pattern*, %struct.pattern** %pat, align 8
  %op = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 1
  %10 = load %struct.operator*, %struct.operator** %op, align 8
  %11 = load %struct.operator*, %struct.operator** %leaf.addr, align 8
  %cmp = icmp eq %struct.operator* %10, %11
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body
  %12 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs = getelementptr inbounds %struct.rule, %struct.rule* %12, i32 0, i32 4
  %13 = load %struct.nonterminal*, %struct.nonterminal** %lhs, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %13, i32 0, i32 1
  %14 = load i32, i32* %num, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %15, i32 0, i32 6
  %16 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %16, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %17 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool2 = icmp ne %struct.rule* %17, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.then
  %18 = load %struct.rule*, %struct.rule** %p, align 8
  %delta = getelementptr inbounds %struct.rule, %struct.rule* %18, i32 0, i32 0
  %arraydecay = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i32 0
  %19 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs3 = getelementptr inbounds %struct.rule, %struct.rule* %19, i32 0, i32 4
  %20 = load %struct.nonterminal*, %struct.nonterminal** %lhs3, align 8
  %num4 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %20, i32 0, i32 1
  %21 = load i32, i32* %num4, align 4
  %idxprom5 = sext i32 %21 to i64
  %22 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin6 = getelementptr inbounds %struct.item_set, %struct.item_set* %22, i32 0, i32 6
  %23 = load %struct.item*, %struct.item** %virgin6, align 8
  %arrayidx7 = getelementptr inbounds %struct.item, %struct.item* %23, i64 %idxprom5
  %delta8 = getelementptr inbounds %struct.item, %struct.item* %arrayidx7, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [4 x i16], [4 x i16]* %delta8, i32 0, i32 0
  %cmp10 = icmp ult i16* %arraydecay, %arraydecay9
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then
  %24 = load %struct.rule*, %struct.rule** %p, align 8
  %25 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs12 = getelementptr inbounds %struct.rule, %struct.rule* %25, i32 0, i32 4
  %26 = load %struct.nonterminal*, %struct.nonterminal** %lhs12, align 8
  %num13 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %26, i32 0, i32 1
  %27 = load i32, i32* %num13, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin15 = getelementptr inbounds %struct.item_set, %struct.item_set* %28, i32 0, i32 6
  %29 = load %struct.item*, %struct.item** %virgin15, align 8
  %arrayidx16 = getelementptr inbounds %struct.item, %struct.item* %29, i64 %idxprom14
  %rule17 = getelementptr inbounds %struct.item, %struct.item* %arrayidx16, i32 0, i32 1
  store %struct.rule* %24, %struct.rule** %rule17, align 8
  %30 = load %struct.rule*, %struct.rule** %p, align 8
  %lhs18 = getelementptr inbounds %struct.rule, %struct.rule* %30, i32 0, i32 4
  %31 = load %struct.nonterminal*, %struct.nonterminal** %lhs18, align 8
  %num19 = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %31, i32 0, i32 1
  %32 = load i32, i32* %num19, align 4
  %idxprom20 = sext i32 %32 to i64
  %33 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %virgin21 = getelementptr inbounds %struct.item_set, %struct.item_set* %33, i32 0, i32 6
  %34 = load %struct.item*, %struct.item** %virgin21, align 8
  %arrayidx22 = getelementptr inbounds %struct.item, %struct.item* %34, i64 %idxprom20
  %delta23 = getelementptr inbounds %struct.item, %struct.item* %arrayidx22, i32 0, i32 0
  %arraydecay24 = getelementptr inbounds [4 x i16], [4 x i16]* %delta23, i32 0, i32 0
  %35 = load %struct.rule*, %struct.rule** %p, align 8
  %delta25 = getelementptr inbounds %struct.rule, %struct.rule* %35, i32 0, i32 0
  %arraydecay26 = getelementptr inbounds [4 x i16], [4 x i16]* %delta25, i32 0, i32 0
  call void @ASSIGNCOST(i16* %arraydecay24, i16* %arraydecay26)
  %36 = load %struct.operator*, %struct.operator** %leaf.addr, align 8
  %37 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %op27 = getelementptr inbounds %struct.item_set, %struct.item_set* %37, i32 0, i32 2
  store %struct.operator* %36, %struct.operator** %op27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.11, %lor.lhs.false
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %38 = load %struct.list*, %struct.list** %pl, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %38, i32 0, i32 1
  %39 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %39, %struct.list** %pl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %40 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @trim(%struct.item_set* %40)
  %41 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @zero(%struct.item_set* %41)
  %42 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %43 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %call29 = call %struct.item_set* @encode(%struct.mapping* %42, %struct.item_set* %43, i32* %new)
  store %struct.item_set* %call29, %struct.item_set** %tmp, align 8
  %44 = load i32, i32* %new, align 4
  %tobool30 = icmp ne i32 %44, 0
  br i1 %tobool30, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %for.end
  %45 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @closure(%struct.item_set* %45)
  %46 = load %struct.item_set*, %struct.item_set** %ts, align 8
  %47 = load %struct.operator*, %struct.operator** %leaf.addr, align 8
  %table32 = getelementptr inbounds %struct.operator, %struct.operator* %47, i32 0, i32 6
  %48 = load %struct.table*, %struct.table** %table32, align 8
  %transition = getelementptr inbounds %struct.table, %struct.table* %48, i32 0, i32 4
  %49 = load %struct.item_set**, %struct.item_set*** %transition, align 8
  %arrayidx33 = getelementptr inbounds %struct.item_set*, %struct.item_set** %49, i64 0
  store %struct.item_set* %46, %struct.item_set** %arrayidx33, align 8
  %50 = load %struct.queue*, %struct.queue** @globalQ, align 8
  %51 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @addQ(%struct.queue* %50, %struct.item_set* %51)
  br label %if.end.37

if.else:                                          ; preds = %for.end
  %52 = load %struct.item_set*, %struct.item_set** %tmp, align 8
  %53 = load %struct.operator*, %struct.operator** %leaf.addr, align 8
  %table34 = getelementptr inbounds %struct.operator, %struct.operator* %53, i32 0, i32 6
  %54 = load %struct.table*, %struct.table** %table34, align 8
  %transition35 = getelementptr inbounds %struct.table, %struct.table* %54, i32 0, i32 4
  %55 = load %struct.item_set**, %struct.item_set*** %transition35, align 8
  %arrayidx36 = getelementptr inbounds %struct.item_set*, %struct.item_set** %55, i64 0
  store %struct.item_set* %52, %struct.item_set** %arrayidx36, align 8
  %56 = load %struct.item_set*, %struct.item_set** %ts, align 8
  call void @freeItem_Set(%struct.item_set* %56)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else, %if.then.31
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @dumpMapping(%struct.mapping*) #1

declare void @dumpItem_Set(%struct.item_set*) #1

declare %struct.item_set* @popQ(%struct.queue*) #1

; Function Attrs: nounwind uwtable
define internal %struct.operator* @addTypeInfo(%struct.operator* %op) #0 {
entry:
  %op.addr = alloca %struct.operator*, align 8
  store %struct.operator* %op, %struct.operator** %op.addr, align 8
  %0 = load %struct.operator*, %struct.operator** %op.addr, align 8
  ret %struct.operator* %0
}

declare void @addToTable(%struct.table*, %struct.item_set*) #1

declare void @ASSIGNCOST(i16*, i16*) #1

declare void @trim(%struct.item_set*) #1

declare void @zero(%struct.item_set*) #1

declare void @closure(%struct.item_set*) #1

declare void @freeItem_Set(%struct.item_set*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
