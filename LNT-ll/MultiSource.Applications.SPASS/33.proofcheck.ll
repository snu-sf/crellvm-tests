; ModuleID = './MultiSource.Applications.SPASS/33.proofcheck.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.TABLEAU_HELP = type { %struct.LIST_HELP*, %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, %struct.LIST_HELP*, %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP*, i32 }
%struct.TABPATH_NODE = type { %struct.TABLEAU_HELP**, i32, i32 }

@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [47 x i8] c"\0A Error: Split level of split clause %d is 0.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"\0A Error: Split level of split clause %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c" is not increment of current split level.\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"\0A Error: Multiple left splits for clause %d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"\0A Error: Right split with incorrect split level, clause %d.\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"\0A Error: Split level of clause %d greater than current level.\0A\00", align 1
@pcheck_GenNamedCg = common global i32 0, align 4
@pcheck_CgName = common global i8* null, align 8
@pcheck_GraphFormat = common global i32 0, align 4
@pcheck_Quiet = common global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"pruning closed branches...\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"finished.\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"removing incomplete splits...\00", align 1
@pcheck_GenRedCg = common global i32 0, align 4
@pcheck_RedCgName = common global i8* null, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"\0Aerror: tableau is not closed.\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"checking justifications...\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"\0A Error: Proof could not be translated into a closed tableau.\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@pcheck_ProofFileSuffix = common global i8* null, align 8
@pcheck_Timelimit = common global i32 0, align 4
@pcheck_ClauseCg = common global i32 0, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.13 = private unnamed_addr constant [27 x i8] c"\0A In pcheck_LabelToNumber:\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c" Could not convert clause\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c" label %s to a number.\0A\00", align 1
@.str.16 = private unnamed_addr constant [49 x i8] c"\0A Error: Missing parent clause %d of clause %d.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [49 x i8] c"\0A Error: Split level of clause %d should be %d.\0A\00", align 1
@.str.18 = private unnamed_addr constant [61 x i8] c"\0A Error: Parent clause with number %d is not yet justified.\0A\00", align 1
@fol_OR = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@fol_AND = external global i32, align 4
@fol_NOT = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_FALSE = external global i32, align 4
@fol_ALL = external global i32, align 4
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"{*Sub Proof*}\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"{* Proof Checker *}\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"unsatisfiable\00", align 1
@.str.23 = private unnamed_addr constant [66 x i8] c"{* The problem is the correctness test for a single proof line *}\00", align 1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @pcheck_ConvertParentsInSPASSProof(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %EmptyClauses) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %EmptyClauses.addr = alloca %struct.LIST_HELP*, align 8
  %AllLists = alloca %struct.LIST_HELP*, align 8
  %Missing = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %EmptyClauses, %struct.LIST_HELP** %EmptyClauses.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %0)
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call)
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %1)
  %call3 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call1, %struct.LIST_HELP* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %AllLists, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %2)
  %call5 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call4)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllLists, align 8
  %call6 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call5, %struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %AllLists, align 8
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %4)
  %call8 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call7)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllLists, align 8
  %call9 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call8, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %AllLists, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllLists, align 8
  %call10 = call %struct.LIST_HELP* @pcheck_ClauseNumberMergeSort(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %AllLists, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllLists, align 8
  %call11 = call %struct.LIST_HELP* @pcheck_ConvertParentsInList(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Missing, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllLists, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Missing, align 8
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 12
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %dplist, align 8
  ret %struct.LIST_HELP* %1
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @pcheck_ClauseNumberMergeSort(%struct.LIST_HELP* %L) #0 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @clause_NumberSort(%struct.LIST_HELP* %0)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @pcheck_ConvertParentsInList(%struct.LIST_HELP* %List) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Size = alloca i32, align 4
  %Index = alloca i32, align 4
  %ClauseVector = alloca %struct.CLAUSE_HELP**, align 8
  %Missing = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  store i32 %call, i32* %Size, align 4
  %1 = load i32, i32* %Size, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %Size, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 8, %conv
  %conv2 = trunc i64 %mul to i32
  %call3 = call i8* @memory_Malloc(i32 %conv2)
  %3 = bitcast i8* %call3 to %struct.CLAUSE_HELP**
  store %struct.CLAUSE_HELP** %3, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  store i32 0, i32* %Index, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  %7 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %arrayidx = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %8, i64 %idxprom
  store %struct.CLAUSE_HELP* %6, %struct.CLAUSE_HELP** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %List.addr, align 8
  %10 = load i32, i32* %Index, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %Index, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %12 = bitcast %struct.CLAUSE_HELP** %11 to i8*
  %13 = load i32, i32* %Size, align 4
  %conv7 = sext i32 %13 to i64
  call void @qsort(i8* %12, i64 %conv7, i64 8, i32 (i8*, i8*)* @pcheck_CompareClauseNumber)
  %14 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %15 = load i32, i32* %Size, align 4
  %call8 = call %struct.LIST_HELP* @pcheck_ForceParentNumbersToPointersInVector(%struct.CLAUSE_HELP** %14, i32 %15)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Missing, align 8
  %16 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %17 = bitcast %struct.CLAUSE_HELP** %16 to i8*
  %18 = load i32, i32* %Size, align 4
  %conv9 = sext i32 %18 to i64
  %mul10 = mul i64 8, %conv9
  %conv11 = trunc i64 %mul10 to i32
  call void @memory_Free(i8* %17, i32 %conv11)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Missing, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %20
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @pcheck_ParentPointersToParentNumbers(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %ScanClauses = alloca %struct.LIST_HELP*, align 8
  %ScanParents = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  call void @pcheck_ClauseListRemoveFlag(%struct.LIST_HELP* %0, i32 64)
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %ScanClauses, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.15, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.17

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %call2 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %4, i32 64)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %call5 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call11 to %struct.CLAUSE_HELP*
  %call12 = call i32 @clause_Number(%struct.CLAUSE_HELP* %10)
  %conv = sext i32 %call12 to i64
  %11 = inttoptr i64 %conv to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %8, i8* %11)
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %14, i32 64)
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %ScanClauses, align 8
  br label %for.cond

for.end.17:                                       ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  ret %struct.LIST_HELP* %16
}

; Function Attrs: nounwind uwtable
define void @pcheck_ClauseListRemoveFlag(%struct.LIST_HELP* %Clauses, i32 %Flag) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flag.addr = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %3 = load i32, i32* %Flag.addr, align 4
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %2, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
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
define internal %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 6
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentCls, align 8
  ret %struct.LIST_HELP* %1
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @pcheck_ConvertTermListToClauseList(%struct.LIST_HELP* %ProofRest, i32* %Flags, i32* %Precedence) #0 {
entry:
  %ProofRest.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %ProofLine = alloca %struct.LIST_HELP*, align 8
  %ClauseTerm = alloca %struct.term*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Level = alloca i32, align 4
  %ClauseNumber = alloca i32, align 4
  %ParentLabels = alloca %struct.LIST_HELP*, align 8
  %ParentIds = alloca %struct.LIST_HELP*, align 8
  %ParentLits = alloca %struct.LIST_HELP*, align 8
  %Origin = alloca i32, align 4
  %ClauseLabel = alloca i8*, align 8
  store %struct.LIST_HELP* %ProofRest, %struct.LIST_HELP** %ProofRest.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Clauses, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %ProofLine, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call3 = call i8* @list_First(%struct.LIST_HELP* %3)
  store i8* %call3, i8** %ClauseLabel, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call4 = call i8* @list_Second(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.term*
  store %struct.term* %5, %struct.term** %ClauseTerm, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call6 = call %struct.CLAUSE_HELP* @clause_Null()
  %7 = bitcast %struct.CLAUSE_HELP* %call6 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call5, i8* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call7 = call i8* @list_Third(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %ParentLabels, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call8 = call i8* @list_Fourth(%struct.LIST_HELP* %10)
  %11 = ptrtoint i8* %call8 to i32
  store i32 %11, i32* %Level, align 4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofLine, align 8
  %call9 = call i8* @list_Fifth(%struct.LIST_HELP* %12)
  %13 = ptrtoint i8* %call9 to i32
  store i32 %13, i32* %Origin, align 4
  %14 = load %struct.term*, %struct.term** %ClauseTerm, align 8
  %15 = load i32*, i32** %Flags.addr, align 8
  %16 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call %struct.CLAUSE_HELP* @dfg_CreateClauseFromTerm(%struct.term* %14, i32 1, i32* %15, i32* %16)
  store %struct.CLAUSE_HELP* %call10, %struct.CLAUSE_HELP** %Clause, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %18 = load i32*, i32** %Flags.addr, align 8
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %17, i32* %18)
  %19 = load i8*, i8** %ClauseLabel, align 8
  %call11 = call i32 @pcheck_LabelToNumber(i8* %19)
  store i32 %call11, i32* %ClauseNumber, align 4
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %ParentIds, align 8
  %call13 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %ParentLits, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %while.body.18, %while.body
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLabels, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  br i1 %lnot17, label %while.body.18, label %while.end

while.body.18:                                    ; preds = %while.cond.14
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLabels, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %call20 = call i32 @pcheck_LabelToNumber(i8* %call19)
  %conv = sext i32 %call20 to i64
  %22 = inttoptr i64 %conv to i8*
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentIds, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %ParentIds, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* null, %struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %ParentLits, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLabels, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %ParentLabels, align 8
  br label %while.cond.14

while.end:                                        ; preds = %while.cond.14
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %27 = load i32, i32* %ClauseNumber, align 4
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %26, i32 %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentIds, align 8
  %call24 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %ParentIds, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentIds, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %29, %struct.LIST_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %31, %struct.LIST_HELP* %32)
  %33 = load i32, i32* %Origin, align 4
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %34, i32 0, i32 14
  store i32 %33, i32* %origin, align 4
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %36 = load i32, i32* %Level, align 4
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %35, i32 %36)
  %37 = load i32, i32* %Level, align 4
  %cmp = icmp sgt i32 %37, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_ClearSplitField(%struct.CLAUSE_HELP* %38)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %40 = load i32, i32* %Level, align 4
  call void @clause_SetSplitFieldBit(%struct.CLAUSE_HELP* %39, i32 %40)
  br label %if.end

