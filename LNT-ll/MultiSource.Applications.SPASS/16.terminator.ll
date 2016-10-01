; ModuleID = './MultiSource.Applications.SPASS/16.terminator.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/terminator.c\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\0A In red_SearchTerminator: Unification failed.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@fol_NOT = external global i32, align 4
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_RIGHTCONTEXT = external global %struct.binding*, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@cont_BINDINGS = external global i32, align 4
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_STACKPOINTER = external global i32, align 4
@cont_INDEXVARSCANNER = external global i32, align 4
@fol_EQUALITY = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @red_Terminator(%struct.CLAUSE_HELP* %RedClause, i32 %n, %struct.SHARED_INDEX_NODE* %WoIndex, %struct.SHARED_INDEX_NODE* %UsIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %n.addr = alloca i32, align 4
  %WoIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %UsIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Rest = alloca %struct.LIST_HELP*, align 8
  %IndexList = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.SHARED_INDEX_NODE* %WoIndex, %struct.SHARED_INDEX_NODE** %WoIndex.addr, align 8
  store %struct.SHARED_INDEX_NODE* %UsIndex, %struct.SHARED_INDEX_NODE** %UsIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %cmp = icmp sgt i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %dec = add i32 %1, -1
  store i32 %dec, i32* %n.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex.addr, align 8
  %3 = bitcast %struct.SHARED_INDEX_NODE* %2 to i8*
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex.addr, align 8
  %5 = bitcast %struct.SHARED_INDEX_NODE* %4 to i8*
  %call1 = call %struct.LIST_HELP* @list_List(i8* %5)
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %IndexList, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_GetLiteralList(%struct.CLAUSE_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Rest, align 8
  %7 = load i32, i32* %n.addr, align 4
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %call5 = call %struct.subst* @subst_Nil()
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call6 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList, align 8
  %11 = load i32*, i32** %Flags.addr, align 8
  %12 = load i32*, i32** %Precedence.addr, align 8
  %call7 = call %struct.CLAUSE_HELP* @red_SearchTerminator(i32 %7, %struct.LIST_HELP* %8, %struct.LIST_HELP* %call4, %struct.subst* %call5, i32 %call6, %struct.LIST_HELP* %10, i32* %11, i32* %12)
  store %struct.CLAUSE_HELP* %call7, %struct.CLAUSE_HELP** %Result, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList, align 8
  call void @list_Delete(%struct.LIST_HELP* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  call void @list_Delete(%struct.LIST_HELP* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %15
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
define internal %struct.LIST_HELP* @list_List(i8* %P) #1 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @clause_GetLiteralList(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %0, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %2, i32 %3)
  %4 = bitcast %struct.LITERAL_HELP* %call3 to i8*
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_SearchTerminator(i32 %n, %struct.LIST_HELP* %RestLits, %struct.LIST_HELP* %FoundMap, %struct.subst* %Subst, i32 %GlobalMaxVar, %struct.LIST_HELP* %IndexList, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %n.addr = alloca i32, align 4
  %RestLits.addr = alloca %struct.LIST_HELP*, align 8
  %FoundMap.addr = alloca %struct.LIST_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %GlobalMaxVar.addr = alloca i32, align 4
  %IndexList.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %PClauseCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %NewMaxVar = alloca i32, align 4
  %NewSubst = alloca %struct.subst*, align 8
  %RightSubst = alloca %struct.subst*, align 8
  %AtomCopy = alloca %struct.term*, align 8
  %ClashList = alloca %struct.LIST_HELP*, align 8
  %ToDoList = alloca %struct.LIST_HELP*, align 8
  %Swapped = alloca i32, align 4
  %Limit = alloca i32, align 4
  %PLitInd = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store %struct.LIST_HELP* %RestLits, %struct.LIST_HELP** %RestLits.addr, align 8
  store %struct.LIST_HELP* %FoundMap, %struct.LIST_HELP** %FoundMap.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32 %GlobalMaxVar, i32* %GlobalMaxVar.addr, align 4
  store %struct.LIST_HELP* %IndexList, %struct.LIST_HELP** %IndexList.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @red_CreateTerminatorEmptyClause(%struct.LIST_HELP* %1, i32* %2, i32* %3)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %Swapped, align 4
  %call2 = call %struct.CLAUSE_HELP* @clause_Null()
  store %struct.CLAUSE_HELP* %call2, %struct.CLAUSE_HELP** %Result, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits.addr, align 8
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %6 = load i32, i32* %GlobalMaxVar.addr, align 4
  %call3 = call %struct.LIST_HELP* @clause_MoveBestLiteralToFront(%struct.LIST_HELP* %4, %struct.subst* %5, i32 %6, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)* @red_TerminatorLitIsBetter)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call4 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %8, %struct.LITERAL_HELP** %Lit, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %RestLits.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call6 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  %call7 = call %struct.term* @term_Copy(%struct.term* %call6)
  %call8 = call %struct.term* @subst_Apply(%struct.subst* %10, %struct.term* %call7)
  store %struct.term* %call8, %struct.term** %AtomCopy, align 8
  br label %while.body

while.body:                                       ; preds = %if.else, %if.end.58
  %12 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %14 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %14, 0
  %conv = zext i1 %cmp to i32
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList.addr, align 8
  %call9 = call %struct.LIST_HELP* @red_GetTerminatorPartnerLits(%struct.term* %12, %struct.LITERAL_HELP* %13, i32 %conv, %struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %ClashList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClashList, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %cmp12 = icmp eq %struct.CLAUSE_HELP* %17, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %18 = phi i1 [ false, %for.cond ], [ %cmp12, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClashList, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call14 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %20, %struct.LITERAL_HELP** %PLit, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call15 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %21)
  store i32 %call15, i32* %PLitInd, align 4
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call16 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %22)
  %call17 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %call16)
  store %struct.CLAUSE_HELP* %call17, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %call18 = call i32 @clause_Length(%struct.CLAUSE_HELP* %23)
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %24 = load i32, i32* %n.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %25 = load i32, i32* %n.addr, align 4
  %sub = sub i32 %25, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %sub, %cond.false ]
  store i32 %cond, i32* %Limit, align 4
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %27 = load i32, i32* %GlobalMaxVar.addr, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %26, i32 %27)
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %29 = load i32, i32* %PLitInd, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %28, i32 %29)
  store %struct.LITERAL_HELP* %call21, %struct.LITERAL_HELP** %PLit, align 8
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %31 = bitcast %struct.LITERAL_HELP* %30 to i8*
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %33 = bitcast %struct.LITERAL_HELP* %32 to i8*
  %call22 = call %struct.LIST_HELP* @list_PairCreate(i8* %31, i8* %33)
  %34 = bitcast %struct.LIST_HELP* %call22 to i8*
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call23 = call %struct.LIST_HELP* @list_Cons(i8* %34, %struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %FoundMap.addr, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %37 = load i32, i32* %PLitInd, align 4
  %call24 = call %struct.LIST_HELP* @clause_GetLiteralListExcept(%struct.CLAUSE_HELP* %36, i32 %37)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %ToDoList, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ToDoList, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits.addr, align 8
  %call25 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %39)
  %call26 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %38, %struct.LIST_HELP* %call25)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %ToDoList, align 8
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  %call27 = call i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %40)
  store i32 %call27, i32* %NewMaxVar, align 4
  %41 = load i32, i32* %GlobalMaxVar.addr, align 4
  %42 = load i32, i32* %NewMaxVar, align 4
  %call28 = call i32 @symbol_GreaterVariable(i32 %41, i32 %42)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %cond.end
  %43 = load i32, i32* %GlobalMaxVar.addr, align 4
  store i32 %43, i32* %NewMaxVar, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.30, %cond.end
  call void @cont_Check()
  %call31 = call %struct.binding* @cont_LeftContext()
  %44 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call32 = call %struct.binding* @cont_RightContext()
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call33 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %45)
  %call34 = call i32 @unify_UnifyNoOC(%struct.binding* %call31, %struct.term* %44, %struct.binding* %call32, %struct.term* %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.40, label %if.then.36

if.then.36:                                       ; preds = %if.end
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fflush(%struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i32 0, i32 0), i32 244)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %48)
  call void @misc_DumpCore()
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.end
  %call41 = call %struct.binding* @cont_LeftContext()
  %call42 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call41, %struct.subst** %NewSubst, %struct.binding* %call42, %struct.subst** %RightSubst)
  call void @cont_Reset()
  %49 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %50 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %call43 = call %struct.subst* @subst_NUnion(%struct.subst* %49, %struct.subst* %50)
  store %struct.subst* %call43, %struct.subst** %NewSubst, align 8
  %51 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  store %struct.subst* %51, %struct.subst** %RightSubst, align 8
  %52 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %53 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call44 = call %struct.subst* @subst_Copy(%struct.subst* %53)
  %call45 = call %struct.subst* @subst_Compose(%struct.subst* %52, %struct.subst* %call44)
  store %struct.subst* %call45, %struct.subst** %NewSubst, align 8
  %54 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  call void @subst_Delete(%struct.subst* %54)
  %55 = load i32, i32* %Limit, align 4
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ToDoList, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %58 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %59 = load i32, i32* %NewMaxVar, align 4
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList.addr, align 8
  %61 = load i32*, i32** %Flags.addr, align 8
  %62 = load i32*, i32** %Precedence.addr, align 8
  %call46 = call %struct.CLAUSE_HELP* @red_SearchTerminator(i32 %55, %struct.LIST_HELP* %56, %struct.LIST_HELP* %57, %struct.subst* %58, i32 %59, %struct.LIST_HELP* %60, i32* %61, i32* %62)
  store %struct.CLAUSE_HELP* %call46, %struct.CLAUSE_HELP** %Result, align 8
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClauseCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %63)
  %64 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  call void @subst_Delete(%struct.subst* %64)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ToDoList, align 8
  call void @list_Delete(%struct.LIST_HELP* %65)
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call47 to %struct.LIST_HELP*
  call void @list_PairFree(%struct.LIST_HELP* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call48 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %68)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %FoundMap.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClashList, align 8
  %call49 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %69)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %ClashList, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %70 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call50 = call i32 @fol_IsEquality(%struct.term* %70)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %lor.lhs.false, label %if.then.56

