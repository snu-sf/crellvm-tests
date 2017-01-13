; ModuleID = './MultiSource.Applications.SPASS/15.subsumption.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.litptr = type { %struct.cliteral**, i32 }
%struct.cliteral = type { i32, i32, %struct.LIST_HELP* }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@stamp = internal global i32 0, align 4
@multvec_j = internal global [100 x i32] zeroinitializer, align 16
@multvec_i = internal global [100 x i32] zeroinitializer, align 16
@fol_EQUALITY = external global i32, align 4
@fol_NOT = external global i32, align 4
@term_MARK = external global i32, align 4
@term_BIND = external global [3001 x [2 x i8*]], align 16
@symbol_CONTEXT = external global [4000 x i32], align 16
@symbol_TYPESTATBITS = external constant i32, align 4
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@vec_MAX = external global i32, align 4
@vec_VECTOR = external global [10000 x i8*], align 16
@cont_INDEXVARSCANNER = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @subs_Init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom1
  store i32 0, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @subs_STMulti(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp sgt i32 %1, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %n, align 4
  %cmp2 = icmp sgt i32 %3, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call3 = call i32 @subs_TestlitsEq(%struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %6 = load i32, i32* @stamp, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* @stamp, align 4
  %cmp4 = icmp eq i32 %inc, -1
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.5
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %7, 100
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom7
  store i32 0, i32* %arrayidx8, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc9 = add nsw i32 %10, 1
  store i32 %inc9, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end, %if.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call11 = call i32 @subs_STMultiIntern(i32 0, %struct.CLAUSE_HELP* %11, %struct.CLAUSE_HELP* %12)
  store i32 %call11, i32* %Result, align 4
  %13 = load i32, i32* %Result, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
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

; Function Attrs: nounwind uwtable
define internal i32 @subs_TestlitsEq(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %t1 = alloca %struct.term*, align 8
  %t2 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 0, i32* %found, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.term* %call2, %struct.term** %t1, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %7 = load i32, i32* %j, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.term* %call3, %struct.term** %t2, align 8
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %8 = load %struct.term*, %struct.term** %t1, align 8
  %9 = load %struct.term*, %struct.term** %t2, align 8
  %call5 = call i32 @unify_Match(%struct.binding* %call4, %struct.term* %8, %struct.term* %9)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  store i32 1, i32* %found, align 4
  br label %if.end.46

if.else:                                          ; preds = %do.body
  %10 = load %struct.term*, %struct.term** %t1, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %t2, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %11)
  %call8 = call i32 @symbol_Equal(i32 %call6, i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else.43

land.lhs.true:                                    ; preds = %if.else
  %12 = load %struct.term*, %struct.term** %t1, align 8
  %call10 = call %struct.term* @fol_Atom(%struct.term* %12)
  %call11 = call i32 @fol_IsEquality(%struct.term* %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else.43

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %13 = load %struct.term*, %struct.term** %t2, align 8
  %call14 = call %struct.term* @fol_Atom(%struct.term* %13)
  %call15 = call i32 @fol_IsEquality(%struct.term* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.else.43

land.lhs.true.17:                                 ; preds = %land.lhs.true.13
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call18 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %14, i32 %15)
  %call19 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.17
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %17 = load i32, i32* %j, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %16, i32 %17)
  %call22 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.43

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true.17
  %call25 = call i32 @cont_BackTrackAndStart()
  %call26 = call %struct.binding* @cont_LeftContext()
  %18 = load %struct.term*, %struct.term** %t1, align 8
  %call27 = call %struct.term* @fol_Atom(%struct.term* %18)
  %call28 = call %struct.term* @term_FirstArgument(%struct.term* %call27)
  %19 = load %struct.term*, %struct.term** %t2, align 8
  %call29 = call %struct.term* @fol_Atom(%struct.term* %19)
  %call30 = call %struct.term* @term_SecondArgument(%struct.term* %call29)
  %call31 = call i32 @unify_Match(%struct.binding* %call26, %struct.term* %call28, %struct.term* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.else.42

land.lhs.true.33:                                 ; preds = %if.then.24
  %call34 = call %struct.binding* @cont_LeftContext()
  %20 = load %struct.term*, %struct.term** %t1, align 8
  %call35 = call %struct.term* @fol_Atom(%struct.term* %20)
  %call36 = call %struct.term* @term_SecondArgument(%struct.term* %call35)
  %21 = load %struct.term*, %struct.term** %t2, align 8
  %call37 = call %struct.term* @fol_Atom(%struct.term* %21)
  %call38 = call %struct.term* @term_FirstArgument(%struct.term* %call37)
  %call39 = call i32 @unify_Match(%struct.binding* %call34, %struct.term* %call36, %struct.term* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %land.lhs.true.33
  store i32 1, i32* %found, align 4
  br label %if.end

if.else.42:                                       ; preds = %land.lhs.true.33, %if.then.24
  %22 = load i32, i32* %j, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.42, %if.then.41
  br label %if.end.45

if.else.43:                                       ; preds = %lor.lhs.false, %land.lhs.true.13, %land.lhs.true, %if.else
  %23 = load i32, i32* %j, align 4
  %inc44 = add nsw i32 %23, 1
  store i32 %inc44, i32* %j, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.then
  %call47 = call i32 @cont_BackTrack()
  br label %do.cond

do.cond:                                          ; preds = %if.end.46
  %24 = load i32, i32* %found, align 4
  %tobool48 = icmp ne i32 %24, 0
  br i1 %tobool48, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %k, align 4
  %cmp49 = icmp slt i32 %25, %26
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %27 = phi i1 [ false, %do.cond ], [ %cmp49, %land.rhs ]
  br i1 %27, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %28 = load i32, i32* %found, align 4
  %tobool50 = icmp ne i32 %28, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %29 = load i32, i32* %i, align 4
  %inc53 = add nsw i32 %29, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.51
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_STMultiIntern(i32 %i, %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %1, i32 %2)
  store %struct.term* %call1, %struct.term** %lit1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.76, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* @stamp, align 4
  %cmp2 = icmp ne i32 %6, %7
  br i1 %cmp2, label %if.then, label %if.end.76

if.then:                                          ; preds = %while.body
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.term* %call3, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %10 = load %struct.term*, %struct.term** %lit1, align 8
  %11 = load %struct.term*, %struct.term** %lit2, align 8
  %call5 = call i32 @unify_Match(%struct.binding* %call4, %struct.term* %10, %struct.term* %11)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.20

if.then.6:                                        ; preds = %if.then
  %12 = load i32, i32* %i.addr, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %13)
  %sub = sub nsw i32 %call7, 1
  %cmp8 = icmp eq i32 %12, %sub
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %call10 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  %14 = load i32, i32* @stamp, align 4
  %15 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %15 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom11
  store i32 %14, i32* %arrayidx12, align 4
  %16 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %16, 1
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call13 = call i32 @subs_STMultiIntern(i32 %add, %struct.CLAUSE_HELP* %17, %struct.CLAUSE_HELP* %18)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %call16 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.17, %if.then
  %call21 = call i32 @cont_BackTrack()
  %20 = load %struct.term*, %struct.term** %lit1, align 8
  %call22 = call i32 @term_TopSymbol(%struct.term* %20)
  %21 = load %struct.term*, %struct.term** %lit2, align 8
  %call23 = call i32 @term_TopSymbol(%struct.term* %21)
  %call24 = call i32 @symbol_Equal(i32 %call22, i32 %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.end.20
  %22 = load %struct.term*, %struct.term** %lit1, align 8
  %call26 = call %struct.term* @fol_Atom(%struct.term* %22)
  %call27 = call i32 @fol_IsEquality(%struct.term* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.75

land.lhs.true.29:                                 ; preds = %land.lhs.true
  %23 = load %struct.term*, %struct.term** %lit2, align 8
  %call30 = call %struct.term* @fol_Atom(%struct.term* %23)
  %call31 = call i32 @fol_IsEquality(%struct.term* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.75

land.lhs.true.33:                                 ; preds = %land.lhs.true.29
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %25 = load i32, i32* %i.addr, align 4
  %call34 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %24, i32 %25)
  %call35 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.33
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %27 = load i32, i32* %j, align 4
  %call37 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %26, i32 %27)
  %call38 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.75

if.then.40:                                       ; preds = %lor.lhs.false, %land.lhs.true.33
  call void @cont_StartBinding()
  %call41 = call %struct.binding* @cont_LeftContext()
  %28 = load %struct.term*, %struct.term** %lit1, align 8
  %call42 = call %struct.term* @fol_Atom(%struct.term* %28)
  %call43 = call %struct.term* @term_FirstArgument(%struct.term* %call42)
  %29 = load %struct.term*, %struct.term** %lit2, align 8
  %call44 = call %struct.term* @fol_Atom(%struct.term* %29)
  %call45 = call %struct.term* @term_SecondArgument(%struct.term* %call44)
  %call46 = call i32 @unify_Match(%struct.binding* %call41, %struct.term* %call43, %struct.term* %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.73

land.lhs.true.48:                                 ; preds = %if.then.40
  %call49 = call %struct.binding* @cont_LeftContext()
  %30 = load %struct.term*, %struct.term** %lit1, align 8
  %call50 = call %struct.term* @fol_Atom(%struct.term* %30)
  %call51 = call %struct.term* @term_SecondArgument(%struct.term* %call50)
  %31 = load %struct.term*, %struct.term** %lit2, align 8
  %call52 = call %struct.term* @fol_Atom(%struct.term* %31)
  %call53 = call %struct.term* @term_FirstArgument(%struct.term* %call52)
  %call54 = call i32 @unify_Match(%struct.binding* %call49, %struct.term* %call51, %struct.term* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.73

if.then.56:                                       ; preds = %land.lhs.true.48
  %32 = load i32, i32* %i.addr, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call57 = call i32 @clause_Length(%struct.CLAUSE_HELP* %33)
  %sub58 = sub nsw i32 %call57, 1
  %cmp59 = icmp eq i32 %32, %sub58
  br i1 %cmp59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.56
  %call61 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.then.56
  %34 = load i32, i32* @stamp, align 4
  %35 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %35 to i64
  %arrayidx64 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom63
  store i32 %34, i32* %arrayidx64, align 4
  %36 = load i32, i32* %i.addr, align 4
  %add65 = add nsw i32 %36, 1
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call66 = call i32 @subs_STMultiIntern(i32 %add65, %struct.CLAUSE_HELP* %37, %struct.CLAUSE_HELP* %38)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.62
  %call69 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.62
  %39 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %39 to i64
  %arrayidx72 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom71
  store i32 0, i32* %arrayidx72, align 4
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.70, %land.lhs.true.48, %if.then.40
  %call74 = call i32 @cont_BackTrack()
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.73, %lor.lhs.false, %land.lhs.true.29, %land.lhs.true, %if.end.20
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %while.body
  %40 = load i32, i32* %j, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.68, %if.then.60, %if.then.15, %if.then.9
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define i32 @subs_STMultiExcept(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %ExceptI, i32 %ExceptJ) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ExceptI.addr = alloca i32, align 4
  %ExceptJ.addr = alloca i32, align 4
  %Result = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %ExceptI, i32* %ExceptI.addr, align 4
  store i32 %ExceptJ, i32* %ExceptJ.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp sgt i32 %1, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call2 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %5 = load i32, i32* %ExceptI.addr, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call4 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call3)
  %sub = sub i32 %call2, %call4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call5 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %8 = load i32, i32* %ExceptJ.addr, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  %call7 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call6)
  %sub8 = sub i32 %call5, %call7
  %cmp9 = icmp ugt i32 %sub, %sub8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i32, i32* @stamp, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* @stamp, align 4
  %cmp10 = icmp eq i32 %inc, -1
  br i1 %cmp10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %10 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %10, 100
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %12 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom13
  store i32 0, i32* %arrayidx14, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %13, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %if.end
  %14 = load i32, i32* @stamp, align 4
  %15 = load i32, i32* %ExceptI.addr, align 4
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom17
  store i32 %14, i32* %arrayidx18, align 4
  %16 = load i32, i32* @stamp, align 4
  %17 = load i32, i32* %ExceptJ.addr, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom19
  store i32 %16, i32* %arrayidx20, align 4
  %18 = load i32, i32* %n, align 4
  %cmp21 = icmp sgt i32 %18, 1
  br i1 %cmp21, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.16
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call22 = call i32 @subs_TestlitsEqExcept(%struct.CLAUSE_HELP* %19, %struct.CLAUSE_HELP* %20)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %land.lhs.true, %if.end.16
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call25 = call i32 @subs_STMultiExceptIntern(%struct.CLAUSE_HELP* %21, %struct.CLAUSE_HELP* %22)
  store i32 %call25, i32* %Result, align 4
  %23 = load i32, i32* %Result, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Weight(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
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

; Function Attrs: nounwind uwtable
define internal i32 @subs_TestlitsEqExcept(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %t1 = alloca %struct.term*, align 8
  %t2 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %k, align 4
  store i32 0, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* @stamp, align 4
  %cmp = icmp eq i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.3

while.cond.3:                                     ; preds = %do.end.76, %while.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %while.body.5, label %while.end.77

while.body.5:                                     ; preds = %while.cond.3
  store i32 0, i32* %j, align 4
  store i32 0, i32* %found, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %11, i32 %12)
  store %struct.term* %call6, %struct.term** %t1, align 8
  br label %do.body

do.body:                                          ; preds = %land.end.63, %while.body.5
  %13 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %15 = load i32, i32* @stamp, align 4
  %cmp9 = icmp eq i32 %14, %15
  br i1 %cmp9, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %16 = load i32, i32* %j, align 4
  %inc10 = add nsw i32 %16, 1
  store i32 %inc10, i32* %j, align 4
  br label %if.end.59

if.else:                                          ; preds = %do.body
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call11 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.term* %call11, %struct.term** %t2, align 8
  call void @cont_StartBinding()
  %call12 = call %struct.binding* @cont_LeftContext()
  %19 = load %struct.term*, %struct.term** %t1, align 8
  %20 = load %struct.term*, %struct.term** %t2, align 8
  %call13 = call i32 @unify_MatchBindings(%struct.binding* %call12, %struct.term* %19, %struct.term* %20)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.else
  store i32 1, i32* %found, align 4
  br label %if.end.57

if.else.15:                                       ; preds = %if.else
  %21 = load %struct.term*, %struct.term** %t1, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %21)
  %22 = load %struct.term*, %struct.term** %t2, align 8
  %call17 = call i32 @term_TopSymbol(%struct.term* %22)
  %call18 = call i32 @symbol_Equal(i32 %call16, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.else.54

land.lhs.true:                                    ; preds = %if.else.15
  %23 = load %struct.term*, %struct.term** %t1, align 8
  %call20 = call %struct.term* @fol_Atom(%struct.term* %23)
  %call21 = call i32 @fol_IsEquality(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.else.54

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %24 = load %struct.term*, %struct.term** %t2, align 8
  %call24 = call %struct.term* @fol_Atom(%struct.term* %24)
  %call25 = call i32 @fol_IsEquality(%struct.term* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.54

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %26 = load i32, i32* %i, align 4
  %call28 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %25, i32 %26)
  %call29 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.27
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %28 = load i32, i32* %j, align 4
  %call31 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %27, i32 %28)
  %call32 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else.54

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true.27
  %call35 = call i32 @cont_BackTrackAndStart()
  %call36 = call %struct.binding* @cont_LeftContext()
  %29 = load %struct.term*, %struct.term** %t1, align 8
  %call37 = call %struct.term* @fol_Atom(%struct.term* %29)
  %call38 = call %struct.term* @term_FirstArgument(%struct.term* %call37)
  %30 = load %struct.term*, %struct.term** %t2, align 8
  %call39 = call %struct.term* @fol_Atom(%struct.term* %30)
  %call40 = call %struct.term* @term_SecondArgument(%struct.term* %call39)
  %call41 = call i32 @unify_MatchBindings(%struct.binding* %call36, %struct.term* %call38, %struct.term* %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.52

land.lhs.true.43:                                 ; preds = %if.then.34
  %call44 = call %struct.binding* @cont_LeftContext()
  %31 = load %struct.term*, %struct.term** %t1, align 8
  %call45 = call %struct.term* @fol_Atom(%struct.term* %31)
  %call46 = call %struct.term* @term_SecondArgument(%struct.term* %call45)
  %32 = load %struct.term*, %struct.term** %t2, align 8
  %call47 = call %struct.term* @fol_Atom(%struct.term* %32)
  %call48 = call %struct.term* @term_FirstArgument(%struct.term* %call47)
  %call49 = call i32 @unify_MatchBindings(%struct.binding* %call44, %struct.term* %call46, %struct.term* %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %land.lhs.true.43
  store i32 1, i32* %found, align 4
  br label %if.end

if.else.52:                                       ; preds = %land.lhs.true.43, %if.then.34
  %33 = load i32, i32* %j, align 4
  %inc53 = add nsw i32 %33, 1
  store i32 %inc53, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.52, %if.then.51
  br label %if.end.56

if.else.54:                                       ; preds = %lor.lhs.false, %land.lhs.true.23, %land.lhs.true, %if.else.15
  %34 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %34, 1
  store i32 %inc55, i32* %j, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %if.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.14
  %call58 = call i32 @cont_BackTrack()
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.57, %if.then
  br label %do.cond

do.cond:                                          ; preds = %if.end.59
  %35 = load i32, i32* %found, align 4
  %tobool60 = icmp ne i32 %35, 0
  br i1 %tobool60, label %land.end.63, label %land.rhs.61

land.rhs.61:                                      ; preds = %do.cond
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %k, align 4
  %cmp62 = icmp slt i32 %36, %37
  br label %land.end.63

land.end.63:                                      ; preds = %land.rhs.61, %do.cond
  %38 = phi i1 [ false, %do.cond ], [ %cmp62, %land.rhs.61 ]
  br i1 %38, label %do.body, label %do.end

do.end:                                           ; preds = %land.end.63
  %39 = load i32, i32* %found, align 4
  %tobool64 = icmp ne i32 %39, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %do.end
  br label %do.body.67

do.body.67:                                       ; preds = %land.end.75, %if.end.66
  %40 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %40, 1
  store i32 %inc68, i32* %i, align 4
  br label %do.cond.69

do.cond.69:                                       ; preds = %do.body.67
  %41 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom70
  %42 = load i32, i32* %arrayidx71, align 4
  %43 = load i32, i32* @stamp, align 4
  %cmp72 = icmp eq i32 %42, %43
  br i1 %cmp72, label %land.rhs.73, label %land.end.75

land.rhs.73:                                      ; preds = %do.cond.69
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %n, align 4
  %cmp74 = icmp slt i32 %44, %45
  br label %land.end.75

land.end.75:                                      ; preds = %land.rhs.73, %do.cond.69
  %46 = phi i1 [ false, %do.cond.69 ], [ %cmp74, %land.rhs.73 ]
  br i1 %46, label %do.body.67, label %do.end.76

do.end.76:                                        ; preds = %land.end.75
  br label %while.cond.3

while.end.77:                                     ; preds = %while.cond.3
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.77, %if.then.65
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_STMultiExceptIntern(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %occs = alloca i32, align 4
  %occsaux = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 -1, i32* %i, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %occs, align 4
  store i32 0, i32* %j, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %1 = load i32, i32* %k, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp slt i32 %1, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %k, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* @stamp, align 4
  %cmp2 = icmp ne i32 %4, %5
  br i1 %cmp2, label %if.then, label %if.end.12

if.then:                                          ; preds = %while.body
  %6 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %6, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %7 = load i32, i32* %k, align 4
  store i32 %7, i32* %i, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  %call6 = call i32 @term_NumberOfVarOccs(%struct.term* %call5)
  store i32 %call6, i32* %occs, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.then
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %11 = load i32, i32* %k, align 4
  %call7 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %10, i32 %11)
  %call8 = call i32 @term_NumberOfVarOccs(%struct.term* %call7)
  store i32 %call8, i32* %occsaux, align 4
  %12 = load i32, i32* %occs, align 4
  %cmp9 = icmp ugt i32 %call8, %12
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.else
  %13 = load i32, i32* %k, align 4
  store i32 %13, i32* %i, align 4
  %14 = load i32, i32* %occsaux, align 4
  store i32 %14, i32* %occs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.else
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %if.then.4
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %while.body
  %15 = load i32, i32* %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %i, align 4
  %cmp13 = icmp slt i32 %16, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %while.end
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call16 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.term* %call16, %struct.term** %lit1, align 8
  %19 = load i32, i32* @stamp, align 4
  %20 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %20 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom17
  store i32 %19, i32* %arrayidx18, align 4
  br label %while.cond.19

while.cond.19:                                    ; preds = %if.end.88, %if.end.15
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %21, %22
  br i1 %cmp20, label %while.body.21, label %while.end.90

while.body.21:                                    ; preds = %while.cond.19
  %23 = load i32, i32* %j, align 4
  %idxprom22 = sext i32 %23 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom22
  %24 = load i32, i32* %arrayidx23, align 4
  %25 = load i32, i32* @stamp, align 4
  %cmp24 = icmp ne i32 %24, %25
  br i1 %cmp24, label %if.then.25, label %if.end.88

if.then.25:                                       ; preds = %while.body.21
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %27 = load i32, i32* %j, align 4
  %call26 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %26, i32 %27)
  store %struct.term* %call26, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call27 = call %struct.binding* @cont_LeftContext()
  %28 = load %struct.term*, %struct.term** %lit1, align 8
  %29 = load %struct.term*, %struct.term** %lit2, align 8
  %call28 = call i32 @unify_MatchBindings(%struct.binding* %call27, %struct.term* %28, %struct.term* %29)
  %tobool = icmp ne i32 %call28, 0
  br i1 %tobool, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %if.then.25
  %30 = load i32, i32* @stamp, align 4
  %31 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom30
  store i32 %30, i32* %arrayidx31, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call32 = call i32 @subs_STMultiExceptIntern(%struct.CLAUSE_HELP* %32, %struct.CLAUSE_HELP* %33)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.then.29
  %call35 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.then.29
  %34 = load i32, i32* %j, align 4
  %idxprom37 = sext i32 %34 to i64
  %arrayidx38 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom37
  store i32 0, i32* %arrayidx38, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.36, %if.then.25
  %call40 = call i32 @cont_BackTrack()
  %35 = load %struct.term*, %struct.term** %lit1, align 8
  %call41 = call i32 @term_TopSymbol(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %lit2, align 8
  %call42 = call i32 @term_TopSymbol(%struct.term* %36)
  %call43 = call i32 @symbol_Equal(i32 %call41, i32 %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %if.end.39
  %37 = load %struct.term*, %struct.term** %lit1, align 8
  %call45 = call %struct.term* @fol_Atom(%struct.term* %37)
  %call46 = call i32 @fol_IsEquality(%struct.term* %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.87

land.lhs.true.48:                                 ; preds = %land.lhs.true
  %38 = load %struct.term*, %struct.term** %lit2, align 8
  %call49 = call %struct.term* @fol_Atom(%struct.term* %38)
  %call50 = call i32 @fol_IsEquality(%struct.term* %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.87

land.lhs.true.52:                                 ; preds = %land.lhs.true.48
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call53 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %39, i32 %40)
  %call54 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.52
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %42 = load i32, i32* %j, align 4
  %call56 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %41, i32 %42)
  %call57 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.87

if.then.59:                                       ; preds = %lor.lhs.false, %land.lhs.true.52
  call void @cont_StartBinding()
  %call60 = call %struct.binding* @cont_LeftContext()
  %43 = load %struct.term*, %struct.term** %lit1, align 8
  %call61 = call %struct.term* @fol_Atom(%struct.term* %43)
  %call62 = call %struct.term* @term_FirstArgument(%struct.term* %call61)
  %44 = load %struct.term*, %struct.term** %lit2, align 8
  %call63 = call %struct.term* @fol_Atom(%struct.term* %44)
  %call64 = call %struct.term* @term_SecondArgument(%struct.term* %call63)
  %call65 = call i32 @unify_MatchBindings(%struct.binding* %call60, %struct.term* %call62, %struct.term* %call64)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.85

land.lhs.true.67:                                 ; preds = %if.then.59
  %call68 = call %struct.binding* @cont_LeftContext()
  %45 = load %struct.term*, %struct.term** %lit1, align 8
  %call69 = call %struct.term* @fol_Atom(%struct.term* %45)
  %call70 = call %struct.term* @term_SecondArgument(%struct.term* %call69)
  %46 = load %struct.term*, %struct.term** %lit2, align 8
  %call71 = call %struct.term* @fol_Atom(%struct.term* %46)
  %call72 = call %struct.term* @term_FirstArgument(%struct.term* %call71)
  %call73 = call i32 @unify_MatchBindings(%struct.binding* %call68, %struct.term* %call70, %struct.term* %call72)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.85

if.then.75:                                       ; preds = %land.lhs.true.67
  %47 = load i32, i32* @stamp, align 4
  %48 = load i32, i32* %j, align 4
  %idxprom76 = sext i32 %48 to i64
  %arrayidx77 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom76
  store i32 %47, i32* %arrayidx77, align 4
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call78 = call i32 @subs_STMultiExceptIntern(%struct.CLAUSE_HELP* %49, %struct.CLAUSE_HELP* %50)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.82

if.then.80:                                       ; preds = %if.then.75
  %call81 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.75
  %51 = load i32, i32* %j, align 4
  %idxprom83 = sext i32 %51 to i64
  %arrayidx84 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom83
  store i32 0, i32* %arrayidx84, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.82, %land.lhs.true.67, %if.then.59
  %call86 = call i32 @cont_BackTrack()
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.85, %lor.lhs.false, %land.lhs.true.48, %land.lhs.true, %if.end.39
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %while.body.21
  %52 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %52, 1
  store i32 %inc89, i32* %j, align 4
  br label %while.cond.19

while.end.90:                                     ; preds = %while.cond.19
  %53 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %53 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom91
  store i32 0, i32* %arrayidx92, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.90, %if.then.80, %if.then.34, %if.then.14
  %54 = load i32, i32* %retval
  ret i32 %54
}

; Function Attrs: nounwind uwtable
define i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %ExceptI, i32 %ExceptJ) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ExceptI.addr = alloca i32, align 4
  %ExceptJ.addr = alloca i32, align 4
  %Result = alloca i32, align 4
  %c1fa = alloca i32, align 4
  %c1fs = alloca i32, align 4
  %c1l = alloca i32, align 4
  %c2fa = alloca i32, align 4
  %c2fs = alloca i32, align 4
  %c2l = alloca i32, align 4
  %lw1 = alloca i32, align 4
  %lw2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %ExceptI, i32* %ExceptI.addr, align 4
  store i32 %ExceptJ, i32* %ExceptJ.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %c1fa, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %c1fs, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %c1l, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call3 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %c2fa, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call4 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %c2fs, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call5 = call i32 @clause_Length(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %c2l, align 4
  %6 = load i32, i32* %ExceptI.addr, align 4
  %call6 = call i32 @clause_FirstLitIndex()
  %cmp = icmp sge i32 %6, %call6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %8 = load i32, i32* %ExceptI.addr, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  %call8 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call7)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call8, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %lw1, align 4
  %9 = load i32, i32* %ExceptJ.addr, align 4
  %call9 = call i32 @clause_FirstLitIndex()
  %cmp10 = icmp sge i32 %9, %call9
  br i1 %cmp10, label %cond.true.11, label %cond.false.14

cond.true.11:                                     ; preds = %cond.end
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %11 = load i32, i32* %ExceptJ.addr, align 4
  %call12 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  %call13 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call12)
  br label %cond.end.15

cond.false.14:                                    ; preds = %cond.end
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.14, %cond.true.11
  %cond16 = phi i32 [ %call13, %cond.true.11 ], [ 0, %cond.false.14 ]
  store i32 %cond16, i32* %lw2, align 4
  %12 = load i32, i32* %c1l, align 4
  %13 = load i32, i32* %c2l, align 4
  %cmp17 = icmp sgt i32 %12, %13
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.15
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call18 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %14)
  %15 = load i32, i32* %lw1, align 4
  %sub = sub i32 %call18, %15
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call19 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %16)
  %17 = load i32, i32* %lw2, align 4
  %sub20 = sub i32 %call19, %17
  %cmp21 = icmp ugt i32 %sub, %sub20
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.15
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %18 = load i32, i32* @stamp, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* @stamp, align 4
  %cmp22 = icmp eq i32 %inc, -1
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %if.end
  store i32 1, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %19 = load i32, i32* %i, align 4
  %cmp24 = icmp slt i32 %19, 100
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %21 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom25
  store i32 0, i32* %arrayidx26, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %22, 1
  store i32 %inc27, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %if.end
  %23 = load i32, i32* %ExceptI.addr, align 4
  %call29 = call i32 @clause_FirstLitIndex()
  %cmp30 = icmp sge i32 %23, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.28
  %24 = load i32, i32* @stamp, align 4
  %25 = load i32, i32* %ExceptI.addr, align 4
  %idxprom32 = sext i32 %25 to i64
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom32
  store i32 %24, i32* %arrayidx33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %if.end.28
  %26 = load i32, i32* %ExceptJ.addr, align 4
  %call35 = call i32 @clause_FirstLitIndex()
  %cmp36 = icmp sge i32 %26, %call35
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %if.end.34
  %27 = load i32, i32* @stamp, align 4
  %28 = load i32, i32* %ExceptJ.addr, align 4
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom38
  store i32 %27, i32* %arrayidx39, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %if.end.34
  %29 = load i32, i32* %c1l, align 4
  %cmp41 = icmp sgt i32 %29, 1
  br i1 %cmp41, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %if.end.40
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call42 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %31)
  %32 = load i32, i32* %c1fa, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call43 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %34)
  %35 = load i32, i32* %c2fa, align 4
  %call44 = call i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %30, i32 %call42, i32 %32, %struct.CLAUSE_HELP* %33, i32 %call43, i32 %35)
  %tobool = icmp ne i32 %call44, 0
  br i1 %tobool, label %lor.lhs.false.45, label %if.then.51

lor.lhs.false.45:                                 ; preds = %land.lhs.true
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %37 = load i32, i32* %c1fa, align 4
  %38 = load i32, i32* %c1fs, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %40 = load i32, i32* %c2fa, align 4
  %41 = load i32, i32* %c2fs, align 4
  %call46 = call i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %36, i32 %37, i32 %38, %struct.CLAUSE_HELP* %39, i32 %40, i32 %41)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.51

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.45
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %43 = load i32, i32* %c1fs, align 4
  %44 = load i32, i32* %c1l, align 4
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %46 = load i32, i32* %c2fs, align 4
  %47 = load i32, i32* %c2l, align 4
  %call49 = call i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %42, i32 %43, i32 %44, %struct.CLAUSE_HELP* %45, i32 %46, i32 %47)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %lor.lhs.false.48, %lor.lhs.false.45, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.52:                                        ; preds = %lor.lhs.false.48, %if.end.40
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %49 = load i32, i32* %c1fa, align 4
  %50 = load i32, i32* %c1fs, align 4
  %51 = load i32, i32* %c1l, align 4
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %53 = load i32, i32* %c2fa, align 4
  %54 = load i32, i32* %c2fs, align 4
  %55 = load i32, i32* %c2l, align 4
  %call53 = call i32 @subs_SubsumesInternBasic(%struct.CLAUSE_HELP* %48, i32 %49, i32 %50, i32 %51, %struct.CLAUSE_HELP* %52, i32 %53, i32 %54, i32 %55)
  store i32 %call53, i32* %Result, align 4
  %56 = load i32, i32* %Result, align 4
  store i32 %56, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.51, %if.then
  %57 = load i32, i32* %retval
  ret i32 %57
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  ret i32 %call
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
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %C1, i32 %c1l, i32 %c1r, %struct.CLAUSE_HELP* %C2, i32 %c2l, i32 %c2r) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c1l.addr = alloca i32, align 4
  %c1r.addr = alloca i32, align 4
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2l.addr = alloca i32, align 4
  %c2r.addr = alloca i32, align 4
  %t1 = alloca %struct.term*, align 8
  %t2 = alloca %struct.term*, align 8
  %j = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store i32 %c1l, i32* %c1l.addr, align 4
  store i32 %c1r, i32* %c1r.addr, align 4
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %c2l, i32* %c2l.addr, align 4
  store i32 %c2r, i32* %c2r.addr, align 4
  %0 = load i32, i32* %c1l.addr, align 4
  %1 = load i32, i32* %c1r.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %2 = load i32, i32* %c1l.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* @stamp, align 4
  %cmp1 = icmp eq i32 %3, %4
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i32, i32* %c1l.addr, align 4
  %6 = load i32, i32* %c1r.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load i32, i32* %c1l.addr, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %c1l.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %c1l.addr, align 4
  %10 = load i32, i32* %c1r.addr, align 4
  %cmp3 = icmp slt i32 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end.85

