; ModuleID = './MultiSource.Applications.SPASS/38.tableau.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.TABPATH_NODE = type { %struct.TABLEAU_HELP**, i32, i32 }
%struct.TABLEAU_HELP = type { %struct.LIST_HELP*, %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, %struct.LIST_HELP*, %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP*, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }

@.str = private unnamed_addr constant [58 x i8] c"NOTE: Clause is found on path, but not indexed by level.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"\0AError: Split level of some clause \00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"\0Ais higher than existing level.\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\0AThis may be a bug in the proof file.\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"\0Aopen node label: %d\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"\0ANOTE: non-leaf node contains empty clauses.\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\0ANOTE: Leaf contains more than one empty clauses.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Clauses:\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"\0AError: unknown output format for tableau.\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"graph: \0A{\0Adisplay_edge_labels: yes\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"\0Anode: {\0A\0Alabel: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"title: \22%d\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"  }\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"\22label: %d\5Cn\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"SplitClause : \00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"\5CnLeft Clause : \00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"\5CnRightClauses: \00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"[]\5Cn\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\5Cn\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"              \00", align 1
@pcheck_ClauseCg = external global i32, align 4
@.str.22 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"\0Aedge: {\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\0Asourcename: \22%d\22\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"\0Atargetname: \22%d\22\0A\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"\0Alabel: \22\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"\22  }\0A\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"l(\22%d\22,\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"n(\22\22, [a(\22OBJECT\22,\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c")],\0A\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"]))\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"l(\22%d->%d\22,\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"e(\22\22,[],\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"r(\22%d\22)))\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct.TABPATH_NODE* @tab_PathCreate(i32 %MaxLevel, %struct.TABLEAU_HELP* %Tab) #0 {
entry:
  %MaxLevel.addr = alloca i32, align 4
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  %TabPath = alloca %struct.TABPATH_NODE*, align 8
  store i32 %MaxLevel, i32* %MaxLevel.addr, align 4
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %call = call i8* @memory_Malloc(i32 16)
  %0 = bitcast i8* %call to %struct.TABPATH_NODE*
  store %struct.TABPATH_NODE* %0, %struct.TABPATH_NODE** %TabPath, align 8
  %1 = load i32, i32* %MaxLevel.addr, align 4
  %add = add nsw i32 %1, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 8, %conv
  %conv1 = trunc i64 %mul to i32
  %call2 = call i8* @memory_Malloc(i32 %conv1)
  %2 = bitcast i8* %call2 to %struct.TABLEAU_HELP**
  %3 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath, align 8
  %Path = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %3, i32 0, i32 0
  store %struct.TABLEAU_HELP** %2, %struct.TABLEAU_HELP*** %Path, align 8
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %5 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath, align 8
  %Path3 = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %5, i32 0, i32 0
  %6 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Path3, align 8
  %arrayidx = getelementptr inbounds %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %6, i64 0
  store %struct.TABLEAU_HELP* %4, %struct.TABLEAU_HELP** %arrayidx, align 8
  %7 = load i32, i32* %MaxLevel.addr, align 4
  %8 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath, align 8
  %MaxLength = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %8, i32 0, i32 2
  store i32 %7, i32* %MaxLength, align 4
  %9 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %9, i32 0, i32 1
  store i32 0, i32* %Length, align 4
  %10 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath, align 8
  ret %struct.TABPATH_NODE* %10
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: nounwind uwtable
define void @tab_PathDelete(%struct.TABPATH_NODE* %TabPath) #0 {
entry:
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Path = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %0, i32 0, i32 0
  %1 = load %struct.TABLEAU_HELP**, %struct.TABLEAU_HELP*** %Path, align 8
  %2 = bitcast %struct.TABLEAU_HELP** %1 to i8*
  %3 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %MaxLength = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %3, i32 0, i32 2
  %4 = load i32, i32* %MaxLength, align 4
  %add = add nsw i32 %4, 1
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 8
  %conv1 = trunc i64 %mul to i32
  call void @memory_Free(i8* %2, i32 %conv1)
  %5 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %6 = bitcast %struct.TABPATH_NODE* %5 to i8*
  call void @memory_Free(i8* %6, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #2 {
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
  call void @free(i8* %add.ptr24) #5
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

; Function Attrs: nounwind uwtable
define i32 @tab_PathContainsClause(%struct.TABPATH_NODE* %Path, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call1 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %1)
  %cmp = icmp ugt i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %3)
  %call3 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %2, i32 %call2)
  %call4 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = bitcast %struct.CLAUSE_HELP* %6 to i8*
  %cmp7 = icmp eq i8* %call6, %7
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %validlevel = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %validlevel, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_PathLength(%struct.TABPATH_NODE* %TabPath) #2 {
entry:
  %TabPath.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %TabPath, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %TabPath.addr, align 8
  %Length = getelementptr inbounds %struct.TABPATH_NODE, %struct.TABPATH_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %Length, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %T) #2 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Clauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %TabPath, i32 %n) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Car(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define i32 @tab_PathContainsClauseRobust(%struct.TABPATH_NODE* %P, %struct.CLAUSE_HELP* %C) #0 {
