; ModuleID = './MultiSource.Applications.Burg/16.map.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i8*, %struct.list* }
%struct.item_set = type { i32, i32, %struct.operator*, [2 x %struct.item_set*], %struct.item_set*, i16*, %struct.item*, %struct.item* }
%struct.operator = type { i8*, i8, i32, i32, i32, i32, %struct.table* }
%struct.table = type { %struct.operator*, %struct.list*, i16*, [2 x %struct.dimension*], %struct.item_set** }
%struct.dimension = type { i16*, %struct.index_map, %struct.mapping*, i32, %struct.plankMap* }
%struct.index_map = type { i32, %struct.item_set** }
%struct.mapping = type { %struct.list**, i32, i32, i32, %struct.item_set** }
%struct.plankMap = type { %struct.list*, i32, %struct.stateMap* }
%struct.stateMap = type { i8*, %struct.plank*, i32, i16* }
%struct.plank = type { i8*, %struct.list*, i32 }
%struct.item = type { [4 x i16], %struct.rule* }
%struct.rule = type { [4 x i16], i32, i32, i32, %struct.nonterminal*, %struct.pattern*, i8 }
%struct.nonterminal = type { i8*, i32, i32, i32, %struct.plankMap*, %struct.rule* }
%struct.pattern = type { %struct.nonterminal*, %struct.operator*, [2 x %struct.nonterminal*] }
%struct.symbol = type { i8*, i32, %union.anon }
%union.anon = type { %struct.nonterminal* }

@rcsid_map = global [45 x i8] c"$Id: map.c 4171 2002-10-14 16:39:24Z vadve $\00", align 16
@grammarNts = external global %struct.list*, align 8
@errorState = external global %struct.item_set*, align 8
@globalMap = common global %struct.mapping* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"BEGIN Mapping: Size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"END Mapping\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.mapping* @newMapping(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %m = alloca %struct.mapping*, align 8
  store i32 %size, i32* %size.addr, align 4
  %call = call i8* @zalloc(i32 32)
  %0 = bitcast i8* %call to %struct.mapping*
  store %struct.mapping* %0, %struct.mapping** %m, align 8
  %1 = load %struct.mapping*, %struct.mapping** %m, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %1, i32 0, i32 3
  store i32 0, i32* %count, align 4
  %2 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @zalloc(i32 %conv1)
  %3 = bitcast i8* %call2 to %struct.list**
  %4 = load %struct.mapping*, %struct.mapping** %m, align 8
  %hash = getelementptr inbounds %struct.mapping, %struct.mapping* %4, i32 0, i32 0
  store %struct.list** %3, %struct.list*** %hash, align 8
  %5 = load i32, i32* %size.addr, align 4
  %6 = load %struct.mapping*, %struct.mapping** %m, align 8
  %hash_size = getelementptr inbounds %struct.mapping, %struct.mapping* %6, i32 0, i32 1
  store i32 %5, i32* %hash_size, align 4
  %7 = load %struct.mapping*, %struct.mapping** %m, align 8
  %max_size = getelementptr inbounds %struct.mapping, %struct.mapping* %7, i32 0, i32 2
  store i32 64, i32* %max_size, align 4
  %8 = load %struct.mapping*, %struct.mapping** %m, align 8
  %max_size3 = getelementptr inbounds %struct.mapping, %struct.mapping* %8, i32 0, i32 2
  %9 = load i32, i32* %max_size3, align 4
  %conv4 = sext i32 %9 to i64
  %mul5 = mul i64 %conv4, 8
  %conv6 = trunc i64 %mul5 to i32
  %call7 = call i8* @zalloc(i32 %conv6)
  %10 = bitcast i8* %call7 to %struct.item_set**
  %11 = load %struct.mapping*, %struct.mapping** %m, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %11, i32 0, i32 4
  store %struct.item_set** %10, %struct.item_set*** %set, align 8
  %12 = load %struct.mapping*, %struct.mapping** %m, align 8
  ret %struct.mapping* %12
}