if.else:                                          ; preds = %while.end
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetSplitField(%struct.CLAUSE_HELP* %41, i64* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %42, i32 64)
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %44 = bitcast %struct.CLAUSE_HELP* %43 to i8*
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call26 = call %struct.LIST_HELP* @list_Cons(i8* %44, %struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Clauses, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest.addr, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %ProofRest.addr, align 8
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call29 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Clauses, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call30 = call %struct.LIST_HELP* @pcheck_ParentNumbersToParents(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Clauses, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  ret %struct.LIST_HELP* %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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
define internal %struct.CLAUSE_HELP* @clause_Null() #1 {
entry:
  ret %struct.CLAUSE_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Third(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call)
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %call1)
  ret i8* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Fourth(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Third(%struct.LIST_HELP* %call)
  ret i8* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Fifth(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Fourth(%struct.LIST_HELP* %call)
  ret i8* %call1
}

declare %struct.CLAUSE_HELP* @dfg_CreateClauseFromTerm(%struct.term*, i32, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateWeight(%struct.CLAUSE_HELP* %Clause, i32* %Flags) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @clause_ComputeWeight(%struct.CLAUSE_HELP* %0, i32* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 1
  store i32 %call, i32* %weight, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_LabelToNumber(i8* %Label) #0 {
entry:
  %Label.addr = alloca i8*, align 8
  %Number = alloca i32, align 4
  store i8* %Label, i8** %Label.addr, align 8
  %0 = load i8*, i8** %Label.addr, align 8
  %call = call i32 @string_StringToInt(i8* %0, i32 0, i32* %Number)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0))
  %2 = load i8*, i8** %Label.addr, align 8
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i8* %2)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %Number, align 4
  ret i32 %3
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
define internal void @clause_SetNumber(%struct.CLAUSE_HELP* %Clause, i32 %Number) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %0, i32* %clausenumber, align 4
  ret void
}

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetParentClauses(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %PClauses) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %PClauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %PClauses, %struct.LIST_HELP** %PClauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClauses.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 6
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %parentCls, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %PLits) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %PLits.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %PLits, %struct.LIST_HELP** %PLits.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 7
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %parentLits, align 8
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
define internal void @clause_ClearSplitField(%struct.CLAUSE_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %splitfield_length, align 4
  %sub = sub i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 4
  %5 = load i64*, i64** %splitfield, align 8
  %arrayidx = getelementptr inbounds i64, i64* %5, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitFieldBit(%struct.CLAUSE_HELP* %Clause, i32 %n) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %n.addr = alloca i32, align 4
  %field = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 @clause_ComputeSplitFieldAddress(i32 %0, i32* %field)
  store i32 %call, i32* %n.addr, align 4
  %1 = load i32, i32* %field, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 5
  %3 = load i32, i32* %splitfield_length, align 4
  %cmp = icmp uge i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %field, align 4
  %add = add i32 %5, 1
  call void @clause_ExpandSplitField(%struct.CLAUSE_HELP* %4, i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %field, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 4
  %8 = load i64*, i64** %splitfield, align 8
  %arrayidx = getelementptr inbounds i64, i64* %8, i64 %idxprom
  %9 = load i64, i64* %arrayidx, align 8
  %10 = load i32, i32* %n.addr, align 4
  %sh_prom = zext i32 %10 to i64
  %shl = shl i64 1, %sh_prom
  %or = or i64 %9, %shl
  %11 = load i32, i32* %field, align 4
  %idxprom1 = zext i32 %11 to i64
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %12, i32 0, i32 4
  %13 = load i64*, i64** %splitfield2, align 8
  %arrayidx3 = getelementptr inbounds i64, i64* %13, i64 %idxprom1
  store i64 %or, i64* %arrayidx3, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitField(%struct.CLAUSE_HELP* %Clause, i64* %B, i32 %Length) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %B.addr = alloca i64*, align 8
  %Length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i64* %B, i64** %B.addr, align 8
  store i32 %Length, i32* %Length.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %splitfield_length, align 4
  %2 = load i32, i32* %Length.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 4
  %4 = load i64*, i64** %splitfield, align 8
  %cmp1 = icmp ne i64* %4, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 4
  %6 = load i64*, i64** %splitfield3, align 8
  %7 = bitcast i64* %6 to i8*
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 5
  %9 = load i32, i32* %splitfield_length4, align 4
  %conv = zext i32 %9 to i64
  %mul = mul i64 8, %conv
  %conv5 = trunc i64 %mul to i32
  call void @memory_Free(i8* %7, i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %10 = load i32, i32* %Length.addr, align 4
  %cmp6 = icmp ne i32 %10, 0
  br i1 %cmp6, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %11 = load i32, i32* %Length.addr, align 4
  %conv9 = zext i32 %11 to i64
  %mul10 = mul i64 8, %conv9
  %conv11 = trunc i64 %mul10 to i32
  %call = call i8* @memory_Malloc(i32 %conv11)
  %12 = bitcast i8* %call to i64*
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield12 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %13, i32 0, i32 4
  store i64* %12, i64** %splitfield12, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield13 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 4
  store i64* null, i64** %splitfield13, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.8
  %15 = load i32, i32* %Length.addr, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length15 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %16, i32 0, i32 5
  store i32 %15, i32* %splitfield_length15, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.14, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %Length.addr, align 4
  %cmp17 = icmp ult i32 %17, %18
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load i64*, i64** %B.addr, align 8
  %arrayidx = getelementptr inbounds i64, i64* %20, i64 %idxprom
  %21 = load i64, i64* %arrayidx, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %22 to i64
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %23, i32 0, i32 4
  %24 = load i64*, i64** %splitfield20, align 8
  %arrayidx21 = getelementptr inbounds i64, i64* %24, i64 %idxprom19
  store i64 %21, i64* %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_RemoveFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #1 {
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
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags1 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 8
  %4 = load i32, i32* %flags1, align 4
  %5 = load i32, i32* %Flag.addr, align 4
  %sub = sub i32 %4, %5
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 8
  store i32 %sub, i32* %flags2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @pcheck_ParentNumbersToParents(%struct.LIST_HELP* %Proof) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %ScanClauses = alloca %struct.LIST_HELP*, align 8
  %ProofLength = alloca i32, align 4
  %Position = alloca i32, align 4
  %ClauseVector = alloca %struct.CLAUSE_HELP**, align 8
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call2 = call i32 @list_Length(%struct.LIST_HELP* %1)
  store i32 %call2, i32* %ProofLength, align 4
  %2 = load i32, i32* %ProofLength, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 8
  %conv3 = trunc i64 %mul to i32
  %call4 = call i8* @memory_Malloc(i32 %conv3)
  %3 = bitcast i8* %call4 to %struct.CLAUSE_HELP**
  store %struct.CLAUSE_HELP** %3, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %ScanClauses, align 8
  store i32 0, i32* %Position, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %8 = load i32, i32* %Position, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %arrayidx = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %9, i64 %idxprom
  store %struct.CLAUSE_HELP* %7, %struct.CLAUSE_HELP** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %ScanClauses, align 8
  %11 = load i32, i32* %Position, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %Position, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %13 = bitcast %struct.CLAUSE_HELP** %12 to i8*
  %14 = load i32, i32* %ProofLength, align 4
  %conv9 = sext i32 %14 to i64
  call void @qsort(i8* %13, i64 %conv9, i64 8, i32 (i8*, i8*)* @pcheck_CompareClauseNumber)
  %15 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %16 = load i32, i32* %ProofLength, align 4
  call void @pcheck_ParentNumbersToPointersInVector(%struct.CLAUSE_HELP** %15, i32 %16)
  %17 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector, align 8
  %18 = bitcast %struct.CLAUSE_HELP** %17 to i8*
  %19 = load i32, i32* %ProofLength, align 4
  %conv10 = sext i32 %19 to i64
  %mul11 = mul i64 %conv10, 8
  %conv12 = trunc i64 %mul11 to i32
  call void @memory_Free(i8* %18, i32 %conv12)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %21
}

; Function Attrs: nounwind uwtable
define i32 @pcheck_BuildTableauFromProof(%struct.LIST_HELP* %Proof, %struct.TABLEAU_HELP** %Tableau) #0 {
entry:
  %retval = alloca i32, align 4
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %Tableau.addr = alloca %struct.TABLEAU_HELP**, align 8
  %ProofRest = alloca %struct.LIST_HELP*, align 8
  %SplitPos = alloca %struct.TABLEAU_HELP*, align 8
  %Path = alloca %struct.TABPATH_NODE*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %ClauseLevel = alloca i32, align 4
  %SplitLevel = alloca i32, align 4
  %ProofDepth = alloca i32, align 4
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  store %struct.TABLEAU_HELP** %Tableau, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  %1 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  store %struct.TABLEAU_HELP* %call1, %struct.TABLEAU_HELP** %1, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call2 = call i32 @pcheck_MaxSplitLevel(%struct.LIST_HELP* %2)
  store i32 %call2, i32* %ProofDepth, align 4
  %call3 = call %struct.TABLEAU_HELP* @tab_CreateNode()
  %3 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  store %struct.TABLEAU_HELP* %call3, %struct.TABLEAU_HELP** %3, align 8
  %4 = load i32, i32* %ProofDepth, align 4
  %5 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %5, align 8
  %call4 = call %struct.TABPATH_NODE* @tab_PathCreate(i32 %4, %struct.TABLEAU_HELP* %6)
  store %struct.TABPATH_NODE* %call4, %struct.TABPATH_NODE** %Path, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %ProofRest, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.56, %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %call7 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %9)
  store i32 %call7, i32* %SplitLevel, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call8 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %11, %struct.CLAUSE_HELP** %Clause, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call9 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %12)
  store i32 %call9, i32* %ClauseLevel, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call10 = call i32 @pcheck_ClauseIsFromSplit(%struct.CLAUSE_HELP* %13)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.50

