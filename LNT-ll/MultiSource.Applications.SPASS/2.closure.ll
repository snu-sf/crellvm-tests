; ModuleID = './MultiSource.Applications.SPASS/2.closure.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32*, %struct.table*, i8**, i8**, i8**, i8**, i8** }
%struct.table = type { %struct.termarray*, %struct.termarray**, i32*, i32, i32, i32, i32 }
%struct.termarray = type { %struct.term*, i32, %struct.termarray* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }

@cc_CLOSURE = internal global %struct.anon zeroinitializer, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@symbol_ACTINDEX = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @cc_Init() #0 {
entry:
  %call = call i32* @part_Create(i32 64)
  call void @cc_SetPartition(i32* %call)
  %call1 = call %struct.table* @table_Create(i32 64, i32 64, i32 64)
  call void @cc_SetTable(%struct.table* %call1)
  %call2 = call i8** @ras_CreateWithSize(i32 64)
  call void @cc_SetCars(i8** %call2)
  %call3 = call i8** @ras_CreateWithSize(i32 64)
  call void @cc_SetCdrs(i8** %call3)
  %call4 = call i8** @ras_CreateWithSize(i32 64)
  call void @cc_SetSizes(i8** %call4)
  %call5 = call i8** @ras_CreateWithSize(i32 64)
  call void @cc_SetPending(i8** %call5)
  %call6 = call i8** @ras_CreateWithSize(i32 384)
  call void @cc_SetCombine(i8** %call6)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetPartition(i32* %partition) #1 {
entry:
  %partition.addr = alloca i32*, align 8
  store i32* %partition, i32** %partition.addr, align 8
  %0 = load i32*, i32** %partition.addr, align 8
  store i32* %0, i32** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 0), align 8
  ret void
}

declare i32* @part_Create(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetTable(%struct.table* %table) #1 {
entry:
  %table.addr = alloca %struct.table*, align 8
  store %struct.table* %table, %struct.table** %table.addr, align 8
  %0 = load %struct.table*, %struct.table** %table.addr, align 8
  store %struct.table* %0, %struct.table** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 1), align 8
  ret void
}

declare %struct.table* @table_Create(i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetCars(i8** %car) #1 {
entry:
  %car.addr = alloca i8**, align 8
  store i8** %car, i8*** %car.addr, align 8
  %0 = load i8**, i8*** %car.addr, align 8
  store i8** %0, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 2), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @ras_CreateWithSize(i32 %size) #1 {
entry:
  %size.addr = alloca i32, align 4
  %result = alloca i8**, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %add = add nsw i32 %0, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @memory_Malloc(i32 %conv1)
  %1 = bitcast i8* %call to i8**
  store i8** %1, i8*** %result, align 8
  %2 = load i8**, i8*** %result, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %2, i64 2
  store i8** %add.ptr, i8*** %result, align 8
  %3 = load i32, i32* %size.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = inttoptr i64 %conv2 to i8*
  %5 = load i8**, i8*** %result, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 -1
  store i8* %4, i8** %arrayidx, align 8
  %6 = load i8**, i8*** %result, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 -2
  store i8* null, i8** %arrayidx3, align 8
  %7 = load i8**, i8*** %result, align 8
  ret i8** %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetCdrs(i8** %cdr) #1 {
entry:
  %cdr.addr = alloca i8**, align 8
  store i8** %cdr, i8*** %cdr.addr, align 8
  %0 = load i8**, i8*** %cdr.addr, align 8
  store i8** %0, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 3), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetSizes(i8** %size) #1 {
entry:
  %size.addr = alloca i8**, align 8
  store i8** %size, i8*** %size.addr, align 8
  %0 = load i8**, i8*** %size.addr, align 8
  store i8** %0, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 4), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetPending(i8** %pending) #1 {
entry:
  %pending.addr = alloca i8**, align 8
  store i8** %pending, i8*** %pending.addr, align 8
  %0 = load i8**, i8*** %pending.addr, align 8
  store i8** %0, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 5), align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetCombine(i8** %combine) #1 {
entry:
  %combine.addr = alloca i8**, align 8
  store i8** %combine, i8*** %combine.addr, align 8
  %0 = load i8**, i8*** %combine.addr, align 8
  store i8** %0, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 6), align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cc_Free() #0 {
entry:
  %call = call i32* @cc_GetPartition()
  call void @part_Free(i32* %call)
  %call1 = call %struct.table* @cc_GetTable()
  call void @table_Free(%struct.table* %call1)
  %call2 = call i8** @cc_GetCars()
  call void @ras_Free(i8** %call2)
  %call3 = call i8** @cc_GetCdrs()
  call void @ras_Free(i8** %call3)
  %call4 = call i8** @cc_GetSizes()
  call void @ras_Free(i8** %call4)
  %call5 = call i8** @cc_GetPending()
  call void @ras_Free(i8** %call5)
  %call6 = call i8** @cc_GetCombine()
  call void @ras_Free(i8** %call6)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @part_Free(i32* %p) #1 {