lor.lhs.false:                                    ; preds = %for.end
  %71 = load i32, i32* %Swapped, align 4
  %tobool52 = icmp ne i32 %71, 0
  br i1 %tobool52, label %if.then.56, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %cmp54 = icmp ne %struct.CLAUSE_HELP* %72, null
  br i1 %cmp54, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %lor.lhs.false.53, %lor.lhs.false, %for.end
  br label %while.end

if.else.57:                                       ; preds = %lor.lhs.false.53
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClashList, align 8
  call void @list_Delete(%struct.LIST_HELP* %73)
  %74 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @term_EqualitySwap(%struct.term* %74)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.57
  br label %while.body

while.end:                                        ; preds = %if.then.56
  %75 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @term_Delete(%struct.term* %75)
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClashList, align 8
  call void @list_Delete(%struct.LIST_HELP* %76)
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  store %struct.CLAUSE_HELP* %77, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %78
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
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

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
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
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_CreateTerminatorEmptyClause(%struct.LIST_HELP* %FoundMap, i32* %Flags, i32* %Precedence) #0 {
entry:
  %FoundMap.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %PClause = alloca %struct.CLAUSE_HELP*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %depth = alloca i32, align 4
  store %struct.LIST_HELP* %FoundMap, %struct.LIST_HELP** %FoundMap.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %0 = load i32*, i32** %Flags.addr, align 8
  %1 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %call, %struct.LIST_HELP* %call1, %struct.LIST_HELP* %call2, i32* %0, i32* %1)
  store %struct.CLAUSE_HELP* %call3, %struct.CLAUSE_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Parents, align 8
  store i32 0, i32* %depth, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.LIST_HELP*
  %call7 = call i8* @list_PairSecond(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %5, %struct.LITERAL_HELP** %Lit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call8 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %6)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %PClause, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %8 = bitcast %struct.CLAUSE_HELP* %7 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Parents, align 8
  %10 = load i32, i32* %depth, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call10 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %11)
  %call11 = call i32 @misc_Max(i32 %10, i32 %call10)
  store i32 %call11, i32* %depth, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call12 = call i32 @clause_Number(%struct.CLAUSE_HELP* %13)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %12, i32 %call12)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call13 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %15)
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %14, i32 %call13)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call14 to %struct.LIST_HELP*
  %call15 = call i8* @list_PairFirst(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call15 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %18, %struct.LITERAL_HELP** %Lit, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call16 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %19)
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %PClause, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %21 = bitcast %struct.CLAUSE_HELP* %20 to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Parents, align 8
  %23 = load i32, i32* %depth, align 4
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call18 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %24)
  %call19 = call i32 @misc_Max(i32 %23, i32 %call18)
  store i32 %call19, i32* %depth, align 4
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call20 = call i32 @clause_Number(%struct.CLAUSE_HELP* %26)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %25, i32 %call20)
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %28 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call21 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %28)
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %27, i32 %call21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %FoundMap.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_SetFromTerminator(%struct.CLAUSE_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %32 = load i32, i32* %depth, align 4
  %add = add i32 %32, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %31, i32 %add)
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @clause_SetSplitDataFromList(%struct.CLAUSE_HELP* %33, %struct.LIST_HELP* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @list_Delete(%struct.LIST_HELP* %35)
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %36
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @clause_Null() #1 {
entry:
  ret %struct.CLAUSE_HELP* null
}