if.then.12:                                       ; preds = %while.body
  %14 = load i32, i32* %ClauseLevel, align 4
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.12
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call15 = call i32 @clause_Number(%struct.CLAUSE_HELP* %16)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0), i32 %call15)
  call void @misc_Error()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.12
  %17 = load i32, i32* %ClauseLevel, align 4
  %18 = load i32, i32* %SplitLevel, align 4
  %add = add nsw i32 %18, 1
  %cmp17 = icmp sgt i32 %17, %add
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end.16
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call20 = call i32 @clause_Number(%struct.CLAUSE_HELP* %20)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i32 0, i32 0), i32 %call20)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end.16
  %21 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %22 = load i32, i32* %ClauseLevel, align 4
  %sub = sub nsw i32 %22, 1
  %call22 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %21, i32 %sub)
  store %struct.TABLEAU_HELP* %call22, %struct.TABLEAU_HELP** %SplitPos, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call23 = call i32 @pcheck_ClauseIsFromLeftSplit(%struct.CLAUSE_HELP* %23)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %24 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %call26 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.32, label %if.then.28

if.then.28:                                       ; preds = %if.then.25
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fflush(%struct._IO_FILE* %25)
  %26 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %call30 = call %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %26)
  %call31 = call i32 @clause_Number(%struct.CLAUSE_HELP* %call30)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i32 0, i32 0), i32 %call31)
  call void @misc_Error()
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.then.25
  %27 = load i32, i32* %ClauseLevel, align 4
  %sub33 = sub nsw i32 %27, 1
  %28 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %call34 = call %struct.TABPATH_NODE* @tab_PathPrefix(i32 %sub33, %struct.TABPATH_NODE* %28)
  store %struct.TABPATH_NODE* %call34, %struct.TABPATH_NODE** %Path, align 8
  %29 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call35 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %30)
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %call35)
  %31 = bitcast i8* %call36 to %struct.CLAUSE_HELP*
  call void @tab_SetSplitClause(%struct.TABLEAU_HELP* %29, %struct.CLAUSE_HELP* %31)
  %32 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @tab_SetLeftSplitClause(%struct.TABLEAU_HELP* %32, %struct.CLAUSE_HELP* %33)
  %34 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  call void @tab_AddSplitAtCursor(%struct.TABPATH_NODE* %34, i32 1)
  br label %if.end.49

if.else:                                          ; preds = %if.end.21
  %35 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %call37 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %35)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.else
  %36 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %call40 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.then.39
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fflush(%struct._IO_FILE* %37)
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call44 = call i32 @clause_Number(%struct.CLAUSE_HELP* %38)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i32 0, i32 0), i32 %call44)
  call void @misc_Error()
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.then.39
  %39 = load i32, i32* %ClauseLevel, align 4
  %sub46 = sub nsw i32 %39, 1
  %40 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %call47 = call %struct.TABPATH_NODE* @tab_PathPrefix(i32 %sub46, %struct.TABPATH_NODE* %40)
  store %struct.TABPATH_NODE* %call47, %struct.TABPATH_NODE** %Path, align 8
  %41 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  call void @tab_AddSplitAtCursor(%struct.TABPATH_NODE* %41, i32 0)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.45, %if.else
  %42 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SplitPos, align 8
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @tab_AddRightSplitClause(%struct.TABLEAU_HELP* %42, %struct.CLAUSE_HELP* %43)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.32
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %while.body
  %44 = load i32, i32* %ClauseLevel, align 4
  %45 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %call51 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %45)
  %cmp52 = icmp sgt i32 %44, %call51
  br i1 %cmp52, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.50
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call54 = call i32 @fflush(%struct._IO_FILE* %46)
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call55 = call i32 @clause_Number(%struct.CLAUSE_HELP* %47)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i32 0, i32 0), i32 %call55)
  call void @misc_Error()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.53, %if.end.50
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %49 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  call void @tab_AddClauseOnItsLevel(%struct.CLAUSE_HELP* %48, %struct.TABPATH_NODE* %49)
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProofRest, align 8
  %call57 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %ProofRest, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %51 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  call void @tab_PathDelete(%struct.TABPATH_NODE* %51)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %52 = load i32, i32* %retval
  ret i32 %52
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_EmptyTableau() #1 {
entry:
  ret %struct.TABLEAU_HELP* null
}

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_MaxSplitLevel(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Max = alloca i32, align 4
  %Act = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32 0, i32* %Max, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %call2 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %Act, align 4
  %3 = load i32, i32* %Act, align 4
  %4 = load i32, i32* %Max, align 4
  %cmp = icmp sgt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %Act, align 4
  store i32 %5, i32* %Max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %Max, align 4
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_CreateNode() #1 {
entry:
  %Node = alloca %struct.TABLEAU_HELP*, align 8
  %call = call i8* @memory_Malloc(i32 56)
  %0 = bitcast i8* %call to %struct.TABLEAU_HELP*
  store %struct.TABLEAU_HELP* %0, %struct.TABLEAU_HELP** %Node, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %RightBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 5
  store %struct.TABLEAU_HELP* null, %struct.TABLEAU_HELP** %RightBranch, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %LeftBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %2, i32 0, i32 4
  store %struct.TABLEAU_HELP* null, %struct.TABLEAU_HELP** %LeftBranch, align 8
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %SplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %3, i32 0, i32 1
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %SplitClause, align 8
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %LeftSplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %4, i32 0, i32 2
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %LeftSplitClause, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %RightSplitClauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %5, i32 0, i32 3
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %RightSplitClauses, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  %Clauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %6, i32 0, i32 0
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Clauses, align 8
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Node, align 8
  ret %struct.TABLEAU_HELP* %7
}