entry:
  %retval = alloca i32, align 4
  %P.addr = alloca %struct.TABPATH_NODE*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.TABPATH_NODE* %P, %struct.TABPATH_NODE** %P.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %P.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call i32 @tab_PathContainsClause(%struct.TABPATH_NODE* %0, %struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %P.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call1 = call i32 @tab_PathContainsClauseSoft(%struct.TABPATH_NODE* %2, %struct.CLAUSE_HELP* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.6

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  call void @clause_PParentsFPrint(%struct._IO_FILE* %5, %struct.CLAUSE_HELP* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 @fflush(%struct._IO_FILE* %7)
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define internal i32 @tab_PathContainsClauseSoft(%struct.TABPATH_NODE* %Path, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Level = alloca i32, align 4
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call1 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %1)
  %cmp = icmp ugt i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %Level, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %if.end
  %2 = load i32, i32* %Level, align 4
  %3 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call2 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %3)
  %cmp3 = icmp sle i32 %2, %call2
  br i1 %cmp3, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  %4 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %5 = load i32, i32* %Level, align 4
  %call4 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %4, i32 %5)
  %call5 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = bitcast %struct.CLAUSE_HELP* %8 to i8*
  %cmp10 = icmp eq i8* %call9, %9
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body.8
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %11 = load i32, i32* %Level, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %Level, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.15, %if.then.11, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @clause_PParentsFPrint(%struct._IO_FILE*, %struct.CLAUSE_HELP*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @tab_AddSplitAtCursor(%struct.TABPATH_NODE* %Path, i32 %LeftSide) #0 {
entry:
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  %LeftSide.addr = alloca i32, align 4
  %Tab = alloca %struct.TABLEAU_HELP*, align 8
  %NewBranch = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  store i32 %LeftSide, i32* %LeftSide.addr, align 4
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call = call %struct.TABLEAU_HELP* @tab_PathTop(%struct.TABPATH_NODE* %0)
  store %struct.TABLEAU_HELP* %call, %struct.TABLEAU_HELP** %Tab, align 8
  %call1 = call %struct.TABLEAU_HELP* @tab_CreateNode()
  store %struct.TABLEAU_HELP* %call1, %struct.TABLEAU_HELP** %NewBranch, align 8
  %1 = load i32, i32* %LeftSide.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab, align 8
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %NewBranch, align 8
  call void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %2, %struct.TABLEAU_HELP* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab, align 8
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %NewBranch, align 8
  call void @tab_SetRightBranch(%struct.TABLEAU_HELP* %4, %struct.TABLEAU_HELP* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %NewBranch, align 8
  %7 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call2 = call %struct.TABPATH_NODE* @tab_PathPush(%struct.TABLEAU_HELP* %6, %struct.TABPATH_NODE* %7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_PathTop(%struct.TABPATH_NODE* %Path) #2 {
entry:
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  %0 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %1 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call = call i32 @tab_PathLength(%struct.TABPATH_NODE* %1)
  %call1 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %0, i32 %call)
  ret %struct.TABLEAU_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_CreateNode() #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP* %SubTab) #2 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  %SubTab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  store %struct.TABLEAU_HELP* %SubTab, %struct.TABLEAU_HELP** %SubTab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SubTab.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %LeftBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 4
  store %struct.TABLEAU_HELP* %0, %struct.TABLEAU_HELP** %LeftBranch, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetRightBranch(%struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP* %SubTab) #2 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  %SubTab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  store %struct.TABLEAU_HELP* %SubTab, %struct.TABLEAU_HELP** %SubTab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %SubTab.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %RightBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 5
  store %struct.TABLEAU_HELP* %0, %struct.TABLEAU_HELP** %RightBranch, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABPATH_NODE* @tab_PathPush(%struct.TABLEAU_HELP* %Tab, %struct.TABPATH_NODE* %TabPath) #2 {
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

; Function Attrs: nounwind uwtable
define void @tab_AddClauseOnItsLevel(%struct.CLAUSE_HELP* %C, %struct.TABPATH_NODE* %Path) #0 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Path.addr = alloca %struct.TABPATH_NODE*, align 8
  %Level = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store %struct.TABPATH_NODE* %Path, %struct.TABPATH_NODE** %Path.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %Level, align 4
  %1 = load i32, i32* %Level, align 4
  %2 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %call1 = call i32 @tab_PathLength(%struct.TABPATH_NODE* %2)
  %cmp = icmp sgt i32 %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %3)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %5 = load %struct.TABPATH_NODE*, %struct.TABPATH_NODE** %Path.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %call4 = call %struct.TABLEAU_HELP* @tab_PathNthNode(%struct.TABPATH_NODE* %5, i32 %call3)
  call void @tab_AddClause(%struct.CLAUSE_HELP* %4, %struct.TABLEAU_HELP* %call4)
  ret void
}

declare void @misc_UserErrorReport(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #2 {
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
define internal void @tab_AddClause(%struct.CLAUSE_HELP* %C, %struct.TABLEAU_HELP* %T) #2 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Clauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %2, i32 0, i32 0
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Clauses1 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %4, i32 0, i32 0
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Clauses1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @tab_Depth(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %2)
  %call5 = call i32 @tab_Depth(%struct.TABLEAU_HELP* %call4)
  %add = add nsw i32 %call5, 1
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %3)
  %call7 = call i32 @tab_Depth(%struct.TABLEAU_HELP* %call6)
  %call8 = call i32 @misc_Max(i32 %add, i32 %call7)
  %add9 = add nsw i32 %call8, 1
  store i32 %add9, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %Tab) #2 {
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
define internal i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %T) #2 {
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