entry:
  %p.addr = alloca i32*, align 8
  store i32* %p, i32** %p.addr, align 8
  %0 = load i32*, i32** %p.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %p.addr, align 8
  %2 = load i32*, i32** %p.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 -2
  %3 = load i32, i32* %arrayidx, align 4
  %sub = sub nsw i32 %3, 3
  %div = sdiv i32 %sub, 3
  %idx.ext = sext i32 %div to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i32, i32* %1, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i32, i32* %add.ptr, i64 -3
  %4 = bitcast i32* %add.ptr1 to i8*
  %5 = load i32*, i32** %p.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 -2
  %6 = load i32, i32* %arrayidx2, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %conv, 4
  %conv3 = trunc i64 %mul to i32
  call void @memory_Free(i8* %4, i32 %conv3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @cc_GetPartition() #1 {
entry:
  %0 = load i32*, i32** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 0), align 8
  ret i32* %0
}

declare void @table_Free(%struct.table*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.table* @cc_GetTable() #1 {
entry:
  %0 = load %struct.table*, %struct.table** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 1), align 8
  ret %struct.table* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @ras_Free(i8** %ras) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  store i8** %ras, i8*** %ras.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %cmp = icmp ne i8** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %ras.addr, align 8
  %add.ptr = getelementptr inbounds i8*, i8** %1, i64 -2
  %2 = bitcast i8** %add.ptr to i8*
  %3 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 -1
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = ptrtoint i8* %4 to i32
  %add = add nsw i32 2, %5
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  call void @memory_Free(i8* %2, i32 %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @cc_GetCars() #1 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 2), align 8
  ret i8** %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @cc_GetCdrs() #1 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 3), align 8
  ret i8** %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @cc_GetSizes() #1 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 4), align 8
  ret i8** %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @cc_GetPending() #1 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 5), align 8
  ret i8** %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @cc_GetCombine() #1 {
entry:
  %0 = load i8**, i8*** getelementptr inbounds (%struct.anon, %struct.anon* @cc_CLOSURE, i32 0, i32 6), align 8
  ret i8** %0
}

; Function Attrs: nounwind uwtable
define i32 @cc_Tautology(%struct.CLAUSE_HELP* %clause) #0 {
entry:
  %clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %term = alloca %struct.term*, align 8
  %query = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %clause, %struct.CLAUSE_HELP** %clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  call void @cc_InitData(%struct.CLAUSE_HELP* %0)
  br label %while.cond

while.cond:                                       ; preds = %while.end.34, %entry
  %call = call i8** @cc_GetPending()
  %call1 = call i32 @ras_Empty(i8** %call)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.35

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %call3 = call i8** @cc_GetPending()
  %call4 = call i32 @ras_Empty(i8** %call3)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  br i1 %lnot6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.2
  %call8 = call i8** @cc_GetPending()
  %call9 = call i8* @ras_Pop(i8** %call8)
  %1 = bitcast i8* %call9 to %struct.term*
  store %struct.term* %1, %struct.term** %term, align 8
  %call10 = call %struct.table* @cc_GetTable()
  %call11 = call i32* @cc_GetPartition()
  %2 = load %struct.term*, %struct.term** %term, align 8
  %call12 = call %struct.term* @table_QueryAndEnter(%struct.table* %call10, i32* %call11, %struct.term* %2)
  store %struct.term* %call12, %struct.term** %query, align 8
  %3 = load %struct.term*, %struct.term** %query, align 8
  %call13 = call %struct.term* @term_Null()
  %cmp = icmp ne %struct.term* %3, %call13
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.7
  %call14 = call i8** @cc_GetCombine()
  %4 = load %struct.term*, %struct.term** %term, align 8
  %5 = bitcast %struct.term* %4 to i8*
  %call15 = call i8** @ras_FastPush(i8** %call14, i8* %5)
  %call16 = call i8** @cc_GetCombine()
  %6 = load %struct.term*, %struct.term** %query, align 8
  %7 = bitcast %struct.term* %6 to i8*
  %call17 = call i8** @ras_FastPush(i8** %call16, i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.7
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  br label %while.cond.18

while.cond.18:                                    ; preds = %while.body.23, %while.end
  %call19 = call i8** @cc_GetCombine()
  %call20 = call i32 @ras_Empty(i8** %call19)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  br i1 %lnot22, label %while.body.23, label %while.end.34

while.body.23:                                    ; preds = %while.cond.18
  %call24 = call i32* @cc_GetPartition()
  %call25 = call i8** @cc_GetCombine()
  %call26 = call i8* @ras_Pop(i8** %call25)
  %8 = bitcast i8* %call26 to %struct.term*
  %call27 = call i32 @term_Size(%struct.term* %8)
  %call28 = call i32 @part_Find(i32* %call24, i32 %call27)
  %call29 = call i32* @cc_GetPartition()
  %call30 = call i8** @cc_GetCombine()
  %call31 = call i8* @ras_Pop(i8** %call30)
  %9 = bitcast i8* %call31 to %struct.term*
  %call32 = call i32 @term_Size(%struct.term* %9)
  %call33 = call i32 @part_Find(i32* %call29, i32 %call32)
  call void @cc_Union(i32 %call28, i32 %call33)
  br label %while.cond.18

while.end.34:                                     ; preds = %while.cond.18
  br label %while.cond

while.end.35:                                     ; preds = %while.cond
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call36 = call i32 @cc_Outit(%struct.CLAUSE_HELP* %10)
  ret i32 %call36
}