declare %struct.TABPATH_NODE* @tab_PathCreate(i32, %struct.TABLEAU_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_PathLength(%struct.TABPATH_NODE* %TabPath) #1 {
entry:
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %Length, align 4
  ret i32 %1
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

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_ClauseIsFromSplit(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @pcheck_ClauseIsFromRightSplit(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @pcheck_ClauseIsFromLeftSplit(%struct.CLAUSE_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %TabPath, i32 %n) #1 {
entry:
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  %n.addr = alloca i32, align 4
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i32, i32* %n.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Path = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %1, i32 0, i32 0
  %2 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Path, align 8
  %arrayidx = getelementptr inbounds %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %2, i64 %idxprom
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %arrayidx, align 8
  ret %struct.TABLEAU_HELP* %3
}

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_ClauseIsFromLeftSplit(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @pcheck_MaxParentSplitLevel(%struct.CLAUSE_HELP* %1)
  %cmp = icmp ugt i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %LeftBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 4
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %LeftBranch, align 8
  %call = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  %cmp = icmp eq %struct.TABLEAU_HELP* %1, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %SplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 1
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABPATH_NODE* @tab_PathPrefix(i32 %Level, %struct.TABPATH_NODE* %TabPath) #1 {
entry:
  %Level.addr = alloca i32, align 4
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store i32 %Level, i32* %Level.addr, align 4
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %0 = load i32, i32* %Level.addr, align 4
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %1, i32 0, i32 1
  store i32 %0, i32* %Length, align 4
  %2 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  ret %struct.TABPATH_NODE* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetSplitClause(%struct.TABLEAU_HELP* %Tab, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %SplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 1
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %SplitClause, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetLeftSplitClause(%struct.TABLEAU_HELP* %T, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %LeftSplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 2
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %LeftSplitClause, align 8
  ret void
}

declare void @tab_AddSplitAtCursor(%struct.TABPATH_NODE*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %RightBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 5
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %RightBranch, align 8
  %call = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  %cmp = icmp eq %struct.TABLEAU_HELP* %1, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_AddRightSplitClause(%struct.TABLEAU_HELP* %T, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %RightSplitClauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %2, i32 0, i32 3
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightSplitClauses, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %RightSplitClauses1 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %4, i32 0, i32 3
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %RightSplitClauses1, align 8
  ret void
}

declare void @tab_AddClauseOnItsLevel(%struct.CLAUSE_HELP*, %struct.TABPATH_NODE*) #2

declare void @tab_PathDelete(%struct.TABPATH_NODE*) #2

; Function Attrs: nounwind uwtable
define i32 @pcheck_TableauProof(%struct.TABLEAU_HELP** %Tableau, %struct.LIST_HELP* %Proof) #0 {
entry:
  %retval = alloca i32, align 4
  %Tableau.addr = alloca %struct.TABLEAU_HELP**, align 8
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %RedundantClauses = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %UnmarkedSplits = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP** %Tableau, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  %0 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %0, align 8
  call void @tab_LabelNodes(%struct.TABLEAU_HELP* %1)
  %2 = load i32, i32* @pcheck_GenNamedCg, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %3, align 8
  %5 = load i8*, i8** @pcheck_CgName, align 8
  %6 = load i32, i32* @pcheck_GraphFormat, align 4
  call void @tab_WriteTableau(%struct.TABLEAU_HELP* %4, i8* %5, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %RedundantClauses, align 8
  %7 = load i32, i32* @pcheck_Quiet, align 4
  %tobool1 = icmp ne i32 %7, 0
  br i1 %tobool1, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %11 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %10, align 8
  %call6 = call %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP* %11, %struct.LIST_HELP** %RedundantClauses)
  %12 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  store %struct.TABLEAU_HELP* %call6, %struct.TABLEAU_HELP** %12, align 8
  %13 = load i32, i32* @pcheck_Quiet, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  %call9 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.5
  %14 = load i32, i32* @pcheck_Quiet, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %if.end.10
  %17 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %18 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %17, align 8
  %call16 = call %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %18, %struct.LIST_HELP** %RedundantClauses)
  %19 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  store %struct.TABLEAU_HELP* %call16, %struct.TABLEAU_HELP** %19, align 8
  %20 = load i32, i32* @pcheck_Quiet, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.end.20, label %if.then.18

if.then.18:                                       ; preds = %if.end.15
  %call19 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.end.15
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %21)
  %call21 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %EmptyClauses, align 8
  %22 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %23 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %22, align 8
  call void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP* %23, %struct.LIST_HELP** %EmptyClauses)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  call void @pcheck_ClauseListRemoveFlag(%struct.LIST_HELP* %24, i32 64)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @pcheck_MarkRecursive(%struct.LIST_HELP* %25)
  %call22 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %UnmarkedSplits, align 8
  %26 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %27 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %26, align 8
  call void @pcheck_CollectUnmarkedSplits(%struct.TABLEAU_HELP* %27, %struct.LIST_HELP** %UnmarkedSplits)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UnmarkedSplits, align 8
  call void @pcheck_MarkRecursive(%struct.LIST_HELP* %28)
  %29 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %30 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %29, align 8
  call void @pcheck_RemoveUnmarkedFromTableau(%struct.TABLEAU_HELP* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UnmarkedSplits, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %32)
  %33 = load i32, i32* @pcheck_GenRedCg, align 4
  %tobool23 = icmp ne i32 %33, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  %34 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %35 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %34, align 8
  %36 = load i8*, i8** @pcheck_RedCgName, align 8
  %37 = load i32, i32* @pcheck_GraphFormat, align 4
  call void @tab_WriteTableau(%struct.TABLEAU_HELP* %35, i8* %36, i32 %37)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.20
  %38 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %39 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %38, align 8
  call void @tab_SetSplitLevels(%struct.TABLEAU_HELP* %39)
  %40 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %41 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %40, align 8
  call void @pcheck_SplitLevels(%struct.TABLEAU_HELP* %41)
  %42 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %43 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %42, align 8
  call void @tab_CheckEmpties(%struct.TABLEAU_HELP* %43)
  %44 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %45 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %44, align 8
  %call26 = call i32 @tab_IsClosed(%struct.TABLEAU_HELP* %45)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %if.end.25
  %call29 = call i32 @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.25
  %46 = load i32, i32* @pcheck_Quiet, align 4
  %tobool31 = icmp ne i32 %46, 0
  br i1 %tobool31, label %if.end.35, label %if.then.32

if.then.32:                                       ; preds = %if.end.30
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fflush(%struct._IO_FILE* %48)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.30
  %49 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Tableau.addr, align 8
  %50 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %49, align 8
  %call36 = call i32 @pcheck_TableauJustifications(%struct.TABLEAU_HELP* %50)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %if.end.35
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %if.end.35
  %51 = load i32, i32* @pcheck_Quiet, align 4
  %tobool40 = icmp ne i32 %51, 0
  br i1 %tobool40, label %if.end.43, label %if.then.41

if.then.41:                                       ; preds = %if.end.39
  %call42 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.end.39
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.38, %if.then.28
  %52 = load i32, i32* %retval
  ret i32 %52
}

declare void @tab_LabelNodes(%struct.TABLEAU_HELP*) #2

declare void @tab_WriteTableau(%struct.TABLEAU_HELP*, i8*, i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP*, %struct.LIST_HELP**) #2

declare i32 @puts(i8*) #2

declare %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP*, %struct.LIST_HELP**) #2

declare void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP*, %struct.LIST_HELP**) #2

; Function Attrs: nounwind uwtable
define void @pcheck_MarkRecursive(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %2, %struct.CLAUSE_HELP** %Clause, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call2 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %3, i32 64)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call4 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %4)
  call void @pcheck_MarkRecursive(%struct.LIST_HELP* %call4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %5, i32 64)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pcheck_CollectUnmarkedSplits(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Splits) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Splits.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Splits, %struct.LIST_HELP*** %Splits.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %call5 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %4, i32 64)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.13, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %call8 = call i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %land.lhs.true
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Splits.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %8, align 8
  %call12 = call %struct.LIST_HELP* @list_Cons(i8* %call11, %struct.LIST_HELP* %9)
  %10 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Splits.addr, align 8
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %10, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call15 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %12)
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Splits.addr, align 8
  call void @pcheck_CollectUnmarkedSplits(%struct.TABLEAU_HELP* %call15, %struct.LIST_HELP** %13)
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call16 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %14)
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Splits.addr, align 8
  call void @pcheck_CollectUnmarkedSplits(%struct.TABLEAU_HELP* %call16, %struct.LIST_HELP** %15)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pcheck_RemoveUnmarkedFromTableau(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %2)
  %call2 = call %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP* %call1, i32 (i8*)* bitcast (i32 (%struct.CLAUSE_HELP*)* @pcheck_ClauseIsUnmarked to i32 (i8*)*))
  call void @tab_SetClauses(%struct.TABLEAU_HELP* %1, %struct.LIST_HELP* %call2)
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call3 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %3)
  call void @pcheck_RemoveUnmarkedFromTableau(%struct.TABLEAU_HELP* %call3)
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %4)
  call void @pcheck_RemoveUnmarkedFromTableau(%struct.TABLEAU_HELP* %call4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @tab_SetSplitLevels(%struct.TABLEAU_HELP*) #2

; Function Attrs: nounwind uwtable
define internal void @pcheck_SplitLevels(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %CorrectLevel = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %5)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call8 = call i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.17, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call11 = call i32 @pcheck_MaxParentSplitLevel(%struct.CLAUSE_HELP* %7)
  store i32 %call11, i32* %CorrectLevel, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call12 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %8)
  %9 = load i32, i32* %CorrectLevel, align 4
  %cmp = icmp ne i32 %call12, %9
  br i1 %cmp, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %10)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call15 = call i32 @clause_Number(%struct.CLAUSE_HELP* %11)
  %12 = load i32, i32* %CorrectLevel, align 4
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.17, i32 0, i32 0), i32 %call15, i32 %12)
  call void @misc_Error()
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.10
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call19 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %14)
  call void @pcheck_SplitLevels(%struct.TABLEAU_HELP* %call19)
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call20 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %15)
  call void @pcheck_SplitLevels(%struct.TABLEAU_HELP* %call20)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare void @tab_CheckEmpties(%struct.TABLEAU_HELP*) #2