declare i32 @misc_Max(i32, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %Tab) #2 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %RightBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 5
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %RightBranch, align 8
  ret %struct.TABLEAU_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %Tab) #2 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %LeftBranch = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 4
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %LeftBranch, align 8
  ret %struct.TABLEAU_HELP* %1
}

; Function Attrs: nounwind uwtable
define i32 @tab_IsClosed(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_HasEmptyClause(%struct.TABLEAU_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call7 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %3)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %lor.lhs.false, %if.end.4
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %4, i32 0, i32 6
  %5 = load i32, i32* %Label, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0), i32 %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fflush(%struct._IO_FILE* %6)
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call13 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %7)
  %call14 = call i32 @tab_IsClosed(%struct.TABLEAU_HELP* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.12
  %8 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call16 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %8)
  %call17 = call i32 @tab_IsClosed(%struct.TABLEAU_HELP* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.12
  %9 = phi i1 [ false, %if.end.12 ], [ %tobool18, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  store i32 %land.ext, i32* %retval
  br label %return

return:                                           ; preds = %land.end, %if.then.9, %if.then.3, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @tab_HasEmptyClause(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %retval = alloca i32, align 4
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  %call3 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %Tab) #2 {
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
define internal i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %Tab) #2 {
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

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @tab_Delete(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Redundant = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Redundant, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_DeleteGen(%struct.TABLEAU_HELP* %0, %struct.LIST_HELP** %Redundant, i32 1)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define internal void @tab_DeleteGen(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Clauses, i32 %DeleteClauses) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP**, align 8
  %DeleteClauses.addr = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Clauses, %struct.LIST_HELP*** %Clauses.addr, align 8
  store i32 %DeleteClauses, i32* %DeleteClauses.addr, align 4
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %1)
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %3 = load i32, i32* %DeleteClauses.addr, align 4
  call void @tab_DeleteGen(%struct.TABLEAU_HELP* %call1, %struct.LIST_HELP** %2, i32 %3)
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %4)
  %5 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %6 = load i32, i32* %DeleteClauses.addr, align 4
  call void @tab_DeleteGen(%struct.TABLEAU_HELP* %call2, %struct.LIST_HELP** %5, i32 %6)
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call3 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %7)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %8 = load i32, i32* %DeleteClauses.addr, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %9)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call7 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %10)
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %11, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %13, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call10 = call %struct.LIST_HELP* @tab_DeleteFlat(%struct.TABLEAU_HELP* %14)
  br label %return

