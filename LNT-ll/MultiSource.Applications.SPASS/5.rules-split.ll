; ModuleID = './MultiSource.Applications.SPASS/5.rules-split.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.SPLIT_NODE = type { i32, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.CLAUSE_HELP* }

@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@clause_CLAUSECOUNTER = external global i32, align 4

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @split_Backtrack(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %EmptyClause, %struct.CLAUSE_HELP** %SplitClause) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %EmptyClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %SplitClause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %ActBacktrackSplit = alloca %struct.SPLIT_NODE*, align 8
  %RecoverList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Backtracklevel = alloca i32, align 4
  %SplitMinus1 = alloca i32, align 4
  %RightClauses = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %EmptyClause, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  store %struct.CLAUSE_HELP** %SplitClause, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.SPLIT_NODE* null, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  %call = call %struct.LIST_HELP* @split_RemoveUnnecessarySplits(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %RecoverList, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  %call1 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %2)
  store i32 %call1, i32* %Backtracklevel, align 4
  %3 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %3, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call2 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call3 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %5)
  %6 = load i32, i32* %Backtracklevel, align 4
  %cmp = icmp sgt i32 %call3, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call4 = call %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %8)
  store %struct.SPLIT_NODE* %call4, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_SplitStackPop(%struct.PROOFSEARCH_HELP* %9)
  %10 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call5 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %10)
  %cmp6 = icmp ne %struct.CLAUSE_HELP* %call5, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call7 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %11)
  %12 = bitcast %struct.CLAUSE_HELP* %call7 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %RecoverList, align 8
  %14 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  call void @prfs_SplitSetFatherClause(%struct.SPLIT_NODE* %14, %struct.CLAUSE_HELP* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %15 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call9 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call9, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %RecoverList, align 8
  %17 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call11 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %17)
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %call11)
  %18 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  call void @prfs_SplitFree(%struct.SPLIT_NODE* %18)
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_DecValidLevel(%struct.PROOFSEARCH_HELP* %19)
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %while.cond.12

while.cond.12:                                    ; preds = %if.end.28, %while.end
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call13 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %20)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.end.20, label %land.rhs.15

land.rhs.15:                                      ; preds = %while.cond.12
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call16 = call %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %21)
  %call17 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %call16)
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end.20

land.end.20:                                      ; preds = %land.rhs.15, %while.cond.12
  %22 = phi i1 [ false, %while.cond.12 ], [ %tobool19, %land.rhs.15 ]
  br i1 %22, label %while.body.21, label %while.end.31

while.body.21:                                    ; preds = %land.end.20
  %23 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call22 = call %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %23)
  store %struct.SPLIT_NODE* %call22, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_SplitStackPop(%struct.PROOFSEARCH_HELP* %24)
  %25 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call23 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %25)
  %cmp24 = icmp ne %struct.CLAUSE_HELP* %call23, null
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %while.body.21
  %26 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call26 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %26)
  %27 = bitcast %struct.CLAUSE_HELP* %call26 to i8*
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %27, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %RecoverList, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %while.body.21
  %29 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call29 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call30 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call29, %struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %RecoverList, align 8
  %31 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  call void @prfs_SplitFree(%struct.SPLIT_NODE* %31)
  %32 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_DecValidLevel(%struct.PROOFSEARCH_HELP* %32)
  br label %while.cond.12

while.end.31:                                     ; preds = %land.end.20
  %33 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call32 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %33)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else, label %if.then.34