declare i32 @tab_IsClosed(%struct.TABLEAU_HELP*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_TableauJustifications(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Path = alloca %struct.TABPATH_NODE*, align 8
  %Ok = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_Depth(%struct.TABLEAU_HELP* %0)
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.TABPATH_NODE* @tab_PathCreate(i32 %call, %struct.TABLEAU_HELP* %1)
  store %struct.TABPATH_NODE* %call1, %struct.TABPATH_NODE** %Path, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %3 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  %call2 = call i32 @pcheck_TableauJustificationsRec(%struct.TABLEAU_HELP* %2, %struct.TABPATH_NODE* %3)
  store i32 %call2, i32* %Ok, align 4
  %4 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path, align 8
  call void @tab_PathDelete(%struct.TABPATH_NODE* %4)
  %5 = load i32, i32* %Ok, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define void @pcheck_TableauToProofTask(%struct.TABLEAU_HELP* %T, i8* %ProofFileName, i8* %DestPrefix) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %ProofFileName.addr = alloca i8*, align 8
  %DestPrefix.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Axioms = alloca %struct.LIST_HELP*, align 8
  %Conj = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i8* %ProofFileName, i8** %ProofFileName.addr, align 8
  store i8* %DestPrefix, i8** %DestPrefix.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %3 = load i8*, i8** %ProofFileName.addr, align 8
  %4 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_SplitToProblems(%struct.TABLEAU_HELP* %2, i8* %3, i8* %4)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call8 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call9 = call i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.22, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call11 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %10)
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.22, label %if.then.14

if.then.14:                                       ; preds = %land.lhs.true
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call15 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %11)
  %call16 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call15)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Axioms, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %call17 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Axioms, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Help, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %call18 = call %struct.LIST_HELP* @pcheck_ClauseListToTermList(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Axioms, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  call void @list_Delete(%struct.LIST_HELP* %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call19 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %16)
  %17 = bitcast %struct.term* %call19 to i8*
  %call20 = call %struct.LIST_HELP* @list_List(i8* %17)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Conj, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call21 = call i32 @clause_Number(%struct.CLAUSE_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  %21 = load i8*, i8** %ProofFileName.addr, align 8
  %22 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_SaveNumberedDFGProblem(i32 %call21, %struct.LIST_HELP* %19, %struct.LIST_HELP* %20, i8* %21, i8* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call24 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %26)
  %27 = load i8*, i8** %ProofFileName.addr, align 8
  %28 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_TableauToProofTask(%struct.TABLEAU_HELP* %call24, i8* %27, i8* %28)
  %29 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call25 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %29)
  %30 = load i8*, i8** %ProofFileName.addr, align 8
  %31 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_TableauToProofTask(%struct.TABLEAU_HELP* %call25, i8* %30, i8* %31)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %call = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  %cmp = icmp eq %struct.TABLEAU_HELP* %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %T) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @pcheck_SplitToProblems(%struct.TABLEAU_HELP* %T, i8* %ProofFileName, i8* %DestPrefix) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %ProofFileName.addr = alloca i8*, align 8
  %DestPrefix.addr = alloca i8*, align 8
  %SplitClauseTerm = alloca %struct.term*, align 8
  %LeftClauseTerm = alloca %struct.term*, align 8
  %RightClauseTerm = alloca %struct.term*, align 8
  %Equiv = alloca %struct.term*, align 8
  %Disj = alloca %struct.term*, align 8
  %Tmp = alloca %struct.term*, align 8
  %Conj = alloca %struct.LIST_HELP*, align 8
  %Args = alloca %struct.LIST_HELP*, align 8
  %Negations = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i8* %ProofFileName, i8** %ProofFileName.addr, align 8
  store i8* %DestPrefix, i8** %DestPrefix.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %0)
  %call1 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %call)
  store %struct.term* %call1, %struct.term** %SplitClauseTerm, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %1)
  %call3 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %call2)
  store %struct.term* %call3, %struct.term** %LeftClauseTerm, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %2)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Negations, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Negations, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Negations, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  %call7 = call i32 @pcheck_IsRightSplitHalf(%struct.CLAUSE_HELP* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Negations, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Negations, align 8
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call10 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %7)
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %call10)
  %8 = bitcast i8* %call11 to %struct.CLAUSE_HELP*
  %call12 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %8)
  store %struct.term* %call12, %struct.term** %RightClauseTerm, align 8
  %call13 = call i32 @fol_Or()
  %9 = load %struct.term*, %struct.term** %LeftClauseTerm, align 8
  %10 = bitcast %struct.term* %9 to i8*
  %11 = load %struct.term*, %struct.term** %RightClauseTerm, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %call14 = call %struct.LIST_HELP* @list_List(i8* %12)
  %call15 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %call14)
  %call16 = call %struct.term* @term_Create(i32 %call13, %struct.LIST_HELP* %call15)
  store %struct.term* %call16, %struct.term** %Disj, align 8
  %call17 = call i32 @fol_Equiv()
  %13 = load %struct.term*, %struct.term** %SplitClauseTerm, align 8
  %14 = bitcast %struct.term* %13 to i8*
  %15 = load %struct.term*, %struct.term** %Disj, align 8
  %16 = bitcast %struct.term* %15 to i8*
  %call18 = call %struct.LIST_HELP* @list_List(i8* %16)
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %14, %struct.LIST_HELP* %call18)
  %call20 = call %struct.term* @term_Create(i32 %call17, %struct.LIST_HELP* %call19)
  store %struct.term* %call20, %struct.term** %Equiv, align 8
  %17 = load %struct.term*, %struct.term** %Equiv, align 8
  %18 = bitcast %struct.term* %17 to i8*
  %call21 = call %struct.LIST_HELP* @list_List(i8* %18)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Conj, align 8
  %19 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call22 = call %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %19)
  %call23 = call i32 @clause_Number(%struct.CLAUSE_HELP* %call22)
  %call24 = call %struct.LIST_HELP* @list_Nil()
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  %21 = load i8*, i8** %ProofFileName.addr, align 8
  %22 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_SaveNumberedDFGProblem(i32 %call23, %struct.LIST_HELP* %call24, %struct.LIST_HELP* %20, i8* %21, i8* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %call25 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Args, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Negations, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.52, label %if.then.28

if.then.28:                                       ; preds = %if.end
  %25 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call29 = call %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %25)
  %call30 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %call29)
  store %struct.term* %call30, %struct.term** %LeftClauseTerm, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Negations, align 8
  %call31 = call %struct.LIST_HELP* @pcheck_ClauseListToTermList(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Args, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else

if.then.35:                                       ; preds = %if.then.28
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call36 to %struct.term*
  store %struct.term* %29, %struct.term** %Tmp, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  br label %if.end.39

if.else:                                          ; preds = %if.then.28
  %call37 = call i32 @fol_And()
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call38 = call %struct.term* @term_Create(i32 %call37, %struct.LIST_HELP* %31)
  store %struct.term* %call38, %struct.term** %Tmp, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.35
  %call40 = call i32 @fol_Not()
  %32 = load %struct.term*, %struct.term** %Tmp, align 8
  %33 = bitcast %struct.term* %32 to i8*
  %call41 = call %struct.LIST_HELP* @list_List(i8* %33)
  %call42 = call %struct.term* @term_Create(i32 %call40, %struct.LIST_HELP* %call41)
  store %struct.term* %call42, %struct.term** %Tmp, align 8
  %call43 = call i32 @fol_Implies()
  %34 = load %struct.term*, %struct.term** %Tmp, align 8
  %35 = bitcast %struct.term* %34 to i8*
  %36 = load %struct.term*, %struct.term** %LeftClauseTerm, align 8
  %37 = bitcast %struct.term* %36 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %37)
  %call45 = call %struct.LIST_HELP* @list_Cons(i8* %35, %struct.LIST_HELP* %call44)
  %call46 = call %struct.term* @term_Create(i32 %call43, %struct.LIST_HELP* %call45)
  store %struct.term* %call46, %struct.term** %Equiv, align 8
  %38 = load %struct.term*, %struct.term** %Equiv, align 8
  %39 = bitcast %struct.term* %38 to i8*
  %call47 = call %struct.LIST_HELP* @list_List(i8* %39)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %Conj, align 8
  %40 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call48 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %40)
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %call48)
  %41 = bitcast i8* %call49 to %struct.CLAUSE_HELP*
  %call50 = call i32 @clause_Number(%struct.CLAUSE_HELP* %41)
  %call51 = call %struct.LIST_HELP* @list_Nil()
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  %43 = load i8*, i8** %ProofFileName.addr, align 8
  %44 = load i8*, i8** %DestPrefix.addr, align 8
  call void @pcheck_SaveNumberedDFGProblem(i32 %call50, %struct.LIST_HELP* %call51, %struct.LIST_HELP* %42, i8* %43, i8* %44)
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %45)
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.39, %if.end
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %T) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Clauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  %1 = load i32, i32* %origin, align 4
  %cmp = icmp eq i32 %1, 15
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @pcheck_ClauseListToTermList(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Terms = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Terms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  %call3 = call %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %2)
  %3 = bitcast %struct.term* %call3 to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Terms, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  ret %struct.LIST_HELP* %6
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
define internal %struct.term* @pcheck_ClauseToTerm(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %LitScan = alloca i32, align 4
  %Args = alloca %struct.LIST_HELP*, align 8
  %Lit = alloca %struct.term*, align 8
  %ClauseTerm = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Args, align 8
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %LitScan, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %LitScan, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %0, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %LitScan, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %2, i32 %3)
  %call4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Lit, align 8
  %4 = load %struct.term*, %struct.term** %Lit, align 8
  %call5 = call %struct.term* @term_Copy(%struct.term* %4)
  %5 = bitcast %struct.term* %call5 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Args, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %LitScan, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %LitScan, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call8 = call i32 @fol_False()
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %call10 = call %struct.term* @term_Create(i32 %call8, %struct.LIST_HELP* %call9)
  %9 = bitcast %struct.term* %call10 to i8*
  %call11 = call %struct.LIST_HELP* @list_List(i8* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Args, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %12, %struct.term** %ClauseTerm, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  call void @list_Delete(%struct.LIST_HELP* %13)
  br label %if.end.19

if.else:                                          ; preds = %if.end
  %call17 = call i32 @fol_Or()
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Args, align 8
  %call18 = call %struct.term* @term_Create(i32 %call17, %struct.LIST_HELP* %14)
  store %struct.term* %call18, %struct.term** %ClauseTerm, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.15
  %15 = load %struct.term*, %struct.term** %ClauseTerm, align 8
  %call20 = call %struct.term* @pcheck_UnivClosure(%struct.term* %15)
  store %struct.term* %call20, %struct.term** %ClauseTerm, align 8
  %16 = load %struct.term*, %struct.term** %ClauseTerm, align 8
  ret %struct.term* %16
}

; Function Attrs: nounwind uwtable
define internal void @pcheck_SaveNumberedDFGProblem(i32 %Number, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Conjectures, i8* %ProofFileName, i8* %DestPrefix) #0 {
entry:
  %Number.addr = alloca i32, align 4
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP*, align 8
  %ProofFileName.addr = alloca i8*, align 8
  %DestPrefix.addr = alloca i8*, align 8
  %Filename = alloca i8*, align 8
  %Tmp = alloca i8*, align 8
  %NumStr = alloca i8*, align 8
  %File = alloca %struct._IO_FILE*, align 8
  store i32 %Number, i32* %Number.addr, align 4
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Conjectures, %struct.LIST_HELP** %Conjectures.addr, align 8
  store i8* %ProofFileName, i8** %ProofFileName.addr, align 8
  store i8* %DestPrefix, i8** %DestPrefix.addr, align 8
  %0 = load i32, i32* %Number.addr, align 4
  %call = call i8* @string_IntToString(i32 %0)
  store i8* %call, i8** %NumStr, align 8
  %1 = load i8*, i8** %ProofFileName.addr, align 8
  %2 = load i8*, i8** %NumStr, align 8
  %call1 = call i8* @pcheck_GenericFilename(i8* %1, i8* %2)
  store i8* %call1, i8** %Tmp, align 8
  %3 = load i8*, i8** %DestPrefix.addr, align 8
  %4 = load i8*, i8** %Tmp, align 8
  %call2 = call i8* @string_Conc(i8* %3, i8* %4)
  store i8* %call2, i8** %Filename, align 8
  %5 = load i8*, i8** %Filename, align 8
  %call3 = call %struct._IO_FILE* @misc_OpenFile(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %File, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  call void @fol_FPrintDFGProblem(%struct._IO_FILE* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.23, i32 0, i32 0), %struct.LIST_HELP* %7, %struct.LIST_HELP* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %10 = load i8*, i8** %Filename, align 8
  call void @misc_CloseFile(%struct._IO_FILE* %9, i8* %10)
  %11 = load i8*, i8** %NumStr, align 8
  call void @string_StringFree(i8* %11)
  %12 = load i8*, i8** %Tmp, align 8
  call void @string_StringFree(i8* %12)
  %13 = load i8*, i8** %Filename, align 8
  call void @string_StringFree(i8* %13)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %RightBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 5
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %RightBranch, align 8
  ret %struct.TABLEAU_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %Tab) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %LeftBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 4
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %LeftBranch, align 8
  ret %struct.TABLEAU_HELP* %1
}