declare %struct.LIST_HELP* @clause_MoveBestLiteralToFront(%struct.LIST_HELP*, %struct.subst*, i32, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @red_TerminatorLitIsBetter(%struct.LITERAL_HELP* %L1, i32 %S1, %struct.LITERAL_HELP* %L2, i32 %S2) #0 {
entry:
  %retval = alloca i32, align 4
  %L1.addr = alloca %struct.LITERAL_HELP*, align 8
  %S1.addr = alloca i32, align 4
  %L2.addr = alloca %struct.LITERAL_HELP*, align 8
  %S2.addr = alloca i32, align 4
  store %struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP** %L1.addr, align 8
  store i32 %S1, i32* %S1.addr, align 4
  store %struct.LITERAL_HELP* %L2, %struct.LITERAL_HELP** %L2.addr, align 8
  store i32 %S2, i32* %S2.addr, align 4
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call1 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call3 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true.5, label %lor.lhs.false.6

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %S1.addr, align 4
  %4 = load i32, i32* %S2.addr, align 4
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.5, %lor.lhs.false
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call7 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %lor.lhs.false.6
  %6 = load i32, i32* %S1.addr, align 4
  %7 = load i32, i32* %S2.addr, align 4
  %cmp10 = icmp ugt i32 %6, %7
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9, %land.lhs.true.5, %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.9, %lor.lhs.false.6
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
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

declare %struct.term* @subst_Apply(%struct.subst*, %struct.term*) #2

declare %struct.term* @term_Copy(%struct.term*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_GetTerminatorPartnerLits(%struct.term* %Atom, %struct.LITERAL_HELP* %Lit, i32 %UnitsOnly, %struct.LIST_HELP* %IndexList) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  %UnitsOnly.addr = alloca i32, align 4
  %IndexList.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Unifiers = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  store i32 %UnitsOnly, i32* %UnitsOnly.addr, align 4
  store %struct.LIST_HELP* %IndexList, %struct.LIST_HELP** %IndexList.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.35, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.37

for.body:                                         ; preds = %for.cond
  %call2 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList.addr, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call3 to %struct.SHARED_INDEX_NODE*
  %call4 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %2)
  %call5 = call %struct.binding* @cont_RightContext()
  %3 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call6 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call2, %struct.st* %call4, %struct.binding* %call5, %struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Unifiers, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.32, %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot10 = xor i1 %tobool9, true
  br i1 %lnot10, label %for.body.11, label %for.end.34

for.body.11:                                      ; preds = %for.cond.7
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call12 to %struct.term*
  %call13 = call i32 @term_IsVariable(%struct.term* %6)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.31, label %if.then

if.then:                                          ; preds = %for.body.11
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call15 to %struct.term*
  %call16 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %8)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.17
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call22 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %11, %struct.LITERAL_HELP** %NextLit, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call23 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %12, %struct.LITERAL_HELP* %13)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.21
  %14 = load i32, i32* %UnitsOnly.addr, align 4
  %tobool25 = icmp ne i32 %14, 0
  br i1 %tobool25, label %lor.lhs.false, label %if.then.28

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call26 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %15)
  %call27 = call i32 @clause_Length(%struct.CLAUSE_HELP* %call26)
  %cmp = icmp eq i32 %call27, 1
  br i1 %cmp, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %17 = bitcast %struct.LITERAL_HELP* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %lor.lhs.false, %for.body.21
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.17