; Function Attrs: nounwind uwtable
define internal void @cc_InitData(%struct.CLAUSE_HELP* %clause) #0 {
entry:
  %clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %last = alloca i32, align 4
  %actno = alloca i32, align 4
  %i = alloca i32, align 4
  %ld = alloca i32, align 4
  %atom = alloca %struct.term*, align 8
  %cdr = alloca i8**, align 8
  %size = alloca i8**, align 8
  store %struct.CLAUSE_HELP* %clause, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call = call i8** @cc_GetCars()
  %call1 = call i8** @ras_InitWithSize(i8** %call, i32 64)
  call void @cc_SetCars(i8** %call1)
  %call2 = call i8** @cc_GetPending()
  %call3 = call i8** @ras_InitWithSize(i8** %call2, i32 64)
  call void @cc_SetPending(i8** %call3)
  %call4 = call i8** @cc_GetCars()
  %call5 = call %struct.term* @term_Null()
  %0 = bitcast %struct.term* %call5 to i8*
  %call6 = call i8** @ras_FastPush(i8** %call4, i8* %0)
  store i32 1, i32* %actno, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call7 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call7, i32* %last, align 4
  %call8 = call i32 @clause_FirstLitIndex()
  store i32 %call8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call9 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.term* %call9, %struct.term** %atom, align 8
  %6 = load %struct.term*, %struct.term** %atom, align 8
  %call10 = call i32 @fol_IsEquality(%struct.term* %6)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %actno, align 4
  %8 = load %struct.term*, %struct.term** %atom, align 8
  %call11 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call12 = call %struct.term* @term_Null()
  %call13 = call i32 @cc_Number(i32 %7, %struct.term* %call11, %struct.term* %call12)
  store i32 %call13, i32* %actno, align 4
  %9 = load i32, i32* %actno, align 4
  %10 = load %struct.term*, %struct.term** %atom, align 8
  %call14 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  %call15 = call %struct.term* @term_Null()
  %call16 = call i32 @cc_Number(i32 %9, %struct.term* %call14, %struct.term* %call15)
  store i32 %call16, i32* %actno, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %actno, align 4
  %12 = load %struct.term*, %struct.term** %atom, align 8
  %call17 = call %struct.term* @term_Null()
  %call18 = call i32 @cc_Number(i32 %11, %struct.term* %12, %struct.term* %call17)
  store i32 %call18, i32* %actno, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call19 = call i32* @cc_GetPartition()
  %14 = load i32, i32* %actno, align 4
  %call20 = call i32* @part_Init(i32* %call19, i32 %14)
  call void @cc_SetPartition(i32* %call20)
  %call21 = call %struct.table* @cc_GetTable()
  %call22 = call i32 @symbol_ActIndex()
  %sub = sub nsw i32 %call22, 1
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call23 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %15)
  %16 = load i32, i32* %actno, align 4
  %sub24 = sub nsw i32 %16, 1
  %call25 = call %struct.table* @table_Init(%struct.table* %call21, i32 %sub, i32 %call23, i32 %sub24)
  call void @cc_SetTable(%struct.table* %call25)
  %call26 = call i8** @cc_GetCdrs()
  %17 = load i32, i32* %actno, align 4
  %call27 = call i8** @ras_InitWithSize(i8** %call26, i32 %17)
  store i8** %call27, i8*** %cdr, align 8
  %call28 = call i8** @cc_GetSizes()
  %18 = load i32, i32* %actno, align 4
  %call29 = call i8** @ras_InitWithSize(i8** %call28, i32 %18)
  store i8** %call29, i8*** %size, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.40, %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %actno, align 4
  %cmp31 = icmp slt i32 %19, %20
  br i1 %cmp31, label %for.body.32, label %for.end.42

for.body.32:                                      ; preds = %for.cond.30
  %21 = load i8**, i8*** %cdr, align 8
  %22 = load i32, i32* %i, align 4
  %conv = sext i32 %22 to i64
  %23 = inttoptr i64 %conv to i8*
  %call33 = call i8** @ras_FastPush(i8** %21, i8* %23)
  %24 = load i8**, i8*** %size, align 8
  %25 = load i32, i32* %i, align 4
  %call34 = call %struct.term* @cc_GetCar(i32 %25)
  %call35 = call %struct.term* @term_Null()
  %cmp36 = icmp eq %struct.term* %call34, %call35
  %cond = select i1 %cmp36, i32 0, i32 1
  %conv38 = sext i32 %cond to i64
  %26 = inttoptr i64 %conv38 to i8*
  %call39 = call i8** @ras_FastPush(i8** %24, i8* %26)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.32
  %27 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %27, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.30

for.end.42:                                       ; preds = %for.cond.30
  %28 = load i8**, i8*** %cdr, align 8
  call void @cc_SetCdrs(i8** %28)
  %29 = load i8**, i8*** %size, align 8
  call void @cc_SetSizes(i8** %29)
  store i32 0, i32* %ld, align 4
  %30 = load i32, i32* %actno, align 4
  %sub43 = sub nsw i32 %30, 1
  store i32 %sub43, i32* %i, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.49, %for.end.42
  %31 = load i32, i32* %i, align 4
  %cmp45 = icmp sgt i32 %31, 0
  br i1 %cmp45, label %for.body.47, label %for.end.50