; Function Attrs: nounwind uwtable
define i32 @pcheck_SeqProofDepth(%struct.LIST_HELP* %Proof) #0 {
entry:
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %Max = alloca i32, align 4
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  store i32 0, i32* %Max, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %call2 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %2)
  %3 = load i32, i32* %Max, align 4
  %cmp = icmp ugt i32 %call2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  %call4 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %5)
  store i32 %call4, i32* %Max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Proof.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %Max, align 4
  ret i32 %7
}

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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @pcheck_ReduceSPASSProof(%struct.LIST_HELP* %Proof) #0 {
entry:
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %RedundantClauses = alloca %struct.LIST_HELP*, align 8
  %ReducedProof = alloca %struct.LIST_HELP*, align 8
  %Tableau = alloca %struct.TABLEAU_HELP*, align 8
  %UnmarkedSplits = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  %call = call i32 @pcheck_BuildTableauFromProof(%struct.LIST_HELP* %0, %struct.TABLEAU_HELP** %Tableau)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %RedundantClauses, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  %call3 = call %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP* %2, %struct.LIST_HELP** %RedundantClauses)
  store %struct.TABLEAU_HELP* %call3, %struct.TABLEAU_HELP** %Tableau, align 8
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %3, %struct.LIST_HELP** %RedundantClauses)
  store %struct.TABLEAU_HELP* %call4, %struct.TABLEAU_HELP** %Tableau, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @tab_SetSplitLevels(%struct.TABLEAU_HELP* %5)
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %EmptyClauses, align 8
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP* %6, %struct.LIST_HELP** %EmptyClauses)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  call void @pcheck_ClauseListRemoveFlag(%struct.LIST_HELP* %7, i32 64)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @pcheck_MarkRecursive(%struct.LIST_HELP* %8)
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %UnmarkedSplits, align 8
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @pcheck_CollectUnmarkedSplits(%struct.TABLEAU_HELP* %9, %struct.LIST_HELP** %UnmarkedSplits)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UnmarkedSplits, align 8
  call void @pcheck_MarkRecursive(%struct.LIST_HELP* %10)
  %11 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @pcheck_RemoveUnmarkedFromTableau(%struct.TABLEAU_HELP* %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UnmarkedSplits, align 8
  call void @list_Delete(%struct.LIST_HELP* %12)
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %ReducedProof, align 8
  %13 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @tab_ToClauseList(%struct.TABLEAU_HELP* %13, %struct.LIST_HELP** %ReducedProof)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedProof, align 8
  %call8 = call %struct.LIST_HELP* @pcheck_ClauseNumberMergeSort(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %ReducedProof, align 8
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tableau, align 8
  call void @tab_Delete(%struct.TABLEAU_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedProof, align 8
  ret %struct.LIST_HELP* %17
}

declare void @tab_ToClauseList(%struct.TABLEAU_HELP*, %struct.LIST_HELP**) #2

declare void @tab_Delete(%struct.TABLEAU_HELP*) #2

; Function Attrs: nounwind uwtable
define void @pcheck_DeleteProof(%struct.LIST_HELP* %Proof) #0 {
entry:
  %Proof.addr = alloca %struct.LIST_HELP*, align 8
  %Line = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Proof, %struct.LIST_HELP** %Proof.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Line, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  call void @string_StringFree(i8* %call2)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  %call3 = call i8* @list_Second(%struct.LIST_HELP* %5)
  %call4 = call %struct.CLAUSE_HELP* @clause_Null()
  %6 = bitcast %struct.CLAUSE_HELP* %call4 to i8*
  %cmp = icmp ne i8* %call3, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  %call5 = call i8* @list_Second(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call5 to %struct.term*
  call void @term_Delete(%struct.term* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  %call6 = call i8* @list_Third(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %12)
  call void @string_StringFree(i8* %call10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  %call12 = call i8* @list_Third(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call12 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Line, align 8
  call void @list_Delete(%struct.LIST_HELP* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Proof.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  ret void
}

declare void @string_StringFree(i8*) #2

declare void @term_Delete(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i8* @pcheck_GenericFilename(i8* %Filename, i8* %Id) #0 {
entry:
  %Filename.addr = alloca i8*, align 8
  %Id.addr = alloca i8*, align 8
  %Help1 = alloca i8*, align 8
  %Help2 = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %Filename, i8** %Filename.addr, align 8
  store i8* %Id, i8** %Id.addr, align 8
  %0 = load i8*, i8** %Id.addr, align 8
  %call = call i8* @string_Conc(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %0)
  store i8* %call, i8** %Help1, align 8
  %1 = load i8*, i8** %Help1, align 8
  %2 = load i8*, i8** @pcheck_ProofFileSuffix, align 8
  %call1 = call i8* @string_Conc(i8* %1, i8* %2)
  store i8* %call1, i8** %Help2, align 8
  %3 = load i8*, i8** %Help1, align 8
  call void @string_StringFree(i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8*, i8** %Filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %5, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp ne i32 %conv, 46
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %conv3 = sext i32 %7 to i64
  %8 = load i8*, i8** %Filename.addr, align 8
  %call4 = call i64 @strlen(i8* %8) #7
  %cmp5 = icmp ult i64 %conv3, %call4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %11 = load i8*, i8** %Filename.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call7 = call i8* @string_Prefix(i8* %11, i32 %12)
  store i8* %call7, i8** %Help1, align 8
  %13 = load i8*, i8** %Help1, align 8
  %14 = load i8*, i8** %Help2, align 8
  %call8 = call i8* @string_Nconc(i8* %13, i8* %14)
  ret i8* %call8
}

declare i8* @string_Conc(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @string_Prefix(i8*, i32) #2

declare i8* @string_Nconc(i8*, i8*) #2

declare %struct.LIST_HELP* @clause_NumberSort(%struct.LIST_HELP*) #2

declare i32 @list_Length(%struct.LIST_HELP*) #2

declare i8* @memory_Malloc(i32) #2

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_CompareClauseNumber(i8* %C1, i8* %C2) #0 {
entry:
  %C1.addr = alloca i8*, align 8
  %C2.addr = alloca i8*, align 8
  store i8* %C1, i8** %C1.addr, align 8
  store i8* %C2, i8** %C2.addr, align 8
  %0 = load i8*, i8** %C1.addr, align 8
  %1 = bitcast i8* %0 to %struct.CLAUSE_HELP**
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %1, align 8
  %call = call i32 @clause_Number(%struct.CLAUSE_HELP* %2)
  %3 = load i8*, i8** %C2.addr, align 8
  %4 = bitcast i8* %3 to %struct.CLAUSE_HELP**
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %4, align 8
  %call1 = call i32 @clause_Number(%struct.CLAUSE_HELP* %5)
  %sub = sub nsw i32 %call, %call1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @pcheck_ForceParentNumbersToPointersInVector(%struct.CLAUSE_HELP** %ClauseVector, i32 %Size) #0 {
entry:
  %ClauseVector.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Size.addr = alloca i32, align 4
  %Position = alloca i32, align 4
  %NewParents = alloca %struct.LIST_HELP*, align 8
  %NewPLits = alloca %struct.LIST_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %PLits = alloca %struct.LIST_HELP*, align 8
  %Missing = alloca %struct.LIST_HELP*, align 8
  %ParentNum = alloca i32, align 4
  %PLitNum = alloca i32, align 4
  %Parent = alloca %struct.CLAUSE_HELP**, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP** %ClauseVector, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Missing, align 8
  store i32 0, i32* %Position, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Position, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Position, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, i64 %idxprom
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %4, i32 64)
  %5 = load i32, i32* %Position, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %6, i64 %idxprom1
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx2, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %7, i32 128)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %Position, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %Position, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %Position, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.38, %for.end
  %9 = load i32, i32* %Position, align 4
  %10 = load i32, i32* %Size.addr, align 4
  %cmp4 = icmp slt i32 %9, %10
  br i1 %cmp4, label %for.body.5, label %for.end.40

for.body.5:                                       ; preds = %for.cond.3
  %11 = load i32, i32* %Position, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %12, i64 %idxprom6
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx7, align 8
  store %struct.CLAUSE_HELP* %13, %struct.CLAUSE_HELP** %Clause, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call8 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %14, i32 64)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.37, label %if.then

if.then:                                          ; preds = %for.body.5
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %15, i32 64)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call9 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %16)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Parents, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call10 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %17)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %PLits, align 8
  %call11 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %NewParents, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %NewPLits, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %if.then
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = ptrtoint i8* %call15 to i32
  store i32 %20, i32* %ParentNum, align 4
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = ptrtoint i8* %call16 to i32
  store i32 %22, i32* %PLitNum, align 4
  %23 = load i32, i32* %ParentNum, align 4
  %conv = sext i32 %23 to i64
  %24 = inttoptr i64 %conv to i8*
  %25 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %26 = bitcast %struct.CLAUSE_HELP** %25 to i8*
  %27 = load i32, i32* %Size.addr, align 4
  %conv17 = sext i32 %27 to i64
  %call18 = call i8* @bsearch(i8* %24, i8* %26, i64 %conv17, i64 8, i32 (i8*, i8*)* @pcheck_CompareNumberAndClause)
  %28 = bitcast i8* %call18 to %struct.CLAUSE_HELP**
  store %struct.CLAUSE_HELP** %28, %struct.CLAUSE_HELP*** %Parent, align 8
  %29 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Parent, align 8
  %cmp19 = icmp eq %struct.CLAUSE_HELP** %29, null
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %while.body
  %30 = load i32, i32* %ParentNum, align 4
  %conv22 = sext i32 %30 to i64
  %31 = inttoptr i64 %conv22 to i8*
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Missing, align 8
  %call23 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Missing, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %33, i32 128)
  br label %if.end.30

if.else:                                          ; preds = %while.body
  %34 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Parent, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %34, align 8
  %call24 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %35, i32 128)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.else
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %36, i32 128)
  br label %if.end