for.end:                                          ; preds = %for.cond.17
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %for.body.11
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers, align 8
  %call33 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Unifiers, align 8
  br label %for.cond.7

for.end.34:                                       ; preds = %for.cond.7
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.end.34
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexList.addr, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %IndexList.addr, align 8
  br label %for.cond

for.end.37:                                       ; preds = %for.cond
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %j = alloca i32, align 4
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store i32 0, i32* %j, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %0)
  %1 = load i32, i32* %j, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %call, i32 %1)
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %cmp = icmp ne %struct.LITERAL_HELP* %call1, %2
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %j, align 4
  ret i32 %4
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 3
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %owningClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

declare void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #1 {
entry:
  %P1.addr = alloca i8*, align 8
  %P2.addr = alloca i8*, align 8
  store i8* %P1, i8** %P1.addr, align 8
  store i8* %P2, i8** %P2.addr, align 8
  %0 = load i8*, i8** %P1.addr, align 8
  %1 = load i8*, i8** %P2.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  %call = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %2)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @clause_GetLiteralListExcept(%struct.CLAUSE_HELP* %Clause, i32 %Index) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %0, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %Index.addr, align 4
  %cmp3 = icmp ne i32 %2, %3
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %6 = bitcast %struct.LITERAL_HELP* %call4 to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %9
}

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

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