return:                                           ; preds = %if.end.9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tab_SetSplitLevels(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_SetSplitLevelsRec(%struct.TABLEAU_HELP* %0, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_SetSplitLevelsRec(%struct.TABLEAU_HELP* %T, i32 %Level) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
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
  %5 = load i32, i32* %Level.addr, align 4
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %4, i32 %5)
  %6 = load i32, i32* %Level.addr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  call void @clause_ClearSplitField(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %11 = load i32, i32* %Level.addr, align 4
  call void @clause_SetSplitFieldBit(%struct.CLAUSE_HELP* %10, i32 %11)
  br label %if.end.9

if.else:                                          ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call8 to %struct.CLAUSE_HELP*
  call void @clause_SetSplitField(%struct.CLAUSE_HELP* %13, i64* null, i32 0)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call11 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %15)
  %16 = load i32, i32* %Level.addr, align 4
  %add = add nsw i32 %16, 1
  call void @tab_SetSplitLevelsRec(%struct.TABLEAU_HELP* %call11, i32 %add)
  %17 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call12 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %17)
  %18 = load i32, i32* %Level.addr, align 4
  %add13 = add nsw i32 %18, 1
  call void @tab_SetSplitLevelsRec(%struct.TABLEAU_HELP* %call12, i32 %add13)
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Clauses) #0 {
entry:
  %retval = alloca %struct.TABLEAU_HELP*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Clauses, %struct.LIST_HELP*** %Clauses.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %1, %struct.TABLEAU_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_HasEmptyClause(%struct.TABLEAU_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %3)
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  call void @tab_DeleteCollectClauses(%struct.TABLEAU_HELP* %call4, %struct.LIST_HELP** %4)
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %5)
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  call void @tab_DeleteCollectClauses(%struct.TABLEAU_HELP* %call5, %struct.LIST_HELP** %6)
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  call void @tab_SetRightBranch(%struct.TABLEAU_HELP* %7, %struct.TABLEAU_HELP* %call6)
  %8 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call7 = call %struct.TABLEAU_HELP* @tab_EmptyTableau()
  call void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %8, %struct.TABLEAU_HELP* %call7)
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call8 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %9)
  call void @list_Delete(%struct.LIST_HELP* %call8)
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  call void @tab_SetRightSplitClauses(%struct.TABLEAU_HELP* %10, %struct.LIST_HELP* %call9)
  %11 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call10 = call %struct.CLAUSE_HELP* @clause_Null()
  call void @tab_SetSplitClause(%struct.TABLEAU_HELP* %11, %struct.CLAUSE_HELP* %call10)
  %12 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call11 = call %struct.CLAUSE_HELP* @clause_Null()
  call void @tab_SetLeftSplitClause(%struct.TABLEAU_HELP* %12, %struct.CLAUSE_HELP* %call11)
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %13 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call12 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %14)
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %call13 = call %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP* %call12, %struct.LIST_HELP** %15)
  call void @tab_SetRightBranch(%struct.TABLEAU_HELP* %13, %struct.TABLEAU_HELP* %call13)
  %16 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %17 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call14 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %17)
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %call15 = call %struct.TABLEAU_HELP* @tab_PruneClosedBranches(%struct.TABLEAU_HELP* %call14, %struct.LIST_HELP** %18)
  call void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %16, %struct.TABLEAU_HELP* %call15)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.3
  %19 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %19, %struct.TABLEAU_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then
  %20 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %retval
  ret %struct.TABLEAU_HELP* %20
}

; Function Attrs: nounwind uwtable
define internal void @tab_DeleteCollectClauses(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Clauses) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Clauses, %struct.LIST_HELP*** %Clauses.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %1 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  call void @tab_DeleteGen(%struct.TABLEAU_HELP* %0, %struct.LIST_HELP** %1, i32 0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.TABLEAU_HELP* @tab_EmptyTableau() #2 {
entry:
  ret %struct.TABLEAU_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #2 {
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
define internal %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %T) #2 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %RightSplitClauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RightSplitClauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetRightSplitClauses(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP* %L) #2 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %RightSplitClauses = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 3
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %RightSplitClauses, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetSplitClause(%struct.TABLEAU_HELP* %Tab, %struct.CLAUSE_HELP* %C) #2 {
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
define internal %struct.CLAUSE_HELP* @clause_Null() #2 {
entry:
  ret %struct.CLAUSE_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @tab_SetLeftSplitClause(%struct.TABLEAU_HELP* %T, %struct.CLAUSE_HELP* %C) #2 {
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

; Function Attrs: nounwind uwtable
define %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Clauses) #0 {
entry:
  %retval = alloca %struct.TABLEAU_HELP*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP**, align 8
  %NewClauses = alloca %struct.LIST_HELP*, align 8
  %Child = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Clauses, %struct.LIST_HELP*** %Clauses.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %1, %struct.TABLEAU_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %3, %struct.TABLEAU_HELP** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %4)
  %call6 = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.16, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.4
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call8 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %5)
  %call9 = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.16, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call12 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %7)
  %8 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %call13 = call %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %call12, %struct.LIST_HELP** %8)
  call void @tab_SetRightBranch(%struct.TABLEAU_HELP* %6, %struct.TABLEAU_HELP* %call13)
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call14 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %10)
  %11 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %call15 = call %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %call14, %struct.LIST_HELP** %11)
  call void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %9, %struct.TABLEAU_HELP* %call15)
  %12 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %12, %struct.TABLEAU_HELP** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.4
  %13 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call17 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %13)
  %call18 = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.16
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call21 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %14)
  store %struct.TABLEAU_HELP* %call21, %struct.TABLEAU_HELP** %Child, align 8
  br label %if.end.23