if.then.34:                                       ; preds = %while.end.31
  %34 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call35 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %34)
  %sub = sub nsw i32 %call35, 1
  store i32 %sub, i32* %SplitMinus1, align 4
  %35 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call36 = call %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %35)
  store %struct.SPLIT_NODE* %call36, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %36 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call37 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call38 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call37, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %RecoverList, align 8
  %38 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call39 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %38, %struct.LIST_HELP* %call39)
  %39 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %40 = load i32, i32* %SplitMinus1, align 4
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call40 = call %struct.LIST_HELP* @split_DeleteInvalidClausesFromList(%struct.PROOFSEARCH_HELP* %39, i32 %40, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %RecoverList, align 8
  %42 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call41 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %42)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %RightClauses, align 8
  %43 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ActBacktrackSplit, align 8
  %call42 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetBlockedClauses(%struct.SPLIT_NODE* %43, %struct.LIST_HELP* %call42)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightClauses, align 8
  store %struct.LIST_HELP* %44, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.34
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  %tobool44 = icmp ne i32 %call43, 0
  %lnot = xor i1 %tobool44, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call45 to %struct.CLAUSE_HELP*
  %call46 = call i32 @clause_Number(%struct.CLAUSE_HELP* %47)
  %cmp47 = icmp eq i32 %call46, 0
  br i1 %cmp47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %for.body
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %48)
  %49 = bitcast i8* %call49 to %struct.CLAUSE_HELP*
  %50 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %49, %struct.CLAUSE_HELP** %50, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %for.body
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call51 to %struct.CLAUSE_HELP*
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %52)
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call i8* @list_Car(%struct.LIST_HELP* %53)
  %54 = bitcast i8* %call52 to %struct.CLAUSE_HELP*
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  %call53 = call i32 @clause_Number(%struct.CLAUSE_HELP* %55)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %54, i32 %call53)
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call54 = call i8* @list_Car(%struct.LIST_HELP* %56)
  %57 = bitcast i8* %call54 to %struct.CLAUSE_HELP*
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %57, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %if.end.50
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightClauses, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  %call56 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %59, %struct.LIST_HELP* %60)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %RecoverList, align 8
  %61 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_DecValidLevel(%struct.PROOFSEARCH_HELP* %61)
  %62 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_MoveInvalidClausesDocProof(%struct.PROOFSEARCH_HELP* %62)
  %63 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @split_DeleteInvalidClausesFromStack(%struct.PROOFSEARCH_HELP* %63)
  %64 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_IncValidLevel(%struct.PROOFSEARCH_HELP* %64)
  br label %if.end.67

if.else:                                          ; preds = %while.end.31
  %65 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_MoveInvalidClausesDocProof(%struct.PROOFSEARCH_HELP* %65)
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.63, %if.else
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %67)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %for.body.61, label %for.end.65

for.body.61:                                      ; preds = %for.cond.57
  %68 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call62 = call i8* @list_Car(%struct.LIST_HELP* %69)
  %70 = bitcast i8* %call62 to %struct.CLAUSE_HELP*
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %68, %struct.CLAUSE_HELP* %70)
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.61
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.end.65:                                       ; preds = %for.cond.57
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  call void @list_Delete(%struct.LIST_HELP* %72)
  %call66 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %RecoverList, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %for.end.65, %for.end
  %73 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %74 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call68 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %74)
  call void @prfs_SetLastBacktrackLevel(%struct.PROOFSEARCH_HELP* %73, i32 %call68)
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RecoverList, align 8
  ret %struct.LIST_HELP* %75
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @split_RemoveUnnecessarySplits(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %EmptyClause) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %EmptyClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Recover = alloca %struct.LIST_HELP*, align 8
  %New = alloca %struct.LIST_HELP*, align 8
  %Deleted = alloca %struct.LIST_HELP*, align 8
  %ScanStack = alloca %struct.LIST_HELP*, align 8
  %SplitLevel = alloca i32, align 4
  %LastBacktrackLevel = alloca i32, align 4
  %Split = alloca %struct.SPLIT_NODE*, align 8
  %ScanSplit = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %EmptyClause, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call1 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %1)
  store i32 %call1, i32* %SplitLevel, align 4
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call2 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %2)
  store i32 %call2, i32* %LastBacktrackLevel, align 4
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Recover, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.47, %entry
  %3 = load i32, i32* %SplitLevel, align 4
  %4 = load i32, i32* %LastBacktrackLevel, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end.49