declare i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GreaterVariable(i32 %Var1, i32 %Var2) #1 {
entry:
  %Var1.addr = alloca i32, align 4
  %Var2.addr = alloca i32, align 4
  store i32 %Var1, i32* %Var1.addr, align 4
  store i32 %Var2, i32* %Var2.addr, align 4
  %0 = load i32, i32* %Var1.addr, align 4
  %1 = load i32, i32* %Var2.addr, align 4
  %cmp = icmp sgt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @cont_Check() #2

declare i32 @unify_UnifyNoOC(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_RightContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_RIGHTCONTEXT, align 8
  ret %struct.binding* %0
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @subst_ExtractUnifier(%struct.binding*, %struct.subst**, %struct.binding*, %struct.subst**) #2

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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_NUnion(%struct.subst* %S1, %struct.subst* %S2) #1 {
entry:
  %retval = alloca %struct.subst*, align 8
  %S1.addr = alloca %struct.subst*, align 8
  %S2.addr = alloca %struct.subst*, align 8
  %Result = alloca %struct.subst*, align 8
  store %struct.subst* %S1, %struct.subst** %S1.addr, align 8
  store %struct.subst* %S2, %struct.subst** %S2.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %cmp = icmp eq %struct.subst* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  store %struct.subst* %1, %struct.subst** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  %cmp1 = icmp eq %struct.subst* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  store %struct.subst* %3, %struct.subst** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %4 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  store %struct.subst* %4, %struct.subst** %Result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %5 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %5, i32 0, i32 0
  %6 = load %struct.subst*, %struct.subst** %next, align 8
  %cmp4 = icmp ne %struct.subst* %6, null
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next5 = getelementptr inbounds %struct.subst, %struct.subst* %7, i32 0, i32 0
  %8 = load %struct.subst*, %struct.subst** %next5, align 8
  store %struct.subst* %8, %struct.subst** %S1.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.subst*, %struct.subst** %S2.addr, align 8
  %10 = load %struct.subst*, %struct.subst** %S1.addr, align 8
  %next6 = getelementptr inbounds %struct.subst, %struct.subst* %10, i32 0, i32 0
  store %struct.subst* %9, %struct.subst** %next6, align 8
  %11 = load %struct.subst*, %struct.subst** %Result, align 8
  store %struct.subst* %11, %struct.subst** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.2, %if.then
  %12 = load %struct.subst*, %struct.subst** %retval
  ret %struct.subst* %12
}