declare i8* @zalloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.item_set* @encode(%struct.mapping* %m, %struct.item_set* %ts, i32* %new) #0 {
entry:
  %retval = alloca %struct.item_set*, align 8
  %m.addr = alloca %struct.mapping*, align 8
  %ts.addr = alloca %struct.item_set*, align 8
  %new.addr = alloca i32*, align 8
  %h = alloca i32, align 4
  %l = alloca %struct.list*, align 8
  %l3 = alloca %struct.list*, align 8
  %found = alloca i32, align 4
  %s = alloca %struct.symbol*, align 8
  %s16 = alloca %struct.item_set*, align 8
  store %struct.mapping* %m, %struct.mapping** %m.addr, align 8
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  store i32* %new, i32** %new.addr, align 8
  %0 = load %struct.list*, %struct.list** @grammarNts, align 8
  %tobool = icmp ne %struct.list* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.item_set*, %struct.item_set** @errorState, align 8
  %tobool1 = icmp ne %struct.item_set* %1, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.10

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %3 = load %struct.mapping*, %struct.mapping** @globalMap, align 8
  %cmp = icmp eq %struct.mapping* %2, %3
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %land.lhs.true.2
  store i32 0, i32* %found, align 4
  %4 = load %struct.list*, %struct.list** @grammarNts, align 8
  store %struct.list* %4, %struct.list** %l3, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.list*, %struct.list** %l3, align 8
  %tobool4 = icmp ne %struct.list* %5, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.list*, %struct.list** %l3, align 8
  %x = getelementptr inbounds %struct.list, %struct.list* %6, i32 0, i32 0
  %7 = load i8*, i8** %x, align 8
  %8 = bitcast i8* %7 to %struct.symbol*
  store %struct.symbol* %8, %struct.symbol** %s, align 8
  %9 = load %struct.symbol*, %struct.symbol** %s, align 8
  %u = getelementptr inbounds %struct.symbol, %struct.symbol* %9, i32 0, i32 2
  %nt = bitcast %union.anon* %u to %struct.nonterminal**
  %10 = load %struct.nonterminal*, %struct.nonterminal** %nt, align 8
  %num = getelementptr inbounds %struct.nonterminal, %struct.nonterminal* %10, i32 0, i32 1
  %11 = load i32, i32* %num, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %12, i32 0, i32 6
  %13 = load %struct.item*, %struct.item** %virgin, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %13, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %14 = load %struct.rule*, %struct.rule** %rule, align 8
  %tobool5 = icmp ne %struct.rule* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  store i32 1, i32* %found, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.list*, %struct.list** %l3, align 8
  %next = getelementptr inbounds %struct.list, %struct.list* %15, i32 0, i32 1
  %16 = load %struct.list*, %struct.list** %next, align 8
  store %struct.list* %16, %struct.list** %l3, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.6, %for.cond
  %17 = load i32, i32* %found, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.end
  %18 = load i32*, i32** %new.addr, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.item_set*, %struct.item_set** @errorState, align 8
  store %struct.item_set* %19, %struct.item_set** %retval
  br label %return

if.end.9:                                         ; preds = %for.end
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %land.lhs.true.2, %land.lhs.true, %entry
  %20 = load i32*, i32** %new.addr, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %22 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %hash_size = getelementptr inbounds %struct.mapping, %struct.mapping* %22, i32 0, i32 1
  %23 = load i32, i32* %hash_size, align 4
  %call = call i32 @hash(%struct.item_set* %21, i32 %23)
  store i32 %call, i32* %h, align 4
  %24 = load i32, i32* %h, align 4
  %idxprom11 = sext i32 %24 to i64
  %25 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %hash = getelementptr inbounds %struct.mapping, %struct.mapping* %25, i32 0, i32 0
  %26 = load %struct.list**, %struct.list*** %hash, align 8
  %arrayidx12 = getelementptr inbounds %struct.list*, %struct.list** %26, i64 %idxprom11
  %27 = load %struct.list*, %struct.list** %arrayidx12, align 8
  store %struct.list* %27, %struct.list** %l, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.27, %if.end.10
  %28 = load %struct.list*, %struct.list** %l, align 8
  %tobool14 = icmp ne %struct.list* %28, null
  br i1 %tobool14, label %for.body.15, label %for.end.29