if.then.4:                                        ; preds = %while.end
  %11 = load i32, i32* %c2l.addr, align 4
  %12 = load i32, i32* %c2r.addr, align 4
  %cmp5 = icmp eq i32 %11, %12
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then.4
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  br label %do.body

do.body:                                          ; preds = %do.cond.81, %if.else
  %13 = load i32, i32* %c2l.addr, align 4
  store i32 %13, i32* %j, align 4
  store i32 0, i32* %found, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %15 = load i32, i32* %c1l.addr, align 4
  %call = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %14, i32 %15)
  store %struct.term* %call, %struct.term** %t1, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %land.end.67, %do.body
  %16 = load i32, i32* %j, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom8
  %17 = load i32, i32* %arrayidx9, align 4
  %18 = load i32, i32* @stamp, align 4
  %cmp10 = icmp eq i32 %17, %18
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %do.body.7
  %19 = load i32, i32* %j, align 4
  %inc12 = add nsw i32 %19, 1
  store i32 %inc12, i32* %j, align 4
  br label %if.end.63

if.else.13:                                       ; preds = %do.body.7
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %21 = load i32, i32* %j, align 4
  %call14 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %20, i32 %21)
  store %struct.term* %call14, %struct.term** %t2, align 8
  call void @cont_StartBinding()
  %call15 = call %struct.binding* @cont_LeftContext()
  %22 = load %struct.term*, %struct.term** %t1, align 8
  %23 = load %struct.term*, %struct.term** %t2, align 8
  %call16 = call i32 @unify_MatchBindings(%struct.binding* %call15, %struct.term* %22, %struct.term* %23)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else.13
  store i32 1, i32* %found, align 4
  br label %if.end.61