while.body:                                       ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.SPLIT_NODE*
  %call5 = call i32 @prfs_SplitIsUnused(%struct.SPLIT_NODE* %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %EmptyClause.addr, align 8
  %8 = load i32, i32* %SplitLevel, align 4
  %call6 = call i32 @clause_DependsOnSplitLevel(%struct.CLAUSE_HELP* %7, i32 %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.47, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %New, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call9 to %struct.SPLIT_NODE*
  store %struct.SPLIT_NODE* %10, %struct.SPLIT_NODE** %Split, align 8
  %11 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call10 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %11)
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %call10)
  %12 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call11 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetBlockedClauses(%struct.SPLIT_NODE* %12, %struct.LIST_HELP* %call11)
  %13 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call12 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %call13 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call12, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Recover, align 8
  %15 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call14 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %15, %struct.LIST_HELP* %call14)
  %16 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call15 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %16)
  %cmp16 = icmp ne %struct.CLAUSE_HELP* %call15, null
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %17 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call18 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %17)
  %18 = bitcast %struct.CLAUSE_HELP* %call18 to i8*
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Recover, align 8
  %20 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  call void @prfs_SplitSetFatherClause(%struct.SPLIT_NODE* %20, %struct.CLAUSE_HELP* null)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %23 = load i32, i32* %SplitLevel, align 4
  %call20 = call %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromList(%struct.PROOFSEARCH_HELP* %21, %struct.LIST_HELP* %22, i32 %23, %struct.LIST_HELP** %New)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Recover, align 8
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call21 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %24)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %ScanStack, align 8
  br label %while.cond.22

while.cond.22:                                    ; preds = %while.body.28, %if.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanStack, align 8
  %call23 = call i32 @list_StackEmpty(%struct.LIST_HELP* %25)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.22
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanStack, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call25 to %struct.SPLIT_NODE*
  store %struct.SPLIT_NODE* %27, %struct.SPLIT_NODE** %ScanSplit, align 8
  %call26 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %27)
  %28 = load i32, i32* %LastBacktrackLevel, align 4
  %cmp27 = icmp sgt i32 %call26, %28
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.22
  %29 = phi i1 [ false, %while.cond.22 ], [ %cmp27, %land.rhs ]
  br i1 %29, label %while.body.28, label %while.end

while.body.28:                                    ; preds = %land.end
  %30 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ScanSplit, align 8
  %call29 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %30)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Deleted, align 8
  %31 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ScanSplit, align 8
  %call30 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %31, %struct.LIST_HELP* %call30)
  %32 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Deleted, align 8
  %34 = load i32, i32* %SplitLevel, align 4
  %call31 = call %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromList(%struct.PROOFSEARCH_HELP* %32, %struct.LIST_HELP* %33, i32 %34, %struct.LIST_HELP** %New)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Deleted, align 8
  %35 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %ScanSplit, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Deleted, align 8
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %35, %struct.LIST_HELP* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanStack, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ScanStack, align 8
  br label %while.cond.22

while.end:                                        ; preds = %land.end
  br label %while.cond.33

while.cond.33:                                    ; preds = %while.body.36, %while.end
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %New, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool35, true
  br i1 %lnot, label %while.body.36, label %while.end.40

while.body.36:                                    ; preds = %while.cond.33
  %call37 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Deleted, align 8
  %39 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %New, align 8
  %41 = load i32, i32* %SplitLevel, align 4
  %call38 = call %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromList(%struct.PROOFSEARCH_HELP* %39, %struct.LIST_HELP* %40, i32 %41, %struct.LIST_HELP** %Deleted)
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %call39 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call38, %struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Recover, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Deleted, align 8
  store %struct.LIST_HELP* %43, %struct.LIST_HELP** %New, align 8
  br label %while.cond.33