declare %struct.subst* @subst_Compose(%struct.subst*, %struct.subst*) #2

declare %struct.subst* @subst_Copy(%struct.subst*) #2

declare void @subst_Delete(%struct.subst*) #2

declare void @clause_Delete(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Aux = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Aux, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %L.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Aux, align 8
  call void @list_Free(%struct.LIST_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  ret %struct.LIST_HELP* %3
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
define internal void @term_EqualitySwap(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %Aux = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Aux, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %T.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  %3 = bitcast %struct.term* %call2 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call1, i8* %3)
  %4 = load %struct.term*, %struct.term** %T.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call3)
  %5 = load %struct.term*, %struct.term** %Aux, align 8
  %6 = bitcast %struct.term* %5 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call4, i8* %6)
  ret void
}

declare void @term_Delete(%struct.term*) #2

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

declare i32 @misc_Max(i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Depth(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %depth, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_AddParentClause(%struct.CLAUSE_HELP* %Clause, i32 %PClause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %PClause.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %PClause, i32* %PClause.addr, align 4
  %0 = load i32, i32* %PClause.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 6
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentCls, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls1 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 6
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %parentCls1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Number(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %clausenumber, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %Clause, i32 %PLit) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %PLit.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %PLit, i32* %PLit.addr, align 4
  %0 = load i32, i32* %PLit.addr, align 4
  %conv = sext i32 %0 to i64
  %1 = inttoptr i64 %conv to i8*
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 7
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentLits1 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 7
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %parentLits1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromTerminator(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 26, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetDepth(%struct.CLAUSE_HELP* %Clause, i32 %NewDepth) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %NewDepth.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %NewDepth, i32* %NewDepth.addr, align 4
  %0 = load i32, i32* %NewDepth.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 2
  store i32 %0, i32* %depth, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitDataFromList(%struct.CLAUSE_HELP* %Result, %struct.LIST_HELP* %List) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %TempClause = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 5
  %2 = load i32, i32* %splitfield_length, align 4
  store i32 %2, i32* %l, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.12, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Top(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP** %TempClause, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %call2 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %6, i32 8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %7, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %10)
  %cmp = icmp ugt i32 %call4, %call5
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %call6 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %11)
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %call7 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %12)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call6, %cond.true ], [ %call7, %cond.false ]
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %8, i32 %cond)
  %13 = load i32, i32* %l, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %splitfield_length8 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 5
  %15 = load i32, i32* %splitfield_length8, align 4
  %cmp9 = icmp ult i32 %13, %15
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %cond.end
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %splitfield_length11 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %16, i32 0, i32 5
  %17 = load i32, i32* %splitfield_length11, align 4
  store i32 %17, i32* %l, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %cond.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %l, align 4
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length14 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %20, i32 0, i32 5
  %21 = load i32, i32* %splitfield_length14, align 4
  %cmp15 = icmp ugt i32 %19, %21
  br i1 %cmp15, label %if.then.16, label %if.end.29