for.body.15:                                      ; preds = %for.cond.13
  %29 = load %struct.list*, %struct.list** %l, align 8
  %x17 = getelementptr inbounds %struct.list, %struct.list* %29, i32 0, i32 0
  %30 = load i8*, i8** %x17, align 8
  %31 = bitcast i8* %30 to %struct.item_set*
  store %struct.item_set* %31, %struct.item_set** %s16, align 8
  %32 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %32, i32 0, i32 2
  %33 = load %struct.operator*, %struct.operator** %op, align 8
  %34 = load %struct.item_set*, %struct.item_set** %s16, align 8
  %op18 = getelementptr inbounds %struct.item_set, %struct.item_set* %34, i32 0, i32 2
  %35 = load %struct.operator*, %struct.operator** %op18, align 8
  %cmp19 = icmp eq %struct.operator* %33, %35
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.26

land.lhs.true.20:                                 ; preds = %for.body.15
  %36 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %37 = load %struct.item_set*, %struct.item_set** %s16, align 8
  %call21 = call i32 @equivSet(%struct.item_set* %36, %struct.item_set* %37)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %land.lhs.true.20
  %38 = load %struct.item_set*, %struct.item_set** %s16, align 8
  %num24 = getelementptr inbounds %struct.item_set, %struct.item_set* %38, i32 0, i32 0
  %39 = load i32, i32* %num24, align 4
  %40 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num25 = getelementptr inbounds %struct.item_set, %struct.item_set* %40, i32 0, i32 0
  store i32 %39, i32* %num25, align 4
  %41 = load %struct.item_set*, %struct.item_set** %s16, align 8
  store %struct.item_set* %41, %struct.item_set** %retval
  br label %return

if.end.26:                                        ; preds = %land.lhs.true.20, %for.body.15
  br label %for.inc.27

for.inc.27:                                       ; preds = %if.end.26
  %42 = load %struct.list*, %struct.list** %l, align 8
  %next28 = getelementptr inbounds %struct.list, %struct.list* %42, i32 0, i32 1
  %43 = load %struct.list*, %struct.list** %next28, align 8
  store %struct.list* %43, %struct.list** %l, align 8
  br label %for.cond.13

for.end.29:                                       ; preds = %for.cond.13
  %44 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %44, i32 0, i32 3
  %45 = load i32, i32* %count, align 4
  %46 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %max_size = getelementptr inbounds %struct.mapping, %struct.mapping* %46, i32 0, i32 2
  %47 = load i32, i32* %max_size, align 4
  %cmp30 = icmp sge i32 %45, %47
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.end.29
  %48 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  call void @growMapping(%struct.mapping* %48)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.end.29
  %49 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %50 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count33 = getelementptr inbounds %struct.mapping, %struct.mapping* %50, i32 0, i32 3
  %51 = load i32, i32* %count33, align 4
  %idxprom34 = sext i32 %51 to i64
  %52 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %52, i32 0, i32 4
  %53 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx35 = getelementptr inbounds %struct.item_set*, %struct.item_set** %53, i64 %idxprom34
  store %struct.item_set* %49, %struct.item_set** %arrayidx35, align 8
  %54 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count36 = getelementptr inbounds %struct.mapping, %struct.mapping* %54, i32 0, i32 3
  %55 = load i32, i32* %count36, align 4
  %inc = add nsw i32 %55, 1
  store i32 %inc, i32* %count36, align 4
  %56 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %num37 = getelementptr inbounds %struct.item_set, %struct.item_set* %56, i32 0, i32 0
  store i32 %55, i32* %num37, align 4
  %57 = load i32*, i32** %new.addr, align 8
  store i32 1, i32* %57, align 4
  %58 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %59 = bitcast %struct.item_set* %58 to i8*
  %60 = load i32, i32* %h, align 4
  %idxprom38 = sext i32 %60 to i64
  %61 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %hash39 = getelementptr inbounds %struct.mapping, %struct.mapping* %61, i32 0, i32 0
  %62 = load %struct.list**, %struct.list*** %hash39, align 8
  %arrayidx40 = getelementptr inbounds %struct.list*, %struct.list** %62, i64 %idxprom38
  %63 = load %struct.list*, %struct.list** %arrayidx40, align 8
  %call41 = call %struct.list* @newList(i8* %59, %struct.list* %63)
  %64 = load i32, i32* %h, align 4
  %idxprom42 = sext i32 %64 to i64
  %65 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %hash43 = getelementptr inbounds %struct.mapping, %struct.mapping* %65, i32 0, i32 0
  %66 = load %struct.list**, %struct.list*** %hash43, align 8
  %arrayidx44 = getelementptr inbounds %struct.list*, %struct.list** %66, i64 %idxprom42
  store %struct.list* %call41, %struct.list** %arrayidx44, align 8
  %67 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  store %struct.item_set* %67, %struct.item_set** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.23, %if.then.8
  %68 = load %struct.item_set*, %struct.item_set** %retval
  ret %struct.item_set* %68
}