if.else:                                          ; preds = %if.end.16
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call22 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %15)
  store %struct.TABLEAU_HELP* %call22, %struct.TABLEAU_HELP** %Child, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.20
  %16 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %call24 = call %struct.TABLEAU_HELP* @tab_RemoveIncompleteSplits(%struct.TABLEAU_HELP* %16, %struct.LIST_HELP** %17)
  store %struct.TABLEAU_HELP* %call24, %struct.TABLEAU_HELP** %Child, align 8
  %18 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %19 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call25 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %19)
  call void @tab_SetLeftBranch(%struct.TABLEAU_HELP* %18, %struct.TABLEAU_HELP* %call25)
  %20 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %21 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call26 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %21)
  call void @tab_SetRightBranch(%struct.TABLEAU_HELP* %20, %struct.TABLEAU_HELP* %call26)
  %22 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %23 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call27 = call %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %23)
  call void @tab_SetSplitClause(%struct.TABLEAU_HELP* %22, %struct.CLAUSE_HELP* %call27)
  %24 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %25 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call28 = call %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %25)
  call void @tab_SetLeftSplitClause(%struct.TABLEAU_HELP* %24, %struct.CLAUSE_HELP* %call28)
  %26 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %27 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call29 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %27)
  call void @tab_SetRightSplitClauses(%struct.TABLEAU_HELP* %26, %struct.LIST_HELP* %call29)
  %28 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Child, align 8
  %call30 = call %struct.LIST_HELP* @tab_DeleteFlat(%struct.TABLEAU_HELP* %28)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %NewClauses, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %30 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %30, align 8
  %call31 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %29, %struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Clauses.addr, align 8
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %32, align 8
  %33 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.TABLEAU_HELP* %33, %struct.TABLEAU_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then.11, %if.then.3, %if.then
  %34 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %retval
  ret %struct.TABLEAU_HELP* %34
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %Tab) #2 {
entry:
  %Tab.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %Tab, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %Tab.addr, align 8
  %SplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 1
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %T) #2 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %LeftSplitClause = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %0, i32 0, i32 2
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %LeftSplitClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @tab_DeleteFlat(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Clauses, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %2 = bitcast %struct.TABLEAU_HELP* %1 to i8*
  call void @memory_Free(i8* %2, i32 56)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  ret %struct.LIST_HELP* %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #2 {
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

; Function Attrs: nounwind uwtable
define void @tab_CheckEmpties(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Empties = alloca %struct.LIST_HELP*, align 8
  %Printem = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Empties, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  %call6 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %4)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Empties, align 8
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* %call9, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Empties, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %Printem, align 4
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Empties, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.19, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call15 = call i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %9)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.19, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %call18 = call i32 @puts(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  store i32 1, i32* %Printem, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %land.lhs.true, %for.end
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call20 = call i32 @tab_IsLeaf(%struct.TABLEAU_HELP* %10)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %if.end.26

land.lhs.true.22:                                 ; preds = %if.end.19
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Empties, align 8
  %call23 = call i32 @list_Length(%struct.LIST_HELP* %11)
  %cmp = icmp ugt i32 %call23, 1
  br i1 %cmp, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true.22
  %call25 = call i32 @puts(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  store i32 1, i32* %Printem, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true.22, %if.end.19
  %12 = load i32, i32* %Printem, align 4
  %tobool27 = icmp ne i32 %12, 0
  br i1 %tobool27, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %if.end.26
  %call29 = call i32 @puts(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0))
  %13 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call30 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %13)
  call void @clause_PParentsListPrint(%struct.LIST_HELP* %call30)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %if.end.26
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Empties, align 8
  call void @list_Delete(%struct.LIST_HELP* %14)
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call32 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %15)
  call void @tab_CheckEmpties(%struct.TABLEAU_HELP* %call32)
  %16 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call33 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %16)
  call void @tab_CheckEmpties(%struct.TABLEAU_HELP* %call33)
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %C) #2 {
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
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #2 {
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

declare i32 @puts(i8*) #1

declare i32 @list_Length(%struct.LIST_HELP*) #1