if.else.18:                                       ; preds = %if.else.13
  %24 = load %struct.term*, %struct.term** %t1, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %24)
  %25 = load %struct.term*, %struct.term** %t2, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %25)
  %call21 = call i32 @symbol_Equal(i32 %call19, i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true, label %if.else.58

land.lhs.true:                                    ; preds = %if.else.18
  %26 = load %struct.term*, %struct.term** %t1, align 8
  %call23 = call %struct.term* @fol_Atom(%struct.term* %26)
  %call24 = call i32 @fol_IsEquality(%struct.term* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.58

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %27 = load %struct.term*, %struct.term** %t2, align 8
  %call27 = call %struct.term* @fol_Atom(%struct.term* %27)
  %call28 = call i32 @fol_IsEquality(%struct.term* %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %if.else.58

land.lhs.true.30:                                 ; preds = %land.lhs.true.26
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %29 = load i32, i32* %c1l.addr, align 4
  %call31 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %28, i32 %29)
  %call32 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %31 = load i32, i32* %j, align 4
  %call34 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %30, i32 %31)
  %call35 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.58

if.then.37:                                       ; preds = %lor.lhs.false, %land.lhs.true.30
  %call38 = call i32 @cont_BackTrackAndStart()
  %call39 = call %struct.binding* @cont_LeftContext()
  %32 = load %struct.term*, %struct.term** %t1, align 8
  %call40 = call %struct.term* @fol_Atom(%struct.term* %32)
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %call40)
  %33 = load %struct.term*, %struct.term** %t2, align 8
  %call42 = call %struct.term* @fol_Atom(%struct.term* %33)
  %call43 = call %struct.term* @term_SecondArgument(%struct.term* %call42)
  %call44 = call i32 @unify_MatchBindings(%struct.binding* %call39, %struct.term* %call41, %struct.term* %call43)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.else.55

land.lhs.true.46:                                 ; preds = %if.then.37
  %call47 = call %struct.binding* @cont_LeftContext()
  %34 = load %struct.term*, %struct.term** %t1, align 8
  %call48 = call %struct.term* @fol_Atom(%struct.term* %34)
  %call49 = call %struct.term* @term_SecondArgument(%struct.term* %call48)
  %35 = load %struct.term*, %struct.term** %t2, align 8
  %call50 = call %struct.term* @fol_Atom(%struct.term* %35)
  %call51 = call %struct.term* @term_FirstArgument(%struct.term* %call50)
  %call52 = call i32 @unify_MatchBindings(%struct.binding* %call47, %struct.term* %call49, %struct.term* %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %land.lhs.true.46
  store i32 1, i32* %found, align 4
  br label %if.end.57

if.else.55:                                       ; preds = %land.lhs.true.46, %if.then.37
  %36 = load i32, i32* %j, align 4
  %inc56 = add nsw i32 %36, 1
  store i32 %inc56, i32* %j, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.then.54
  br label %if.end.60

if.else.58:                                       ; preds = %lor.lhs.false, %land.lhs.true.26, %land.lhs.true, %if.else.18
  %37 = load i32, i32* %j, align 4
  %inc59 = add nsw i32 %37, 1
  store i32 %inc59, i32* %j, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.58, %if.end.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.17
  %call62 = call i32 @cont_BackTrack()
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.61, %if.then.11
  br label %do.cond

do.cond:                                          ; preds = %if.end.63
  %38 = load i32, i32* %found, align 4
  %tobool64 = icmp ne i32 %38, 0
  br i1 %tobool64, label %land.end.67, label %land.rhs.65

land.rhs.65:                                      ; preds = %do.cond
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %c2r.addr, align 4
  %cmp66 = icmp slt i32 %39, %40
  br label %land.end.67

land.end.67:                                      ; preds = %land.rhs.65, %do.cond
  %41 = phi i1 [ false, %do.cond ], [ %cmp66, %land.rhs.65 ]
  br i1 %41, label %do.body.7, label %do.end

do.end:                                           ; preds = %land.end.67
  %42 = load i32, i32* %found, align 4
  %tobool68 = icmp ne i32 %42, 0
  br i1 %tobool68, label %if.end.70, label %if.then.69

if.then.69:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %do.end
  br label %do.body.71

do.body.71:                                       ; preds = %land.end.79, %if.end.70
  %43 = load i32, i32* %c1l.addr, align 4
  %inc72 = add nsw i32 %43, 1
  store i32 %inc72, i32* %c1l.addr, align 4
  br label %do.cond.73

do.cond.73:                                       ; preds = %do.body.71
  %44 = load i32, i32* %c1l.addr, align 4
  %idxprom74 = sext i32 %44 to i64
  %arrayidx75 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom74
  %45 = load i32, i32* %arrayidx75, align 4
  %46 = load i32, i32* @stamp, align 4
  %cmp76 = icmp eq i32 %45, %46
  br i1 %cmp76, label %land.rhs.77, label %land.end.79

land.rhs.77:                                      ; preds = %do.cond.73
  %47 = load i32, i32* %c1l.addr, align 4
  %48 = load i32, i32* %c1r.addr, align 4
  %cmp78 = icmp slt i32 %47, %48
  br label %land.end.79

land.end.79:                                      ; preds = %land.rhs.77, %do.cond.73
  %49 = phi i1 [ false, %do.cond.73 ], [ %cmp78, %land.rhs.77 ]
  br i1 %49, label %do.body.71, label %do.end.80

do.end.80:                                        ; preds = %land.end.79
  br label %do.cond.81

do.cond.81:                                       ; preds = %do.end.80
  %50 = load i32, i32* %c1l.addr, align 4
  %51 = load i32, i32* %c1r.addr, align 4
  %cmp82 = icmp slt i32 %50, %51
  br i1 %cmp82, label %do.body, label %do.end.83

do.end.83:                                        ; preds = %do.cond.81
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %while.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.then.69, %if.then.6, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumesInternBasic(%struct.CLAUSE_HELP* %C1, i32 %c1fa, i32 %c1fs, i32 %c1l, %struct.CLAUSE_HELP* %C2, i32 %c2fa, i32 %c2fs, i32 %c2l) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c1fa.addr = alloca i32, align 4
  %c1fs.addr = alloca i32, align 4
  %c1l.addr = alloca i32, align 4
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2fa.addr = alloca i32, align 4
  %c2fs.addr = alloca i32, align 4
  %c2l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %occs = alloca i32, align 4
  %occsaux = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store i32 %c1fa, i32* %c1fa.addr, align 4
  store i32 %c1fs, i32* %c1fs.addr, align 4
  store i32 %c1l, i32* %c1l.addr, align 4
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %c2fa, i32* %c2fa.addr, align 4
  store i32 %c2fs, i32* %c2fs.addr, align 4
  store i32 %c2l, i32* %c2l.addr, align 4
  store i32 -1, i32* %i, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %k, align 4
  store i32 0, i32* %occs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %c1l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* @stamp, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %k, align 4
  store i32 %6, i32* %i, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %7, i32 %8)
  %call5 = call i32 @term_NumberOfVarOccs(%struct.term* %call4)
  store i32 %call5, i32* %occs, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %10 = load i32, i32* %k, align 4
  %call6 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %9, i32 %10)
  %call7 = call i32 @term_NumberOfVarOccs(%struct.term* %call6)
  store i32 %call7, i32* %occsaux, align 4
  %11 = load i32, i32* %occs, align 4
  %cmp8 = icmp ugt i32 %call7, %11
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %12 = load i32, i32* %k, align 4
  store i32 %12, i32* %i, align 4
  %13 = load i32, i32* %occsaux, align 4
  store i32 %13, i32* %occs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %while.body
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %while.end
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %17 = load i32, i32* %i, align 4
  %call15 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %16, i32 %17)
  store %struct.term* %call15, %struct.term** %lit1, align 8
  %18 = load i32, i32* @stamp, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom16
  store i32 %18, i32* %arrayidx17, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %c1fa.addr, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.end.14
  %call20 = call i32 @clause_FirstLitIndex()
  store i32 %call20, i32* %j, align 4
  %22 = load i32, i32* %c2fa.addr, align 4
  store i32 %22, i32* %n, align 4
  br label %if.end.26

if.else.21:                                       ; preds = %if.end.14
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %c1fs.addr, align 4
  %cmp22 = icmp slt i32 %23, %24
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.21
  %25 = load i32, i32* %c2fa.addr, align 4
  store i32 %25, i32* %j, align 4
  %26 = load i32, i32* %c2fs.addr, align 4
  store i32 %26, i32* %n, align 4
  br label %if.end.25

if.else.24:                                       ; preds = %if.else.21
  %27 = load i32, i32* %c2fs.addr, align 4
  store i32 %27, i32* %j, align 4
  %28 = load i32, i32* %c2l.addr, align 4
  store i32 %28, i32* %n, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.19
  br label %while.cond.27

while.cond.27:                                    ; preds = %if.end.96, %if.end.26
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %n, align 4
  %cmp28 = icmp slt i32 %29, %30
  br i1 %cmp28, label %while.body.29, label %while.end.98

while.body.29:                                    ; preds = %while.cond.27
  %31 = load i32, i32* %j, align 4
  %idxprom30 = sext i32 %31 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom30
  %32 = load i32, i32* %arrayidx31, align 4
  %33 = load i32, i32* @stamp, align 4
  %cmp32 = icmp ne i32 %32, %33
  br i1 %cmp32, label %if.then.33, label %if.end.96

if.then.33:                                       ; preds = %while.body.29
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %35 = load i32, i32* %j, align 4
  %call34 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %34, i32 %35)
  store %struct.term* %call34, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call35 = call %struct.binding* @cont_LeftContext()
  %36 = load %struct.term*, %struct.term** %lit1, align 8
  %37 = load %struct.term*, %struct.term** %lit2, align 8
  %call36 = call i32 @unify_MatchBindings(%struct.binding* %call35, %struct.term* %36, %struct.term* %37)
  %tobool = icmp ne i32 %call36, 0
  br i1 %tobool, label %if.then.37, label %if.end.47

if.then.37:                                       ; preds = %if.then.33
  %38 = load i32, i32* @stamp, align 4
  %39 = load i32, i32* %j, align 4
  %idxprom38 = sext i32 %39 to i64
  %arrayidx39 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom38
  store i32 %38, i32* %arrayidx39, align 4
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %41 = load i32, i32* %c1fa.addr, align 4
  %42 = load i32, i32* %c1fs.addr, align 4
  %43 = load i32, i32* %c1l.addr, align 4
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %45 = load i32, i32* %c2fa.addr, align 4
  %46 = load i32, i32* %c2fs.addr, align 4
  %47 = load i32, i32* %c2l.addr, align 4
  %call40 = call i32 @subs_SubsumesInternBasic(%struct.CLAUSE_HELP* %40, i32 %41, i32 %42, i32 %43, %struct.CLAUSE_HELP* %44, i32 %45, i32 %46, i32 %47)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %if.then.37
  %call43 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.37
  %48 = load i32, i32* %j, align 4
  %idxprom45 = sext i32 %48 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom45
  store i32 0, i32* %arrayidx46, align 4
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.44, %if.then.33
  %call48 = call i32 @cont_BackTrack()
  %49 = load %struct.term*, %struct.term** %lit1, align 8
  %call49 = call i32 @term_TopSymbol(%struct.term* %49)
  %50 = load %struct.term*, %struct.term** %lit2, align 8
  %call50 = call i32 @term_TopSymbol(%struct.term* %50)
  %call51 = call i32 @symbol_Equal(i32 %call49, i32 %call50)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true, label %if.end.95

land.lhs.true:                                    ; preds = %if.end.47
  %51 = load %struct.term*, %struct.term** %lit1, align 8
  %call53 = call %struct.term* @fol_Atom(%struct.term* %51)
  %call54 = call i32 @fol_IsEquality(%struct.term* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.95

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %52 = load %struct.term*, %struct.term** %lit2, align 8
  %call57 = call %struct.term* @fol_Atom(%struct.term* %52)
  %call58 = call i32 @fol_IsEquality(%struct.term* %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.95

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %54 = load i32, i32* %i, align 4
  %call61 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %53, i32 %54)
  %call62 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.60
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %56 = load i32, i32* %j, align 4
  %call64 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %55, i32 %56)
  %call65 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call64)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.95

if.then.67:                                       ; preds = %lor.lhs.false, %land.lhs.true.60
  call void @cont_StartBinding()
  %call68 = call %struct.binding* @cont_LeftContext()
  %57 = load %struct.term*, %struct.term** %lit1, align 8
  %call69 = call %struct.term* @fol_Atom(%struct.term* %57)
  %call70 = call %struct.term* @term_FirstArgument(%struct.term* %call69)
  %58 = load %struct.term*, %struct.term** %lit2, align 8
  %call71 = call %struct.term* @fol_Atom(%struct.term* %58)
  %call72 = call %struct.term* @term_SecondArgument(%struct.term* %call71)
  %call73 = call i32 @unify_MatchBindings(%struct.binding* %call68, %struct.term* %call70, %struct.term* %call72)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %land.lhs.true.75, label %if.end.93

land.lhs.true.75:                                 ; preds = %if.then.67
  %call76 = call %struct.binding* @cont_LeftContext()
  %59 = load %struct.term*, %struct.term** %lit1, align 8
  %call77 = call %struct.term* @fol_Atom(%struct.term* %59)
  %call78 = call %struct.term* @term_SecondArgument(%struct.term* %call77)
  %60 = load %struct.term*, %struct.term** %lit2, align 8
  %call79 = call %struct.term* @fol_Atom(%struct.term* %60)
  %call80 = call %struct.term* @term_FirstArgument(%struct.term* %call79)
  %call81 = call i32 @unify_MatchBindings(%struct.binding* %call76, %struct.term* %call78, %struct.term* %call80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.93

if.then.83:                                       ; preds = %land.lhs.true.75
  %61 = load i32, i32* @stamp, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %62 to i64
  %arrayidx85 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom84
  store i32 %61, i32* %arrayidx85, align 4
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %64 = load i32, i32* %c1fa.addr, align 4
  %65 = load i32, i32* %c1fs.addr, align 4
  %66 = load i32, i32* %c1l.addr, align 4
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %68 = load i32, i32* %c2fa.addr, align 4
  %69 = load i32, i32* %c2fs.addr, align 4
  %70 = load i32, i32* %c2l.addr, align 4
  %call86 = call i32 @subs_SubsumesInternBasic(%struct.CLAUSE_HELP* %63, i32 %64, i32 %65, i32 %66, %struct.CLAUSE_HELP* %67, i32 %68, i32 %69, i32 %70)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.then.83
  %call89 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.83
  %71 = load i32, i32* %j, align 4
  %idxprom91 = sext i32 %71 to i64
  %arrayidx92 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom91
  store i32 0, i32* %arrayidx92, align 4
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.90, %land.lhs.true.75, %if.then.67
  %call94 = call i32 @cont_BackTrack()
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.93, %lor.lhs.false, %land.lhs.true.56, %land.lhs.true, %if.end.47
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.95, %while.body.29
  %72 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %72, 1
  store i32 %inc97, i32* %j, align 4
  br label %while.cond.27

while.end.98:                                     ; preds = %while.cond.27
  %73 = load i32, i32* %i, align 4
  %idxprom99 = sext i32 %73 to i64
  %arrayidx100 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom99
  store i32 0, i32* %arrayidx100, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.98, %if.then.88, %if.then.42, %if.then.13
  %74 = load i32, i32* %retval
  ret i32 %74
}