for.body.47:                                      ; preds = %for.cond.44
  %32 = load i32, i32* %ld, align 4
  %inc48 = add nsw i32 %32, 1
  store i32 %inc48, i32* %ld, align 4
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.body.47
  %33 = load i32, i32* %i, align 4
  %shr = ashr i32 %33, 1
  store i32 %shr, i32* %i, align 4
  br label %for.cond.44

for.end.50:                                       ; preds = %for.cond.44
  %call51 = call i8** @cc_GetCombine()
  %34 = load i32, i32* %actno, align 4
  %35 = load i32, i32* %ld, align 4
  %mul = mul nsw i32 %34, %35
  %add = add nsw i32 %mul, 1
  %call52 = call i8** @ras_InitWithSize(i8** %call51, i32 %add)
  call void @cc_SetCombine(i8** %call52)
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call53 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %36)
  store i32 %call53, i32* %last, align 4
  %call54 = call i32 @clause_FirstLitIndex()
  store i32 %call54, i32* %i, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.72, %for.end.50
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %last, align 4
  %cmp56 = icmp sle i32 %37, %38
  br i1 %cmp56, label %for.body.58, label %for.end.74

for.body.58:                                      ; preds = %for.cond.55
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call59 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %39, i32 %40)
  store %struct.term* %call59, %struct.term** %atom, align 8
  %41 = load %struct.term*, %struct.term** %atom, align 8
  %call60 = call i32 @fol_IsEquality(%struct.term* %41)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.else.67

if.then.62:                                       ; preds = %for.body.58
  %42 = load %struct.term*, %struct.term** %atom, align 8
  %call63 = call %struct.term* @term_FirstArgument(%struct.term* %42)
  %call64 = call i32 @term_Size(%struct.term* %call63)
  %43 = load %struct.term*, %struct.term** %atom, align 8
  %call65 = call %struct.term* @term_SecondArgument(%struct.term* %43)
  %call66 = call i32 @term_Size(%struct.term* %call65)
  call void @cc_Union(i32 %call64, i32 %call66)
  br label %if.end.71