if.then.16:                                       ; preds = %while.end
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %22, i32 0, i32 4
  %23 = load i64*, i64** %splitfield, align 8
  %cmp17 = icmp ne i64* %23, null
  br i1 %cmp17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.then.16
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield19 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %24, i32 0, i32 4
  %25 = load i64*, i64** %splitfield19, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %27, i32 0, i32 5
  %28 = load i32, i32* %splitfield_length20, align 4
  %conv = zext i32 %28 to i64
  %mul = mul i64 8, %conv
  %conv21 = trunc i64 %mul to i32
  call void @memory_Free(i8* %26, i32 %conv21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.then.16
  %29 = load i32, i32* %l, align 4
  %conv23 = zext i32 %29 to i64
  %mul24 = mul i64 8, %conv23
  %conv25 = trunc i64 %mul24 to i32
  %call26 = call i8* @memory_Malloc(i32 %conv25)
  %30 = bitcast i8* %call26 to i64*
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield27 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %31, i32 0, i32 4
  store i64* %30, i64** %splitfield27, align 8
  %32 = load i32, i32* %l, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length28 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %33, i32 0, i32 5
  store i32 %32, i32* %splitfield_length28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.22, %while.end
  store i32 0, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %34 = load i32, i32* %l, align 4
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length30 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %35, i32 0, i32 5
  %36 = load i32, i32* %splitfield_length30, align 4
  %cmp31 = icmp ult i32 %34, %36
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %l, align 4
  %idxprom = zext i32 %37 to i64
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield33 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %38, i32 0, i32 4
  %39 = load i64*, i64** %splitfield33, align 8
  %arrayidx = getelementptr inbounds i64, i64* %39, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %l, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %l, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond.34

while.cond.34:                                    ; preds = %for.end.57, %for.end
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br i1 %lnot37, label %while.body.38, label %while.end.58

while.body.38:                                    ; preds = %while.cond.34
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call39 = call i8* @list_Top(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call39 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %43, %struct.CLAUSE_HELP** %TempClause, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call40 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %List.addr, align 8
  store i32 0, i32* %l, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.55, %while.body.38
  %45 = load i32, i32* %l, align 4
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %splitfield_length42 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %46, i32 0, i32 5
  %47 = load i32, i32* %splitfield_length42, align 4
  %cmp43 = icmp ult i32 %45, %47
  br i1 %cmp43, label %for.body.45, label %for.end.57

for.body.45:                                      ; preds = %for.cond.41
  %48 = load i32, i32* %l, align 4
  %idxprom46 = zext i32 %48 to i64
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield47 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %49, i32 0, i32 4
  %50 = load i64*, i64** %splitfield47, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %50, i64 %idxprom46
  %51 = load i64, i64* %arrayidx48, align 8
  %52 = load i32, i32* %l, align 4
  %idxprom49 = zext i32 %52 to i64
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TempClause, align 8
  %splitfield50 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %53, i32 0, i32 4
  %54 = load i64*, i64** %splitfield50, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %54, i64 %idxprom49
  %55 = load i64, i64* %arrayidx51, align 8
  %or = or i64 %51, %55
  %56 = load i32, i32* %l, align 4
  %idxprom52 = zext i32 %56 to i64
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield53 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %57, i32 0, i32 4
  %58 = load i64*, i64** %splitfield53, align 8
  %arrayidx54 = getelementptr inbounds i64, i64* %58, i64 %idxprom52
  store i64 %or, i64* %arrayidx54, align 8
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.45
  %59 = load i32, i32* %l, align 4
  %inc56 = add i32 %59, 1
  store i32 %inc56, i32* %l, align 4
  br label %for.cond.41

for.end.57:                                       ; preds = %for.cond.41
  br label %while.cond.34

while.end.58:                                     ; preds = %while.cond.34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_GetFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flag.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 8
  %1 = load i32, i32* %flags, align 4
  %2 = load i32, i32* %Flag.addr, align 4
  %and = and i32 %1, %2
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flag.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 8
  %1 = load i32, i32* %flags, align 4
  %2 = load i32, i32* %Flag.addr, align 4
  %or = or i32 %1, %2
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags1 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 8
  store i32 %or, i32* %flags1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %Clause, i32 %Level) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load i32, i32* %Level.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %validlevel = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 3
  store i32 %0, i32* %validlevel, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %validlevel = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %validlevel, align 4
  ret i32 %1
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
  call void @free(i8* %add.ptr24) #6
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
define internal i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
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
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

declare %struct.LIST_HELP* @st_GetUnifier(%struct.binding*, %struct.st*, %struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %ShIndex) #1 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %index = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %0, i32 0, i32 0
  %1 = load %struct.st*, %struct.st** %index, align 8
  ret %struct.st* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

declare %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP* %L2) #1 {
entry:
  %L1.addr = alloca %struct.LITERAL_HELP*, align 8
  %L2.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP** %L1.addr, align 8
  store %struct.LITERAL_HELP* %L2, %struct.LITERAL_HELP** %L2.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call1 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call3 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call5 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %4 = phi i1 [ false, %lor.rhs ], [ %tobool6, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true
  %5 = phi i1 [ true, %land.lhs.true ], [ %4, %land.end ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

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

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_BackTrackLastBinding() #1 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
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
define internal i32 @symbol_GetInitialIndexVarCounter() #1 {
entry:
  ret i32 2000
}

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
define internal i8* @list_Second(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