; Function Attrs: nounwind uwtable
define i32 @subs_SubsumesWithSignature(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %Variants, %struct.LIST_HELP** %Bindings) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Variants.addr = alloca i32, align 4
  %Bindings.addr = alloca %struct.LIST_HELP**, align 8
  %Result = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %Variants, i32* %Variants.addr, align 4
  store %struct.LIST_HELP** %Bindings, %struct.LIST_HELP*** %Bindings.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sgt i32 %call, %call1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call2 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call3 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %3)
  %cmp4 = icmp sgt i32 %call2, %call3
  br i1 %cmp4, label %if.then, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %lor.lhs.false
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call6 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call7 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %5)
  %add = add nsw i32 %call6, %call7
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call8 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call9 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %7)
  %add10 = add nsw i32 %call8, %call9
  %cmp11 = icmp sgt i32 %add, %add10
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.5, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  %8 = load i32, i32* @stamp, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* @stamp, align 4
  %cmp12 = icmp eq i32 %inc, -1
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %if.end
  store i32 1, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %9 = load i32, i32* %i, align 4
  %cmp14 = icmp slt i32 %9, 100
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %11 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom15
  store i32 0, i32* %arrayidx16, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %12, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.18

if.end.18:                                        ; preds = %for.end, %if.end
  call void @term_NewMark()
  %call19 = call i32 @clause_FirstLitIndex()
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %15 = load i32, i32* %Variants.addr, align 4
  %16 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %call20 = call i32 @subs_SubsumesInternWithSignature(i32 %call19, %struct.CLAUSE_HELP* %13, %struct.CLAUSE_HELP* %14, i32 %15, %struct.LIST_HELP** %16)
  store i32 %call20, i32* %Result, align 4
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %17, align 8
  %call21 = call %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP* %18, i32 (i8*)* bitcast (i32 (i32)* @symbol_IsVariable to i32 (i8*)*))
  %19 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %19, align 8
  %20 = load i32, i32* %Result, align 4
  store i32 %20, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
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
define internal void @term_NewMark() #1 {
entry:
  %i = alloca i32, align 4
  %0 = load i32, i32* @term_MARK, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %call = call i32 @symbol_MaxVars()
  %cmp1 = icmp slt i32 %1, %call
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @term_NullMark()
  %conv = zext i32 %call2 to i64
  %2 = inttoptr i64 %conv to i8*
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx3 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  store i8* %2, i8** %arrayidx3, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* @term_MARK, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %5 = load i32, i32* @term_MARK, align 4
  %inc4 = add i32 %5, 1
  store i32 %inc4, i32* @term_MARK, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumesInternWithSignature(i32 %i, %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2, i32 %Variants, %struct.LIST_HELP** %Bindings) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Variants.addr = alloca i32, align 4
  %Bindings.addr = alloca %struct.LIST_HELP**, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  %NewBindings = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %Variants, i32* %Variants.addr, align 4
  store %struct.LIST_HELP** %Bindings, %struct.LIST_HELP*** %Bindings.addr, align 8
  store i32 0, i32* %j, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %1, i32 %2)
  store %struct.term* %call1, %struct.term** %lit1, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %NewBindings, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.91, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32, i32* @stamp, align 4
  %cmp3 = icmp ne i32 %6, %7
  br i1 %cmp3, label %if.then, label %if.end.91

if.then:                                          ; preds = %while.body
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.term* %call4, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %10 = load %struct.term*, %struct.term** %lit1, align 8
  %11 = load %struct.term*, %struct.term** %lit2, align 8
  %12 = load i32, i32* %Variants.addr, align 4
  %call5 = call i32 @fol_SignatureMatch(%struct.term* %10, %struct.term* %11, %struct.LIST_HELP** %NewBindings, i32 %12)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end.20

if.then.6:                                        ; preds = %if.then
  %13 = load i32, i32* %i.addr, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %14)
  %sub = sub nsw i32 %call7, 1
  %cmp8 = icmp eq i32 %13, %sub
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then.6
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  %16 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %16, align 8
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %15, %struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %18, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.6
  %19 = load i32, i32* @stamp, align 4
  %20 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %20 to i64
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom11
  store i32 %19, i32* %arrayidx12, align 4
  %21 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %21, 1
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %24 = load i32, i32* %Variants.addr, align 4
  %call13 = call i32 @subs_SubsumesInternWithSignature(i32 %add, %struct.CLAUSE_HELP* %22, %struct.CLAUSE_HELP* %23, i32 %24, %struct.LIST_HELP** %NewBindings)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  %26 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %26, align 8
  %call16 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %25, %struct.LIST_HELP* %27)
  %28 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %28, align 8
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  %29 = load i32, i32* %j, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom18
  store i32 0, i32* %arrayidx19, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.17, %if.then
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.20
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = ptrtoint i8* %call23 to i32
  %call24 = call i32 @symbol_IsVariable(i32 %33)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %for.body
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = ptrtoint i8* %call27 to i32
  call void @term_ClearBinding(i32 %35)
  br label %if.end.29

if.else:                                          ; preds = %for.body
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = ptrtoint i8* %call28 to i32
  call void @symbol_ContextClearValue(i32 %37)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  call void @list_Delete(%struct.LIST_HELP* %39)
  %call31 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %NewBindings, align 8
  %40 = load %struct.term*, %struct.term** %lit1, align 8
  %call32 = call %struct.term* @fol_Atom(%struct.term* %40)
  %call33 = call i32 @term_TopSymbol(%struct.term* %call32)
  %41 = load %struct.term*, %struct.term** %lit2, align 8
  %call34 = call %struct.term* @fol_Atom(%struct.term* %41)
  %call35 = call i32 @term_TopSymbol(%struct.term* %call34)
  %call36 = call i32 @symbol_Equal(i32 %call33, i32 %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true, label %if.end.90

land.lhs.true:                                    ; preds = %for.end
  %42 = load %struct.term*, %struct.term** %lit1, align 8
  %call38 = call %struct.term* @fol_Atom(%struct.term* %42)
  %call39 = call i32 @fol_IsEquality(%struct.term* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.90

if.then.41:                                       ; preds = %land.lhs.true
  %43 = load %struct.term*, %struct.term** %lit1, align 8
  %call42 = call %struct.term* @fol_Atom(%struct.term* %43)
  %call43 = call %struct.term* @term_FirstArgument(%struct.term* %call42)
  %44 = load %struct.term*, %struct.term** %lit2, align 8
  %call44 = call %struct.term* @fol_Atom(%struct.term* %44)
  %call45 = call %struct.term* @term_SecondArgument(%struct.term* %call44)
  %45 = load i32, i32* %Variants.addr, align 4
  %call46 = call i32 @fol_SignatureMatch(%struct.term* %call43, %struct.term* %call45, %struct.LIST_HELP** %NewBindings, i32 %45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.72

land.lhs.true.48:                                 ; preds = %if.then.41
  %46 = load %struct.term*, %struct.term** %lit1, align 8
  %call49 = call %struct.term* @fol_Atom(%struct.term* %46)
  %call50 = call %struct.term* @term_SecondArgument(%struct.term* %call49)
  %47 = load %struct.term*, %struct.term** %lit2, align 8
  %call51 = call %struct.term* @fol_Atom(%struct.term* %47)
  %call52 = call %struct.term* @term_FirstArgument(%struct.term* %call51)
  %48 = load i32, i32* %Variants.addr, align 4
  %call53 = call i32 @fol_SignatureMatch(%struct.term* %call50, %struct.term* %call52, %struct.LIST_HELP** %NewBindings, i32 %48)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.72

if.then.55:                                       ; preds = %land.lhs.true.48
  %49 = load i32, i32* %i.addr, align 4
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call56 = call i32 @clause_Length(%struct.CLAUSE_HELP* %50)
  %sub57 = sub nsw i32 %call56, 1
  %cmp58 = icmp eq i32 %49, %sub57
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.55
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  %52 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %52, align 8
  %call60 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %51, %struct.LIST_HELP* %53)
  %54 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %54, align 8
  store i32 1, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.then.55
  %55 = load i32, i32* @stamp, align 4
  %56 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %56 to i64
  %arrayidx63 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom62
  store i32 %55, i32* %arrayidx63, align 4
  %57 = load i32, i32* %i.addr, align 4
  %add64 = add nsw i32 %57, 1
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %60 = load i32, i32* %Variants.addr, align 4
  %call65 = call i32 @subs_SubsumesInternWithSignature(i32 %add64, %struct.CLAUSE_HELP* %58, %struct.CLAUSE_HELP* %59, i32 %60, %struct.LIST_HELP** %NewBindings)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.61
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  %62 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %62, align 8
  %call68 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %61, %struct.LIST_HELP* %63)
  %64 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Bindings.addr, align 8
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %64, align 8
  store i32 1, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.end.61
  %65 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %65 to i64
  %arrayidx71 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom70
  store i32 0, i32* %arrayidx71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.69, %land.lhs.true.48, %if.then.41
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.86, %if.end.72
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call74 = call i32 @list_Empty(%struct.LIST_HELP* %67)
  %tobool75 = icmp ne i32 %call74, 0
  %lnot76 = xor i1 %tobool75, true
  br i1 %lnot76, label %for.body.77, label %for.end.88

for.body.77:                                      ; preds = %for.cond.73
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = ptrtoint i8* %call78 to i32
  %call79 = call i32 @symbol_IsVariable(i32 %69)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.83

if.then.81:                                       ; preds = %for.body.77
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call82 = call i8* @list_Car(%struct.LIST_HELP* %70)
  %71 = ptrtoint i8* %call82 to i32
  call void @term_ClearBinding(i32 %71)
  br label %if.end.85

if.else.83:                                       ; preds = %for.body.77
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call84 = call i8* @list_Car(%struct.LIST_HELP* %72)
  %73 = ptrtoint i8* %call84 to i32
  call void @symbol_ContextClearValue(i32 %73)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.83, %if.then.81
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call87 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %74)
  store %struct.LIST_HELP* %call87, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.73

for.end.88:                                       ; preds = %for.cond.73
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewBindings, align 8
  call void @list_Delete(%struct.LIST_HELP* %75)
  %call89 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %NewBindings, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %for.end.88, %land.lhs.true, %for.end
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %while.body
  %76 = load i32, i32* %j, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.67, %if.then.59, %if.then.15, %if.then.9
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP*, i32 (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @subs_Subsumes(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %ExceptI, i32 %ExceptJ) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ExceptI.addr = alloca i32, align 4
  %ExceptJ.addr = alloca i32, align 4
  %Result = alloca i32, align 4
  %c1fs = alloca i32, align 4
  %c1l = alloca i32, align 4
  %c2fs = alloca i32, align 4
  %c2l = alloca i32, align 4
  %lw1 = alloca i32, align 4
  %lw2 = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %ExceptI, i32* %ExceptI.addr, align 4
  store i32 %ExceptJ, i32* %ExceptJ.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %c1fs, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %c1l, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %c2fs, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call3 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %c2l, align 4
  %4 = load i32, i32* %ExceptI.addr, align 4
  %call4 = call i32 @clause_FirstLitIndex()
  %cmp = icmp sge i32 %4, %call4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %6 = load i32, i32* %ExceptI.addr, align 4
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  %call6 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call5)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %lw1, align 4
  %7 = load i32, i32* %ExceptJ.addr, align 4
  %call7 = call i32 @clause_FirstLitIndex()
  %cmp8 = icmp sge i32 %7, %call7
  br i1 %cmp8, label %cond.true.9, label %cond.false.12

cond.true.9:                                      ; preds = %cond.end
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %9 = load i32, i32* %ExceptJ.addr, align 4
  %call10 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  %call11 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call10)
  br label %cond.end.13

cond.false.12:                                    ; preds = %cond.end
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.12, %cond.true.9
  %cond14 = phi i32 [ %call11, %cond.true.9 ], [ 0, %cond.false.12 ]
  store i32 %cond14, i32* %lw2, align 4
  %10 = load i32, i32* %c1l, align 4
  %11 = load i32, i32* %c2l, align 4
  %cmp15 = icmp sgt i32 %10, %11
  br i1 %cmp15, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.13
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call16 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %12)
  %13 = load i32, i32* %lw1, align 4
  %sub = sub i32 %call16, %13
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call17 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %14)
  %15 = load i32, i32* %lw2, align 4
  %sub18 = sub i32 %call17, %15
  %cmp19 = icmp ugt i32 %sub, %sub18
  br i1 %cmp19, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end.13
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %16 = load i32, i32* @stamp, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* @stamp, align 4
  %cmp20 = icmp eq i32 %inc, -1
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %if.end
  store i32 1, i32* @stamp, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %17 = load i32, i32* %i, align 4
  %cmp22 = icmp slt i32 %17, 100
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom23
  store i32 0, i32* %arrayidx24, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.end.26:                                        ; preds = %for.end, %if.end
  %21 = load i32, i32* %ExceptI.addr, align 4
  %call27 = call i32 @clause_FirstLitIndex()
  %cmp28 = icmp sge i32 %21, %call27
  br i1 %cmp28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end.26
  %22 = load i32, i32* @stamp, align 4
  %23 = load i32, i32* %ExceptI.addr, align 4
  %idxprom30 = sext i32 %23 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom30
  store i32 %22, i32* %arrayidx31, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  %24 = load i32, i32* %ExceptJ.addr, align 4
  %call33 = call i32 @clause_FirstLitIndex()
  %cmp34 = icmp sge i32 %24, %call33
  br i1 %cmp34, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %if.end.32
  %25 = load i32, i32* @stamp, align 4
  %26 = load i32, i32* %ExceptJ.addr, align 4
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom36
  store i32 %25, i32* %arrayidx37, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %if.end.32
  %27 = load i32, i32* %c1l, align 4
  %cmp39 = icmp sgt i32 %27, 1
  br i1 %cmp39, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end.38
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call40 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %29)
  %30 = load i32, i32* %c1fs, align 4
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call41 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %32)
  %33 = load i32, i32* %c2fs, align 4
  %call42 = call i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %28, i32 %call40, i32 %30, %struct.CLAUSE_HELP* %31, i32 %call41, i32 %33)
  %tobool = icmp ne i32 %call42, 0
  br i1 %tobool, label %lor.lhs.false.43, label %if.then.46

lor.lhs.false.43:                                 ; preds = %land.lhs.true
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %35 = load i32, i32* %c1fs, align 4
  %36 = load i32, i32* %c1l, align 4
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %38 = load i32, i32* %c2fs, align 4
  %39 = load i32, i32* %c2l, align 4
  %call44 = call i32 @subs_PartnerTest(%struct.CLAUSE_HELP* %34, i32 %35, i32 %36, %struct.CLAUSE_HELP* %37, i32 %38, i32 %39)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false.43, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.43, %if.end.38
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %41 = load i32, i32* %c1fs, align 4
  %42 = load i32, i32* %c1l, align 4
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %44 = load i32, i32* %c2fs, align 4
  %45 = load i32, i32* %c2l, align 4
  %call48 = call i32 @subs_SubsumesIntern(%struct.CLAUSE_HELP* %40, i32 %41, i32 %42, %struct.CLAUSE_HELP* %43, i32 %44, i32 %45)
  store i32 %call48, i32* %Result, align 4
  %46 = load i32, i32* %Result, align 4
  store i32 %46, i32* %retval
  br label %return