if.else.67:                                       ; preds = %for.body.58
  %44 = load %struct.term*, %struct.term** %atom, align 8
  %call68 = call i32 @term_Size(%struct.term* %44)
  %call69 = call i32* @cc_GetPartition()
  %call70 = call i32 @part_Find(i32* %call69, i32 0)
  call void @cc_Union(i32 %call68, i32 %call70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.67, %if.then.62
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %45 = load i32, i32* %i, align 4
  %inc73 = add nsw i32 %45, 1
  store i32 %inc73, i32* %i, align 4
  br label %for.cond.55

for.end.74:                                       ; preds = %for.cond.55
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ras_Empty(i8** %ras) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  store i8** %ras, i8*** %ras.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %call = call i32 @ras_Size(i8** %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @ras_Pop(i8** %ras) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %top = alloca i32, align 4
  store i8** %ras, i8*** %ras.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %call = call i32 @ras_Size(i8** %0)
  %sub = sub nsw i32 %call, 1
  store i32 %sub, i32* %top, align 4
  %1 = load i32, i32* %top, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to i8*
  %3 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 -2
  store i8* %2, i8** %arrayidx, align 8
  %4 = load i32, i32* %top, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %ras.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx1, align 8
  ret i8* %6
}

declare %struct.term* @table_QueryAndEnter(%struct.table*, i32*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #1 {
entry:
  ret %struct.term* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @ras_FastPush(i8** %ras, i8* %entry1) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %entry.addr = alloca i8*, align 8
  %top = alloca i32, align 4
  store i8** %ras, i8*** %ras.addr, align 8
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %call = call i32 @ras_Size(i8** %0)
  store i32 %call, i32* %top, align 4
  %1 = load i8*, i8** %entry.addr, align 8
  %2 = load i32, i32* %top, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %top, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  store i8* %1, i8** %arrayidx, align 8
  %4 = load i32, i32* %top, align 4
  %conv = sext i32 %4 to i64
  %5 = inttoptr i64 %conv to i8*
  %6 = load i8**, i8*** %ras.addr, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 -2
  store i8* %5, i8** %arrayidx2, align 8
  %7 = load i8**, i8*** %ras.addr, align 8
  ret i8** %7
}

; Function Attrs: nounwind uwtable
define internal void @cc_Union(i32 %c1, i32 %c2) #0 {
entry:
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %aux = alloca i32, align 4
  %size = alloca i32, align 4
  %term = alloca %struct.term*, align 8
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i32, i32* %c1.addr, align 4
  %1 = load i32, i32* %c2.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %c1.addr, align 4
  %call = call i32 @cc_GetSize(i32 %2)
  %3 = load i32, i32* %c2.addr, align 4
  %call1 = call i32 @cc_GetSize(i32 %3)
  %cmp2 = icmp slt i32 %call, %call1
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load i32, i32* %c1.addr, align 4
  store i32 %4, i32* %aux, align 4
  %5 = load i32, i32* %c2.addr, align 4
  store i32 %5, i32* %c1.addr, align 4
  %6 = load i32, i32* %aux, align 4
  store i32 %6, i32* %c2.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %7 = load i32, i32* %c2.addr, align 4
  %call4 = call i32 @cc_GetSize(i32 %7)
  store i32 %call4, i32* %size, align 4
  %8 = load i32, i32* %c2.addr, align 4
  store i32 %8, i32* %aux, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %size, align 4
  %cmp5 = icmp sgt i32 %9, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %aux, align 4
  %call6 = call %struct.term* @cc_GetCar(i32 %10)
  store %struct.term* %call6, %struct.term** %term, align 8
  %11 = load i32, i32* %aux, align 4
  %call7 = call i32 @cc_GetCdr(i32 %11)
  store i32 %call7, i32* %aux, align 4
  %call8 = call %struct.table* @cc_GetTable()
  %12 = load %struct.term*, %struct.term** %term, align 8
  %call9 = call %struct.table* @table_Delete(%struct.table* %call8, %struct.term* %12)
  %call10 = call i8** @cc_GetPending()
  %13 = load %struct.term*, %struct.term** %term, align 8
  %14 = bitcast %struct.term* %13 to i8*
  %call11 = call i8** @ras_Push(i8** %call10, i8* %14)
  call void @cc_SetPending(i8** %call11)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %size, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %size, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %c2.addr, align 4
  %call12 = call i32 @cc_GetSize(i32 %16)
  %cmp13 = icmp sgt i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %for.end
  %17 = load i32, i32* %c1.addr, align 4
  %call15 = call i32 @cc_GetCdr(i32 %17)
  store i32 %call15, i32* %aux, align 4
  %18 = load i32, i32* %c1.addr, align 4
  %19 = load i32, i32* %c2.addr, align 4
  %call16 = call i32 @cc_GetCdr(i32 %19)
  call void @cc_SetCdr(i32 %18, i32 %call16)
  %20 = load i32, i32* %c2.addr, align 4
  %21 = load i32, i32* %aux, align 4
  call void @cc_SetCdr(i32 %20, i32 %21)
  %22 = load i32, i32* %c1.addr, align 4
  %23 = load i32, i32* %c1.addr, align 4
  %call17 = call i32 @cc_GetSize(i32 %23)
  %24 = load i32, i32* %c2.addr, align 4
  %call18 = call i32 @cc_GetSize(i32 %24)
  %add = add nsw i32 %call17, %call18
  call void @cc_SetSize(i32 %22, i32 %add)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.14, %for.end
  %call20 = call i32* @cc_GetPartition()
  %25 = load i32, i32* %c1.addr, align 4
  %26 = load i32, i32* %c2.addr, align 4
  %call21 = call i32* @part_Union(i32* %call20, i32 %25, i32 %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.19, %entry
  ret void
}

declare i32 @part_Find(i32*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_Size(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 4
  %1 = load i32, i32* %size, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal i32 @cc_Outit(%struct.CLAUSE_HELP* %clause) #0 {
entry:
  %clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  %atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %clause, %struct.CLAUSE_HELP** %clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %last, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  store i32 0, i32* %result, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.term* %call2, %struct.term** %atom, align 8
  %8 = load %struct.term*, %struct.term** %atom, align 8
  %call3 = call i32 @fol_IsEquality(%struct.term* %8)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call5 = call i32* @cc_GetPartition()
  %9 = load %struct.term*, %struct.term** %atom, align 8
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call7 = call i32 @term_Size(%struct.term* %call6)
  %10 = load %struct.term*, %struct.term** %atom, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  %call9 = call i32 @term_Size(%struct.term* %call8)
  %call10 = call i32 @part_Equivalent(i32* %call5, i32 %call7, i32 %call9)
  store i32 %call10, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %call11 = call i32* @cc_GetPartition()
  %11 = load %struct.term*, %struct.term** %atom, align 8
  %call12 = call i32 @term_Size(%struct.term* %11)
  %call13 = call i32 @part_Equivalent(i32* %call11, i32 %call12, i32 0)
  store i32 %call13, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %result, align 4
  ret i32 %13
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #1 {
entry:
  %Freepointer.addr = alloca i8*, align 8
  %Size.addr = alloca i32, align 4
  %RealBlockSize = alloca i32, align 4
  %BigBlockHeader = alloca %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
  store i8* %Freepointer, i8** %Freepointer.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %0 = load i32, i32* %Size.addr, align 4
  %call = call i32 @memory_LookupRealBlockSize(i32 %0)
  store i32 %call, i32* %RealBlockSize, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp uge i32 %1, 1024
  br i1 %cmp, label %if.then, label %if.else.25

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %Freepointer.addr, align 8
  %3 = load i32, i32* @memory_OFFSET, align 4
  %idx.ext = zext i32 %3 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %idx.neg
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -16
  %4 = bitcast i8* %add.ptr1 to %struct.MEMORY_BIGBLOCKHEADERHELP*
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %4, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %5 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %5, i32 0, i32 0
  %6 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous, align 8
  %cmp2 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %6, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %7 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %7, i32 0, i32 1
  %8 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next, align 8
  %9 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous4 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %9, i32 0, i32 0
  %10 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous4, align 8
  %next5 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %10, i32 0, i32 1
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %8, %struct.MEMORY_BIGBLOCKHEADERHELP** %next5, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next6 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %11, i32 0, i32 1
  %12 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next6, align 8
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %12, %struct.MEMORY_BIGBLOCKHEADERHELP** @memory_BIGBLOCKS, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %13 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next7 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %13, i32 0, i32 1
  %14 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next7, align 8
  %cmp8 = icmp ne %struct.MEMORY_BIGBLOCKHEADERHELP* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %15 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %previous10 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %15, i32 0, i32 0
  %16 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous10, align 8
  %17 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %BigBlockHeader, align 8
  %next11 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %17, i32 0, i32 1
  %18 = load %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP** %next11, align 8
  %previous12 = getelementptr inbounds %struct.MEMORY_BIGBLOCKHEADERHELP, %struct.MEMORY_BIGBLOCKHEADERHELP* %18, i32 0, i32 0
  store %struct.MEMORY_BIGBLOCKHEADERHELP* %16, %struct.MEMORY_BIGBLOCKHEADERHELP** %previous12, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  %19 = load i32, i32* %RealBlockSize, align 4
  %20 = load i32, i32* @memory_MARKSIZE, align 4
  %add = add i32 %19, %20
  %conv = zext i32 %add to i64
  %add14 = add i64 %conv, 16
  %21 = load i64, i64* @memory_FREEDBYTES, align 8
  %add15 = add i64 %21, %add14
  store i64 %add15, i64* @memory_FREEDBYTES, align 8
  %22 = load i64, i64* @memory_MAXMEM, align 8
  %cmp16 = icmp sge i64 %22, 0
  br i1 %cmp16, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.13
  %23 = load i32, i32* %RealBlockSize, align 4
  %24 = load i32, i32* @memory_MARKSIZE, align 4
  %add19 = add i32 %23, %24
  %conv20 = zext i32 %add19 to i64
  %add21 = add i64 %conv20, 16
  %25 = load i64, i64* @memory_MAXMEM, align 8
  %add22 = add i64 %25, %add21
  store i64 %add22, i64* @memory_MAXMEM, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.13
  %26 = load i8*, i8** %Freepointer.addr, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %26, i64 -16
  call void @free(i8* %add.ptr24) #4
  br label %if.end.33

if.else.25:                                       ; preds = %entry
  %27 = load i32, i32* %Size.addr, align 4
  %idxprom = zext i32 %27 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %28 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %total_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %28, i32 0, i32 4
  %29 = load i32, i32* %total_size, align 4
  %conv26 = sext i32 %29 to i64
  %30 = load i64, i64* @memory_FREEDBYTES, align 8
  %add27 = add i64 %30, %conv26
  store i64 %add27, i64* @memory_FREEDBYTES, align 8
  %31 = load i32, i32* %Size.addr, align 4
  %idxprom28 = zext i32 %31 to i64
  %arrayidx29 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom28
  %32 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx29, align 8
  %free = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %32, i32 0, i32 0
  %33 = load i8*, i8** %free, align 8
  %34 = load i8*, i8** %Freepointer.addr, align 8
  %35 = bitcast i8* %34 to i8**
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %Freepointer.addr, align 8
  %37 = load i32, i32* %Size.addr, align 4
  %idxprom30 = zext i32 %37 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom30
  %38 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx31, align 8
  %free32 = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %38, i32 0, i32 0
  store i8* %36, i8** %free32, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.25, %if.end.23
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #1 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  %cmp = icmp ult i32 %0, 1024
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %BlockSize.addr, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.MEMORY_RESOURCEHELP*], [0 x %struct.MEMORY_RESOURCEHELP*]* @memory_ARRAY, i32 0, i64 %idxprom
  %2 = load %struct.MEMORY_RESOURCEHELP*, %struct.MEMORY_RESOURCEHELP** %arrayidx, align 8
  %aligned_size = getelementptr inbounds %struct.MEMORY_RESOURCEHELP, %struct.MEMORY_RESOURCEHELP* %2, i32 0, i32 5
  %3 = load i32, i32* %aligned_size, align 4
  store i32 %3, i32* %RealSize, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %BlockSize.addr, align 4
  %call = call i32 @memory_CalculateRealBlockSize(i32 %4)
  store i32 %call, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, i32* %RealSize, align 4
  ret i32 %5
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #1 {
entry:
  %BlockSize.addr = alloca i32, align 4
  %RealSize = alloca i32, align 4
  store i32 %BlockSize, i32* %BlockSize.addr, align 4
  %0 = load i32, i32* %BlockSize.addr, align 4
  store i32 %0, i32* %RealSize, align 4
  %1 = load i32, i32* %RealSize, align 4
  %rem = urem i32 %1, 1
  %tobool = icmp ne i32 %rem, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %RealSize, align 4
  %rem1 = urem i32 %2, 1
  %sub = sub i32 1, %rem1
  %3 = load i32, i32* %RealSize, align 4
  %add = add i32 %3, %sub
  store i32 %add, i32* %RealSize, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %RealSize, align 4
  %5 = load i32, i32* @memory_ALIGN, align 4
  %rem2 = urem i32 %4, %5
  %tobool3 = icmp ne i32 %rem2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %6 = load i32, i32* @memory_ALIGN, align 4
  %7 = load i32, i32* %RealSize, align 4
  %8 = load i32, i32* @memory_ALIGN, align 4
  %rem5 = urem i32 %7, %8
  %sub6 = sub i32 %6, %rem5
  %9 = load i32, i32* %RealSize, align 4
  %add7 = add i32 %9, %sub6
  store i32 %add7, i32* %RealSize, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %10 = load i32, i32* %RealSize, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @ras_InitWithSize(i8** %ras, i32 %size) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %size.addr = alloca i32, align 4
  store i8** %ras, i8*** %ras.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %1 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 -1
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = ptrtoint i8* %2 to i32
  %cmp = icmp sgt i32 %0, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %ras.addr, align 8
  call void @ras_Free(i8** %4)
  %5 = load i32, i32* %size.addr, align 4
  %call = call i8** @ras_CreateWithSize(i32 %5)
  store i8** %call, i8*** %ras.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8**, i8*** %ras.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %6, i64 -2
  store i8* null, i8** %arrayidx1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i8**, i8*** %ras.addr, align 8
  ret i8** %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %C, i32 %Index) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  %call1 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call)
  ret %struct.term* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsEquality(%struct.term* %Term) #1 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* @fol_EQUALITY, align 4
  %cmp = icmp eq i32 %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @cc_Number(i32 %actno, %struct.term* %term, %struct.term* %pred) #0 {
