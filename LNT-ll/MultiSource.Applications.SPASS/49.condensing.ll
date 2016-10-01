; ModuleID = './MultiSource.Applications.SPASS/49.condensing.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }

@vec_MAX = external global i32, align 4
@vec_VECTOR = external global [10000 x i8*], align 16
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP* %c) #0 {
entry:
  %c.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %indexlist = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %c, %struct.CLAUSE_HELP** %c.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %indexlist, align 8
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv = sext i32 %2 to i64
  %3 = inttoptr i64 %conv to i8*
  call void @vec_Push(i8* %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c.addr, align 8
  %call3 = call i32 @clause_Length(%struct.CLAUSE_HELP* %5)
  %sub = sub nsw i32 %call3, 1
  store i32 %sub, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.53, %for.end
  %6 = load i32, i32* %k, align 4
  %cmp5 = icmp sge i32 %6, 0
  br i1 %cmp5, label %for.body.7, label %for.end.54

for.body.7:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %vec, align 4
  store i32 %7, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.50, %for.body.7
  %8 = load i32, i32* %i, align 4
  %call9 = call i32 @vec_ActMax()
  %cmp10 = icmp slt i32 %8, %call9
  br i1 %cmp10, label %for.body.12, label %for.end.52

for.body.12:                                      ; preds = %for.cond.8
  %9 = load i32, i32* %i, align 4
  %call13 = call i8* @vec_GetNth(i32 %9)
  %10 = ptrtoint i8* %call13 to i32
  %11 = load i32, i32* %k, align 4
  %cmp14 = icmp ne i32 %10, %11
  br i1 %cmp14, label %if.then, label %if.end.49

if.then:                                          ; preds = %for.body.12
  call void @cont_StartBinding()
  %call16 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c.addr, align 8
  %13 = load i32, i32* %k, align 4
  %call17 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %12, i32 %13)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call18 = call i8* @vec_GetNth(i32 %15)
  %16 = ptrtoint i8* %call18 to i32
  %call19 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %14, i32 %16)
  %call20 = call i32 @unify_Match(%struct.binding* %call16, %struct.term* %call17, %struct.term* %call19)
  %tobool = icmp ne i32 %call20, 0
  br i1 %tobool, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %if.then
  %call22 = call i32 @cont_BackTrack()
  %17 = load i32, i32* %vec, align 4
  store i32 %17, i32* %j, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.35, %if.then.21
  %18 = load i32, i32* %j, align 4
  %call24 = call i32 @vec_ActMax()
  %cmp25 = icmp slt i32 %18, %call24
  br i1 %cmp25, label %for.body.27, label %for.end.37

for.body.27:                                      ; preds = %for.cond.23
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %j, align 4
  %call28 = call i8* @vec_GetNth(i32 %20)
  %21 = ptrtoint i8* %call28 to i32
  %cmp29 = icmp eq i32 %19, %21
  br i1 %cmp29, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body.27
  %call32 = call i32 @vec_ActMax()
  %sub33 = sub nsw i32 %call32, 1
  %22 = load i32, i32* %j, align 4
  call void @vec_Swap(i32 %sub33, i32 %22)
  %call34 = call i32 @vec_ActMax()
  store i32 %call34, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.31, %for.body.27
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end
  %23 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %23, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.23