if.end:                                           ; preds = %if.then.26, %if.else
  %37 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Parent, align 8
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %37, align 8
  %39 = bitcast %struct.CLAUSE_HELP* %38 to i8*
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewParents, align 8
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %39, %struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %NewParents, align 8
  %41 = load i32, i32* %PLitNum, align 4
  %conv28 = sext i32 %41 to i64
  %42 = inttoptr i64 %conv28 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewPLits, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %NewPLits, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.21
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Parents, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %PLits, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call33 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %46)
  call void @list_Delete(%struct.LIST_HELP* %call33)
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call34 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %47)
  call void @list_Delete(%struct.LIST_HELP* %call34)
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewParents, align 8
  %call35 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %NewParents, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewPLits, align 8
  %call36 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %NewPLits, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewParents, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %50, %struct.LIST_HELP* %51)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewPLits, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %52, %struct.LIST_HELP* %53)
  br label %if.end.37

if.end.37:                                        ; preds = %while.end, %for.body.5
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %54 = load i32, i32* %Position, align 4
  %inc39 = add nsw i32 %54, 1
  store i32 %inc39, i32* %Position, align 4
  br label %for.cond.3

for.end.40:                                       ; preds = %for.cond.3
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Missing, align 8
  ret %struct.LIST_HELP* %55
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
  call void @free(i8* %add.ptr24) #8
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
define internal %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 7
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  ret %struct.LIST_HELP* %1
}

declare i8* @bsearch(i8*, i8*, i64, i64, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_CompareNumberAndClause(i8* %Number, i8* %ClausePtr) #0 {
entry:
  %Number.addr = alloca i8*, align 8
  %ClausePtr.addr = alloca i8*, align 8
  store i8* %Number, i8** %Number.addr, align 8
  store i8* %ClausePtr, i8** %ClausePtr.addr, align 8
  %0 = load i8*, i8** %Number.addr, align 8
  %1 = ptrtoint i8* %0 to i32
  %2 = load i8*, i8** %ClausePtr.addr, align 8
  %3 = bitcast i8* %2 to %struct.CLAUSE_HELP**
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, align 8
  %call = call i32 @clause_Number(%struct.CLAUSE_HELP* %4)
  %sub = sub nsw i32 %1, %call
  ret i32 %sub
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
declare void @free(i8*) #4

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
define internal void @list_Free(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

declare i32 @clause_ComputeWeight(%struct.CLAUSE_HELP*, i32*) #2

declare i32 @string_StringToInt(i8*, i32, i32*) #2

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

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_ExpandSplitField(%struct.CLAUSE_HELP* %C, i32 %Length) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Length.addr = alloca i32, align 4
  %NewField = alloca i64*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Length, i32* %Length.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %splitfield_length, align 4
  %2 = load i32, i32* %Length.addr, align 4
  %cmp = icmp ult i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %Length.addr, align 4
  %conv = zext i32 %3 to i64
  %mul = mul i64 8, %conv
  %conv1 = trunc i64 %mul to i32
  %call = call i8* @memory_Malloc(i32 %conv1)
  %4 = bitcast i8* %call to i64*
  store i64* %4, i64** %NewField, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 5
  %7 = load i32, i32* %splitfield_length2, align 4
  %cmp3 = icmp ult i32 %5, %7
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = zext i32 %8 to i64
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 4
  %10 = load i64*, i64** %splitfield, align 8
  %arrayidx = getelementptr inbounds i64, i64* %10, i64 %idxprom
  %11 = load i64, i64* %arrayidx, align 8
  %12 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %12 to i64
  %13 = load i64*, i64** %NewField, align 8
  %arrayidx6 = getelementptr inbounds i64, i64* %13, i64 %idxprom5
  store i64 %11, i64* %arrayidx6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length7 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 5
  %16 = load i32, i32* %splitfield_length7, align 4
  store i32 %16, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %Length.addr, align 4
  %cmp9 = icmp ult i32 %17, %18
  br i1 %cmp9, label %for.body.11, label %for.end.16

for.body.11:                                      ; preds = %for.cond.8
  %19 = load i32, i32* %i, align 4
  %idxprom12 = zext i32 %19 to i64
  %20 = load i64*, i64** %NewField, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %20, i64 %idxprom12
  store i64 0, i64* %arrayidx13, align 8
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.11
  %21 = load i32, i32* %i, align 4
  %inc15 = add i32 %21, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield17 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %22, i32 0, i32 4
  %23 = load i64*, i64** %splitfield17, align 8
  %cmp18 = icmp ne i64* %23, null
  br i1 %cmp18, label %if.then.20, label %if.end

if.then.20:                                       ; preds = %for.end.16
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield21 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %24, i32 0, i32 4
  %25 = load i64*, i64** %splitfield21, align 8
  %26 = bitcast i64* %25 to i8*
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length22 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %27, i32 0, i32 5
  %28 = load i32, i32* %splitfield_length22, align 4
  %conv23 = zext i32 %28 to i64
  %mul24 = mul i64 8, %conv23
  %conv25 = trunc i64 %mul24 to i32
  call void @memory_Free(i8* %26, i32 %conv25)
  br label %if.end

if.end:                                           ; preds = %if.then.20, %for.end.16
  %29 = load i64*, i64** %NewField, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield26 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %30, i32 0, i32 4
  store i64* %29, i64** %splitfield26, align 8
  %31 = load i32, i32* %Length.addr, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length27 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %32, i32 0, i32 5
  store i32 %31, i32* %splitfield_length27, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @pcheck_ParentNumbersToPointersInVector(%struct.CLAUSE_HELP** %ClauseVector, i32 %Size) #0 {
entry:
  %ClauseVector.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Size.addr = alloca i32, align 4
  %Position = alloca i32, align 4
  %NewParents = alloca %struct.LIST_HELP*, align 8
  %OldParents = alloca %struct.LIST_HELP*, align 8
  %ScanParents = alloca %struct.LIST_HELP*, align 8
  %ParentNum = alloca i32, align 4
  %Parent = alloca %struct.CLAUSE_HELP**, align 8
  store %struct.CLAUSE_HELP** %ClauseVector, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  store i32 %Size, i32* %Size.addr, align 4
  store i32 0, i32* %Position, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %0 = load i32, i32* %Position, align 4
  %1 = load i32, i32* %Size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.18

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %Position, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %3, i64 %idxprom
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %4)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %OldParents, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OldParents, align 8
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %NewParents, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewParents, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = ptrtoint i8* %call5 to i32
  store i32 %9, i32* %ParentNum, align 4
  %10 = load i32, i32* %ParentNum, align 4
  %conv = sext i32 %10 to i64
  %11 = inttoptr i64 %conv to i8*
  %12 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %13 = bitcast %struct.CLAUSE_HELP** %12 to i8*
  %14 = load i32, i32* %Size.addr, align 4
  %conv6 = sext i32 %14 to i64
  %call7 = call i8* @bsearch(i8* %11, i8* %13, i64 %conv6, i64 8, i32 (i8*, i8*)* @pcheck_CompareNumberAndClause)
  %15 = bitcast i8* %call7 to %struct.CLAUSE_HELP**
  store %struct.CLAUSE_HELP** %15, %struct.CLAUSE_HELP*** %Parent, align 8
  %16 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Parent, align 8
  %cmp8 = icmp ne %struct.CLAUSE_HELP** %16, null
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.4
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %18 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Parent, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %18, align 8
  %20 = bitcast %struct.CLAUSE_HELP* %19 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %17, i8* %20)
  br label %if.end

if.else:                                          ; preds = %for.body.4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fflush(%struct._IO_FILE* %21)
  %22 = load i32, i32* %ParentNum, align 4
  %23 = load i32, i32* %Position, align 4
  %idxprom11 = sext i32 %23 to i64
  %24 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %24, i64 %idxprom11
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx12, align 8
  %call13 = call i32 @clause_Number(%struct.CLAUSE_HELP* %25)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.16, i32 0, i32 0), i32 %22, i32 %call13)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %27 = load i32, i32* %Position, align 4
  %idxprom15 = sext i32 %27 to i64
  %28 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %ClauseVector.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %28, i64 %idxprom15
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %arrayidx16, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewParents, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %29, %struct.LIST_HELP* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %OldParents, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %32 = load i32, i32* %Position, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %Position, align 4
  br label %for.cond