declare void @clause_PParentsListPrint(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define void @tab_GetAllEmptyClauses(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %L) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %L.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %L, %struct.LIST_HELP*** %L.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %1)
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  call void @tab_GetAllEmptyClauses(%struct.TABLEAU_HELP* %call1, %struct.LIST_HELP** %2)
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %3)
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  call void @tab_GetAllEmptyClauses(%struct.TABLEAU_HELP* %call2, %struct.LIST_HELP** %4)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %L) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %L.addr = alloca %struct.LIST_HELP**, align 8
  %FirstEmpty = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %L, %struct.LIST_HELP*** %L.addr, align 8
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
  br i1 %tobool2, label %if.then.3, label %if.end.30

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct.CLAUSE_HELP* @clause_Null()
  store %struct.CLAUSE_HELP* %call4, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %2)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call8 to %struct.CLAUSE_HELP*
  %call9 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %5)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.23

if.then.11:                                       ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  %call12 = call %struct.CLAUSE_HELP* @clause_Null()
  %cmp = icmp eq %struct.CLAUSE_HELP* %6, %call12
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.11
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  br label %if.end.22

if.else:                                          ; preds = %if.then.11
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  %call15 = call i32 @clause_Number(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call16 to %struct.CLAUSE_HELP*
  %call17 = call i32 @clause_Number(%struct.CLAUSE_HELP* %11)
  %cmp18 = icmp sgt i32 %call15, %call17
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.else
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call20 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %13, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then.13
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  %call25 = call %struct.CLAUSE_HELP* @clause_Null()
  %cmp26 = icmp ne %struct.CLAUSE_HELP* %15, %call25
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %for.end
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %FirstEmpty, align 8
  %17 = bitcast %struct.CLAUSE_HELP* %16 to i8*
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %18, align 8
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %20, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %for.end
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %21 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call31 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %21)
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  call void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP* %call31, %struct.LIST_HELP** %22)
  %23 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call32 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %23)
  %24 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  call void @tab_GetEarliestEmptyClauses(%struct.TABLEAU_HELP* %call32, %struct.LIST_HELP** %24)
  br label %return