; Function Attrs: nounwind uwtable
define internal i32 @hash(%struct.item_set* %ts, i32 %mod) #0 {
entry:
  %retval = alloca i32, align 4
  %ts.addr = alloca %struct.item_set*, align 8
  %mod.addr = alloca i32, align 4
  %p = alloca %struct.item*, align 8
  %v = alloca i32, align 4
  %r = alloca i16*, align 8
  %nt = alloca i32, align 4
  store %struct.item_set* %ts, %struct.item_set** %ts.addr, align 8
  store i32 %mod, i32* %mod.addr, align 4
  %0 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %virgin = getelementptr inbounds %struct.item_set, %struct.item_set* %0, i32 0, i32 6
  %1 = load %struct.item*, %struct.item** %virgin, align 8
  store %struct.item* %1, %struct.item** %p, align 8
  %2 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %relevant = getelementptr inbounds %struct.item_set, %struct.item_set* %2, i32 0, i32 5
  %3 = load i16*, i16** %relevant, align 8
  store i16* %3, i16** %r, align 8
  %4 = load %struct.item_set*, %struct.item_set** %ts.addr, align 8
  %op = getelementptr inbounds %struct.item_set, %struct.item_set* %4, i32 0, i32 2
  %5 = load %struct.operator*, %struct.operator** %op, align 8
  %tobool = icmp ne %struct.operator* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i16*, i16** %r, align 8
  %7 = load i16, i16* %6, align 2
  %conv = sext i16 %7 to i32
  store i32 %conv, i32* %nt, align 4
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %nt, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.item*, %struct.item** %p, align 8
  %arrayidx = getelementptr inbounds %struct.item, %struct.item* %9, i64 %idxprom
  %rule = getelementptr inbounds %struct.item, %struct.item* %arrayidx, i32 0, i32 1
  %10 = load %struct.rule*, %struct.rule** %rule, align 8
  %11 = ptrtoint %struct.rule* %10 to i32
  %12 = load i32, i32* %nt, align 4
  %idxprom2 = sext i32 %12 to i64
  %13 = load %struct.item*, %struct.item** %p, align 8
  %arrayidx3 = getelementptr inbounds %struct.item, %struct.item* %13, i64 %idxprom2
  %delta = getelementptr inbounds %struct.item, %struct.item* %arrayidx3, i32 0, i32 0
  %arrayidx4 = getelementptr inbounds [4 x i16], [4 x i16]* %delta, i32 0, i64 0
  %14 = load i16, i16* %arrayidx4, align 2
  %conv5 = sext i16 %14 to i32
  %shl = shl i32 %conv5, 4
  %add = add nsw i32 %11, %shl
  %15 = load i32, i32* %v, align 4
  %xor = xor i32 %15, %add
  store i32 %xor, i32* %v, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i16*, i16** %r, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %16, i32 1
  store i16* %incdec.ptr, i16** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %v, align 4
  %shr = ashr i32 %17, 4
  store i32 %shr, i32* %v, align 4
  %18 = load i32, i32* %mod.addr, align 4
  %sub = sub nsw i32 %18, 1
  %19 = load i32, i32* %v, align 4
  %and = and i32 %19, %sub
  store i32 %and, i32* %v, align 4
  %20 = load i32, i32* %v, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @equivSet(%struct.item_set*, %struct.item_set*) #1