entry:
  %actno.addr = alloca i32, align 4
  %term.addr = alloca %struct.term*, align 8
  %pred.addr = alloca %struct.term*, align 8
  %terms = alloca %struct.LIST_HELP*, align 8
  store i32 %actno, i32* %actno.addr, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.term* %pred, %struct.term** %pred.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = load i32, i32* %actno.addr, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %actno.addr, align 4
  call void @term_SetSize(%struct.term* %0, i32 %1)
  %call = call i8** @cc_GetCars()
  %2 = load %struct.term*, %struct.term** %pred.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  %call1 = call i8** @ras_Push(i8** %call, i8* %3)
  call void @cc_SetCars(i8** %call1)
  %call2 = call i8** @cc_GetPending()
  %4 = load %struct.term*, %struct.term** %term.addr, align 8
  %5 = bitcast %struct.term* %4 to i8*
  %call3 = call i8** @ras_Push(i8** %call2, i8* %5)
  call void @cc_SetPending(i8** %call3)
  %6 = load %struct.term*, %struct.term** %term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %terms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %actno.addr, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call6 to %struct.term*
  %11 = load %struct.term*, %struct.term** %term.addr, align 8
  %call7 = call i32 @cc_Number(i32 %8, %struct.term* %10, %struct.term* %11)
  store i32 %call7, i32* %actno.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %terms, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %terms, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %actno.addr, align 4
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_SecondArgument(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call = call i8* @list_Second(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.term*
  ret %struct.term* %2
}

declare i32* @part_Init(i32*, i32) #2

declare %struct.table* @table_Init(%struct.table*, i32, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_ActIndex() #1 {
entry:
  %0 = load i32, i32* @symbol_ACTINDEX, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_MaxVar(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 9
  %1 = load i32, i32* %maxVar, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cc_GetCar(i32 %index) #1 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %call = call i8** @cc_GetCars()
  %0 = load i32, i32* %index.addr, align 4
  %call1 = call i8* @ras_Get(i8** %call, i32 %0)
  %1 = bitcast i8* %call1 to %struct.term*
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Length(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %1)
  %add = add nsw i32 %call, %call1
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %2)
  %add3 = add nsw i32 %add, %call2
  ret i32 %add3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 11
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %a = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 12
  %1 = load i32, i32* %a, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %s = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 13
  %1 = load i32, i32* %s, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %L) #1 {
entry:
  %retval = alloca %struct.term*, align 8
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %call1)
  store %struct.term* %call2, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call3 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %2)
  store %struct.term* %call3, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %C, i32 %Index) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 10
  %2 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %2, i64 %idxprom
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  ret %struct.LITERAL_HELP* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @term_TopSymbol(%struct.term* %call)
  %call2 = call i32 @fol_Not()
  %cmp = icmp eq i32 %call1, %call2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 4
  %1 = load %struct.term*, %struct.term** %atomWithSign, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetSize(%struct.term* %T, i32 %s) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %s.addr = alloca i32, align 4
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store i32 %s, i32* %s.addr, align 4
  %0 = load i32, i32* %s.addr, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %size = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 4
  store i32 %0, i32* %size, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @ras_Push(i8** %ras, i8* %entry1) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %entry.addr = alloca i8*, align 8
  %old = alloca i8**, align 8
  %oldsize = alloca i32, align 4
  %oldscan = alloca i8**, align 8
  %scan = alloca i8**, align 8
  store i8** %ras, i8*** %ras.addr, align 8
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %call = call i32 @ras_Size(i8** %0)
  %1 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 -1
  %2 = load i8*, i8** %arrayidx, align 8
  %3 = ptrtoint i8* %2 to i32
  %cmp = icmp eq i32 %call, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %ras.addr, align 8
  store i8** %4, i8*** %old, align 8
  %5 = load i8**, i8*** %old, align 8
  %arrayidx2 = getelementptr inbounds i8*, i8** %5, i64 -1
  %6 = load i8*, i8** %arrayidx2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %oldsize, align 4
  %8 = load i32, i32* %oldsize, align 4
  %mul = mul nsw i32 %8, 2
  %call3 = call i8** @ras_CreateWithSize(i32 %mul)
  store i8** %call3, i8*** %ras.addr, align 8
  %9 = load i32, i32* %oldsize, align 4
  %conv = sext i32 %9 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load i8**, i8*** %ras.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %11, i64 -2
  store i8* %10, i8** %arrayidx4, align 8
  %12 = load i8**, i8*** %old, align 8
  %13 = load i32, i32* %oldsize, align 4
  %idx.ext = sext i32 %13 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %12, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i8*, i8** %add.ptr, i64 -1
  store i8** %add.ptr5, i8*** %oldscan, align 8
  %14 = load i8**, i8*** %ras.addr, align 8
  %15 = load i32, i32* %oldsize, align 4
  %idx.ext6 = sext i32 %15 to i64
  %add.ptr7 = getelementptr inbounds i8*, i8** %14, i64 %idx.ext6
  %add.ptr8 = getelementptr inbounds i8*, i8** %add.ptr7, i64 -1
  store i8** %add.ptr8, i8*** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %16 = load i8**, i8*** %oldscan, align 8
  %17 = load i8**, i8*** %old, align 8
  %cmp9 = icmp uge i8** %16, %17
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i8**, i8*** %oldscan, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %scan, align 8
  store i8* %19, i8** %20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i8**, i8*** %oldscan, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %21, i32 -1
  store i8** %incdec.ptr, i8*** %oldscan, align 8
  %22 = load i8**, i8*** %scan, align 8
  %incdec.ptr11 = getelementptr inbounds i8*, i8** %22, i32 -1
  store i8** %incdec.ptr11, i8*** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i8**, i8*** %old, align 8
  call void @ras_Free(i8** %23)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %24 = load i8**, i8*** %ras.addr, align 8
  %25 = load i8*, i8** %entry.addr, align 8
  %call12 = call i8** @ras_FastPush(i8** %24, i8* %25)
  ret i8** %call12
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ras_Size(i8** %ras) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  store i8** %ras, i8*** %ras.addr, align 8
  %0 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 -2
  %1 = load i8*, i8** %arrayidx, align 8
  %2 = ptrtoint i8* %1 to i32
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Second(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @ras_Get(i8** %ras, i32 %index) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %index.addr = alloca i32, align 4
  store i8** %ras, i8*** %ras.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  %0 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  ret i8* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %1)
  %add = add nsw i32 %call, %call1
  ret i32 %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cc_GetSize(i32 %index) #1 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %call = call i8** @cc_GetSizes()
  %0 = load i32, i32* %index.addr, align 4
  %call1 = call i8* @ras_Get(i8** %call, i32 %0)
  %1 = ptrtoint i8* %call1 to i32
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cc_GetCdr(i32 %index) #1 {
entry:
  %index.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  %call = call i8** @cc_GetCdrs()
  %0 = load i32, i32* %index.addr, align 4
  %call1 = call i8* @ras_Get(i8** %call, i32 %0)
  %1 = ptrtoint i8* %call1 to i32
  ret i32 %1
}