return:                                           ; preds = %if.end.30, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Number(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %clausenumber, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @tab_ToClauseList(%struct.TABLEAU_HELP* %T, %struct.LIST_HELP** %Proof) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Proof.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store %struct.LIST_HELP** %Proof, %struct.LIST_HELP*** %Proof.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %1)
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call1)
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Proof.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %2, align 8
  %call3 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call2, %struct.LIST_HELP* %3)
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Proof.addr, align 8
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %4, align 8
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %5)
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Proof.addr, align 8
  call void @tab_ToClauseList(%struct.TABLEAU_HELP* %call4, %struct.LIST_HELP** %6)
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %7)
  %8 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Proof.addr, align 8
  call void @tab_ToClauseList(%struct.TABLEAU_HELP* %call5, %struct.LIST_HELP** %8)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define void @tab_LabelNodes(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Num = alloca i32, align 4
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i32 0, i32* %Num, align 4
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_LabelNodesRec(%struct.TABLEAU_HELP* %0, i32* %Num)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_LabelNodesRec(%struct.TABLEAU_HELP* %T, i32* %Num) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Num.addr = alloca i32*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i32* %Num, i32** %Num.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32*, i32** %Num.addr, align 8
  %2 = load i32, i32* %1, align 4
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %3, i32 0, i32 6
  store i32 %2, i32* %Label, align 4
  %4 = load i32*, i32** %Num.addr, align 8
  %5 = load i32, i32* %4, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %4, align 4
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %6)
  %7 = load i32*, i32** %Num.addr, align 8
  call void @tab_LabelNodesRec(%struct.TABLEAU_HELP* %call1, i32* %7)
  %8 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %8)
  %9 = load i32*, i32** %Num.addr, align 8
  call void @tab_LabelNodesRec(%struct.TABLEAU_HELP* %call2, i32* %9)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @tab_PrintCgFormat(%struct.TABLEAU_HELP* %T) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintCgFormat(%struct._IO_FILE* %0, %struct.TABLEAU_HELP* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintCgFormat(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintNodesCgFormat(%struct._IO_FILE* %1, %struct.TABLEAU_HELP* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %4 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintEdgesCgFormat(%struct._IO_FILE* %3, %struct.TABLEAU_HELP* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define void @tab_WriteTableau(%struct.TABLEAU_HELP* %T, i8* %Filename, i32 %Format) #0 {
entry:
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Filename.addr = alloca i8*, align 8
  %Format.addr = alloca i32, align 4
  %File = alloca %struct._IO_FILE*, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  store i8* %Filename, i8** %Filename.addr, align 8
  store i32 %Format, i32* %Format.addr, align 4
  %0 = load i32, i32* %Format.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %Format.addr, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %2)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.8, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8*, i8** %Filename.addr, align 8
  %call2 = call %struct._IO_FILE* @misc_OpenFile(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %File, align 8
  %4 = load i32, i32* %Format.addr, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintDaVinciFormat(%struct._IO_FILE* %5, %struct.TABLEAU_HELP* %6)
  br label %if.end.8

if.else:                                          ; preds = %if.end
  %7 = load i32, i32* %Format.addr, align 4
  %cmp5 = icmp eq i32 %7, 1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintCgFormat(%struct._IO_FILE* %8, %struct.TABLEAU_HELP* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %if.then.4
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File, align 8
  %11 = load i8*, i8** %Filename.addr, align 8
  call void @misc_CloseFile(%struct._IO_FILE* %10, i8* %11)
  ret void
}

declare %struct._IO_FILE* @misc_OpenFile(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintDaVinciFormat(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintDaVinciFormatRec(%struct._IO_FILE* %1, %struct.TABLEAU_HELP* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %3)
  ret void
}

declare void @misc_CloseFile(%struct._IO_FILE*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #2 {
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
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #2 {
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

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %Clause, i32 %Level) #2 {
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
define internal void @clause_ClearSplitField(%struct.CLAUSE_HELP* %C) #2 {
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
define internal void @clause_SetSplitFieldBit(%struct.CLAUSE_HELP* %Clause, i32 %n) #2 {
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
define internal void @clause_SetSplitField(%struct.CLAUSE_HELP* %Clause, i64* %B, i32 %Length) #2 {
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
define internal i32 @clause_ComputeSplitFieldAddress(i32 %n, i32* %field) #2 {
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
define internal void @clause_ExpandSplitField(%struct.CLAUSE_HELP* %C, i32 %Length) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Free(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %a = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 12
  %1 = load i32, i32* %a, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %s = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 13
  %1 = load i32, i32* %s, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 11
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintNodesCgFormat(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintNodeLabel(%struct._IO_FILE* %2, %struct.TABLEAU_HELP* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %6 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %6, i32 0, i32 6
  %7 = load i32, i32* %Label, align 4
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call5 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %10)
  call void @tab_FPrintNodesCgFormat(%struct._IO_FILE* %9, %struct.TABLEAU_HELP* %call5)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %12 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %12)
  call void @tab_FPrintNodesCgFormat(%struct._IO_FILE* %11, %struct.TABLEAU_HELP* %call6)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintEdgesCgFormat(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call = call i32 @tab_IsEmpty(%struct.TABLEAU_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call1 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %3, i32 0, i32 6
  %4 = load i32, i32* %Label, align 4
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %5)
  %Label5 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %call4, i32 0, i32 6
  %6 = load i32, i32* %Label5, align 4
  call void @tab_FPrintEdgeCgFormat(%struct._IO_FILE* %2, i32 %4, i32 %6, i32 1)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.3, %if.end
  %7 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call7 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.13, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %9 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label10 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %9, i32 0, i32 6
  %10 = load i32, i32* %Label10, align 4
  %11 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call11 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %11)
  %Label12 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %call11, i32 0, i32 6
  %12 = load i32, i32* %Label12, align 4
  call void @tab_FPrintEdgeCgFormat(%struct._IO_FILE* %8, i32 %10, i32 %12, i32 0)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.6
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call14 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %14)
  call void @tab_FPrintEdgesCgFormat(%struct._IO_FILE* %13, %struct.TABLEAU_HELP* %call14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %16 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call15 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %16)
  call void @tab_FPrintEdgesCgFormat(%struct._IO_FILE* %15, %struct.TABLEAU_HELP* %call15)
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintNodeLabel(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 6
  %2 = load i32, i32* %Label, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call2 = call %struct.CLAUSE_HELP* @tab_SplitClause(%struct.TABLEAU_HELP* %5)
  call void @clause_PParentsFPrint(%struct._IO_FILE* %4, %struct.CLAUSE_HELP* %call2)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call %struct.CLAUSE_HELP* @tab_LeftSplitClause(%struct.TABLEAU_HELP* %8)
  call void @clause_PParentsFPrint(%struct._IO_FILE* %7, %struct.CLAUSE_HELP* %call4)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %10)
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %11)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %13 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call9 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %13)
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %call9)
  %14 = bitcast i8* %call10 to %struct.CLAUSE_HELP*
  call void @clause_PParentsFPrint(%struct._IO_FILE* %12, %struct.CLAUSE_HELP* %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call12 = call %struct.LIST_HELP* @tab_RightSplitClauses(%struct.TABLEAU_HELP* %16)
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call17 to %struct.CLAUSE_HELP*
  call void @clause_PParentsFPrint(%struct._IO_FILE* %19, %struct.CLAUSE_HELP* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %24 = load i32, i32* @pcheck_ClauseCg, align 4
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then.21, label %if.end.40

if.then.21:                                       ; preds = %if.end
  %25 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call22 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %25)
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.27

if.then.25:                                       ; preds = %if.then.21
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %if.end.39

if.else.27:                                       ; preds = %if.then.21
  %27 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call28 = call %struct.LIST_HELP* @tab_Clauses(%struct.TABLEAU_HELP* %27)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.36, %if.else.27
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot32 = xor i1 %tobool31, true
  br i1 %lnot32, label %for.body.33, label %for.end.38

for.body.33:                                      ; preds = %for.cond.29
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call34 to %struct.CLAUSE_HELP*
  call void @clause_PParentsFPrint(%struct._IO_FILE* %29, %struct.CLAUSE_HELP* %31)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %32)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.33
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.end.38:                                       ; preds = %for.cond.29
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %if.then.25
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call41 = call i32 @_IO_putc(i32 34, %struct._IO_FILE* %34)
  ret void
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintEdgeCgFormat(%struct._IO_FILE* %File, i32 %Source, i32 %Target, i32 %Left) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Source.addr = alloca i32, align 4
  %Target.addr = alloca i32, align 4
  %Left.addr = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %Source, i32* %Source.addr, align 4
  store i32 %Target, i32* %Target.addr, align 4
  store i32 %Left, i32* %Left.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load i32, i32* %Source.addr, align 4
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0), i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %4 = load i32, i32* %Target.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), i32 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load i32, i32* %Left.addr, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @_IO_putc(i32 48, %struct._IO_FILE* %7)
  br label %if.end