while.end.40:                                     ; preds = %while.cond.33
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %45 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %46 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call41 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %46)
  %47 = load i32, i32* %SplitLevel, align 4
  %call42 = call %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromSet(%struct.PROOFSEARCH_HELP* %45, %struct.LIST_HELP* %call41, i32 %47)
  %call43 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %44, %struct.LIST_HELP* %call42)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Recover, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  %49 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %50 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call44 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %50)
  %51 = load i32, i32* %SplitLevel, align 4
  %call45 = call %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromSet(%struct.PROOFSEARCH_HELP* %49, %struct.LIST_HELP* %call44, i32 %51)
  %call46 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %48, %struct.LIST_HELP* %call45)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %Recover, align 8
  %52 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  call void @prfs_SplitSetUsed(%struct.SPLIT_NODE* %52)
  br label %if.end.47

if.end.47:                                        ; preds = %while.end.40, %land.lhs.true, %while.body
  %53 = load i32, i32* %SplitLevel, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %SplitLevel, align 4
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end.49:                                     ; preds = %while.cond
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Recover, align 8
  ret %struct.LIST_HELP* %55
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
define internal i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %0)
  %call1 = call i32 @list_StackEmpty(%struct.LIST_HELP* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 16
  %1 = load i32, i32* %validlevel, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.SPLIT_NODE*
  ret %struct.SPLIT_NODE* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SplitStackPop(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  %call = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %1)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack1 = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %2, i32 0, i32 15
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %stack1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %father = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %father, align 8
  ret %struct.CLAUSE_HELP* %1
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
define internal void @prfs_SplitSetFatherClause(%struct.SPLIT_NODE* %S, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %father = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %1, i32 0, i32 4
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %father, align 8
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deletedClauses, align 8
  ret %struct.LIST_HELP* %1
}

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %blockedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %blockedClauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SplitFree(%struct.SPLIT_NODE* %Sp) #1 {
entry:
  %Sp.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %Sp, %struct.SPLIT_NODE** %Sp.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Sp.addr, align 8
  %1 = bitcast %struct.SPLIT_NODE* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_DecValidLevel(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 16
  %1 = load i32, i32* %validlevel, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %validlevel, align 4
  ret void
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
define internal void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %S, %struct.LIST_HELP* %L) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %1, i32 0, i32 3
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %deletedClauses, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @split_DeleteInvalidClausesFromList(%struct.PROOFSEARCH_HELP* %Search, i32 %Level, %struct.LIST_HELP* %ClauseList) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load i32, i32* %Level.addr, align 4
  %call2 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %4, i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %6, %struct.CLAUSE_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %8, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %10, i8* null)
  ret %struct.LIST_HELP* %call5
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SplitSetBlockedClauses(%struct.SPLIT_NODE* %S, %struct.LIST_HELP* %L) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %blockedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %blockedClauses, align 8
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
define internal void @clause_NewNumber(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_IncreaseCounter()
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 0
  store i32 %call, i32* %clausenumber, align 4
  ret void
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
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

declare void @prfs_MoveInvalidClausesDocProof(%struct.PROOFSEARCH_HELP*) #2

; Function Attrs: nounwind uwtable
define internal void @split_DeleteInvalidClausesFromStack(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %ClauseList = alloca %struct.LIST_HELP*, align 8
  %Level = alloca i32, align 4
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %0)
  store i32 %call, i32* %Level, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.16, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.SPLIT_NODE*
  %call4 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %ClauseList, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call10 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %10 = load i32, i32* %Level, align 4
  %call11 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %9, i32 %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.9
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %11, %struct.CLAUSE_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %13, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call14 to %struct.SPLIT_NODE*
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call15 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %17, i8* null)
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %16, %struct.LIST_HELP* %call15)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_IncValidLevel(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 16
  %1 = load i32, i32* %validlevel, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %validlevel, align 4
  ret void
}