return:                                           ; preds = %if.end.47, %if.then.46, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumesIntern(%struct.CLAUSE_HELP* %C1, i32 %c1fs, i32 %c1l, %struct.CLAUSE_HELP* %C2, i32 %c2fs, i32 %c2l) #0 {
entry:
  %retval = alloca i32, align 4
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c1fs.addr = alloca i32, align 4
  %c1l.addr = alloca i32, align 4
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2fs.addr = alloca i32, align 4
  %c2l.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  %occs = alloca i32, align 4
  %occsaux = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store i32 %c1fs, i32* %c1fs.addr, align 4
  store i32 %c1l, i32* %c1l.addr, align 4
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %c2fs, i32* %c2fs.addr, align 4
  store i32 %c2l, i32* %c2l.addr, align 4
  store i32 -1, i32* %i, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %k, align 4
  store i32 0, i32* %occs, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.11, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %c1l.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %k, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* @stamp, align 4
  %cmp1 = icmp ne i32 %3, %4
  br i1 %cmp1, label %if.then, label %if.end.11

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %i, align 4
  %cmp2 = icmp slt i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %6 = load i32, i32* %k, align 4
  store i32 %6, i32* %i, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %7, i32 %8)
  %call5 = call i32 @term_NumberOfVarOccs(%struct.term* %call4)
  store i32 %call5, i32* %occs, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %10 = load i32, i32* %k, align 4
  %call6 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %9, i32 %10)
  %call7 = call i32 @term_NumberOfVarOccs(%struct.term* %call6)
  store i32 %call7, i32* %occsaux, align 4
  %11 = load i32, i32* %occs, align 4
  %cmp8 = icmp ugt i32 %call7, %11
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.else
  %12 = load i32, i32* %k, align 4
  store i32 %12, i32* %i, align 4
  %13 = load i32, i32* %occsaux, align 4
  store i32 %13, i32* %occs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %while.body
  %14 = load i32, i32* %k, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %k, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %while.end
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %17 = load i32, i32* %i, align 4
  %call15 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %16, i32 %17)
  store %struct.term* %call15, %struct.term** %lit1, align 8
  %18 = load i32, i32* @stamp, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %19 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom16
  store i32 %18, i32* %arrayidx17, align 4
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %c1fs.addr, align 4
  %cmp18 = icmp slt i32 %20, %21
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.end.14
  %call20 = call i32 @clause_FirstLitIndex()
  store i32 %call20, i32* %j, align 4
  %22 = load i32, i32* %c2fs.addr, align 4
  store i32 %22, i32* %n, align 4
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.14
  %23 = load i32, i32* %c2fs.addr, align 4
  store i32 %23, i32* %j, align 4
  %24 = load i32, i32* %c2l.addr, align 4
  store i32 %24, i32* %n, align 4
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  br label %while.cond.23

while.cond.23:                                    ; preds = %if.end.92, %if.end.22
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %n, align 4
  %cmp24 = icmp slt i32 %25, %26
  br i1 %cmp24, label %while.body.25, label %while.end.94

while.body.25:                                    ; preds = %while.cond.23
  %27 = load i32, i32* %j, align 4
  %idxprom26 = sext i32 %27 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom26
  %28 = load i32, i32* %arrayidx27, align 4
  %29 = load i32, i32* @stamp, align 4
  %cmp28 = icmp ne i32 %28, %29
  br i1 %cmp28, label %if.then.29, label %if.end.92

if.then.29:                                       ; preds = %while.body.25
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %31 = load i32, i32* %j, align 4
  %call30 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %30, i32 %31)
  store %struct.term* %call30, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call31 = call %struct.binding* @cont_LeftContext()
  %32 = load %struct.term*, %struct.term** %lit1, align 8
  %33 = load %struct.term*, %struct.term** %lit2, align 8
  %call32 = call i32 @unify_MatchBindings(%struct.binding* %call31, %struct.term* %32, %struct.term* %33)
  %tobool = icmp ne i32 %call32, 0
  br i1 %tobool, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.then.29
  %34 = load i32, i32* @stamp, align 4
  %35 = load i32, i32* %j, align 4
  %idxprom34 = sext i32 %35 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom34
  store i32 %34, i32* %arrayidx35, align 4
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %37 = load i32, i32* %c1fs.addr, align 4
  %38 = load i32, i32* %c1l.addr, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %40 = load i32, i32* %c2fs.addr, align 4
  %41 = load i32, i32* %c2l.addr, align 4
  %call36 = call i32 @subs_SubsumesIntern(%struct.CLAUSE_HELP* %36, i32 %37, i32 %38, %struct.CLAUSE_HELP* %39, i32 %40, i32 %41)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.33
  %call39 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.then.33
  %42 = load i32, i32* %j, align 4
  %idxprom41 = sext i32 %42 to i64
  %arrayidx42 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom41
  store i32 0, i32* %arrayidx42, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.40, %if.then.29
  %call44 = call i32 @cont_BackTrack()
  %43 = load %struct.term*, %struct.term** %lit1, align 8
  %call45 = call i32 @term_TopSymbol(%struct.term* %43)
  %44 = load %struct.term*, %struct.term** %lit2, align 8
  %call46 = call i32 @term_TopSymbol(%struct.term* %44)
  %call47 = call i32 @symbol_Equal(i32 %call45, i32 %call46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true, label %if.end.91

land.lhs.true:                                    ; preds = %if.end.43
  %45 = load %struct.term*, %struct.term** %lit1, align 8
  %call49 = call %struct.term* @fol_Atom(%struct.term* %45)
  %call50 = call i32 @fol_IsEquality(%struct.term* %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.91

land.lhs.true.52:                                 ; preds = %land.lhs.true
  %46 = load %struct.term*, %struct.term** %lit2, align 8
  %call53 = call %struct.term* @fol_Atom(%struct.term* %46)
  %call54 = call i32 @fol_IsEquality(%struct.term* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.91

land.lhs.true.56:                                 ; preds = %land.lhs.true.52
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %48 = load i32, i32* %i, align 4
  %call57 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %47, i32 %48)
  %call58 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.63, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.56
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %50 = load i32, i32* %j, align 4
  %call60 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %49, i32 %50)
  %call61 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call60)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.91