if.else:                                          ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @_IO_putc(i32 49, %struct._IO_FILE* %8)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintDaVinciFormatRec(%struct._IO_FILE* %File, %struct.TABLEAU_HELP* %T) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %T.addr = alloca %struct.TABLEAU_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.TABLEAU_HELP* %T, %struct.TABLEAU_HELP** %T.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %1, i32 0, i32 6
  %2 = load i32, i32* %Label, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  call void @tab_FPrintNodeLabel(%struct._IO_FILE* %4, %struct.TABLEAU_HELP* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @_IO_putc(i32 91, %struct._IO_FILE* %7)
  %8 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call4 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %10 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label5 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %10, i32 0, i32 6
  %11 = load i32, i32* %Label5, align 4
  %12 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call6 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %12)
  %Label7 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %call6, i32 0, i32 6
  %13 = load i32, i32* %Label7, align 4
  call void @tab_FPrintDaVinciEdge(%struct._IO_FILE* %9, i32 %11, i32 %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call8 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.19, label %if.then.10

if.then.10:                                       ; preds = %if.end
  %15 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call11 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.15, label %if.then.13

if.then.13:                                       ; preds = %if.then.10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %16)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %18 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %Label16 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %18, i32 0, i32 6
  %19 = load i32, i32* %Label16, align 4
  %20 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call17 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %20)
  %Label18 = getelementptr inbounds %struct.TABLEAU_HELP, %struct.TABLEAU_HELP* %call17, i32 0, i32 6
  %21 = load i32, i32* %Label18, align 4
  call void @tab_FPrintDaVinciEdge(%struct._IO_FILE* %17, i32 %19, i32 %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.15, %if.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %22)
  %23 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call21 = call i32 @tab_LeftBranchIsEmpty(%struct.TABLEAU_HELP* %23)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.19
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call24 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %24)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %26 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call25 = call %struct.TABLEAU_HELP* @tab_LeftBranch(%struct.TABLEAU_HELP* %26)
  call void @tab_FPrintDaVinciFormatRec(%struct._IO_FILE* %25, %struct.TABLEAU_HELP* %call25)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.end.19
  %27 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call27 = call i32 @tab_RightBranchIsEmpty(%struct.TABLEAU_HELP* %27)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.32, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call30 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %30 = load %struct.TABLEAU_HELP*, %struct.TABLEAU_HELP** %T.addr, align 8
  %call31 = call %struct.TABLEAU_HELP* @tab_RightBranch(%struct.TABLEAU_HELP* %30)
  call void @tab_FPrintDaVinciFormatRec(%struct._IO_FILE* %29, %struct.TABLEAU_HELP* %call31)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @tab_FPrintDaVinciEdge(%struct._IO_FILE* %File, i32 %L1, i32 %L2) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %L1.addr = alloca i32, align 4
  %L2.addr = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %L1, i32* %L1.addr, align 4
  store i32 %L2, i32* %L2.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load i32, i32* %L1.addr, align 4
  %2 = load i32, i32* %L2.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0), i32 %1, i32 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load i32, i32* %L2.addr, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 %5)
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