for.end.18:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_ClauseIsFromRightSplit(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %1)
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %call2)
  %2 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  %call4 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %2)
  store i32 %call4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
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

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @pcheck_MaxParentSplitLevel(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call i32 @pcheck_MaxSplitLevel(%struct.LIST_HELP* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetClauses(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP* %Clauses) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Clauses1 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Clauses1, align 8
  ret void
}

declare %struct.LIST_HELP* @list_DeleteElementIf(%struct.LIST_HELP*, i32 (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_ClauseIsUnmarked(%struct.CLAUSE_HELP* %C) #0 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 64)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare i32 @tab_Depth(%struct.TABLEAU_HELP*) #2

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_TableauJustificationsRec(%struct.TABLEAU_HELP* %T, %struct.TABPATH_NODE* %Path) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %ScanClauses = alloca %struct.LIST_HELP*, align 8
  %ScanParents = alloca %struct.LIST_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %Parent = alloca %struct.CLAUSE_HELP*, align 8
  %Ok = alloca i32, align 4
  %RightSplit = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %Ok, align 4
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call1 = call %struct.TABLEAU_HELP* @tab_PathTop(%struct.TABPATH_NODE* %1)
  %call2 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ScanClauses, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %if.end
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call6 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Parents, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call7 = call i32 @pcheck_ClauseIsFromRightSplit(%struct.CLAUSE_HELP* %6)
  store i32 %call7, i32* %RightSplit, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %10, %struct.CLAUSE_HELP** %Parent, align 8
  %11 = load i32, i32* %RightSplit, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %land.lhs.true, label %land.lhs.true.17

land.lhs.true:                                    ; preds = %for.body.12
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Parent, align 8
  %call15 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false, label %land.lhs.true.17

land.lhs.true.17:                                 ; preds = %land.lhs.true, %for.body.12
  %13 = load i32, i32* %RightSplit, align 4
  %tobool18 = icmp ne i32 %13, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.then.24

land.lhs.true.19:                                 ; preds = %land.lhs.true.17
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Parent, align 8
  %call20 = call i32 @pcheck_ClauseIsFromLeftSplit(%struct.CLAUSE_HELP* %14)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %lor.lhs.false, label %if.then.24

lor.lhs.false:                                    ; preds = %land.lhs.true.19, %land.lhs.true
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Parent, align 8
  %call22 = call i32 @clause_Number(%struct.CLAUSE_HELP* %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call23 = call i32 @clause_Number(%struct.CLAUSE_HELP* %16)
  %cmp = icmp sgt i32 %call22, %call23
  br i1 %cmp, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %lor.lhs.false, %land.lhs.true.19, %land.lhs.true.17
  %17 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Parent, align 8
  %call25 = call i32 @tab_PathContainsClause(%struct.TABPATH_NODE* %17, %struct.CLAUSE_HELP* %18)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.30, label %if.then.27

if.then.27:                                       ; preds = %if.then.24
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call28 = call i32 @fflush(%struct._IO_FILE* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Parent, align 8
  %call29 = call i32 @clause_Number(%struct.CLAUSE_HELP* %20)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.18, i32 0, i32 0), i32 %call29)
  call void @misc_Error()
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanParents, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ScanParents, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ScanClauses, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %ScanClauses, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %23 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call36 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %23)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.46, label %if.then.38

if.then.38:                                       ; preds = %for.end.35
  %24 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call39 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %24)
  %25 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call40 = call %struct.TABPATH_NODE* @tab_PathPush(%struct.TABLEAU_HELP* %call39, %struct.TABPATH_NODE* %25)
  store %struct.TABPATH_NODE* %call40, %struct.TABPATH_NODE** %Path.addr, align 8
  %26 = load i32, i32* %Ok, align 4
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.38
  %27 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call42 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %27)
  %28 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call43 = call i32 @pcheck_TableauJustificationsRec(%struct.TABLEAU_HELP* %call42, %struct.TABPATH_NODE* %28)
  %tobool44 = icmp ne i32 %call43, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.38
  %29 = phi i1 [ false, %if.then.38 ], [ %tobool44, %land.rhs ]
  %land.ext = zext i1 %29 to i32
  store i32 %land.ext, i32* %Ok, align 4
  %30 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call45 = call %struct.TABPATH_NODE* @tab_PathPop(%struct.TABPATH_NODE* %30)
  store %struct.TABPATH_NODE* %call45, %struct.TABPATH_NODE** %Path.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %land.end, %for.end.35
  %31 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call47 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %31)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.60, label %if.then.49

if.then.49:                                       ; preds = %if.end.46
  %32 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call50 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %32)
  %33 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call51 = call %struct.TABPATH_NODE* @tab_PathPush(%struct.TABLEAU_HELP* %call50, %struct.TABPATH_NODE* %33)
  store %struct.TABPATH_NODE* %call51, %struct.TABPATH_NODE** %Path.addr, align 8
  %34 = load i32, i32* %Ok, align 4
  %tobool52 = icmp ne i32 %34, 0
  br i1 %tobool52, label %land.rhs.53, label %land.end.57

land.rhs.53:                                      ; preds = %if.then.49
  %35 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call54 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %35)
  %36 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call55 = call i32 @pcheck_TableauJustificationsRec(%struct.TABLEAU_HELP* %call54, %struct.TABPATH_NODE* %36)
  %tobool56 = icmp ne i32 %call55, 0
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.53, %if.then.49
  %37 = phi i1 [ false, %if.then.49 ], [ %tobool56, %land.rhs.53 ]
  %land.ext58 = zext i1 %37 to i32
  store i32 %land.ext58, i32* %Ok, align 4
  %38 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call59 = call %struct.TABPATH_NODE* @tab_PathPop(%struct.TABPATH_NODE* %38)
  store %struct.TABPATH_NODE* %call59, %struct.TABPATH_NODE** %Path.addr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %land.end.57, %if.end.46
  %39 = load i32, i32* %Ok, align 4
  store i32 %39, i32* %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_PathTop(%struct.TABPATH_NODE* %Path) #1 {
entry:
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call = call i32 @tab_PathLength(%struct.TABPATH_NODE* %1)
  %call1 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %0, i32 %call)
  ret %struct.TABLEAU_HELP* %call1
}

declare i32 @tab_PathContainsClause(%struct.TABPATH_NODE*, %struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABPATH_NODE* @tab_PathPush(%struct.TABLEAU_HELP* %Tab, %struct.TABPATH_NODE* %TabPath) #1 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %Length, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %Length, align 4
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %3 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length1 = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %3, i32 0, i32 1
  %4 = load i32, i32* %Length1, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Path = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %5, i32 0, i32 0
  %6 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Path, align 8
  %arrayidx = getelementptr inbounds %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %6, i64 %idxprom
  store %struct.TABLEAU_HELP* %2, %struct.TABLEAU_HELP** %arrayidx, align 8
  %7 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  ret %struct.TABPATH_NODE* %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABPATH_NODE* @tab_PathPop(%struct.TABPATH_NODE* %TabPath) #1 {
entry:
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %call = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %Length, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %Length, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Path = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %2, i32 0, i32 0
  %3 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Path, align 8
  %arrayidx = getelementptr inbounds %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %3, i64 %idxprom
  store %struct.TABLEAU_HELP* %call, %struct.TABLEAU_HELP** %arrayidx, align 8
  %4 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  ret %struct.TABPATH_NODE* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %T) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %LeftSplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 2
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %LeftSplitClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %T) #1 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %RightSplitClauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightSplitClauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @pcheck_IsRightSplitHalf(%struct.CLAUSE_HELP* %C) #0 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %Ok = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Parents, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call2 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Parents, align 8
  store i32 0, i32* %Ok, align 4
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call3 = call i32 @list_Length(%struct.LIST_HELP* %2)
  %cmp = icmp eq i32 %call3, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call4 = call i8* @list_First(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %call5 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call6 = call i8* @list_Second(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  %call7 = call i32 @subs_Subsumes(%struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP* %7, i32 -1, i32 -1)
  store i32 %call7, i32* %Ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  %9 = load i32, i32* %Ok, align 4
  ret i32 %9
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #1 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #1 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_And() #1 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #1 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

declare i32 @subs_Subsumes(%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, i32, i32) #2

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

declare %struct.term* @term_Copy(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #1 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @pcheck_UnivClosure(%struct.term* %T) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %T.addr = alloca %struct.term*, align 8
  %Vars = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.LIST_HELP* @pcheck_CollectTermVariables(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Vars, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %T.addr, align 8
  store %struct.term* %2, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @fol_All()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %4 = load %struct.term*, %struct.term** %T.addr, align 8
  %5 = bitcast %struct.term* %4 to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %5)
  %call4 = call %struct.term* @fol_CreateQuantifier(i32 %call2, %struct.LIST_HELP* %3, %struct.LIST_HELP* %call3)
  store %struct.term* %call4, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %6
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
define internal %struct.LIST_HELP* @pcheck_CollectTermVariables(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = ptrtoint i8* %call2 to i32
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %call4 = call %struct.term* @term_Create(i32 %5, %struct.LIST_HELP* %call3)
  %6 = bitcast %struct.term* %call4 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %8
}

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #1 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

declare %struct.LIST_HELP* @term_VariableSymbols(%struct.term*) #2

declare i8* @string_IntToString(i32) #2

declare %struct._IO_FILE* @misc_OpenFile(i8*, i8*) #2

declare void @fol_FPrintDFGProblem(%struct._IO_FILE*, i8*, i8*, i8*, i8*, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare void @misc_CloseFile(%struct._IO_FILE*, i8*) #2

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