if.then.63:                                       ; preds = %lor.lhs.false, %land.lhs.true.56
  call void @cont_StartBinding()
  %call64 = call %struct.binding* @cont_LeftContext()
  %51 = load %struct.term*, %struct.term** %lit1, align 8
  %call65 = call %struct.term* @fol_Atom(%struct.term* %51)
  %call66 = call %struct.term* @term_FirstArgument(%struct.term* %call65)
  %52 = load %struct.term*, %struct.term** %lit2, align 8
  %call67 = call %struct.term* @fol_Atom(%struct.term* %52)
  %call68 = call %struct.term* @term_SecondArgument(%struct.term* %call67)
  %call69 = call i32 @unify_MatchBindings(%struct.binding* %call64, %struct.term* %call66, %struct.term* %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %if.end.89

land.lhs.true.71:                                 ; preds = %if.then.63
  %call72 = call %struct.binding* @cont_LeftContext()
  %53 = load %struct.term*, %struct.term** %lit1, align 8
  %call73 = call %struct.term* @fol_Atom(%struct.term* %53)
  %call74 = call %struct.term* @term_SecondArgument(%struct.term* %call73)
  %54 = load %struct.term*, %struct.term** %lit2, align 8
  %call75 = call %struct.term* @fol_Atom(%struct.term* %54)
  %call76 = call %struct.term* @term_FirstArgument(%struct.term* %call75)
  %call77 = call i32 @unify_MatchBindings(%struct.binding* %call72, %struct.term* %call74, %struct.term* %call76)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.89

if.then.79:                                       ; preds = %land.lhs.true.71
  %55 = load i32, i32* @stamp, align 4
  %56 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %56 to i64
  %arrayidx81 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom80
  store i32 %55, i32* %arrayidx81, align 4
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %58 = load i32, i32* %c1fs.addr, align 4
  %59 = load i32, i32* %c1l.addr, align 4
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %61 = load i32, i32* %c2fs.addr, align 4
  %62 = load i32, i32* %c2l.addr, align 4
  %call82 = call i32 @subs_SubsumesIntern(%struct.CLAUSE_HELP* %57, i32 %58, i32 %59, %struct.CLAUSE_HELP* %60, i32 %61, i32 %62)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.86

if.then.84:                                       ; preds = %if.then.79
  %call85 = call i32 @cont_BackTrack()
  store i32 1, i32* %retval
  br label %return

if.end.86:                                        ; preds = %if.then.79
  %63 = load i32, i32* %j, align 4
  %idxprom87 = sext i32 %63 to i64
  %arrayidx88 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_j, i32 0, i64 %idxprom87
  store i32 0, i32* %arrayidx88, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.86, %land.lhs.true.71, %if.then.63
  %call90 = call i32 @cont_BackTrack()
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.89, %lor.lhs.false, %land.lhs.true.52, %land.lhs.true, %if.end.43
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %while.body.25
  %64 = load i32, i32* %j, align 4
  %inc93 = add nsw i32 %64, 1
  store i32 %inc93, i32* %j, align 4
  br label %while.cond.23

while.end.94:                                     ; preds = %while.cond.23
  %65 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %65 to i64
  %arrayidx96 = getelementptr inbounds [100 x i32], [100 x i32]* @multvec_i, i32 0, i64 %idxprom95
  store i32 0, i32* %arrayidx96, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.94, %if.then.84, %if.then.38, %if.then.13
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define i32 @subs_ST(i32 %i, i32 %j, %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  call void @cont_StartBinding()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %j.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call %struct.binding* @cont_LeftContext()
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %3 = load i32, i32* %i.addr, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %2, i32 %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %5 = load i32, i32* %j.addr, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %5)
  %call4 = call i32 @unify_Match(%struct.binding* %call1, %struct.term* %call2, %struct.term* %call3)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load i32, i32* %j.addr, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j.addr, align 4
  %call5 = call i32 @cont_BackTrackAndStart()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %8 = load i32, i32* %j.addr, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call6 = call i32 @clause_Length(%struct.CLAUSE_HELP* %9)
  %cmp7 = icmp sge i32 %8, %call6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call8 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %10 = load i32, i32* %i.addr, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call9 = call i32 @clause_Length(%struct.CLAUSE_HELP* %11)
  %sub = sub nsw i32 %call9, 1
  %cmp10 = icmp eq i32 %10, %sub
  br i1 %cmp10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %12 = load i32, i32* %i.addr, align 4
  %add = add nsw i32 %12, 1
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call11 = call i32 @subs_ST(i32 %add, i32 0, %struct.CLAUSE_HELP* %13, %struct.CLAUSE_HELP* %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %call14 = call i32 @cont_BackTrack()
  br label %if.end.15

if.end.15:                                        ; preds = %if.else
  %15 = load i32, i32* %j.addr, align 4
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, i32* %j.addr, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call17 = call i32 @clause_Length(%struct.CLAUSE_HELP* %16)
  %cmp18 = icmp eq i32 %inc16, %call17
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.15
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.15
  %17 = load i32, i32* %i.addr, align 4
  %18 = load i32, i32* %j.addr, align 4
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call21 = call i32 @subs_ST(i32 %17, i32 %18, %struct.CLAUSE_HELP* %19, %struct.CLAUSE_HELP* %20)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.then.13, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
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
define internal i32 @cont_BackTrackAndStart() #1 {
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
  ret i32 0
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

; Function Attrs: nounwind uwtable
define i32 @subs_Testlits(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %t1 = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %found = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  store i32 0, i32* %found, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call1, %struct.term** %t1, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %for.body
  call void @cont_StartBinding()
  %call2 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.term*, %struct.term** %t1, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call i32 @unify_Match(%struct.binding* %call2, %struct.term* %4, %struct.term* %call3)
  store i32 %call4, i32* %found, align 4
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %call5 = call i32 @cont_BackTrack()
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, i32* %found, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %do.cond
  %9 = load i32, i32* %j, align 4
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %10)
  %cmp8 = icmp slt i32 %9, %call7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %11 = phi i1 [ false, %do.cond ], [ %cmp8, %land.rhs ]
  br i1 %11, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  %12 = load i32, i32* %found, align 4
  %tobool9 = icmp ne i32 %12, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %do.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @subs_IdcTestlits(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2, %struct.litptr** %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %litptr.addr = alloca %struct.litptr**, align 8
  %TermIndexlist = alloca %struct.LIST_HELP*, align 8
  %VarSymbList = alloca %struct.LIST_HELP*, align 8
  %TermSymbList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store %struct.litptr** %litptr, %struct.litptr*** %litptr.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SubsumptionPossible(%struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %TermIndexlist, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %VarSymbList, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermSymbList, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call4 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  %cmp = icmp slt i32 %2, %call4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %5)
  %call6 = call %struct.LIST_HELP* @subs_GetVariables(%struct.term* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %VarSymbList, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %cmp8 = icmp ne %struct.LIST_HELP* %6, %call7
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %TermIndexlist, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %11 = bitcast %struct.LIST_HELP* %10 to i8*
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %11, %struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %TermSymbList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call12 = call %struct.litptr* @litptr_Create(%struct.LIST_HELP* %14, %struct.LIST_HELP* %15)
  %16 = load %struct.litptr**, %struct.litptr*** %litptr.addr, align 8
  store %struct.litptr* %call12, %struct.litptr** %16, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  call void @list_Delete(%struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %for.end
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumptionPossible(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call
  br i1 %cmp, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  %cmp3 = icmp slt i32 %2, %call2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  call void @cont_StartBinding()
  %call5 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %7 = load i32, i32* %j, align 4
  %call7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %6, i32 %7)
  %call8 = call i32 @unify_Match(%struct.binding* %call5, %struct.term* %call6, %struct.term* %call7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call9 = call i32 @clause_Length(%struct.CLAUSE_HELP* %8)
  %add = add nsw i32 %call9, 1
  store i32 %add, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  %call10 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %10 = load i32, i32* %j, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call11 = call i32 @clause_Length(%struct.CLAUSE_HELP* %11)
  %cmp12 = icmp eq i32 %10, %call11
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %for.end
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end.14
  %12 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %12, 1
  store i32 %inc16, i32* %i, align 4
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.17, %if.then.13
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @subs_GetVariables(%struct.term* %t) #0 {
entry:
  %t.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %insert = alloca %struct.LIST_HELP*, align 8
  %symbols = alloca %struct.LIST_HELP*, align 8
  %end = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %t, %struct.term** %t.addr, align 8
  %0 = load %struct.term*, %struct.term** %t.addr, align 8
  %call = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %symbols, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbols, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %insert, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %end, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbols, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = ptrtoint i8* %call4 to i32
  %call5 = call i32 @cont_VarIsBound(%struct.binding* %call3, i32 %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %insert, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %end, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %insert, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  call void @list_Rplaca(%struct.LIST_HELP* %7, i8* %call7)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %insert, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %insert, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %insert, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.19, label %if.then.12

if.then.12:                                       ; preds = %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %insert, align 8
  call void @list_Delete(%struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %end, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.12
  %call16 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %symbols, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.then.12
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %end, align 8
  %call17 = call %struct.LIST_HELP* @list_Nil()
  call void @list_Rplacd(%struct.LIST_HELP* %14, %struct.LIST_HELP* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %for.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbols, align 8
  ret %struct.LIST_HELP* %15
}

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

declare %struct.litptr* @litptr_Create(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Current = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %L.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Current, align 8
  call void @list_Free(%struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Current, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @subs_Idc(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
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
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %vec, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @subs_InternIdc(%struct.CLAUSE_HELP* %5, i32 %6, %struct.CLAUSE_HELP* %7)
  store i32 %call2, i32* %Result, align 4
  %8 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %8)
  call void @cont_Reset()
  %9 = load i32, i32* %Result, align 4
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @vec_ActMax() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  ret i32 %0
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

; Function Attrs: nounwind uwtable
define internal i32 @subs_InternIdc(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %locvec = alloca i32, align 4
  %litptr = alloca %struct.litptr*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_IdcVecTestlits(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2, %struct.litptr** %litptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %locvec, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @subs_CompVec(%struct.litptr* %3)
  %4 = load i32, i32* %locvec, align 4
  %call2 = call i32 @vec_IsMax(i32 %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %locvec, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call5 = call i32 @subs_TcVec(%struct.CLAUSE_HELP* %5, i32 %6, %struct.CLAUSE_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %8 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %8)
  %9 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %9)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %10 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %11 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  %call10 = call i32 @litptr_AllUsed(%struct.litptr* %11)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %12)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
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
define internal void @cont_Reset() #1 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call %struct.binding* @cont_LastBinding()
  %tobool = icmp ne %struct.binding* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cont_BackTrackLastBinding()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* @cont_BINDINGS, align 4
  call void @cont_StackInit()
  call void @cont_ResetIndexVarScanner()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @subs_IdcEq(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
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
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %vec, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @subs_InternIdcEq(%struct.CLAUSE_HELP* %5, i32 %6, %struct.CLAUSE_HELP* %7)
  store i32 %call2, i32* %Result, align 4
  %8 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %8)
  call void @cont_Reset()
  %9 = load i32, i32* %Result, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_InternIdcEq(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %locvec = alloca i32, align 4
  %litptr = alloca %struct.litptr*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_IdcVecTestlitsEq(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2, %struct.litptr** %litptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %locvec, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @subs_CompVec(%struct.litptr* %3)
  %4 = load i32, i32* %locvec, align 4
  %call2 = call i32 @vec_IsMax(i32 %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %locvec, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call5 = call i32 @subs_TcVecEq(%struct.CLAUSE_HELP* %5, i32 %6, %struct.CLAUSE_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %8 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %8)
  %9 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %9)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %10 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %10)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %11 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  %call10 = call i32 @litptr_AllUsed(%struct.litptr* %11)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %12 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %12)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @subs_IdcEqMatch(%struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP* %c2, %struct.subst* %subst) #0 {
entry:
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %subst.addr = alloca %struct.subst*, align 8
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store %struct.subst* %subst, %struct.subst** %subst.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
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
  store i32 0, i32* %i, align 4
  %call2 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.subst*, %struct.subst** %subst.addr, align 8
  call void @unify_EstablishMatcher(%struct.binding* %call2, %struct.subst* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %7 = load i32, i32* %vec, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call3 = call i32 @subs_InternIdcEq(%struct.CLAUSE_HELP* %6, i32 %7, %struct.CLAUSE_HELP* %8)
  store i32 %call3, i32* %Result, align 4
  %9 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %9)
  call void @cont_Reset()
  %10 = load i32, i32* %Result, align 4
  ret i32 %10
}

declare void @unify_EstablishMatcher(%struct.binding*, %struct.subst*) #2

; Function Attrs: nounwind uwtable
define i32 @subs_IdcRes(%struct.CLAUSE_HELP* %c1, i32 %beg, i32 %end) #0 {
entry:
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
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
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %vec, align 4
  %7 = load i32, i32* %beg.addr, align 4
  %8 = load i32, i32* %end.addr, align 4
  %call2 = call i32 @subs_InternIdcRes(%struct.CLAUSE_HELP* %5, i32 %6, i32 %7, i32 %8)
  store i32 %call2, i32* %Result, align 4
  %9 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %9)
  call void @cont_Reset()
  %10 = load i32, i32* %Result, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_InternIdcRes(%struct.CLAUSE_HELP* %c1, i32 %vec, i32 %beg, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %locvec = alloca i32, align 4
  %litptr = alloca %struct.litptr*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load i32, i32* %beg.addr, align 4
  %3 = load i32, i32* %end.addr, align 4
  %call = call i32 @subs_IdcVecTestlitsRes(%struct.CLAUSE_HELP* %0, i32 %1, i32 %2, i32 %3, %struct.litptr** %litptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %locvec, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @subs_CompVec(%struct.litptr* %4)
  %5 = load i32, i32* %locvec, align 4
  %call2 = call i32 @vec_IsMax(i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %7 = load i32, i32* %locvec, align 4
  %8 = load i32, i32* %beg.addr, align 4
  %9 = load i32, i32* %end.addr, align 4
  %call5 = call i32 @subs_TcVecRes(%struct.CLAUSE_HELP* %6, i32 %7, i32 %8, i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %10 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %10)
  %11 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %11)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %12 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %13 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  %call10 = call i32 @litptr_AllUsed(%struct.litptr* %13)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %14)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @subs_IdcEqMatchExcept(%struct.CLAUSE_HELP* %c1, i32 %i1, %struct.CLAUSE_HELP* %c2, i32 %i2, %struct.subst* %subst) #0 {
entry:
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i1.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i2.addr = alloca i32, align 4
  %subst.addr = alloca %struct.subst*, align 8
  %i = alloca i32, align 4
  %vec = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %i1, i32* %i1.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %i2, i32* %i2.addr, align 4
  store %struct.subst* %subst, %struct.subst** %subst.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %Result, align 4
  br label %if.end.8

if.else:                                          ; preds = %entry
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %vec, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp3 = icmp slt i32 %1, %call2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i1.addr, align 4
  %cmp4 = icmp ne i32 %3, %4
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %conv = sext i32 %5 to i64
  %6 = inttoptr i64 %conv to i8*
  call void @vec_Push(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %call6 = call %struct.binding* @cont_LeftContext()
  %8 = load %struct.subst*, %struct.subst** %subst.addr, align 8
  call void @unify_EstablishMatcher(%struct.binding* %call6, %struct.subst* %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %10 = load i32, i32* %vec, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %12 = load i32, i32* %i2.addr, align 4
  %call7 = call i32 @subs_InternIdcEqExcept(%struct.CLAUSE_HELP* %9, i32 %10, %struct.CLAUSE_HELP* %11, i32 %12)
  store i32 %call7, i32* %Result, align 4
  %13 = load i32, i32* %vec, align 4
  call void @vec_SetMax(i32 %13)
  call void @cont_Reset()
  br label %if.end.8

if.end.8:                                         ; preds = %for.end, %if.then
  %14 = load i32, i32* %Result, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_InternIdcEqExcept(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, i32 %i2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i2.addr = alloca i32, align 4
  %locvec = alloca i32, align 4
  %litptr = alloca %struct.litptr*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %i2, i32* %i2.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %3 = load i32, i32* %i2.addr, align 4
  %call = call i32 @subs_IdcVecTestlitsEqExcept(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2, i32 %3, %struct.litptr** %litptr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %locvec, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %4 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @subs_CompVec(%struct.litptr* %4)
  %5 = load i32, i32* %locvec, align 4
  %call2 = call i32 @vec_IsMax(i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end.9, label %if.then.4

if.then.4:                                        ; preds = %do.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %7 = load i32, i32* %locvec, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %9 = load i32, i32* %i2.addr, align 4
  %call5 = call i32 @subs_TcVecEqExcept(%struct.CLAUSE_HELP* %6, i32 %7, %struct.CLAUSE_HELP* %8, i32 %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then.7

if.then.7:                                        ; preds = %if.then.4
  %10 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %10)
  %11 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %11)
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.4
  %12 = load i32, i32* %locvec, align 4
  call void @vec_SetMax(i32 %12)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.9
  %13 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  %call10 = call i32 @litptr_AllUsed(%struct.litptr* %13)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.litptr*, %struct.litptr** %litptr, align 8
  call void @litptr_Delete(%struct.litptr* %14)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #1 {
entry:
  %A.addr = alloca i32, align 4
  %B.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %B, i32* %B.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load i32, i32* %B.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @fol_Atom(%struct.term* %Lit) #1 {
entry:
  %retval = alloca %struct.term*, align 8
  %Lit.addr = alloca %struct.term*, align 8
  store %struct.term* %Lit, %struct.term** %Lit.addr, align 8
  %0 = load %struct.term*, %struct.term** %Lit.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* @fol_NOT, align 4
  %cmp = icmp eq i32 %call, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Lit.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %2)
  store %struct.term* %call1, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Lit.addr, align 8
  store %struct.term* %3, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %oriented, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
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
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

declare i32 @unify_MatchBindings(%struct.binding*, %struct.term*, %struct.term*) #2

declare i32 @term_NumberOfVarOccs(%struct.term*) #2

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
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_MaxVars() #1 {
entry:
  ret i32 3001
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_NullMark() #1 {
entry:
  ret i32 0
}

declare i32 @fol_SignatureMatch(%struct.term*, %struct.term*, %struct.LIST_HELP**, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #1 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %9, i32 0, i32 0
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %cdr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.3, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %11
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
define internal void @term_ClearBinding(i32 %Var) #1 {
entry:
  %Var.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %call = call i32 @term_NullMark()
  call void @term_SetBindingMark(i32 %0, i32 %call)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ContextClearValue(i32 %Symbol) #1 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  call void @symbol_ContextSetValue(i32 %0, i32 0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetBindingMark(i32 %Var, i32 %Mark) #1 {
entry:
  %Var.addr = alloca i32, align 4
  %Mark.addr = alloca i32, align 4
  store i32 %Var, i32* %Var.addr, align 4
  store i32 %Mark, i32* %Mark.addr, align 4
  %0 = load i32, i32* %Mark.addr, align 4
  %conv = zext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %2 = load i32, i32* %Var.addr, align 4
  %call = call i32 @symbol_VarIndex(i32 %2)
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds [3001 x [2 x i8*]], [3001 x [2 x i8*]]* @term_BIND, i32 0, i64 %idxprom
  %arrayidx1 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 0
  store i8* %1, i8** %arrayidx1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ContextSetValue(i32 %Symbol, i32 %Value) #1 {
entry:
  %Symbol.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Value.addr, align 4
  %3 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [4000 x i32], [4000 x i32]* @symbol_CONTEXT, i32 0, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Index(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPESTATBITS, align 4
  %shr = ashr i32 %sub, %2
  ret i32 %shr
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckIndexInRange(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
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
define internal void @cont_BackTrackLastBinding() #1 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
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

declare %struct.LIST_HELP* @term_VariableSymbols(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsBound(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.term* @cont_ContextBindingTerm(%struct.binding* %0, i32 %1)
  %cmp = icmp ne %struct.term* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 1
  store i8* %0, i8** %car, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #1 {
entry:
  %L1.addr = alloca %struct.LIST_HELP*, align 8
  %L2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L1, %struct.LIST_HELP** %L1.addr, align 8
  store %struct.LIST_HELP* %L2, %struct.LIST_HELP** %L2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L2.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L1.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %cdr, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @cont_ContextBindingTerm(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %term = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 2
  %2 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %2
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

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

; Function Attrs: nounwind uwtable
define internal i32 @subs_IdcVecTestlits(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, %struct.litptr** %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %litptr.addr = alloca %struct.litptr**, align 8
  %TermIndexlist = alloca %struct.LIST_HELP*, align 8
  %VarSymbList = alloca %struct.LIST_HELP*, align 8
  %TermSymbList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store %struct.litptr** %litptr, %struct.litptr*** %litptr.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SubsumptionVecPossible(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %TermIndexlist, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %VarSymbList, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermSymbList, align 8
  %3 = load i32, i32* %vec.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %call4 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %4, %call4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %6)
  %7 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %7)
  %call7 = call %struct.LIST_HELP* @subs_GetVariables(%struct.term* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %VarSymbList, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %cmp9 = icmp ne %struct.LIST_HELP* %8, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %call11 = call i8* @vec_GetNth(i32 %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %call11, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %TermIndexlist, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %12 = bitcast %struct.LIST_HELP* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %TermSymbList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call14 = call %struct.litptr* @litptr_Create(%struct.LIST_HELP* %15, %struct.LIST_HELP* %16)
  %17 = load %struct.litptr**, %struct.litptr*** %litptr.addr, align 8
  store %struct.litptr* %call14, %struct.litptr** %17, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %for.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @subs_CompVec(%struct.litptr* %litptr) #0 {
entry:
  %litptr.addr = alloca %struct.litptr*, align 8
  %complist = alloca %struct.LIST_HELP*, align 8
  %end = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %lit = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.litptr* %litptr, %struct.litptr** %litptr.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %call = call i32 @litptr_Length(%struct.litptr* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %complist, align 8
  %1 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.48

if.then:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %5 = load i32, i32* %j, align 4
  %call3 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %4, i32 %5)
  %call4 = call i32 @literal_GetUsed(%struct.cliteral* %call3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %for.body
  %6 = load i32, i32* %j, align 4
  %conv = sext i32 %6 to i64
  %7 = inttoptr i64 %conv to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %complist, align 8
  %9 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %10 = load i32, i32* %j, align 4
  %call7 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %9, i32 %10)
  %call8 = call i32 @literal_GetLitIndex(%struct.cliteral* %call7)
  %conv9 = sext i32 %call8 to i64
  %11 = inttoptr i64 %conv9 to i8*
  call void @vec_Push(i8* %11)
  %12 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %13 = load i32, i32* %j, align 4
  %call10 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %12, i32 %13)
  call void @literal_PutUsed(%struct.cliteral* %call10, i32 1)
  %14 = load i32, i32* %n, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %j, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %n, align 4
  %cmp11 = icmp ne i32 %16, %17
  br i1 %cmp11, label %if.then.13, label %if.end.47

if.then.13:                                       ; preds = %for.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %end, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.44, %if.then.13
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body.17, label %for.end.46

for.body.17:                                      ; preds = %for.cond.14
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = ptrtoint i8* %call18 to i32
  store i32 %22, i32* %lit, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.41, %for.body.17
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n, align 4
  %cmp20 = icmp slt i32 %23, %24
  br i1 %cmp20, label %for.body.22, label %for.end.43

for.body.22:                                      ; preds = %for.cond.19
  %25 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %26 = load i32, i32* %i, align 4
  %call23 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %25, i32 %26)
  %call24 = call i32 @literal_GetUsed(%struct.cliteral* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.40, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.22
  %27 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %28 = load i32, i32* %lit, align 4
  %call26 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %27, i32 %28)
  %call27 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %call26)
  %29 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %30 = load i32, i32* %i, align 4
  %call28 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %29, i32 %30)
  %call29 = call %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %call28)
  %call30 = call i32 @list_HasIntersection(%struct.LIST_HELP* %call27, %struct.LIST_HELP* %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.40

if.then.32:                                       ; preds = %land.lhs.true
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %end, align 8
  %32 = load i32, i32* %i, align 4
  %conv33 = sext i32 %32 to i64
  %33 = inttoptr i64 %conv33 to i8*
  %call34 = call %struct.LIST_HELP* @list_List(i8* %33)
  call void @list_Rplacd(%struct.LIST_HELP* %31, %struct.LIST_HELP* %call34)
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %end, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %end, align 8
  %35 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %36 = load i32, i32* %i, align 4
  %call36 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %35, i32 %36)
  %call37 = call i32 @literal_GetLitIndex(%struct.cliteral* %call36)
  %conv38 = sext i32 %call37 to i64
  %37 = inttoptr i64 %conv38 to i8*
  call void @vec_Push(i8* %37)
  %38 = load %struct.litptr*, %struct.litptr** %litptr.addr, align 8
  %39 = load i32, i32* %i, align 4
  %call39 = call %struct.cliteral* @litptr_Literal(%struct.litptr* %38, i32 %39)
  call void @literal_PutUsed(%struct.cliteral* %call39, i32 1)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.32, %land.lhs.true, %for.body.22
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %40 = load i32, i32* %i, align 4
  %inc42 = add nsw i32 %40, 1
  store i32 %inc42, i32* %i, align 4
  br label %for.cond.19

for.end.43:                                       ; preds = %for.cond.19
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.14

for.end.46:                                       ; preds = %for.cond.14
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %complist, align 8
  call void @list_Delete(%struct.LIST_HELP* %42)
  br label %if.end.47

if.end.47:                                        ; preds = %for.end.46, %for.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @vec_IsMax(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* @vec_MAX, align 4
  %1 = load i32, i32* %Index.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_TcVec(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %a = alloca i32, align 4
  %top_index = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 0, i32* %a, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SearchTop(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2)
  store i32 %call, i32* %top_index, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @cont_StartBinding()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %3 = load i32, i32* %a, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %4)
  %cmp = icmp slt i32 %3, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call2 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %top_index, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %8 = load i32, i32* %a, align 4
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %7, i32 %8)
  %call5 = call i32 @unify_Match(%struct.binding* %call2, %struct.term* %call3, %struct.term* %call4)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load i32, i32* %a, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %a, align 4
  %call6 = call i32 @cont_BackTrackAndStart()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %a, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %12)
  %cmp8 = icmp sge i32 %11, %call7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call9 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %13 = load i32, i32* %vec.addr, align 4
  %call10 = call i32 @vec_ActMax()
  %sub = sub nsw i32 %13, %call10
  %cmp11 = icmp eq i32 %sub, 1
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %15 = load i32, i32* %vec.addr, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call14 = call i32 @subs_InternIdc(%struct.CLAUSE_HELP* %14, i32 %15, %struct.CLAUSE_HELP* %16)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.end.13
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.13
  %call17 = call i32 @cont_BackTrack()
  %17 = load i32, i32* %a, align 4
  %inc18 = add nsw i32 %17, 1
  store i32 %inc18, i32* %a, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.19
  %18 = load i32, i32* %a, align 4
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call20 = call i32 @clause_Length(%struct.CLAUSE_HELP* %19)
  %cmp21 = icmp slt i32 %18, %call20
  br i1 %cmp21, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.16, %if.then.12, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare void @litptr_Delete(%struct.litptr*) #2

declare i32 @litptr_AllUsed(%struct.litptr*) #2

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumptionVecPossible(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load i32, i32* %vec.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %1 = load i32, i32* %i, align 4
  %call = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  %cmp3 = icmp slt i32 %2, %call2
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  call void @cont_StartBinding()
  %call5 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call6 = call i8* @vec_GetNth(i32 %5)
  %6 = ptrtoint i8* %call6 to i32
  %call7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call8 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %7, i32 %8)
  %call9 = call i32 @unify_Match(%struct.binding* %call5, %struct.term* %call7, %struct.term* %call8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call10 = call i32 @clause_Length(%struct.CLAUSE_HELP* %9)
  %add = add nsw i32 %call10, 1
  store i32 %add, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  %call11 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %11 = load i32, i32* %j, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call12 = call i32 @clause_Length(%struct.CLAUSE_HELP* %12)
  %cmp13 = icmp eq i32 %11, %call12
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.end
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.end.15
  %13 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.18, %if.then.14
  %14 = load i32, i32* %retval
  ret i32 %14
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
define internal i32 @litptr_Length(%struct.litptr* %C) #1 {
entry:
  %C.addr = alloca %struct.litptr*, align 8
  store %struct.litptr* %C, %struct.litptr** %C.addr, align 8
  %0 = load %struct.litptr*, %struct.litptr** %C.addr, align 8
  %length = getelementptr inbounds %struct.litptr, %struct.litptr* %0, i32 0, i32 1
  %1 = load i32, i32* %length, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @literal_GetUsed(%struct.cliteral* %C) #1 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %used = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 0
  %1 = load i32, i32* %used, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.cliteral* @litptr_Literal(%struct.litptr* %C, i32 %I) #1 {
entry:
  %C.addr = alloca %struct.litptr*, align 8
  %I.addr = alloca i32, align 4
  store %struct.litptr* %C, %struct.litptr** %C.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  %0 = load i32, i32* %I.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.litptr*, %struct.litptr** %C.addr, align 8
  %litptr = getelementptr inbounds %struct.litptr, %struct.litptr* %1, i32 0, i32 0
  %2 = load %struct.cliteral**, %struct.cliteral*** %litptr, align 8
  %arrayidx = getelementptr inbounds %struct.cliteral*, %struct.cliteral** %2, i64 %idxprom
  %3 = load %struct.cliteral*, %struct.cliteral** %arrayidx, align 8
  ret %struct.cliteral* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @literal_GetLitIndex(%struct.cliteral* %C) #1 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litindex = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 1
  %1 = load i32, i32* %litindex, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @literal_PutUsed(%struct.cliteral* %C, i32 %Bool) #1 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  %Bool.addr = alloca i32, align 4
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  store i32 %Bool, i32* %Bool.addr, align 4
  %0 = load i32, i32* %Bool.addr, align 4
  %1 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %used = getelementptr inbounds %struct.cliteral, %struct.cliteral* %1, i32 0, i32 0
  store i32 %0, i32* %used, align 4
  ret void
}

declare i32 @list_HasIntersection(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @literal_GetLitVarList(%struct.cliteral* %C) #1 {
entry:
  %C.addr = alloca %struct.cliteral*, align 8
  store %struct.cliteral* %C, %struct.cliteral** %C.addr, align 8
  %0 = load %struct.cliteral*, %struct.cliteral** %C.addr, align 8
  %litvarlist = getelementptr inbounds %struct.cliteral, %struct.cliteral* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litvarlist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #1 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SearchTop(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zaehler = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load i32, i32* %vec.addr, align 4
  %call = call i8* @vec_GetNth(i32 %0)
  %1 = ptrtoint i8* %call to i32
  store i32 %1, i32* %index, align 4
  %2 = load i32, i32* %vec.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %3, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %zaehler, align 4
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %4 = load i32, i32* %j, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %5)
  %cmp3 = icmp slt i32 %4, %call2
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, i32* %zaehler, align 4
  %cmp4 = icmp slt i32 %6, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @cont_StartBinding()
  %call5 = call %struct.binding* @cont_LeftContext()
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call6 = call i8* @vec_GetNth(i32 %9)
  %10 = ptrtoint i8* %call6 to i32
  %call7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %10)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %12 = load i32, i32* %j, align 4
  %call8 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %11, i32 %12)
  %call9 = call i32 @unify_Match(%struct.binding* %call5, %struct.term* %call7, %struct.term* %call8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load i32, i32* %zaehler, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %zaehler, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call10 = call i32 @cont_BackTrack()
  %14 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %14, 1
  store i32 %inc11, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %zaehler, align 4
  %cmp12 = icmp eq i32 %15, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %16 = load i32, i32* %zaehler, align 4
  %cmp13 = icmp eq i32 %16, 1
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %while.end
  %17 = load i32, i32* %i, align 4
  %call15 = call i8* @vec_GetNth(i32 %17)
  %18 = ptrtoint i8* %call15 to i32
  store i32 %18, i32* %index, align 4
  %19 = load i32, i32* %index, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %20 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %20, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %index, align 4
  store i32 %21, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackInit() #1 {
entry:
  store i32 1, i32* @cont_STACKPOINTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_ResetIndexVarScanner() #1 {
entry:
  %call = call i32 @symbol_GetInitialIndexVarCounter()
  store i32 %call, i32* @cont_INDEXVARSCANNER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialIndexVarCounter() #1 {
entry:
  ret i32 2000
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_IdcVecTestlitsEq(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, %struct.litptr** %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %litptr.addr = alloca %struct.litptr**, align 8
  %TermIndexlist = alloca %struct.LIST_HELP*, align 8
  %VarSymbList = alloca %struct.LIST_HELP*, align 8
  %TermSymbList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store %struct.litptr** %litptr, %struct.litptr*** %litptr.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SubsumptionVecPossibleEq(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %TermIndexlist, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %VarSymbList, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermSymbList, align 8
  %3 = load i32, i32* %vec.addr, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %call4 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %4, %call4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %6)
  %7 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %7)
  %call7 = call %struct.LIST_HELP* @subs_GetVariables(%struct.term* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %VarSymbList, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %cmp9 = icmp ne %struct.LIST_HELP* %8, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %call11 = call i8* @vec_GetNth(i32 %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %call11, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %TermIndexlist, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %12 = bitcast %struct.LIST_HELP* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %TermSymbList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call14 = call %struct.litptr* @litptr_Create(%struct.LIST_HELP* %15, %struct.LIST_HELP* %16)
  %17 = load %struct.litptr**, %struct.litptr*** %litptr.addr, align 8
  store %struct.litptr* %call14, %struct.litptr** %17, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %for.end
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_TcVecEq(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %a = alloca i32, align 4
  %top_index = alloca i32, align 4
  %search = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 0, i32* %a, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SearchTop(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2)
  store i32 %call, i32* %top_index, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %4 = load i32, i32* %top_index, align 4
  %call1 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.term* %call1, %struct.term** %lit1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 1, i32* %search, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.48, %do.body
  %5 = load i32, i32* %a, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  %cmp = icmp slt i32 %5, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %search, align 4
  %tobool = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %10 = load i32, i32* %a, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.term* %call3, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %11 = load %struct.term*, %struct.term** %lit1, align 8
  %12 = load %struct.term*, %struct.term** %lit2, align 8
  %call5 = call i32 @unify_Match(%struct.binding* %call4, %struct.term* %11, %struct.term* %12)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %search, align 4
  br label %if.end.48

if.else:                                          ; preds = %while.body
  %13 = load %struct.term*, %struct.term** %lit1, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %13)
  %14 = load %struct.term*, %struct.term** %lit2, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %14)
  %call9 = call i32 @symbol_Equal(i32 %call7, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true, label %if.end.43

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.term*, %struct.term** %lit1, align 8
  %call11 = call %struct.term* @fol_Atom(%struct.term* %15)
  %call12 = call i32 @fol_IsEquality(%struct.term* %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %if.end.43

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %16 = load %struct.term*, %struct.term** %lit2, align 8
  %call15 = call %struct.term* @fol_Atom(%struct.term* %16)
  %call16 = call i32 @fol_IsEquality(%struct.term* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.43

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %18 = load i32, i32* %top_index, align 4
  %call19 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  %call20 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.18
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %20 = load i32, i32* %a, align 4
  %call22 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  %call23 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %lor.lhs.false, %land.lhs.true.18
  %call26 = call i32 @cont_BackTrackAndStart()
  %call27 = call %struct.binding* @cont_LeftContext()
  %21 = load %struct.term*, %struct.term** %lit1, align 8
  %call28 = call %struct.term* @fol_Atom(%struct.term* %21)
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %call28)
  %22 = load %struct.term*, %struct.term** %lit2, align 8
  %call30 = call %struct.term* @fol_Atom(%struct.term* %22)
  %call31 = call %struct.term* @term_SecondArgument(%struct.term* %call30)
  %call32 = call i32 @unify_Match(%struct.binding* %call27, %struct.term* %call29, %struct.term* %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %if.then.25
  %call35 = call %struct.binding* @cont_LeftContext()
  %23 = load %struct.term*, %struct.term** %lit1, align 8
  %call36 = call %struct.term* @fol_Atom(%struct.term* %23)
  %call37 = call %struct.term* @term_SecondArgument(%struct.term* %call36)
  %24 = load %struct.term*, %struct.term** %lit2, align 8
  %call38 = call %struct.term* @fol_Atom(%struct.term* %24)
  %call39 = call %struct.term* @term_FirstArgument(%struct.term* %call38)
  %call40 = call i32 @unify_Match(%struct.binding* %call35, %struct.term* %call37, %struct.term* %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %land.lhs.true.34
  store i32 0, i32* %search, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.42, %land.lhs.true.34, %if.then.25
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true.14, %land.lhs.true, %if.else
  %25 = load i32, i32* %search, align 4
  %tobool44 = icmp ne i32 %25, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.43
  %26 = load i32, i32* %a, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %a, align 4
  %call46 = call i32 @cont_BackTrack()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %27 = load i32, i32* %a, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call49 = call i32 @clause_Length(%struct.CLAUSE_HELP* %28)
  %cmp50 = icmp sge i32 %27, %call49
  br i1 %cmp50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %while.end
  %call52 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %while.end
  %call54 = call i32 @vec_ActMax()
  %29 = load i32, i32* %vec.addr, align 4
  %sub = sub nsw i32 %call54, %29
  %cmp55 = icmp eq i32 %sub, 1
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 1, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.53
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %31 = load i32, i32* %vec.addr, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call58 = call i32 @subs_InternIdcEq(%struct.CLAUSE_HELP* %30, i32 %31, %struct.CLAUSE_HELP* %32)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.57
  store i32 1, i32* %retval
  br label %return

if.else.61:                                       ; preds = %if.end.57
  %call62 = call i32 @cont_BackTrack()
  %33 = load i32, i32* %a, align 4
  %inc63 = add nsw i32 %33, 1
  store i32 %inc63, i32* %a, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61
  br label %do.cond

do.cond:                                          ; preds = %if.end.64
  %34 = load i32, i32* %a, align 4
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call65 = call i32 @clause_Length(%struct.CLAUSE_HELP* %35)
  %cmp66 = icmp slt i32 %34, %call65
  br i1 %cmp66, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.60, %if.then.56, %if.then.51
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumptionVecPossibleEq(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %vec.addr, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.55, %entry
  %2 = load i32, i32* %i, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %2, %call1
  br i1 %cmp, label %for.body, label %for.end.57

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i8* @vec_GetNth(i32 %4)
  %5 = ptrtoint i8* %call2 to i32
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %5)
  store %struct.term* %call3, %struct.term** %lit1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call7 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.term* %call7, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call8 = call %struct.binding* @cont_LeftContext()
  %10 = load %struct.term*, %struct.term** %lit1, align 8
  %11 = load %struct.term*, %struct.term** %lit2, align 8
  %call9 = call i32 @unify_Match(%struct.binding* %call8, %struct.term* %10, %struct.term* %11)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.6
  %12 = load i32, i32* %n, align 4
  %add = add nsw i32 %12, 1
  store i32 %add, i32* %j, align 4
  %call10 = call i32 @cont_BackTrack()
  br label %if.end.51

if.else:                                          ; preds = %for.body.6
  %call11 = call i32 @cont_BackTrack()
  %13 = load %struct.term*, %struct.term** %lit1, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %13)
  %14 = load %struct.term*, %struct.term** %lit2, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %14)
  %call14 = call i32 @symbol_Equal(i32 %call12, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.else
  %15 = load %struct.term*, %struct.term** %lit1, align 8
  %call16 = call %struct.term* @fol_Atom(%struct.term* %15)
  %call17 = call i32 @fol_IsEquality(%struct.term* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.50

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %16 = load %struct.term*, %struct.term** %lit2, align 8
  %call20 = call %struct.term* @fol_Atom(%struct.term* %16)
  %call21 = call i32 @fol_IsEquality(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.50

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call24 = call i8* @vec_GetNth(i32 %18)
  %19 = ptrtoint i8* %call24 to i32
  %call25 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %19)
  %call26 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %21 = load i32, i32* %j, align 4
  %call28 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %20, i32 %21)
  %call29 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %lor.lhs.false, %land.lhs.true.23
  call void @cont_StartBinding()
  %call32 = call %struct.binding* @cont_LeftContext()
  %22 = load %struct.term*, %struct.term** %lit1, align 8
  %call33 = call %struct.term* @fol_Atom(%struct.term* %22)
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %call33)
  %23 = load %struct.term*, %struct.term** %lit2, align 8
  %call35 = call %struct.term* @fol_Atom(%struct.term* %23)
  %call36 = call %struct.term* @term_SecondArgument(%struct.term* %call35)
  %call37 = call i32 @unify_Match(%struct.binding* %call32, %struct.term* %call34, %struct.term* %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end

land.lhs.true.39:                                 ; preds = %if.then.31
  %call40 = call %struct.binding* @cont_LeftContext()
  %24 = load %struct.term*, %struct.term** %lit1, align 8
  %call41 = call %struct.term* @fol_Atom(%struct.term* %24)
  %call42 = call %struct.term* @term_SecondArgument(%struct.term* %call41)
  %25 = load %struct.term*, %struct.term** %lit2, align 8
  %call43 = call %struct.term* @fol_Atom(%struct.term* %25)
  %call44 = call %struct.term* @term_FirstArgument(%struct.term* %call43)
  %call45 = call i32 @unify_Match(%struct.binding* %call40, %struct.term* %call42, %struct.term* %call44)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %land.lhs.true.39
  %26 = load i32, i32* %n, align 4
  %add48 = add nsw i32 %26, 1
  store i32 %add48, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.47, %land.lhs.true.39, %if.then.31
  %call49 = call i32 @cont_BackTrack()
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true.19, %land.lhs.true, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.51
  %27 = load i32, i32* %j, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %n, align 4
  %cmp52 = icmp eq i32 %28, %29
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %for.end
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %30 = load i32, i32* %i, align 4
  %inc56 = add nsw i32 %30, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond

for.end.57:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.57, %if.then.53
  %31 = load i32, i32* %retval
  ret i32 %31
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_IdcVecTestlitsRes(%struct.CLAUSE_HELP* %c1, i32 %vec, i32 %beg, i32 %end, %struct.litptr** %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %litptr.addr = alloca %struct.litptr**, align 8
  %TermIndexlist = alloca %struct.LIST_HELP*, align 8
  %VarSymbList = alloca %struct.LIST_HELP*, align 8
  %TermSymbList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  store %struct.litptr** %litptr, %struct.litptr*** %litptr.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load i32, i32* %beg.addr, align 4
  %3 = load i32, i32* %end.addr, align 4
  %call = call i32 @subs_SubsumptionVecPossibleRes(%struct.CLAUSE_HELP* %0, i32 %1, i32 %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %TermIndexlist, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %VarSymbList, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermSymbList, align 8
  %4 = load i32, i32* %vec.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %call4 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %5, %call4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %7)
  %8 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %6, i32 %8)
  %call7 = call %struct.LIST_HELP* @subs_GetVariables(%struct.term* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %VarSymbList, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %cmp9 = icmp ne %struct.LIST_HELP* %9, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %call11 = call i8* @vec_GetNth(i32 %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %call11, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %TermIndexlist, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %13 = bitcast %struct.LIST_HELP* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %TermSymbList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call14 = call %struct.litptr* @litptr_Create(%struct.LIST_HELP* %16, %struct.LIST_HELP* %17)
  %18 = load %struct.litptr**, %struct.litptr*** %litptr.addr, align 8
  store %struct.litptr* %call14, %struct.litptr** %18, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %for.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_TcVecRes(%struct.CLAUSE_HELP* %c1, i32 %vec, i32 %beg, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %top_index = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %beg.addr, align 4
  store i32 %0, i32* %a, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %2 = load i32, i32* %vec.addr, align 4
  %3 = load i32, i32* %beg.addr, align 4
  %4 = load i32, i32* %end.addr, align 4
  %call = call i32 @subs_SearchTopRes(%struct.CLAUSE_HELP* %1, i32 %2, i32 %3, i32 %4)
  store i32 %call, i32* %top_index, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  call void @cont_StartBinding()
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.body
  %5 = load i32, i32* %a, align 4
  %6 = load i32, i32* %end.addr, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call1 = call %struct.binding* @cont_LeftContext()
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %8 = load i32, i32* %top_index, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %7, i32 %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %10 = load i32, i32* %a, align 4
  %call3 = call i8* @vec_GetNth(i32 %10)
  %11 = ptrtoint i8* %call3 to i32
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %9, i32 %11)
  %call5 = call i32 @unify_Match(%struct.binding* %call1, %struct.term* %call2, %struct.term* %call4)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load i32, i32* %a, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %a, align 4
  %call6 = call i32 @cont_BackTrackAndStart()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %a, align 4
  %15 = load i32, i32* %end.addr, align 4
  %cmp7 = icmp sge i32 %14, %15
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %call8 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %16 = load i32, i32* %vec.addr, align 4
  %call9 = call i32 @vec_ActMax()
  %sub = sub nsw i32 %16, %call9
  %cmp10 = icmp eq i32 %sub, 1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %18 = load i32, i32* %vec.addr, align 4
  %19 = load i32, i32* %beg.addr, align 4
  %20 = load i32, i32* %end.addr, align 4
  %call13 = call i32 @subs_InternIdcRes(%struct.CLAUSE_HELP* %17, i32 %18, i32 %19, i32 %20)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.12
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.12
  %call16 = call i32 @cont_BackTrack()
  %21 = load i32, i32* %a, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %a, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else
  br label %do.cond

do.cond:                                          ; preds = %if.end.18
  %22 = load i32, i32* %a, align 4
  %23 = load i32, i32* %end.addr, align 4
  %cmp19 = icmp slt i32 %22, %23
  br i1 %cmp19, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.15, %if.then.11, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumptionVecPossibleRes(%struct.CLAUSE_HELP* %c1, i32 %vec, i32 %beg, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %vec.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %1 = load i32, i32* %i, align 4
  %call = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %1, %call
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %beg.addr, align 4
  store i32 %2, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %end.addr, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %6)
  %7 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call7 = call i8* @vec_GetNth(i32 %9)
  %10 = ptrtoint i8* %call7 to i32
  %call8 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %8, i32 %10)
  %call9 = call i32 @unify_Match(%struct.binding* %call4, %struct.term* %call6, %struct.term* %call8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %11 = load i32, i32* %end.addr, align 4
  %add = add nsw i32 %11, 1
  store i32 %add, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  %call10 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %j, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %13 = load i32, i32* %j, align 4
  %14 = load i32, i32* %end.addr, align 4
  %cmp11 = icmp eq i32 %13, %14
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %for.end
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end.13
  %15 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %15, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.16, %if.then.12
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SearchTopRes(%struct.CLAUSE_HELP* %c1, i32 %vec, i32 %beg, i32 %end) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %beg.addr = alloca i32, align 4
  %end.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %zaehler = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store i32 %beg, i32* %beg.addr, align 4
  store i32 %end, i32* %end.addr, align 4
  %0 = load i32, i32* %vec.addr, align 4
  %call = call i8* @vec_GetNth(i32 %0)
  %1 = ptrtoint i8* %call to i32
  store i32 %1, i32* %index, align 4
  %2 = load i32, i32* %vec.addr, align 4
  store i32 %2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %3, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %zaehler, align 4
  %4 = load i32, i32* %beg.addr, align 4
  store i32 %4, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %end.addr, align 4
  %cmp2 = icmp slt i32 %5, %6
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %zaehler, align 4
  %cmp3 = icmp slt i32 %7, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  call void @cont_StartBinding()
  %call4 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %10)
  %11 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %9, i32 %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %13 = load i32, i32* %j, align 4
  %call7 = call i8* @vec_GetNth(i32 %13)
  %14 = ptrtoint i8* %call7 to i32
  %call8 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %12, i32 %14)
  %call9 = call i32 @unify_Match(%struct.binding* %call4, %struct.term* %call6, %struct.term* %call8)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load i32, i32* %zaehler, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %zaehler, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %call10 = call i32 @cont_BackTrack()
  %16 = load i32, i32* %j, align 4
  %inc11 = add nsw i32 %16, 1
  store i32 %inc11, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %zaehler, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %18 = load i32, i32* %zaehler, align 4
  %cmp13 = icmp eq i32 %18, 1
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %lor.lhs.false, %while.end
  %19 = load i32, i32* %i, align 4
  %call15 = call i8* @vec_GetNth(i32 %19)
  %20 = ptrtoint i8* %call15 to i32
  store i32 %20, i32* %index, align 4
  %21 = load i32, i32* %index, align 4
  store i32 %21, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %22 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %22, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load i32, i32* %index, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_IdcVecTestlitsEqExcept(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, i32 %i2, %struct.litptr** %litptr) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i2.addr = alloca i32, align 4
  %litptr.addr = alloca %struct.litptr**, align 8
  %TermIndexlist = alloca %struct.LIST_HELP*, align 8
  %VarSymbList = alloca %struct.LIST_HELP*, align 8
  %TermSymbList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %i2, i32* %i2.addr, align 4
  store %struct.litptr** %litptr, %struct.litptr*** %litptr.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %3 = load i32, i32* %i2.addr, align 4
  %call = call i32 @subs_SubsumptionVecPossibleEqExcept(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2, i32 %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %TermIndexlist, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %VarSymbList, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermSymbList, align 8
  %4 = load i32, i32* %vec.addr, align 4
  store i32 %4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %call4 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %5, %call4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call5 = call i8* @vec_GetNth(i32 %7)
  %8 = ptrtoint i8* %call5 to i32
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %6, i32 %8)
  %call7 = call %struct.LIST_HELP* @subs_GetVariables(%struct.term* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %VarSymbList, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %cmp9 = icmp ne %struct.LIST_HELP* %9, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %call11 = call i8* @vec_GetNth(i32 %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %call11, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %TermIndexlist, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarSymbList, align 8
  %13 = bitcast %struct.LIST_HELP* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %TermSymbList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  %call14 = call %struct.litptr* @litptr_Create(%struct.LIST_HELP* %16, %struct.LIST_HELP* %17)
  %18 = load %struct.litptr**, %struct.litptr*** %litptr.addr, align 8
  store %struct.litptr* %call14, %struct.litptr** %18, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSymbList, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermIndexlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  store i32 1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.15, %for.end
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_TcVecEqExcept(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, i32 %i2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i2.addr = alloca i32, align 4
  %a = alloca i32, align 4
  %top_index = alloca i32, align 4
  %search = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %i2, i32* %i2.addr, align 4
  store i32 0, i32* %a, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %1 = load i32, i32* %vec.addr, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @subs_SearchTop(%struct.CLAUSE_HELP* %0, i32 %1, %struct.CLAUSE_HELP* %2)
  store i32 %call, i32* %top_index, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %4 = load i32, i32* %top_index, align 4
  %call1 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.term* %call1, %struct.term** %lit1, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  store i32 1, i32* %search, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.53, %do.body
  %5 = load i32, i32* %a, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  %cmp = icmp slt i32 %5, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %7 = load i32, i32* %search, align 4
  %tobool = icmp ne i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %a, align 4
  %10 = load i32, i32* %i2.addr, align 4
  %cmp3 = icmp ne i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.else.51

if.then:                                          ; preds = %while.body
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %12 = load i32, i32* %a, align 4
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %11, i32 %12)
  store %struct.term* %call4, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call5 = call %struct.binding* @cont_LeftContext()
  %13 = load %struct.term*, %struct.term** %lit1, align 8
  %14 = load %struct.term*, %struct.term** %lit2, align 8
  %call6 = call i32 @unify_Match(%struct.binding* %call5, %struct.term* %13, %struct.term* %14)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  store i32 0, i32* %search, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.then
  %15 = load %struct.term*, %struct.term** %lit1, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %lit2, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %16)
  %call11 = call i32 @symbol_Equal(i32 %call9, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.term*, %struct.term** %lit1, align 8
  %call13 = call %struct.term* @fol_Atom(%struct.term* %17)
  %call14 = call i32 @fol_IsEquality(%struct.term* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.45

land.lhs.true.16:                                 ; preds = %land.lhs.true
  %18 = load %struct.term*, %struct.term** %lit2, align 8
  %call17 = call %struct.term* @fol_Atom(%struct.term* %18)
  %call18 = call i32 @fol_IsEquality(%struct.term* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.45

land.lhs.true.20:                                 ; preds = %land.lhs.true.16
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %20 = load i32, i32* %top_index, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  %call22 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.20
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %22 = load i32, i32* %a, align 4
  %call24 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %21, i32 %22)
  %call25 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.45

if.then.27:                                       ; preds = %lor.lhs.false, %land.lhs.true.20
  %call28 = call i32 @cont_BackTrackAndStart()
  %call29 = call %struct.binding* @cont_LeftContext()
  %23 = load %struct.term*, %struct.term** %lit1, align 8
  %call30 = call %struct.term* @fol_Atom(%struct.term* %23)
  %call31 = call %struct.term* @term_FirstArgument(%struct.term* %call30)
  %24 = load %struct.term*, %struct.term** %lit2, align 8
  %call32 = call %struct.term* @fol_Atom(%struct.term* %24)
  %call33 = call %struct.term* @term_SecondArgument(%struct.term* %call32)
  %call34 = call i32 @unify_Match(%struct.binding* %call29, %struct.term* %call31, %struct.term* %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %if.then.27
  %call37 = call %struct.binding* @cont_LeftContext()
  %25 = load %struct.term*, %struct.term** %lit1, align 8
  %call38 = call %struct.term* @fol_Atom(%struct.term* %25)
  %call39 = call %struct.term* @term_SecondArgument(%struct.term* %call38)
  %26 = load %struct.term*, %struct.term** %lit2, align 8
  %call40 = call %struct.term* @fol_Atom(%struct.term* %26)
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %call40)
  %call42 = call i32 @unify_Match(%struct.binding* %call37, %struct.term* %call39, %struct.term* %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end

if.then.44:                                       ; preds = %land.lhs.true.36
  store i32 0, i32* %search, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.44, %land.lhs.true.36, %if.then.27
  br label %if.end.45

if.end.45:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true.16, %land.lhs.true, %if.else
  %27 = load i32, i32* %search, align 4
  %tobool46 = icmp ne i32 %27, 0
  br i1 %tobool46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.45
  %28 = load i32, i32* %a, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %a, align 4
  %call48 = call i32 @cont_BackTrack()
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.8
  br label %if.end.53

if.else.51:                                       ; preds = %while.body
  %29 = load i32, i32* %a, align 4
  %inc52 = add nsw i32 %29, 1
  store i32 %inc52, i32* %a, align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.51, %if.end.50
  br label %while.cond

while.end:                                        ; preds = %land.end
  %30 = load i32, i32* %a, align 4
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call54 = call i32 @clause_Length(%struct.CLAUSE_HELP* %31)
  %cmp55 = icmp sge i32 %30, %call54
  br i1 %cmp55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %while.end
  %call57 = call i32 @cont_BackTrack()
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %while.end
  %call59 = call i32 @vec_ActMax()
  %32 = load i32, i32* %vec.addr, align 4
  %sub = sub nsw i32 %call59, %32
  %cmp60 = icmp eq i32 %sub, 1
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %if.end.58
  store i32 1, i32* %retval
  br label %return

if.end.62:                                        ; preds = %if.end.58
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %34 = load i32, i32* %vec.addr, align 4
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %36 = load i32, i32* %i2.addr, align 4
  %call63 = call i32 @subs_InternIdcEqExcept(%struct.CLAUSE_HELP* %33, i32 %34, %struct.CLAUSE_HELP* %35, i32 %36)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %if.end.62
  store i32 1, i32* %retval
  br label %return

if.else.66:                                       ; preds = %if.end.62
  %call67 = call i32 @cont_BackTrack()
  %37 = load i32, i32* %a, align 4
  %inc68 = add nsw i32 %37, 1
  store i32 %inc68, i32* %a, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66
  br label %do.cond

do.cond:                                          ; preds = %if.end.69
  %38 = load i32, i32* %a, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call70 = call i32 @clause_Length(%struct.CLAUSE_HELP* %39)
  %cmp71 = icmp slt i32 %38, %call70
  br i1 %cmp71, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.65, %if.then.61, %if.then.56
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal i32 @subs_SubsumptionVecPossibleEqExcept(%struct.CLAUSE_HELP* %c1, i32 %vec, %struct.CLAUSE_HELP* %c2, i32 %i2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vec.addr = alloca i32, align 4
  %c2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i2.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %lit1 = alloca %struct.term*, align 8
  %lit2 = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %c1, %struct.CLAUSE_HELP** %c1.addr, align 8
  store i32 %vec, i32* %vec.addr, align 4
  store %struct.CLAUSE_HELP* %c2, %struct.CLAUSE_HELP** %c2.addr, align 8
  store i32 %i2, i32* %i2.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %vec.addr, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.57, %entry
  %2 = load i32, i32* %i, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp slt i32 %2, %call1
  br i1 %cmp, label %for.body, label %for.end.59

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i8* @vec_GetNth(i32 %4)
  %5 = ptrtoint i8* %call2 to i32
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %5)
  store %struct.term* %call3, %struct.term** %lit1, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %n, align 4
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %i2.addr, align 4
  %cmp7 = icmp ne i32 %8, %9
  br i1 %cmp7, label %if.then, label %if.end.53

if.then:                                          ; preds = %for.body.6
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %11 = load i32, i32* %j, align 4
  %call8 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %10, i32 %11)
  store %struct.term* %call8, %struct.term** %lit2, align 8
  call void @cont_StartBinding()
  %call9 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.term*, %struct.term** %lit1, align 8
  %13 = load %struct.term*, %struct.term** %lit2, align 8
  %call10 = call i32 @unify_Match(%struct.binding* %call9, %struct.term* %12, %struct.term* %13)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %14 = load i32, i32* %n, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %j, align 4
  br label %if.end.51

if.else:                                          ; preds = %if.then
  %15 = load %struct.term*, %struct.term** %lit1, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %lit2, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %16)
  %call14 = call i32 @symbol_Equal(i32 %call12, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct.term*, %struct.term** %lit1, align 8
  %call16 = call %struct.term* @fol_Atom(%struct.term* %17)
  %call17 = call i32 @fol_IsEquality(%struct.term* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.50

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %18 = load %struct.term*, %struct.term** %lit2, align 8
  %call20 = call %struct.term* @fol_Atom(%struct.term* %18)
  %call21 = call i32 @fol_IsEquality(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end.50

land.lhs.true.23:                                 ; preds = %land.lhs.true.19
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c1.addr, align 8
  %20 = load i32, i32* %i, align 4
  %call24 = call i8* @vec_GetNth(i32 %20)
  %21 = ptrtoint i8* %call24 to i32
  %call25 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %21)
  %call26 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.23
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c2.addr, align 8
  %23 = load i32, i32* %j, align 4
  %call28 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  %call29 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.50

if.then.31:                                       ; preds = %lor.lhs.false, %land.lhs.true.23
  %call32 = call i32 @cont_BackTrackAndStart()
  %call33 = call %struct.binding* @cont_LeftContext()
  %24 = load %struct.term*, %struct.term** %lit1, align 8
  %call34 = call %struct.term* @fol_Atom(%struct.term* %24)
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %call34)
  %25 = load %struct.term*, %struct.term** %lit2, align 8
  %call36 = call %struct.term* @fol_Atom(%struct.term* %25)
  %call37 = call %struct.term* @term_SecondArgument(%struct.term* %call36)
  %call38 = call i32 @unify_Match(%struct.binding* %call33, %struct.term* %call35, %struct.term* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.40, label %if.end

land.lhs.true.40:                                 ; preds = %if.then.31
  %call41 = call %struct.binding* @cont_LeftContext()
  %26 = load %struct.term*, %struct.term** %lit1, align 8
  %call42 = call %struct.term* @fol_Atom(%struct.term* %26)
  %call43 = call %struct.term* @term_SecondArgument(%struct.term* %call42)
  %27 = load %struct.term*, %struct.term** %lit2, align 8
  %call44 = call %struct.term* @fol_Atom(%struct.term* %27)
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %call44)
  %call46 = call i32 @unify_Match(%struct.binding* %call41, %struct.term* %call43, %struct.term* %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %land.lhs.true.40
  %28 = load i32, i32* %n, align 4
  %add49 = add nsw i32 %28, 1
  store i32 %add49, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.48, %land.lhs.true.40, %if.then.31
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %lor.lhs.false, %land.lhs.true.19, %land.lhs.true, %if.else
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.11
  %call52 = call i32 @cont_BackTrack()
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.51, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %29 = load i32, i32* %j, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %n, align 4
  %cmp54 = icmp eq i32 %30, %31
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.56:                                        ; preds = %for.end
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %32 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %32, 1
  store i32 %inc58, i32* %i, align 4
  br label %for.cond

for.end.59:                                       ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.59, %if.then.55
  %33 = load i32, i32* %retval
  ret i32 %33
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