declare %struct.table* @table_Delete(%struct.table*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetCdr(i32 %index, i32 %cdr) #1 {
entry:
  %index.addr = alloca i32, align 4
  %cdr.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %cdr, i32* %cdr.addr, align 4
  %call = call i8** @cc_GetCdrs()
  %0 = load i32, i32* %index.addr, align 4
  %1 = load i32, i32* %cdr.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to i8*
  %call1 = call i8** @ras_Set(i8** %call, i32 %0, i8* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cc_SetSize(i32 %index, i32 %size) #1 {
entry:
  %index.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %size, i32* %size.addr, align 4
  %call = call i8** @cc_GetSizes()
  %0 = load i32, i32* %index.addr, align 4
  %1 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %1 to i64
  %2 = inttoptr i64 %conv to i8*
  %call1 = call i8** @ras_Set(i8** %call, i32 %0, i8* %2)
  ret void
}

declare i32* @part_Union(i32*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8** @ras_Set(i8** %ras, i32 %index, i8* %entry1) #1 {
entry:
  %ras.addr = alloca i8**, align 8
  %index.addr = alloca i32, align 4
  %entry.addr = alloca i8*, align 8
  store i8** %ras, i8*** %ras.addr, align 8
  store i32 %index, i32* %index.addr, align 4
  store i8* %entry1, i8** %entry.addr, align 8
  %0 = load i8*, i8** %entry.addr, align 8
  %1 = load i32, i32* %index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %ras.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  %3 = load i8**, i8*** %ras.addr, align 8
  ret i8** %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @part_Equivalent(i32* %p, i32 %e1, i32 %e2) #1 {
entry:
  %p.addr = alloca i32*, align 8
  %e1.addr = alloca i32, align 4
  %e2.addr = alloca i32, align 4
  store i32* %p, i32** %p.addr, align 8
  store i32 %e1, i32* %e1.addr, align 4
  store i32 %e2, i32* %e2.addr, align 4
  %0 = load i32*, i32** %p.addr, align 8
  %1 = load i32, i32* %e1.addr, align 4
  %call = call i32 @part_Find(i32* %0, i32 %1)
  %2 = load i32*, i32** %p.addr, align 8
  %3 = load i32, i32* %e2.addr, align 4
  %call1 = call i32 @part_Find(i32* %2, i32 %3)
  %cmp = icmp eq i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