declare void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

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
define internal void @prfs_SetLastBacktrackLevel(%struct.PROOFSEARCH_HELP* %Prf, i32 %Value) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Value.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Value.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 17
  store i32 %0, i32* %lastbacktrack, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @split_DeleteClauseAtLevel(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %Clause, i32 %Level) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_ExtractWorkedOff(%struct.PROOFSEARCH_HELP* %1, %struct.CLAUSE_HELP* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP* %3, %struct.CLAUSE_HELP* %4)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %Level.addr, align 4
  call void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP* %5, %struct.CLAUSE_HELP* %6, i32 %7)
  ret void
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

declare void @prfs_ExtractWorkedOff(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

declare void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %Clause, i32 %Level) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %Split = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load i32, i32* %Level.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call = call %struct.SPLIT_NODE* @prfs_GetSplitOfLevel(i32 %0, %struct.PROOFSEARCH_HELP* %1)
  store %struct.SPLIT_NODE* %call, %struct.SPLIT_NODE** %Split, align 8
  %2 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = bitcast %struct.CLAUSE_HELP* %3 to i8*
  %5 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call1 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %5)
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %call1)
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %2, %struct.LIST_HELP* %call2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SPLIT_NODE* @prfs_GetSplitOfLevel(i32 %L, %struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %L.addr = alloca i32, align 4
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store i32 %L, i32* %L.addr, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.SPLIT_NODE*
  %splitlevel = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %4, i32 0, i32 0
  %5 = load i32, i32* %splitlevel, align 4
  %6 = load i32, i32* %L.addr, align 4
  %cmp = icmp ne i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call3 to %struct.SPLIT_NODE*
  ret %struct.SPLIT_NODE* %10
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %EmptyClauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP** %EmptyClauses, %struct.LIST_HELP*** %EmptyClauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call2 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %6 = bitcast %struct.CLAUSE_HELP* %5 to i8*
  %7 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %EmptyClauses.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %7, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %EmptyClauses.addr, align 8
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %9, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %10, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %12, i8* null)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Clauses.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  ret %struct.LIST_HELP* %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %0, null
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call2 = call i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.1
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call4 = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1, %land.lhs.true, %entry
  %4 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool5, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @split_SmallestSplitLevelClause(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %1, %struct.CLAUSE_HELP** %Result, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %cmp = icmp ugt i32 %call3, %call5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_StackEmpty(%struct.LIST_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  ret %struct.LIST_HELP* %1
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

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IncreaseCounter() #1 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %C, i32 %Level) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %0)
  %1 = load i32, i32* %Level.addr, align 4
  %cmp = icmp ule i32 %call, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 17
  %1 = load i32, i32* %lastbacktrack, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_SplitIsUnused(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %used = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %used, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_DependsOnSplitLevel(%struct.CLAUSE_HELP* %C, i32 %N) #1 {
entry:
  %retval = alloca i32, align 4
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %N.addr = alloca i32, align 4
  %field = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %N.addr, align 4
  %call = call i32 @clause_ComputeSplitFieldAddress(i32 %1, i32* %field)
  store i32 %call, i32* %N.addr, align 4
  %2 = load i32, i32* %field, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 5
  %4 = load i32, i32* %splitfield_length, align 4
  %cmp1 = icmp uge i32 %2, %4
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  %5 = load i32, i32* %field, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 4
  %7 = load i64*, i64** %splitfield, align 8
  %arrayidx = getelementptr inbounds i64, i64* %7, i64 %idxprom
  %8 = load i64, i64* %arrayidx, align 8
  %9 = load i32, i32* %N.addr, align 4
  %sh_prom = zext i32 %9 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %8, %shl
  %cmp4 = icmp ne i64 %and, 0
  %conv = zext i1 %cmp4 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromList(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %ClauseList, i32 %Level, %struct.LIST_HELP** %New) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %New.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Reinsert = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  store %struct.LIST_HELP** %New, %struct.LIST_HELP*** %New.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load i32, i32* %Level.addr, align 4
  %call2 = call i32 @clause_DependsOnSplitLevel(%struct.CLAUSE_HELP* %4, i32 %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call %struct.SPLIT_NODE* @prfs_GetSplitOfLevel(i32 %call4, %struct.PROOFSEARCH_HELP* %7)
  store %struct.SPLIT_NODE* %call5, %struct.SPLIT_NODE** %Reinsert, align 8
  %8 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Reinsert, align 8
  %call6 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %8)
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %cmp = icmp ne %struct.LIST_HELP* %call6, %call7
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %9 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Reinsert, align 8
  %call9 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %9)
  %10 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %New.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %10, align 8
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call9, %struct.LIST_HELP* %11)
  %12 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %New.addr, align 8
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %12, align 8
  %13 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Reinsert, align 8
  %call11 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %13, %struct.LIST_HELP* %call11)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %16, i8* null)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call14 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %18, i8* null)
  ret %struct.LIST_HELP* %call14
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %splitlevel = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 0
  %1 = load i32, i32* %splitlevel, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @split_DeleteClausesDependingOnLevelFromSet(%struct.PROOFSEARCH_HELP* %PS, %struct.LIST_HELP* %ClauseList, i32 %SplitLevel) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %SplitLevel.addr = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %delList = alloca %struct.LIST_HELP*, align 8
  %recover = alloca %struct.LIST_HELP*, align 8
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  %reinsert = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  store i32 %SplitLevel, i32* %SplitLevel.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %recover, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %delList, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %5 = load i32, i32* %SplitLevel.addr, align 4
  %call3 = call i32 @clause_DependsOnSplitLevel(%struct.CLAUSE_HELP* %4, i32 %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call6 = call %struct.SPLIT_NODE* @prfs_GetSplitOfLevel(i32 %call5, %struct.PROOFSEARCH_HELP* %7)
  store %struct.SPLIT_NODE* %call6, %struct.SPLIT_NODE** %reinsert, align 8
  %8 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %reinsert, align 8
  %call7 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %recover, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %recover, align 8
  %10 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %reinsert, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %10, %struct.LIST_HELP* %call9)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %12 = bitcast %struct.CLAUSE_HELP* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delList, align 8
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %delList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.22, %for.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delList, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  br i1 %lnot15, label %for.body.16, label %for.end.24