for.end.37:                                       ; preds = %for.cond.23
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c.addr, align 8
  %25 = load i32, i32* %vec, align 4
  %call38 = call i32 @vec_ActMax()
  %sub39 = sub nsw i32 %call38, 1
  %call40 = call i32 @subs_IdcRes(%struct.CLAUSE_HELP* %24, i32 %25, i32 %sub39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %for.end.37
  %26 = load i32, i32* %k, align 4
  %conv43 = sext i32 %26 to i64
  %27 = inttoptr i64 %conv43 to i8*
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %indexlist, align 8
  %call44 = call %struct.LIST_HELP* @list_Cons(i8* %27, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %indexlist, align 8
  call void @vec_Pop()
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.end.37
  %call46 = call i32 @vec_ActMax()
  %add = add nsw i32 %call46, 1
  store i32 %add, i32* %i, align 4
  br label %if.end.48

if.else:                                          ; preds = %if.then
  %call47 = call i32 @cont_BackTrack()
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.end.45
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.body.12
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end.49
  %29 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %29, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.8

for.end.52:                                       ; preds = %for.cond.8
  br label %for.inc.53

for.inc.53:                                       ; preds = %for.end.52
  %30 = load i32, i32* %k, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %k, align 4
  br label %for.cond.4

for.end.54:                                       ; preds = %for.cond.4
  %31 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %indexlist, align 8
  ret %struct.LIST_HELP* %32
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @vec_ActMax() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  ret i32 %0
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
define internal void @vec_Push(i8* %Value) #1 {
entry:
  %Value.addr = alloca i8*, align 8
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Value.addr, align 8
  %1 = load i32, i32* @vec_MAX, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @vec_MAX, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @vec_GetNth(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #1 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_Match(%struct.binding*, %struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %C, i32 %Index) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %call)
  ret %struct.term* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BackTrack() #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cont_BINDINGS, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cont_BackTrackLastBinding()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call i32 @cont_StackEmpty(i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.end
  %call1 = call i32 @cont_StackPopResult()
  store i32 %call1, i32* @cont_BINDINGS, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 0
}

declare void @vec_Swap(i32, i32) #2

declare i32 @subs_IdcRes(%struct.CLAUSE_HELP*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #1 {
entry:
  %Ptr.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Cell = alloca %struct.LIST_HELP*, align 8
  store i8* %Ptr, i8** %Ptr.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Cell, align 8
  %1 = load i8*, i8** %Ptr.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %2, i32 0, i32 1
  store i8* %1, i8** %car, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %cdr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Cell, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vec_Pop() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @vec_MAX, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vec_SetMax(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  store i32 %0, i32* @vec_MAX, align 4
  ret void
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
define internal void @cont_StackPush(i32 %Entry) #1 {
entry:
  %Entry.addr = alloca i32, align 4
  store i32 %Entry, i32* %Entry.addr, align 4
  %0 = load i32, i32* %Entry.addr, align 4
  %1 = load i32, i32* @cont_STACKPOINTER, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @cont_STACKPOINTER, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  ret void
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
define internal void @cont_BackTrackLastBinding() #1 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackEmpty(i32 %Pointer) #1 {
entry:
  %Pointer.addr = alloca i32, align 4
  store i32 %Pointer, i32* %Pointer.addr, align 4
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %1 = load i32, i32* %Pointer.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackPopResult() #1 {
entry:
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @cont_STACKPOINTER, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_BackTrackLastBindingHelp() #1 {
entry:
  %call = call %struct.binding* @cont_LastBinding()
  store %struct.binding* %call, %struct.binding** @cont_CURRENTBINDING, align 8
  %0 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call1 = call %struct.binding* @cont_BindingLink(%struct.binding* %0)
  call void @cont_SetLastBinding(%struct.binding* %call1)
  %1 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingTerm(%struct.binding* %1, %struct.term* null)
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingContext(%struct.binding* %2, %struct.binding* null)
  %3 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call2 = call i32 @symbol_Null()
  call void @cont_SetBindingRenaming(%struct.binding* %3, i32 %call2)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetBindingLink(%struct.binding* %4, %struct.binding* null)
  %5 = load i32, i32* @cont_BINDINGS, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetLastBinding(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_BindingLink(%struct.binding* %B) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %link = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 4
  %1 = load %struct.binding*, %struct.binding** %link, align 8
  ret %struct.binding* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingTerm(%struct.binding* %B, %struct.term* %T) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %T.addr = alloca %struct.term*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %term = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 2
  store %struct.term* %0, %struct.term** %term, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingContext(%struct.binding* %B, %struct.binding* %C) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %C.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %context = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 3
  store %struct.binding* %0, %struct.binding** %context, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingRenaming(%struct.binding* %B, i32 %S) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %S.addr = alloca i32, align 4
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %renaming = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 1
  store i32 %0, i32* %renaming, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingLink(%struct.binding* %B, %struct.binding* %L) #1 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  %L.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  store %struct.binding* %L, %struct.binding** %L.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %L.addr, align 8
  %1 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %link = getelementptr inbounds %struct.binding, %struct.binding* %1, i32 0, i32 4
  store %struct.binding* %0, %struct.binding** %link, align 8
  ret void
}

declare i8* @memory_Malloc(i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