; Function Attrs: nounwind uwtable
define internal void @growMapping(%struct.mapping* %m) #0 {
entry:
  %m.addr = alloca %struct.mapping*, align 8
  %tmp = alloca %struct.item_set**, align 8
  store %struct.mapping* %m, %struct.mapping** %m.addr, align 8
  %0 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %max_size = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 2
  %1 = load i32, i32* %max_size, align 4
  %add = add nsw i32 %1, 64
  store i32 %add, i32* %max_size, align 4
  %2 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %max_size1 = getelementptr inbounds %struct.mapping, %struct.mapping* %2, i32 0, i32 2
  %3 = load i32, i32* %max_size1, align 4
  %conv = sext i32 %3 to i64
  %mul = mul i64 %conv, 8
  %conv2 = trunc i64 %mul to i32
  %call = call i8* @zalloc(i32 %conv2)
  %4 = bitcast i8* %call to %struct.item_set**
  store %struct.item_set** %4, %struct.item_set*** %tmp, align 8
  %5 = load %struct.item_set**, %struct.item_set*** %tmp, align 8
  %6 = bitcast %struct.item_set** %5 to i8*
  %7 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %7, i32 0, i32 4
  %8 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %9 = bitcast %struct.item_set** %8 to i8*
  %10 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %10, i32 0, i32 3
  %11 = load i32, i32* %count, align 4
  %conv3 = sext i32 %11 to i64
  %mul4 = mul i64 %conv3, 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* %9, i64 %mul4, i32 8, i1 false)
  %12 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set5 = getelementptr inbounds %struct.mapping, %struct.mapping* %12, i32 0, i32 4
  %13 = load %struct.item_set**, %struct.item_set*** %set5, align 8
  %14 = bitcast %struct.item_set** %13 to i8*
  call void @zfree(i8* %14)
  %15 = load %struct.item_set**, %struct.item_set*** %tmp, align 8
  %16 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set6 = getelementptr inbounds %struct.mapping, %struct.mapping* %16, i32 0, i32 4
  store %struct.item_set** %15, %struct.item_set*** %set6, align 8
  ret void
}

declare %struct.list* @newList(i8*, %struct.list*) #1

; Function Attrs: nounwind uwtable
define %struct.item_set* @decode(%struct.mapping* %m, i32 %t) #0 {
entry:
  %m.addr = alloca %struct.mapping*, align 8
  %t.addr = alloca i32, align 4
  store %struct.mapping* %m, %struct.mapping** %m.addr, align 8
  store i32 %t, i32* %t.addr, align 4
  %0 = load i32, i32* %t.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %1, i32 0, i32 4
  %2 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %2, i64 %idxprom
  %3 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  ret %struct.item_set* %3
}

; Function Attrs: nounwind uwtable
define void @dumpMapping(%struct.mapping* %m) #0 {
entry:
  %m.addr = alloca %struct.mapping*, align 8
  %i = alloca i32, align 4
  store %struct.mapping* %m, %struct.mapping** %m.addr, align 8
  %0 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count = getelementptr inbounds %struct.mapping, %struct.mapping* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), i32 %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %count1 = getelementptr inbounds %struct.mapping, %struct.mapping* %3, i32 0, i32 3
  %4 = load i32, i32* %count1, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.mapping*, %struct.mapping** %m.addr, align 8
  %set = getelementptr inbounds %struct.mapping, %struct.mapping* %6, i32 0, i32 4
  %7 = load %struct.item_set**, %struct.item_set*** %set, align 8
  %arrayidx = getelementptr inbounds %struct.item_set*, %struct.item_set** %7, i64 %idxprom
  %8 = load %struct.item_set*, %struct.item_set** %arrayidx, align 8
  call void @dumpItem_Set(%struct.item_set* %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @dumpItem_Set(%struct.item_set*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare void @zfree(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