for.body.16:                                      ; preds = %for.cond.12
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delList, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call17 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %17, %struct.CLAUSE_HELP** %clause, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call18 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %18, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %for.body.16
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  call void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP* %19, %struct.CLAUSE_HELP* %20)
  br label %if.end.21

if.else:                                          ; preds = %for.body.16
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  call void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP* %21, %struct.CLAUSE_HELP* %22)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delList, align 8
  %call23 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %delList, align 8
  br label %for.cond.12

for.end.24:                                       ; preds = %for.cond.12
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %recover, align 8
  ret %struct.LIST_HELP* %24
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 7
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %uslist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %wolist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 5
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %wolist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SplitSetUsed(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %used = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 1
  store i32 1, i32* %used, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_ComputeSplitFieldAddress(i32 %n, i32* %field) #1 {
entry:
  %n.addr = alloca i32, align 4
  %field.addr = alloca i32*, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32* %field, i32** %field.addr, align 8
  %0 = load i32*, i32** %field.addr, align 8
  store i32 0, i32* %0, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i32, i32* %n.addr, align 4
  %conv = zext i32 %1 to i64
  %cmp = icmp uge i64 %conv, 64
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32*, i32** %field.addr, align 8
  %3 = load i32, i32* %2, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %2, align 4
  %4 = load i32, i32* %n.addr, align 4
  %conv2 = zext i32 %4 to i64
  %sub = sub i64 %conv2, 64
  %conv3 = trunc i64 %sub to i32
  store i32 %conv3, i32* %n.addr, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32, i32* %n.addr, align 4
  ret i32 %5
}

declare void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

declare void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 11
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
