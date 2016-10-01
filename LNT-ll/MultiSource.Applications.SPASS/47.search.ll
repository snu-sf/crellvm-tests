; ModuleID = './MultiSource.Applications.SPASS/47.search.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.SPLIT_NODE = type { i32, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.CLAUSE_HELP* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.DEF_HELP = type { %struct.term*, %struct.term*, %struct.term*, %struct.LIST_HELP*, i8*, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"\0A Split: %d %ld\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0A Father: \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"No father, unnecessary split.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\0A Split is \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unused.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"used.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c" Blocked clauses:\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"\0A Deleted clauses:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0A Splitstack:\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"\0A---------------------\00", align 1
@.str.10 = private unnamed_addr constant [96 x i8] c"\0A\0A Proofsearch: Current Level: %d Last Backtrack Level: %d Splits: %d Loops: %d Backtracked: %d\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"\0A Clause %d implies a non-trivial domain.\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"\0A Potentially trivial domain.\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"\0A Empty Clauses:\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A \00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"\0A Definitions:\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0A Worked Off Clauses:\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"\0A Usable Clauses:\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"\0A Finite predicates:\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"\0A Static Sort Theory:\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A Dynamic Sort Theory:\00", align 1
@.str.23 = private unnamed_addr constant [36 x i8] c"\0A Approximated Dynamic Sort Theory:\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@flag_CLEAN = external constant i32, align 4
@.str.24 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@clause_CLAUSECOUNTER = external global i32, align 4
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @prfs_Check(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %retval = alloca i32, align 4
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %Split = alloca %struct.SPLIT_NODE*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %0)
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
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %5)
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %6)
  %call5 = call i32 @clause_IsClause(%struct.CLAUSE_HELP* %4, i32* %call3, i32* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call7 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %7, i32 1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %9)
  %call11 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %8, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.9, %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call14 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %11)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.34, %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.36

for.body.19:                                      ; preds = %for.cond.15
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call20 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %14, %struct.CLAUSE_HELP** %Clause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call21 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %16)
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call22 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %17)
  %call23 = call i32 @clause_IsClause(%struct.CLAUSE_HELP* %15, i32* %call21, i32* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %lor.lhs.false.25, label %if.then.32

lor.lhs.false.25:                                 ; preds = %for.body.19
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call26 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %18, i32 1)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.32

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.25
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call29 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %20)
  %call30 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %19, i32 %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.25, %for.body.19
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.28
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.36:                                       ; preds = %for.cond.15
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call37 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %22)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.86, %for.end.36
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool40 = icmp ne i32 %call39, 0
  %lnot41 = xor i1 %tobool40, true
  br i1 %lnot41, label %for.body.42, label %for.end.88

for.body.42:                                      ; preds = %for.cond.38
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call43 to %struct.SPLIT_NODE*
  store %struct.SPLIT_NODE* %25, %struct.SPLIT_NODE** %Split, align 8
  %26 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call44 = call i32 @prfs_SplitIsUsed(%struct.SPLIT_NODE* %26)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.85

if.then.46:                                       ; preds = %for.body.42
  %27 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call47 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %27)
  %call48 = call i32 @list_Empty(%struct.LIST_HELP* %call47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.lhs.false.50, label %if.then.54

lor.lhs.false.50:                                 ; preds = %if.then.46
  %28 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call51 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %28)
  %call52 = call i32 @list_Empty(%struct.LIST_HELP* %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.else, label %if.then.54

if.then.54:                                       ; preds = %lor.lhs.false.50, %if.then.46
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.50
  %29 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call55 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %29)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %Clauses, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.66, %if.else
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %30)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %for.body.60, label %for.end.68

for.body.60:                                      ; preds = %for.cond.56
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call61 to %struct.CLAUSE_HELP*
  %call62 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %32)
  %33 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call63 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %33)
  %cmp = icmp eq i32 %call62, %call63
  br i1 %cmp, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body.60
  store i32 0, i32* %retval
  br label %return

if.end.65:                                        ; preds = %for.body.60
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call67 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %Clauses, align 8
  br label %for.cond.56

for.end.68:                                       ; preds = %for.cond.56
  %35 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call69 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %35)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Clauses, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.81, %for.end.68
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call71 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br i1 %lnot73, label %for.body.74, label %for.end.83

for.body.74:                                      ; preds = %for.cond.70
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call75 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call75 to %struct.CLAUSE_HELP*
  %call76 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %38)
  %39 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split, align 8
  %call77 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %39)
  %cmp78 = icmp eq i32 %call76, %call77
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %for.body.74
  store i32 0, i32* %retval
  br label %return

if.end.80:                                        ; preds = %for.body.74
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Clauses, align 8
  br label %for.cond.70

for.end.83:                                       ; preds = %for.cond.70
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %for.body.42
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call87 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call87, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.38

for.end.88:                                       ; preds = %for.cond.38
  %42 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call89 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %42)
  %cmp90 = icmp eq i32 %call89, 0
  br i1 %cmp90, label %if.then.91, label %if.else.96

if.then.91:                                       ; preds = %for.end.88
  %43 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call92 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %43)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %if.then.91
  store i32 0, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.then.91
  br label %if.end.103

if.else.96:                                       ; preds = %for.end.88
  %44 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call97 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %44)
  %45 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call98 = call %struct.SPLIT_NODE* @prfs_SplitStackTop(%struct.PROOFSEARCH_HELP* %45)
  %call99 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %call98)
  %cmp100 = icmp ne i32 %call97, %call99
  br i1 %cmp100, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.else.96
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %if.else.96
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.95
  %46 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call104 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %46)
  %47 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call105 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %47)
  %cmp106 = icmp slt i32 %call104, %call105
  br i1 %cmp106, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %if.end.103
  store i32 0, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.103
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.107, %if.then.101, %if.then.94, %if.then.79, %if.then.64, %if.then.54, %if.then.32, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
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

declare i32 @clause_IsClause(%struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %store = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 14
  %1 = load i32*, i32** %store, align 8
  ret i32* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %precedence = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 13
  %1 = load i32*, i32** %precedence, align 8
  ret i32* %1
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
define internal i32 @prfs_SplitIsUsed(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %used = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 1
  %1 = load i32, i32* %used, align 4
  ret i32 %1
}

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
define internal %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deletedClauses, align 8
  ret %struct.LIST_HELP* %1
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
define internal i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %S) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %splitlevel = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 0
  %1 = load i32, i32* %splitlevel, align 4
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
define internal i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 17
  %1 = load i32, i32* %lastbacktrack, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @prfs_DeleteDocProof(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %0)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %2)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %3)
  call void @clause_DeleteSharedClauseList(%struct.LIST_HELP* %call, %struct.SHARED_INDEX_NODE* %call1, i32* %call2, i32* %call3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  %tobool = icmp ne %struct.SHARED_INDEX_NODE* %call4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  call void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %dpindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %6, i32 0, i32 11
  store %struct.SHARED_INDEX_NODE* null, %struct.SHARED_INDEX_NODE** %dpindex, align 8
  %call6 = call %struct.LIST_HELP* @list_Nil()
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %7, i32 0, i32 12
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %dplist, align 8
  ret void
}

declare void @clause_DeleteSharedClauseList(%struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #2

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
define internal %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dpindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 11
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %dpindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

declare void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define void @prfs_Delete(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_InternalDelete(%struct.PROOFSEARCH_HELP* %0)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %1)
  call void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE* %call)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %2)
  call void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE* %call1)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %3)
  %tobool = icmp ne %struct.SHARED_INDEX_NODE* %call2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  call void @sharing_IndexDelete(%struct.SHARED_INDEX_NODE* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %5)
  call void @flag_DeleteStore(i32* %call4)
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %6)
  call void @symbol_DeletePrecedence(i32* %call5)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %8 = bitcast %struct.PROOFSEARCH_HELP* %7 to i8*
  call void @memory_Free(i8* %8, i32 160)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prfs_InternalDelete(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %0)
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %call)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %1)
  call void @list_DeleteWithElement(%struct.LIST_HELP* %call1, void (i8*)* bitcast (void (%struct.DEF_HELP*)* @def_Delete to void (i8*)*))
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.LIST_HELP* @prfs_UsedEmptyClauses(%struct.PROOFSEARCH_HELP* %2)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %3)
  call void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %call3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %4)
  call void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %call4)
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %5)
  call void @sort_TheoryDelete(%struct.SORTTHEORY_HELP* %call5)
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call9 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %9)
  call void @clause_DeleteSharedClauseList(%struct.LIST_HELP* %call6, %struct.SHARED_INDEX_NODE* %call7, i32* %call8, i32* %call9)
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %10)
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call11 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %11)
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call12 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %12)
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call13 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %13)
  call void @clause_DeleteSharedClauseList(%struct.LIST_HELP* %call10, %struct.SHARED_INDEX_NODE* %call11, i32* %call12, i32* %call13)
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call14 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %14)
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call15 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %15)
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call16 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %16)
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call17 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %17)
  call void @clause_DeleteSharedClauseList(%struct.LIST_HELP* %call14, %struct.SHARED_INDEX_NODE* %call15, i32* %call16, i32* %call17)
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_DeleteFinMonPreds(%struct.PROOFSEARCH_HELP* %18)
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call18 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %19)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool = icmp ne i32 %call19, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call20 to %struct.SPLIT_NODE*
  call void @prfs_SplitDelete(%struct.SPLIT_NODE* %22)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call22 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %24)
  call void @list_Delete(%struct.LIST_HELP* %call22)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 4
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %woindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %usindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 6
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %usindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_DeleteStore(i32* %Store) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load i32*, i32** %Store.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @memory_Free(i8* %1, i32 384)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_DeletePrecedence(i32* %P) #1 {
entry:
  %P.addr = alloca i32*, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load i32*, i32** %P.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @memory_Free(i8* %1, i32 16000)
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
define void @prfs_Clean(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_InternalDelete(%struct.PROOFSEARCH_HELP* %0)
  %call = call %struct.LIST_HELP* @list_Nil()
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %emptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 1
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %emptyclauses, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %2, i32 0, i32 0
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %definitions, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %usedemptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %3, i32 0, i32 2
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %usedemptyclauses, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %wolist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %4, i32 0, i32 5
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %wolist, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %5, i32 0, i32 7
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %uslist, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %finmonpreds = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %6, i32 0, i32 3
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %finmonpreds, align 8
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %astatic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %7, i32 0, i32 8
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %astatic, align 8
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %adynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %8, i32 0, i32 9
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %adynamic, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %9, i32 0, i32 10
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %dynamic, align 8
  %call6 = call %struct.LIST_HELP* @list_Nil()
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %10, i32 0, i32 12
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %dplist, align 8
  %call7 = call %struct.LIST_HELP* @list_StackBottom()
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %11, i32 0, i32 15
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %stack, align 8
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %12, i32 0, i32 16
  store i32 0, i32* %validlevel, align 4
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %13, i32 0, i32 17
  store i32 0, i32* %lastbacktrack, align 4
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %14, i32 0, i32 18
  store i32 0, i32* %splitcounter, align 4
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %keptclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %15, i32 0, i32 19
  store i32 0, i32* %keptclauses, align 4
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %derivedclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %16, i32 0, i32 20
  store i32 0, i32* %derivedclauses, align 4
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %17, i32 0, i32 21
  store i32 0, i32* %loops, align 4
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %18, i32 0, i32 22
  store i32 0, i32* %backtracked, align 4
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %nontrivclausenumber = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %19, i32 0, i32 23
  store i32 0, i32* %nontrivclausenumber, align 4
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %20)
  call void @symbol_ClearPrecedence(i32* %call8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_StackBottom() #1 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ClearPrecedence(i32* %P) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %clear = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 -42, i32* %clear, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  store i32 -42, i32* %arrayidx, align 4
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
define void @prfs_SwapIndexes(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %0)
  store %struct.SHARED_INDEX_NODE* %call, %struct.SHARED_INDEX_NODE** %Help, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %3)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %call2)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %5, i32 0, i32 4
  store %struct.SHARED_INDEX_NODE* %call3, %struct.SHARED_INDEX_NODE** %woindex, align 8
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %6, %struct.LIST_HELP* %7)
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Help, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %usindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %9, i32 0, i32 6
  store %struct.SHARED_INDEX_NODE* %8, %struct.SHARED_INDEX_NODE** %usindex, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %10)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %13, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %15)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot12 = xor i1 %tobool11, true
  br i1 %lnot12, label %for.body.13, label %for.end.17

for.body.13:                                      ; preds = %for.cond.9
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %18, i32 1)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.13
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %wolist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 5
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %wolist, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 7
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %uslist, align 8
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
define %struct.PROOFSEARCH_HELP* @prfs_Create() #0 {
entry:
  %Result = alloca %struct.PROOFSEARCH_HELP*, align 8
  %call = call i8* @memory_Malloc(i32 160)
  %0 = bitcast i8* %call to %struct.PROOFSEARCH_HELP*
  store %struct.PROOFSEARCH_HELP* %0, %struct.PROOFSEARCH_HELP** %Result, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %emptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 1
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %emptyclauses, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %2, i32 0, i32 0
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %definitions, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %usedemptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %3, i32 0, i32 2
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %usedemptyclauses, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @sharing_IndexCreate()
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %4, i32 0, i32 4
  store %struct.SHARED_INDEX_NODE* %call4, %struct.SHARED_INDEX_NODE** %woindex, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %wolist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %5, i32 0, i32 5
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %wolist, align 8
  %call6 = call %struct.SHARED_INDEX_NODE* @sharing_IndexCreate()
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %usindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %6, i32 0, i32 6
  store %struct.SHARED_INDEX_NODE* %call6, %struct.SHARED_INDEX_NODE** %usindex, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %7, i32 0, i32 7
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %uslist, align 8
  %call8 = call %struct.LIST_HELP* @list_Nil()
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %finmonpreds = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %8, i32 0, i32 3
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %finmonpreds, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %astatic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %9, i32 0, i32 8
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %astatic, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %adynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %10, i32 0, i32 9
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %adynamic, align 8
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %11, i32 0, i32 10
  store %struct.SORTTHEORY_HELP* null, %struct.SORTTHEORY_HELP** %dynamic, align 8
  %call9 = call i32* @symbol_CreatePrecedence()
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %precedence = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %12, i32 0, i32 13
  store i32* %call9, i32** %precedence, align 8
  %call10 = call i32* @flag_CreateStore()
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %store = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %13, i32 0, i32 14
  store i32* %call10, i32** %store, align 8
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %store11 = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %14, i32 0, i32 14
  %15 = load i32*, i32** %store11, align 8
  call void @flag_InitStoreByDefaults(i32* %15)
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %dpindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %16, i32 0, i32 11
  store %struct.SHARED_INDEX_NODE* null, %struct.SHARED_INDEX_NODE** %dpindex, align 8
  %call12 = call %struct.LIST_HELP* @list_Nil()
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %17, i32 0, i32 12
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %dplist, align 8
  %call13 = call %struct.LIST_HELP* @list_StackBottom()
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %18, i32 0, i32 15
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %stack, align 8
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %19, i32 0, i32 16
  store i32 0, i32* %validlevel, align 4
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %20, i32 0, i32 17
  store i32 0, i32* %lastbacktrack, align 4
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %21, i32 0, i32 18
  store i32 0, i32* %splitcounter, align 4
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %keptclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %22, i32 0, i32 19
  store i32 0, i32* %keptclauses, align 4
  %23 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %derivedclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %23, i32 0, i32 20
  store i32 0, i32* %derivedclauses, align 4
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %24, i32 0, i32 21
  store i32 0, i32* %loops, align 4
  %25 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %25, i32 0, i32 22
  store i32 0, i32* %backtracked, align 4
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  %nontrivclausenumber = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %26, i32 0, i32 23
  store i32 0, i32* %nontrivclausenumber, align 4
  %27 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Result, align 8
  ret %struct.PROOFSEARCH_HELP* %27
}

declare i8* @memory_Malloc(i32) #2

declare %struct.SHARED_INDEX_NODE* @sharing_IndexCreate() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @symbol_CreatePrecedence() #1 {
entry:
  %P = alloca i32*, align 8
  %call = call i8* @memory_Malloc(i32 16000)
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %P, align 8
  %1 = load i32*, i32** %P, align 8
  call void @symbol_ClearPrecedence(i32* %1)
  %2 = load i32*, i32** %P, align 8
  ret i32* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @flag_CreateStore() #1 {
entry:
  %store = alloca i32*, align 8
  %call = call i8* @memory_Malloc(i32 384)
  %0 = bitcast i8* %call to i32*
  store i32* %0, i32** %store, align 8
  %1 = load i32*, i32** %store, align 8
  call void @flag_CleanStore(i32* %1)
  %2 = load i32*, i32** %store, align 8
  ret i32* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_InitStoreByDefaults(i32* %Store) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32*, i32** %Store.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call = call i32* @flag_DefaultStore()
  %3 = load i32, i32* %i, align 4
  %call1 = call i32 @flag_GetFlagValue(i32* %call, i32 %3)
  call void @flag_SetFlagValue(i32* %1, i32 %2, i32 %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_CopyIndices(%struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP* %SearchCopy) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %SearchCopy.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.PROOFSEARCH_HELP* %SearchCopy, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %0)
  %cmp = icmp ne %struct.SHARED_INDEX_NODE* %call, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  %call1 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %1)
  %cmp2 = icmp eq %struct.SHARED_INDEX_NODE* %call1, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  call void @prfs_AddDocProofSharingIndex(%struct.PROOFSEARCH_HELP* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  %call6 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %7)
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %5, %struct.CLAUSE_HELP* %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot12 = xor i1 %tobool11, true
  br i1 %lnot12, label %for.body.13, label %for.end.18

for.body.13:                                      ; preds = %for.cond.9
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  %call15 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %13)
  call void @prfs_InsertWorkedOffClause(%struct.PROOFSEARCH_HELP* %11, %struct.CLAUSE_HELP* %call15)
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.13
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call19 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %15)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %for.end.18
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br i1 %lnot23, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.20
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %SearchCopy.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call25 to %struct.CLAUSE_HELP*
  %call26 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %19)
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %17, %struct.CLAUSE_HELP* %call26)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.20

for.end.29:                                       ; preds = %for.cond.20
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_AddDocProofSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @sharing_IndexCreate()
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dpindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 11
  store %struct.SHARED_INDEX_NODE* %call, %struct.SHARED_INDEX_NODE** %dpindex, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %2)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %4)
  %call3 = call %struct.LIST_HELP* @clause_InsertWeighed(%struct.CLAUSE_HELP* %1, %struct.LIST_HELP* %call, i32* %call1, i32* %call2)
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call3)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %8)
  call void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %5, %struct.SHARED_INDEX_NODE* %call4, i32* %call5, i32* %call6)
  ret void
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define void @prfs_InsertWorkedOffClause(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %0, i32 1)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %4)
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %call)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %1, %struct.LIST_HELP* %call1)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %8)
  call void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %5, %struct.SHARED_INDEX_NODE* %call2, i32* %call3, i32* %call4)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_InsertInSortTheories(%struct.PROOFSEARCH_HELP* %9, %struct.CLAUSE_HELP* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %0)
  %cmp = icmp eq %struct.SHARED_INDEX_NODE* %call, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = bitcast %struct.CLAUSE_HELP* %3 to i8*
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %5)
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %call1)
  call void @prfs_SetDocProofClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %call2)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %9)
  call void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %6, %struct.SHARED_INDEX_NODE* %call3, i32* %call4, i32* %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
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

declare void @clause_InsertIntoSharing(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal void @prfs_InsertInSortTheories(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %lit = alloca %struct.LITERAL_HELP*, align 8
  %copy = alloca %struct.CLAUSE_HELP*, align 8
  %approx = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %0)
  %cmp = icmp ne %struct.SORTTHEORY_HELP* %call, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %1)
  %cmp2 = icmp ne %struct.SORTTHEORY_HELP* %call1, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_IsDeclarationClause(%struct.CLAUSE_HELP* %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.46

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_Length(%struct.CLAUSE_HELP* %3)
  store i32 %call4, i32* %l, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %l, align 4
  %cmp6 = icmp slt i32 %5, %6
  br i1 %cmp6, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call7, %struct.LITERAL_HELP** %lit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %lit, align 8
  %call8 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %9)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.43

land.lhs.true.10:                                 ; preds = %for.body
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %lit, align 8
  %call11 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %10)
  %call12 = call i32 @term_TopSymbol(%struct.term* %call11)
  %call13 = call i32 @symbol_IsBaseSort(i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.43

if.then.15:                                       ; preds = %land.lhs.true.10
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call16 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %11)
  %cmp17 = icmp ne %struct.SORTTHEORY_HELP* %call16, null
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.then.15
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call19 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %12)
  store %struct.CLAUSE_HELP* %call19, %struct.CLAUSE_HELP** %copy, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call20 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %13)
  call void @list_Delete(%struct.LIST_HELP* %call20)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call21 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %14, %struct.LIST_HELP* %call21)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call22 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %15)
  call void @list_Delete(%struct.LIST_HELP* %call22)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call23 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %16, %struct.LIST_HELP* %call23)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call24 = call i32 @clause_Number(%struct.CLAUSE_HELP* %18)
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %17, i32 %call24)
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call25 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %23 = load i32, i32* %i, align 4
  %call26 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  call void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP* %call25, %struct.CLAUSE_HELP* %20, %struct.CLAUSE_HELP* %21, %struct.LITERAL_HELP* %call26)
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.then.15
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call27 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %24)
  %cmp28 = icmp ne %struct.SORTTHEORY_HELP* %call27, null
  br i1 %cmp28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %if.end
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call30 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %26)
  %27 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call31 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %27)
  %call32 = call %struct.LIST_HELP* @sort_ApproxMaxDeclClauses(%struct.CLAUSE_HELP* %25, i32* %call30, i32* %call31)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %approx, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.then.29
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %approx, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot = xor i1 %tobool35, true
  br i1 %lnot, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %approx, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call37 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %30, %struct.CLAUSE_HELP** %copy, align 8
  %31 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call38 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %31)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call39 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %35)
  %call40 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %34, i32 %call39)
  call void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP* %call38, %struct.CLAUSE_HELP* %32, %struct.CLAUSE_HELP* %33, %struct.LITERAL_HELP* %call40)
  br label %for.inc

for.inc:                                          ; preds = %for.body.36
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %approx, align 8
  %call41 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %approx, align 8
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %if.end.42

if.end.42:                                        ; preds = %for.end, %if.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.10, %for.body
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  br label %if.end.46

if.end.46:                                        ; preds = %for.end.45, %land.lhs.true, %lor.lhs.false
  ret void
}

declare %struct.LIST_HELP* @clause_InsertWeighed(%struct.CLAUSE_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

declare void @clause_Delete(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetDocProofClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 12
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %dplist, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %3)
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call1)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %4, i32 1)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %9)
  call void @clause_MoveSharedClause(%struct.CLAUSE_HELP* %5, %struct.SHARED_INDEX_NODE* %call2, %struct.SHARED_INDEX_NODE* %call3, i32* %call4, i32* %call5)
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = bitcast %struct.CLAUSE_HELP* %11 to i8*
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %13)
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %call6)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %10, %struct.LIST_HELP* %call7)
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_InsertInSortTheories(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15)
  ret void
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

declare void @clause_MoveSharedClause(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_DeleteFromSortTheories(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP* %1)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = bitcast %struct.CLAUSE_HELP* %4 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %5)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %call1)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %6, i32 1)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %7)
  %cmp = icmp eq %struct.SHARED_INDEX_NODE* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %9)
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %10)
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %11)
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %8, %struct.SHARED_INDEX_NODE* %call3, i32* %call4, i32* %call5)
  br label %if.end

if.else:                                          ; preds = %entry
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %13)
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %14)
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %15)
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call9 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %16)
  call void @clause_MoveSharedClause(%struct.CLAUSE_HELP* %12, %struct.SHARED_INDEX_NODE* %call6, %struct.SHARED_INDEX_NODE* %call7, i32* %call8, i32* %call9)
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %19 = bitcast %struct.CLAUSE_HELP* %18 to i8*
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %20)
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %call10)
  call void @prfs_SetDocProofClauses(%struct.PROOFSEARCH_HELP* %17, %struct.LIST_HELP* %call11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @prfs_DeleteFromSortTheories(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_IsDeclarationClause(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %1)
  %cmp = icmp ne %struct.SORTTHEORY_HELP* %call1, null
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @sort_TheoryDeleteClause(%struct.SORTTHEORY_HELP* %call3, %struct.CLAUSE_HELP* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %4)
  %cmp5 = icmp ne %struct.SORTTHEORY_HELP* %call4, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @sort_TheoryDeleteClause(%struct.SORTTHEORY_HELP* %call7, %struct.CLAUSE_HELP* %6)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  ret void
}

declare void @clause_DeleteFromSharing(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %3)
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call1)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  %cmp = icmp eq %struct.SHARED_INDEX_NODE* %call2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %8)
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %5, %struct.SHARED_INDEX_NODE* %call3, i32* %call4, i32* %call5)
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %10)
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %11)
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %12)
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call9 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %13)
  call void @clause_MoveSharedClause(%struct.CLAUSE_HELP* %9, %struct.SHARED_INDEX_NODE* %call6, %struct.SHARED_INDEX_NODE* %call7, i32* %call8, i32* %call9)
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = bitcast %struct.CLAUSE_HELP* %15 to i8*
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %17)
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %16, %struct.LIST_HELP* %call10)
  call void @prfs_SetDocProofClauses(%struct.PROOFSEARCH_HELP* %14, %struct.LIST_HELP* %call11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_MoveInvalidClausesDocProof(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %invalid = alloca %struct.LIST_HELP*, align 8
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %invalid, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %0)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %5)
  %call5 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %4, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %7 = bitcast %struct.CLAUSE_HELP* %6 to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %invalid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.15, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot12 = xor i1 %tobool11, true
  br i1 %lnot12, label %for.body.13, label %for.end.17

for.body.13:                                      ; preds = %for.cond.9
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  call void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP* %11, %struct.CLAUSE_HELP* %13)
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.body.13
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call16 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %invalid, align 8
  br label %for.cond.9

for.end.17:                                       ; preds = %for.cond.9
  %call18 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %invalid, align 8
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call19 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %15)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.32, %for.end.17
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br i1 %lnot23, label %for.body.24, label %for.end.34

for.body.24:                                      ; preds = %for.cond.20
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call25 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %18, %struct.CLAUSE_HELP** %clause, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call26 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %20)
  %call27 = call i32 @prfs_IsClauseValid(%struct.CLAUSE_HELP* %19, i32 %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %for.body.24
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %22 = bitcast %struct.CLAUSE_HELP* %21 to i8*
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %invalid, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %for.body.24
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.end.34:                                       ; preds = %for.cond.20
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.41, %for.end.34
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call36 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %for.body.39, label %for.end.43

for.body.39:                                      ; preds = %for.cond.35
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call40 to %struct.CLAUSE_HELP*
  call void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP* %26, %struct.CLAUSE_HELP* %28)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.39
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %invalid, align 8
  %call42 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %invalid, align 8
  br label %for.cond.35

for.end.43:                                       ; preds = %for.cond.35
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

; Function Attrs: nounwind uwtable
define void @prfs_ExtractWorkedOff(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_DeleteFromSortTheories(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %2, i32 1)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = bitcast %struct.CLAUSE_HELP* %5 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %6)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %3, %struct.LIST_HELP* %call1)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %8)
  call void @clause_MakeUnshared(%struct.CLAUSE_HELP* %7, %struct.SHARED_INDEX_NODE* %call2)
  ret void
}

declare void @clause_MakeUnshared(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*) #2

; Function Attrs: nounwind uwtable
define void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %3)
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call1)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  call void @clause_MakeUnshared(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_ExtractDocProof(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %3)
  call void @prfs_SetDocProofClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call1)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_DocProofSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  call void @clause_MakeUnshared(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %call2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_DeleteWorkedOff(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_DeleteFromSortTheories(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP* %1)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = bitcast %struct.CLAUSE_HELP* %4 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %5)
  call void @prfs_SetWorkedOffClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %call1)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %9)
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %6, %struct.SHARED_INDEX_NODE* %call2, i32* %call3, i32* %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_DeleteUsable(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = bitcast %struct.CLAUSE_HELP* %2 to i8*
  %call1 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call, i8* %3)
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %0, %struct.LIST_HELP* %call1)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %7)
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %call2, i32* %call3, i32* %call4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_PrintSplit(%struct.SPLIT_NODE* %Split) #0 {
entry:
  %Split.addr = alloca %struct.SPLIT_NODE*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SPLIT_NODE* %Split, %struct.SPLIT_NODE** %Split.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %0)
  %1 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %2 = ptrtoint %struct.SPLIT_NODE* %1 to i64
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %call, i64 %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call3 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %4)
  %cmp = icmp ne %struct.CLAUSE_HELP* %call3, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call4 = call %struct.CLAUSE_HELP* @prfs_SplitFatherClause(%struct.SPLIT_NODE* %5)
  call void @clause_Print(%struct.CLAUSE_HELP* %call4)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call7 = call i32 @prfs_SplitIsUnused(%struct.SPLIT_NODE* %8)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.else.10

if.then.8:                                        ; preds = %if.end
  %call9 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.12

if.else.10:                                       ; preds = %if.end
  %call11 = call i32 @puts(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.10, %if.then.8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call14 = call %struct.LIST_HELP* @prfs_SplitBlockedClauses(%struct.SPLIT_NODE* %10)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call17 = call i32 @putchar(i32 10)
  %call18 = call i32 @putchar(i32 32)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call19 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Split.addr, align 8
  %call22 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %16)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %for.body.27, label %for.end.33

for.body.27:                                      ; preds = %for.cond.23
  %call28 = call i32 @putchar(i32 10)
  %call29 = call i32 @putchar(i32 32)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call30 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %19)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.27
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.23

for.end.33:                                       ; preds = %for.cond.23
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

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

declare void @clause_Print(%struct.CLAUSE_HELP*) #2

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

declare i32 @puts(i8*) #2

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define void @prfs_PrintSplitStack(%struct.PROOFSEARCH_HELP* %PS) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.SPLIT_NODE*
  call void @prfs_PrintSplit(%struct.SPLIT_NODE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @prfs_Print(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %0)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %1)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %2)
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32 @prfs_BacktrackedClauses(%struct.PROOFSEARCH_HELP* %4)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i32 0, i32 0), i32 %call, i32 %call1, i32 %call2, i32 %call3, i32 %call4)
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %5)
  %cmp = icmp ugt i32 %call6, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %6)
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i32 0, i32 0), i32 %call7)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call11 = call %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call17 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.26, %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end.28

for.body.22:                                      ; preds = %for.cond.18
  %call23 = call i32 @putchar(i32 10)
  %call24 = call i32 @putchar(i32 32)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call25 to %struct.term*
  call void @term_Print(%struct.term* %19)
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.22
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.18

for.end.28:                                       ; preds = %for.cond.18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %21)
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call30 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %22)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.39, %for.end.28
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot34 = xor i1 %tobool33, true
  br i1 %lnot34, label %for.body.35, label %for.end.41

for.body.35:                                      ; preds = %for.cond.31
  %call36 = call i32 @putchar(i32 10)
  %call37 = call i32 @putchar(i32 32)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call38 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %25)
  br label %for.inc.39

for.inc.39:                                       ; preds = %for.body.35
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call40 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.31

for.end.41:                                       ; preds = %for.cond.31
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call42 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call43 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %28)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.52, %for.end.41
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool46 = icmp ne i32 %call45, 0
  %lnot47 = xor i1 %tobool46, true
  br i1 %lnot47, label %for.body.48, label %for.end.54

for.body.48:                                      ; preds = %for.cond.44
  %call49 = call i32 @putchar(i32 10)
  %call50 = call i32 @putchar(i32 32)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call51 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %31)
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.48
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.44

for.end.54:                                       ; preds = %for.cond.44
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call55 = call i32 @fputs(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %33)
  %34 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call56 = call %struct.LIST_HELP* @prfs_GetFinMonPreds(%struct.PROOFSEARCH_HELP* %34)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.68, %for.end.54
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %for.body.61, label %for.end.70

for.body.61:                                      ; preds = %for.cond.57
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call62 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call63 to %struct.LIST_HELP*
  %call64 = call i8* @list_PairFirst(%struct.LIST_HELP* %38)
  %39 = ptrtoint i8* %call64 to i32
  call void @symbol_Print(i32 %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call66 to %struct.LIST_HELP*
  %call67 = call i8* @list_PairSecond(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call67 to %struct.LIST_HELP*
  call void @term_TermListPrintPrefix(%struct.LIST_HELP* %43)
  br label %for.inc.68

for.inc.68:                                       ; preds = %for.body.61
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.end.70:                                       ; preds = %for.cond.57
  %45 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_PrintSplitStack(%struct.PROOFSEARCH_HELP* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %46)
  %47 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call72 = call %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %47)
  call void @sort_TheoryPrint(%struct.SORTTHEORY_HELP* %call72)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call73 = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %48)
  %49 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call74 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %49)
  call void @sort_TheoryPrint(%struct.SORTTHEORY_HELP* %call74)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %50)
  %51 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call76 = call %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %51)
  call void @sort_TheoryPrint(%struct.SORTTHEORY_HELP* %call76)
  %call77 = call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 18
  %1 = load i32, i32* %splitcounter, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 21
  %1 = load i32, i32* %loops, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_BacktrackedClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 22
  %1 = load i32, i32* %backtracked, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %nontrivclausenumber = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 23
  %1 = load i32, i32* %nontrivclausenumber, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %emptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %emptyclauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  ret %struct.LIST_HELP* %1
}

declare void @term_Print(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_GetFinMonPreds(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %finmonpreds = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %finmonpreds, align 8
  ret %struct.LIST_HELP* %1
}

declare void @symbol_Print(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

declare void @term_TermListPrintPrefix(%struct.LIST_HELP*) #2

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

declare void @sort_TheoryPrint(%struct.SORTTHEORY_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %astatic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 8
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %astatic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 10
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %dynamic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SORTTHEORY_HELP* @prfs_ApproximatedDynamicSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %adynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 9
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %adynamic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %SplitClause, %struct.LIST_HELP* %Literals) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %SplitClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  %NewSplit = alloca %struct.SPLIT_NODE*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %BlockedClause = alloca %struct.CLAUSE_HELP*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  %NewLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lengthBlocked = alloca i32, align 4
  %lengthNew = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %ls = alloca i32, align 4
  %nc = alloca i32, align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %UnitClause = alloca %struct.CLAUSE_HELP*, align 8
  %AtomList = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %SplitClause, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_DecSplitCounter(%struct.PROOFSEARCH_HELP* %0)
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call = call %struct.SPLIT_NODE* @prfs_SplitCreate(%struct.PROOFSEARCH_HELP* %1)
  store %struct.SPLIT_NODE* %call, %struct.SPLIT_NODE** %NewSplit, align 8
  %2 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  call void @prfs_SplitSetFatherClause(%struct.SPLIT_NODE* %2, %struct.CLAUSE_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call i32 @list_Length(%struct.LIST_HELP* %4)
  store i32 %call1, i32* %lengthNew, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %5)
  %6 = load i32, i32* %lengthNew, align 4
  %sub = sub nsw i32 %call2, %6
  store i32 %sub, i32* %lengthBlocked, align 4
  %7 = load i32, i32* %lengthNew, align 4
  %call3 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %7)
  store %struct.CLAUSE_HELP* %call3, %struct.CLAUSE_HELP** %NewClause, align 8
  %8 = load i32, i32* %lengthBlocked, align 4
  %call4 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %8)
  store %struct.CLAUSE_HELP* %call4, %struct.CLAUSE_HELP** %BlockedClause, align 8
  call void @clause_DecreaseCounter()
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %9, i32 0)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call5 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %10)
  store i32 %call5, i32* %lc, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call6 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %11)
  store i32 %call6, i32* %la, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call7 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %12)
  store i32 %call7, i32* %ls, align 4
  store i32 0, i32* %ns, align 4
  store i32 0, i32* %na, align 4
  store i32 0, i32* %nc, align 4
  %call8 = call i32 @clause_FirstLitIndex()
  store i32 %call8, i32* %j, align 4
  %call9 = call i32 @clause_FirstLitIndex()
  store i32 %call9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call10 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  store %struct.LITERAL_HELP* %call10, %struct.LITERAL_HELP** %NextLit, align 8
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call11 = call %struct.LITERAL_HELP* @clause_LiteralCopy(%struct.LITERAL_HELP* %17)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %NewLit, align 8
  %18 = load i32, i32* %lengthNew, align 4
  %cmp12 = icmp sgt i32 %18, 0
  br i1 %cmp12, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %for.body
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %21 = bitcast %struct.LITERAL_HELP* %20 to i8*
  %call13 = call i32 @list_PointerMember(%struct.LIST_HELP* %19, i8* %21)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %if.then, label %if.else.24

if.then:                                          ; preds = %land.lhs.true
  %22 = load i32, i32* %lengthNew, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %lengthNew, align 4
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NewLit, align 8
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %23, i32 %24, %struct.LITERAL_HELP* %25)
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NewLit, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_LiteralSetOwningClause(%struct.LITERAL_HELP* %26, %struct.CLAUSE_HELP* %27)
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call14 = call i32 @clause_Number(%struct.CLAUSE_HELP* %29)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %28, i32 %call14)
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %31 = load i32, i32* %i, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %30, i32 %31)
  %32 = load i32, i32* %i, align 4
  %33 = load i32, i32* %lc, align 4
  %cmp15 = icmp sle i32 %32, %33
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %34 = load i32, i32* %nc, align 4
  %inc17 = add nsw i32 %34, 1
  store i32 %inc17, i32* %nc, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %la, align 4
  %cmp18 = icmp sle i32 %35, %36
  br i1 %cmp18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %37 = load i32, i32* %na, align 4
  %inc20 = add nsw i32 %37, 1
  store i32 %inc20, i32* %na, align 4
  br label %if.end

if.else.21:                                       ; preds = %if.else
  %38 = load i32, i32* %ns, align 4
  %inc22 = add nsw i32 %38, 1
  store i32 %inc22, i32* %ns, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end, %if.then.16
  br label %if.end.27

if.else.24:                                       ; preds = %land.lhs.true, %for.body
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %j, align 4
  %sub25 = sub nsw i32 %40, %41
  %42 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NewLit, align 8
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %39, i32 %sub25, %struct.LITERAL_HELP* %42)
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NewLit, align 8
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  call void @clause_LiteralSetOwningClause(%struct.LITERAL_HELP* %43, %struct.CLAUSE_HELP* %44)
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call26 = call i32 @clause_Number(%struct.CLAUSE_HELP* %46)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %45, i32 %call26)
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %48 = load i32, i32* %i, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %47, i32 %48)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %49 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %49, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %51 = load i32, i32* %nc, align 4
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %50, i32 %51)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call29 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %53)
  %54 = load i32, i32* %nc, align 4
  %sub30 = sub nsw i32 %call29, %54
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %52, i32 %sub30)
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %56 = load i32, i32* %na, align 4
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %55, i32 %56)
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call31 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %58)
  %59 = load i32, i32* %na, align 4
  %sub32 = sub nsw i32 %call31, %59
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %57, i32 %sub32)
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %61 = load i32, i32* %ns, align 4
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %60, i32 %61)
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call33 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %63)
  %64 = load i32, i32* %ns, align 4
  %sub34 = sub nsw i32 %call33, %64
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %62, i32 %sub34)
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %66 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call35 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %66)
  %67 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call36 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %67)
  call void @clause_ReInit(%struct.CLAUSE_HELP* %65, i32* %call35, i32* %call36)
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %70 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %call37 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %70)
  call void @clause_UpdateSplitDataFromNewSplitting(%struct.CLAUSE_HELP* %68, %struct.CLAUSE_HELP* %69, i32 %call37)
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  call void @clause_SetFromSplitting(%struct.CLAUSE_HELP* %71)
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %call38 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %73)
  %call39 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %call38)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %72, %struct.LIST_HELP* %call39)
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call40 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %75)
  %add = add i32 %call40, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %74, i32 %add)
  %76 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %BlockedClause, align 8
  call void @prfs_SplitAddBlockedClause(%struct.SPLIT_NODE* %76, %struct.CLAUSE_HELP* %77)
  %78 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %call41 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SplitSetDeletedClauses(%struct.SPLIT_NODE* %78, %struct.LIST_HELP* %call41)
  %79 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %80 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  call void @prfs_SplitStackPush(%struct.PROOFSEARCH_HELP* %79, %struct.SPLIT_NODE* %80)
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %82 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call42 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %82)
  %83 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call43 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %83)
  call void @clause_ReInit(%struct.CLAUSE_HELP* %81, i32* %call42, i32* %call43)
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %86 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %call44 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %86)
  call void @clause_UpdateSplitDataFromNewSplitting(%struct.CLAUSE_HELP* %84, %struct.CLAUSE_HELP* %85, i32 %call44)
  %87 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromSplitting(%struct.CLAUSE_HELP* %87)
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call45 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %89)
  %call46 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %call45)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %88, %struct.LIST_HELP* %call46)
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %91 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call47 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %91)
  %add48 = add i32 %call47, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %90, i32 %add48)
  %92 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %92, i32 1)
  %93 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call49 = call i32 @clause_IsGround(%struct.CLAUSE_HELP* %93)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.85

if.then.51:                                       ; preds = %for.end
  %94 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call52 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %94)
  store i32 %call52, i32* %la, align 4
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call53 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %95)
  store i32 %call53, i32* %ls, align 4
  %96 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call54 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %96)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %Literals.addr, align 8
  %call55 = call i32 @clause_FirstLitIndex()
  store i32 %call55, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.82, %if.then.51
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %ls, align 4
  %cmp57 = icmp sle i32 %97, %98
  br i1 %cmp57, label %for.body.58, label %for.end.84

for.body.58:                                      ; preds = %for.cond.56
  %99 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %100 = load i32, i32* %i, align 4
  %call59 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %99, i32 %100)
  store %struct.LITERAL_HELP* %call59, %struct.LITERAL_HELP** %NextLit, align 8
  %101 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call60 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %101)
  %call61 = call %struct.term* @term_Copy(%struct.term* %call60)
  %102 = bitcast %struct.term* %call61 to i8*
  %call62 = call %struct.LIST_HELP* @list_List(i8* %102)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %AtomList, align 8
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %la, align 4
  %cmp63 = icmp sle i32 %103, %104
  br i1 %cmp63, label %if.then.64, label %if.else.70

if.then.64:                                       ; preds = %for.body.58
  %call65 = call %struct.LIST_HELP* @list_Nil()
  %call66 = call %struct.LIST_HELP* @list_Nil()
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AtomList, align 8
  %106 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call67 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %106)
  %107 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call68 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %107)
  %call69 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %call65, %struct.LIST_HELP* %call66, %struct.LIST_HELP* %105, i32* %call67, i32* %call68)
  store %struct.CLAUSE_HELP* %call69, %struct.CLAUSE_HELP** %UnitClause, align 8
  br label %if.end.76

if.else.70:                                       ; preds = %for.body.58
  %call71 = call %struct.LIST_HELP* @list_Nil()
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AtomList, align 8
  %call72 = call %struct.LIST_HELP* @list_Nil()
  %109 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call73 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %109)
  %110 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call74 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %110)
  %call75 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %call71, %struct.LIST_HELP* %108, %struct.LIST_HELP* %call72, i32* %call73, i32* %call74)
  store %struct.CLAUSE_HELP* %call75, %struct.CLAUSE_HELP** %UnitClause, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %if.then.64
  %111 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %111, i32 -1)
  call void @clause_DecreaseCounter()
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AtomList, align 8
  call void @list_Delete(%struct.LIST_HELP* %112)
  %113 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  call void @clause_SetFromSplitting(%struct.CLAUSE_HELP* %113)
  %114 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  %115 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %116 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %call77 = call i32 @prfs_SplitSplitLevel(%struct.SPLIT_NODE* %116)
  call void @clause_UpdateSplitDataFromNewSplitting(%struct.CLAUSE_HELP* %114, %struct.CLAUSE_HELP* %115, i32 %call77)
  %117 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  %118 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call78 = call i32 @clause_Number(%struct.CLAUSE_HELP* %118)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %117, i32 %call78)
  %119 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  %120 = load i32, i32* %i, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %119, i32 %120)
  %121 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  %122 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SplitClause.addr, align 8
  %call79 = call i32 @clause_Number(%struct.CLAUSE_HELP* %122)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %121, i32 %call79)
  %123 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %124)
  %125 = ptrtoint i8* %call80 to i32
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %123, i32 %125)
  %126 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %126)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %Literals.addr, align 8
  %127 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %NewSplit, align 8
  %128 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %UnitClause, align 8
  call void @prfs_SplitAddBlockedClause(%struct.SPLIT_NODE* %127, %struct.CLAUSE_HELP* %128)
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.76
  %129 = load i32, i32* %i, align 4
  %inc83 = add nsw i32 %129, 1
  store i32 %inc83, i32* %i, align 4
  br label %for.cond.56

for.end.84:                                       ; preds = %for.cond.56
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %for.end
  %130 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %130
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_DecSplitCounter(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 18
  %1 = load i32, i32* %splitcounter, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %splitcounter, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.SPLIT_NODE* @prfs_SplitCreate(%struct.PROOFSEARCH_HELP* %PS) #0 {
entry:
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Result = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  call void @prfs_IncValidLevel(%struct.PROOFSEARCH_HELP* %0)
  %call = call i8* @memory_Malloc(i32 32)
  %1 = bitcast i8* %call to %struct.SPLIT_NODE*
  store %struct.SPLIT_NODE* %1, %struct.SPLIT_NODE** %Result, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call1 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %2)
  %3 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  %splitlevel = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %3, i32 0, i32 0
  store i32 %call1, i32* %splitlevel, align 4
  %4 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  %used = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %4, i32 0, i32 1
  store i32 0, i32* %used, align 4
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %5 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  %blockedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %5, i32 0, i32 2
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %blockedClauses, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %6 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %6, i32 0, i32 3
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %deletedClauses, align 8
  %7 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  %father = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %7, i32 0, i32 4
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %father, align 8
  %8 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %Result, align 8
  ret %struct.SPLIT_NODE* %8
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

declare i32 @list_Length(%struct.LIST_HELP*) #2

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

declare %struct.CLAUSE_HELP* @clause_CreateBody(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_DecreaseCounter() #1 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @clause_CLAUSECOUNTER, align 4
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
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
define internal i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
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

declare %struct.LITERAL_HELP* @clause_LiteralCopy(%struct.LITERAL_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerMember(%struct.LIST_HELP* %List, i8* %Element) #1 {
entry:
  %retval = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %Element.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %cmp = icmp eq i8* %1, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetLiteral(%struct.CLAUSE_HELP* %C, i32 %Index, %struct.LITERAL_HELP* %L) #1 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca i32, align 4
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store i32 %Index, i32* %Index.addr, align 4
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 10
  %3 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %3, i64 %idxprom
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralSetOwningClause(%struct.LITERAL_HELP* %L, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %1, i32 0, i32 3
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %owningClause, align 8
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
define internal void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %Clause, i32 %Number) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 11
  store i32 %0, i32* %c, align 4
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
define internal void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %Clause, i32 %Number) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %a = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 12
  store i32 %0, i32* %a, align 4
  ret void
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
define internal void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %Clause, i32 %Number) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %s = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 13
  store i32 %0, i32* %s, align 4
  ret void
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
define internal void @clause_ReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Normalize(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetMaxLitFlags(%struct.CLAUSE_HELP* %1, i32* %2, i32* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %4, i32* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_UpdateMaxVar(%struct.CLAUSE_HELP* %6)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateSplitDataFromNewSplitting(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Father, i32 %Level) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Father.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %field = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Father, %struct.CLAUSE_HELP** %Father.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %1 = load i32, i32* %Level.addr, align 4
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %0, i32 %1)
  %2 = load i32, i32* %Level.addr, align 4
  %call = call i32 @clause_ComputeSplitFieldAddress(i32 %2, i32* %field)
  store i32 %call, i32* %Level.addr, align 4
  %3 = load i32, i32* %field, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 5
  %5 = load i32, i32* %splitfield_length, align 4
  %cmp = icmp uge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 4
  %7 = load i64*, i64** %splitfield, align 8
  %cmp1 = icmp ne i64* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 4
  %9 = load i64*, i64** %splitfield3, align 8
  %10 = bitcast i64* %9 to i8*
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 5
  %12 = load i32, i32* %splitfield_length4, align 4
  %conv = zext i32 %12 to i64
  %mul = mul i64 8, %conv
  %conv5 = trunc i64 %mul to i32
  call void @memory_Free(i8* %10, i32 %conv5)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  %13 = load i32, i32* %field, align 4
  %add = add i32 %13, 1
  %conv6 = zext i32 %add to i64
  %mul7 = mul i64 %conv6, 8
  %conv8 = trunc i64 %mul7 to i32
  %call9 = call i8* @memory_Malloc(i32 %conv8)
  %14 = bitcast i8* %call9 to i64*
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield10 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 4
  store i64* %14, i64** %splitfield10, align 8
  %16 = load i32, i32* %field, align 4
  %add11 = add i32 %16, 1
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length12 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %17, i32 0, i32 5
  store i32 %add11, i32* %splitfield_length12, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %entry
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call14 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %18, i32 8)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %19, i32 8)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length17 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %21, i32 0, i32 5
  %22 = load i32, i32* %splitfield_length17, align 4
  %cmp18 = icmp ult i32 %20, %22
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom = zext i32 %23 to i64
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %24, i32 0, i32 4
  %25 = load i64*, i64** %splitfield20, align 8
  %arrayidx = getelementptr inbounds i64, i64* %25, i64 %idxprom
  %26 = load i64, i64* %arrayidx, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom21 = zext i32 %27 to i64
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield22 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %28, i32 0, i32 4
  %29 = load i64*, i64** %splitfield22, align 8
  %arrayidx23 = getelementptr inbounds i64, i64* %29, i64 %idxprom21
  store i64 %26, i64* %arrayidx23, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length24 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %31, i32 0, i32 5
  %32 = load i32, i32* %splitfield_length24, align 4
  store i32 %32, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length26 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %34, i32 0, i32 5
  %35 = load i32, i32* %splitfield_length26, align 4
  %cmp27 = icmp ult i32 %33, %35
  br i1 %cmp27, label %for.body.29, label %for.end.35

for.body.29:                                      ; preds = %for.cond.25
  %36 = load i32, i32* %i, align 4
  %idxprom30 = zext i32 %36 to i64
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield31 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %37, i32 0, i32 4
  %38 = load i64*, i64** %splitfield31, align 8
  %arrayidx32 = getelementptr inbounds i64, i64* %38, i64 %idxprom30
  store i64 0, i64* %arrayidx32, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.29
  %39 = load i32, i32* %i, align 4
  %inc34 = add i32 %39, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  %40 = load i32, i32* %field, align 4
  %idxprom36 = zext i32 %40 to i64
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield37 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %41, i32 0, i32 4
  %42 = load i64*, i64** %splitfield37, align 8
  %arrayidx38 = getelementptr inbounds i64, i64* %42, i64 %idxprom36
  %43 = load i64, i64* %arrayidx38, align 8
  %44 = load i32, i32* %Level.addr, align 4
  %sh_prom = zext i32 %44 to i64
  %shl = shl i64 1, %sh_prom
  %or = or i64 %43, %shl
  %45 = load i32, i32* %field, align 4
  %idxprom39 = zext i32 %45 to i64
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield40 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %46, i32 0, i32 4
  %47 = load i64*, i64** %splitfield40, align 8
  %arrayidx41 = getelementptr inbounds i64, i64* %47, i64 %idxprom39
  store i64 %or, i64* %arrayidx41, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSplitting(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 15, i32* %origin, align 4
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

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

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
define internal void @prfs_SplitAddBlockedClause(%struct.SPLIT_NODE* %S, %struct.CLAUSE_HELP* %C) #1 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  %2 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %blockedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %2, i32 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %blockedClauses, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %blockedClauses1 = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %4, i32 0, i32 2
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %blockedClauses1, align 8
  ret void
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
define internal void @prfs_SplitStackPush(%struct.PROOFSEARCH_HELP* %Prf, %struct.SPLIT_NODE* %S) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %1 = bitcast %struct.SPLIT_NODE* %0 to i8*
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %2, i32 0, i32 15
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %1, %struct.LIST_HELP* %3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack1 = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %4, i32 0, i32 15
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %stack1, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsGround(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %0)
  %call1 = call i32 @symbol_VarIndex(i32 %call)
  %call2 = call i32 @symbol_GetInitialStandardVarCounter()
  %cmp = icmp eq i32 %call1, %call2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

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
define %struct.CLAUSE_HELP* @prfs_PerformSplitting(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %LitList = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_GetSplitLiterals(%struct.PROOFSEARCH_HELP* %1, %struct.CLAUSE_HELP* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %LitList, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call5 = call %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP* %4, %struct.CLAUSE_HELP* %5, %struct.LIST_HELP* %6)
  store %struct.CLAUSE_HELP* %call5, %struct.CLAUSE_HELP** %Result, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  call void @list_Delete(%struct.LIST_HELP* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %8
}

declare i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @prfs_GetSplitLiterals(%struct.PROOFSEARCH_HELP* %PS, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %PS.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %OldLength = alloca i32, align 4
  %LitList = alloca %struct.LIST_HELP*, align 8
  %VarOcc = alloca %struct.LIST_HELP*, align 8
  %NextOcc = alloca %struct.LIST_HELP*, align 8
  %Change = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %PS, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %LitList, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %PS.addr, align 8
  %call1 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %0)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_HasSuccLits(%struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.73

if.then.3:                                        ; preds = %if.then
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_HasGroundSuccLit(%struct.CLAUSE_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.18

if.then.6:                                        ; preds = %if.then.3
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call %struct.LITERAL_HELP* @clause_GetGroundSuccLit(%struct.CLAUSE_HELP* %3)
  store %struct.LITERAL_HELP* %call7, %struct.LITERAL_HELP** %NextLit, align 8
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %5 = bitcast %struct.LITERAL_HELP* %4 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %LitList, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.6
  %8 = load i32, i32* %i, align 4
  %call10 = call i32 @clause_FirstLitIndex()
  %cmp11 = icmp sge i32 %8, %call10
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call12 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.LITERAL_HELP* %call12, %struct.LITERAL_HELP** %NextLit, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call13 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  %call14 = call i32 @term_IsGround(%struct.term* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %for.body
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %13 = bitcast %struct.LITERAL_HELP* %12 to i8*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %LitList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.3
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call19 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %18)
  %call20 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %call19)
  store %struct.LITERAL_HELP* %call20, %struct.LITERAL_HELP** %NextLit, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call21 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %19)
  %call22 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call21)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %VarOcc, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %21 = bitcast %struct.LITERAL_HELP* %20 to i8*
  %call23 = call %struct.LIST_HELP* @list_List(i8* %21)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %LitList, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call24 = call i32 @clause_Length(%struct.CLAUSE_HELP* %22)
  store i32 %call24, i32* %length, align 4
  store i32 1, i32* %Change, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.51, %if.end.18
  %23 = load i32, i32* %Change, align 4
  %tobool25 = icmp ne i32 %23, 0
  br i1 %tobool25, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %Change, align 4
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call26 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %24)
  %sub = sub nsw i32 %call26, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.49, %while.body
  %25 = load i32, i32* %i, align 4
  %call28 = call i32 @clause_FirstLitIndex()
  %cmp29 = icmp sge i32 %25, %call28
  br i1 %cmp29, label %for.body.30, label %for.end.51

for.body.30:                                      ; preds = %for.cond.27
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call31 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %26, i32 %27)
  store %struct.LITERAL_HELP* %call31, %struct.LITERAL_HELP** %NextLit, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %30 = bitcast %struct.LITERAL_HELP* %29 to i8*
  %call32 = call i32 @list_PointerMember(%struct.LIST_HELP* %28, i8* %30)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.48, label %if.then.34

if.then.34:                                       ; preds = %for.body.30
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call35 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %31)
  %call36 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call35)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %NextOcc, align 8
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarOcc, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextOcc, align 8
  %call37 = call i32 @list_HasIntersection(%struct.LIST_HELP* %32, %struct.LIST_HELP* %33)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else

if.then.39:                                       ; preds = %if.then.34
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarOcc, align 8
  %call40 = call i32 @list_Length(%struct.LIST_HELP* %34)
  store i32 %call40, i32* %OldLength, align 4
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarOcc, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextOcc, align 8
  %call41 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %VarOcc, align 8
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %38 = bitcast %struct.LITERAL_HELP* %37 to i8*
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call42 = call %struct.LIST_HELP* @list_Cons(i8* %38, %struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %LitList, align 8
  %40 = load i32, i32* %OldLength, align 4
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarOcc, align 8
  %call43 = call i32 @list_Length(%struct.LIST_HELP* %41)
  %cmp44 = icmp ne i32 %40, %call43
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.39
  store i32 1, i32* %Change, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.then.39
  br label %if.end.47

if.else:                                          ; preds = %if.then.34
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextOcc, align 8
  call void @list_Delete(%struct.LIST_HELP* %42)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %for.body.30
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %43 = load i32, i32* %i, align 4
  %dec50 = add nsw i32 %43, -1
  store i32 %dec50, i32* %i, align 4
  br label %for.cond.27

for.end.51:                                       ; preds = %for.cond.27
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call52 = call i32 @list_Length(%struct.LIST_HELP* %44)
  %45 = load i32, i32* %length, align 4
  %cmp53 = icmp eq i32 %call52, %45
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %while.end
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  call void @list_Delete(%struct.LIST_HELP* %46)
  %call55 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %LitList, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %while.end
  store i32 1, i32* %Change, align 4
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call57 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %47)
  store i32 %call57, i32* %i, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.67, %if.end.56
  %48 = load i32, i32* %i, align 4
  %49 = load i32, i32* %length, align 4
  %cmp59 = icmp slt i32 %48, %49
  br i1 %cmp59, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.58
  %50 = load i32, i32* %Change, align 4
  %tobool60 = icmp ne i32 %50, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.58
  %51 = phi i1 [ false, %for.cond.58 ], [ %tobool60, %land.rhs ]
  br i1 %51, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %land.end
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %54 = load i32, i32* %i, align 4
  %call62 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %53, i32 %54)
  %55 = bitcast %struct.LITERAL_HELP* %call62 to i8*
  %call63 = call i32 @list_PointerMember(%struct.LIST_HELP* %52, i8* %55)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %for.body.61
  store i32 0, i32* %Change, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %for.body.61
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %56 = load i32, i32* %i, align 4
  %inc = add nsw i32 %56, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.58

for.end.68:                                       ; preds = %land.end
  %57 = load i32, i32* %Change, align 4
  %tobool69 = icmp ne i32 %57, 0
  br i1 %tobool69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %for.end.68
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  call void @list_Delete(%struct.LIST_HELP* %58)
  %call71 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %LitList, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %for.end.68
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarOcc, align 8
  call void @list_Delete(%struct.LIST_HELP* %59)
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %if.then
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  store %struct.LIST_HELP* %60, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.74, %for.end
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %61
}

; Function Attrs: nounwind uwtable
define void @prfs_InstallFiniteMonadicPredicates(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Clauses, %struct.LIST_HELP* %Predicates) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Predicates.addr = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %Predicates, %struct.LIST_HELP** %Predicates.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
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
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call3 = call i32 @clause_Length(%struct.CLAUSE_HELP* %4)
  %cmp = icmp eq i32 %call3, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call4 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %5)
  %cmp5 = icmp eq i32 %call4, 1
  br i1 %cmp5, label %if.then, label %if.end.30

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call6 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  %call7 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %call6)
  store %struct.term* %call7, %struct.term** %Atom, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %9)
  %conv = sext i32 %call8 to i64
  %10 = inttoptr i64 %conv to i8*
  %call9 = call i32 @list_PointerMember(%struct.LIST_HELP* %8, i8* %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.29

if.then.11:                                       ; preds = %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %12)
  %conv13 = sext i32 %call12 to i64
  %13 = inttoptr i64 %conv13 to i8*
  %call14 = call %struct.LIST_HELP* @list_AssocListPair(%struct.LIST_HELP* %11, i8* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Pair, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call15 = call %struct.LIST_HELP* @list_PairNull()
  %cmp16 = icmp ne %struct.LIST_HELP* %14, %call15
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then.11
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %16 = load %struct.term*, %struct.term** %Atom, align 8
  %call19 = call %struct.term* @term_FirstArgument(%struct.term* %16)
  %call20 = call %struct.term* @term_Copy(%struct.term* %call19)
  %17 = bitcast %struct.term* %call20 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call21 = call i8* @list_PairSecond(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %19)
  %20 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @list_PairRplacSecond(%struct.LIST_HELP* %15, i8* %20)
  br label %if.end

if.else:                                          ; preds = %if.then.11
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %22 = load %struct.term*, %struct.term** %Atom, align 8
  %call23 = call i32 @term_TopSymbol(%struct.term* %22)
  %conv24 = sext i32 %call23 to i64
  %23 = inttoptr i64 %conv24 to i8*
  %24 = load %struct.term*, %struct.term** %Atom, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  %call26 = call %struct.term* @term_Copy(%struct.term* %call25)
  %25 = bitcast %struct.term* %call26 to i8*
  %call27 = call %struct.LIST_HELP* @list_List(i8* %25)
  %26 = bitcast %struct.LIST_HELP* %call27 to i8*
  %call28 = call %struct.LIST_HELP* @list_AssocCons(%struct.LIST_HELP* %21, i8* %23, i8* %26)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %if.then
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_DeleteFinMonPreds(%struct.PROOFSEARCH_HELP* %28)
  %29 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  call void @prfs_SetFinMonPreds(%struct.PROOFSEARCH_HELP* %29, %struct.LIST_HELP* %30)
  ret void
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
define internal i32 @term_TopSymbol(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

declare %struct.LIST_HELP* @list_AssocListPair(%struct.LIST_HELP*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairNull() #1 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairRplacSecond(%struct.LIST_HELP* %L, i8* %P) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load i8*, i8** %P.addr, align 8
  %2 = bitcast i8* %1 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %0, %struct.LIST_HELP* %2)
  ret void
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
define internal %struct.LIST_HELP* @list_AssocCons(%struct.LIST_HELP* %L, i8* %Key, i8* %Value) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %Key.addr = alloca i8*, align 8
  %Value.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %1 = load i8*, i8** %Value.addr, align 8
  %call = call %struct.LIST_HELP* @list_PairCreate(i8* %0, i8* %1)
  %2 = bitcast %struct.LIST_HELP* %call to i8*
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %2, %struct.LIST_HELP* %3)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_DeleteFinMonPreds(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %finmonpreds = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %finmonpreds, align 8
  call void @list_DeleteAssocListWithValues(%struct.LIST_HELP* %1, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @term_DeleteTermList to void (i8*)*))
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SetFinMonPreds(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %call)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetFinMonPreds(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Preds) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Preds.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Preds, %struct.LIST_HELP** %Preds.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Preds.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %finmonpreds = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 3
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %finmonpreds, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @prfs_GetNumberOfInstances(%struct.PROOFSEARCH_HELP* %Search, %struct.LITERAL_HELP* %Literal, i32 %Usables) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Usables.addr = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %NrOfInstances = alloca i32, align 4
  %WOIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %UsIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  store i32 %Usables, i32* %Usables.addr, align 4
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call, %struct.term** %Atom, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %1)
  store %struct.SHARED_INDEX_NODE* %call1, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %2)
  store %struct.SHARED_INDEX_NODE* %call2, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %3 = load %struct.term*, %struct.term** %Atom, align 8
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %call3 = call i32 @sharing_GetNumberOfInstances(%struct.term* %3, %struct.SHARED_INDEX_NODE* %4)
  store i32 %call3, i32* %NrOfInstances, align 4
  %5 = load i32, i32* %Usables.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %call4 = call i32 @sharing_GetNumberOfInstances(%struct.term* %6, %struct.SHARED_INDEX_NODE* %7)
  %8 = load i32, i32* %NrOfInstances, align 4
  %add = add i32 %8, %call4
  store i32 %add, i32* %NrOfInstances, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call i32 @fol_IsEquality(%struct.term* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.34

if.then.7:                                        ; preds = %if.end
  %call8 = call i32 @fol_Equality()
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  %call10 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call9)
  %call11 = call %struct.term* @term_Create(i32 %call8, %struct.LIST_HELP* %call10)
  store %struct.term* %call11, %struct.term** %Atom, align 8
  %11 = load %struct.term*, %struct.term** %Atom, align 8
  %12 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %call12 = call i32 @sharing_GetNumberOfInstances(%struct.term* %11, %struct.SHARED_INDEX_NODE* %12)
  %13 = load i32, i32* %NrOfInstances, align 4
  %add13 = add i32 %13, %call12
  store i32 %add13, i32* %NrOfInstances, align 4
  %14 = load i32, i32* %Usables.addr, align 4
  %tobool14 = icmp ne i32 %14, 0
  br i1 %tobool14, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.then.7
  %15 = load %struct.term*, %struct.term** %Atom, align 8
  %16 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %call16 = call i32 @sharing_GetNumberOfInstances(%struct.term* %15, %struct.SHARED_INDEX_NODE* %16)
  %17 = load i32, i32* %NrOfInstances, align 4
  %add17 = add i32 %17, %call16
  store i32 %add17, i32* %NrOfInstances, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.then.7
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  call void @list_Delete(%struct.LIST_HELP* %call19)
  %19 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Free(%struct.term* %19)
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call20 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %20)
  store %struct.term* %call20, %struct.term** %Atom, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call21 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %if.end.18
  %22 = load %struct.term*, %struct.term** %Atom, align 8
  %call24 = call %struct.term* @term_FirstArgument(%struct.term* %22)
  %23 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %call25 = call i32 @sharing_GetNumberOfInstances(%struct.term* %call24, %struct.SHARED_INDEX_NODE* %23)
  %24 = load i32, i32* %NrOfInstances, align 4
  %add26 = add i32 %24, %call25
  store i32 %add26, i32* %NrOfInstances, align 4
  %25 = load i32, i32* %Usables.addr, align 4
  %tobool27 = icmp ne i32 %25, 0
  br i1 %tobool27, label %if.then.28, label %if.end.32

if.then.28:                                       ; preds = %if.then.23
  %26 = load %struct.term*, %struct.term** %Atom, align 8
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %26)
  %27 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %call30 = call i32 @sharing_GetNumberOfInstances(%struct.term* %call29, %struct.SHARED_INDEX_NODE* %27)
  %28 = load i32, i32* %NrOfInstances, align 4
  %add31 = add i32 %28, %call30
  store i32 %add31, i32* %NrOfInstances, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.28, %if.then.23
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.18
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %29 = load i32, i32* %NrOfInstances, align 4
  ret i32 %29
}

declare i32 @sharing_GetNumberOfInstances(%struct.term*, %struct.SHARED_INDEX_NODE*) #2

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

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #1 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

declare %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP*) #2

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
define internal void @term_Free(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %oriented, align 4
  ret i32 %1
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

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #2

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

declare void @def_Delete(%struct.DEF_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_UsedEmptyClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %usedemptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %usedemptyclauses, align 8
  ret %struct.LIST_HELP* %1
}

declare void @sort_TheoryDelete(%struct.SORTTHEORY_HELP*) #2

; Function Attrs: nounwind uwtable
define internal void @prfs_SplitDelete(%struct.SPLIT_NODE* %S) #0 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %blockedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %blockedClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %1)
  %2 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %2, i32 0, i32 3
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deletedClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %3)
  %4 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %father = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %4, i32 0, i32 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %father, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %father1 = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %6, i32 0, i32 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %father1, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  call void @prfs_SplitFree(%struct.SPLIT_NODE* %8)
  ret void
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
define internal void @flag_CleanStore(i32* %Store) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* @flag_CLEAN, align 4
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  store i32 %1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32, i32* %Value.addr, align 4
  call void @flag_CheckFlagValueInRange(i32 %1, i32 %2)
  %3 = load i32, i32* %Value.addr, align 4
  %4 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* %Store, i32 %FlagId) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  %Value = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %FlagId.addr, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %Store.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  store i32 %3, i32* %Value, align 4
  %4 = load i32, i32* %Value, align 4
  ret i32 %4
}

declare i32* @flag_DefaultStore() #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  %Value.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %FlagId.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Value.addr, align 4
  %2 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_Minimum(i32 %2)
  %cmp = icmp sle i32 %1, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load i32, i32* %Value.addr, align 4
  %5 = load i32, i32* %FlagId.addr, align 4
  %call2 = call i8* @flag_Name(i32 %5)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.24, i32 0, i32 0), i32 %4, i8* %call2)
  call void @misc_Error()
  br label %if.end.8

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %Value.addr, align 4
  %7 = load i32, i32* %FlagId.addr, align 4
  %call3 = call i32 @flag_Maximum(i32 %7)
  %cmp4 = icmp sge i32 %6, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fflush(%struct._IO_FILE* %8)
  %9 = load i32, i32* %Value.addr, align 4
  %10 = load i32, i32* %FlagId.addr, align 4
  %call7 = call i8* @flag_Name(i32 %10)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare void @misc_UserErrorReport(i8*, ...) #2

declare i8* @flag_Name(i32) #2

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

declare i32 @flag_Maximum(i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare i32 @clause_IsDeclarationClause(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %0, i32 1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsBaseSort(i32 %Symbol) #1 {
entry:
  %Symbol.addr = alloca i32, align 4
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load i32, i32* %Symbol.addr, align 4
  %call = call i32 @symbol_Arity(i32 %0)
  %cmp = icmp eq i32 %call, 1
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

declare void @sort_TheoryInsertClause(%struct.SORTTHEORY_HELP*, %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, %struct.LITERAL_HELP*) #2

declare %struct.LIST_HELP* @sort_ApproxMaxDeclClauses(%struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %L, i32 %Flag) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %Flag.addr = alloca i32, align 4
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %maxLit, align 4
  %2 = load i32, i32* %Flag.addr, align 4
  %and = and i32 %1, %2
  %cmp = icmp ne i32 %and, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Arity(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %arity = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 3
  %1 = load i32, i32* %arity, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  call void @symbol_CheckIndexInRange(i32 %0)
  %1 = load i32, i32* %Index.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.signature**, %struct.signature*** @symbol_SIGNATURE, align 8
  %arrayidx = getelementptr inbounds %struct.signature*, %struct.signature** %2, i64 %idxprom
  %3 = load %struct.signature*, %struct.signature** %arrayidx, align 8
  ret %struct.signature* %3
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

declare void @sort_TheoryDeleteClause(%struct.SORTTHEORY_HELP*, %struct.CLAUSE_HELP*) #2

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

declare void @clause_Normalize(%struct.CLAUSE_HELP*) #2

declare void @clause_SetMaxLitFlags(%struct.CLAUSE_HELP*, i32*, i32*) #2

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

declare void @clause_UpdateMaxVar(%struct.CLAUSE_HELP*) #2

declare i32 @clause_ComputeWeight(%struct.CLAUSE_HELP*, i32*) #2

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
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
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
define internal i32 @symbol_GetInitialStandardVarCounter() #1 {
entry:
  ret i32 0
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
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasSuccLits(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp sgt i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasGroundSuccLit(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %l, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 10
  %6 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %6, i64 %idxprom
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %7, i32 0, i32 4
  %8 = load %struct.term*, %struct.term** %atomWithSign, align 8
  %call2 = call i32 @term_IsGround(%struct.term* %8)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LITERAL_HELP* @clause_GetGroundSuccLit(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %retval = alloca %struct.LITERAL_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %l, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %l, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 10
  %6 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %6, i64 %idxprom
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %7, i32 0, i32 4
  %8 = load %struct.term*, %struct.term** %atomWithSign, align 8
  %call2 = call i32 @term_IsGround(%struct.term* %8)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %10, i32 0, i32 10
  %11 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals4, align 8
  %arrayidx5 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %11, i64 %idxprom3
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx5, align 8
  store %struct.LITERAL_HELP* %12, %struct.LITERAL_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %retval
  ret %struct.LITERAL_HELP* %14
}

declare i32 @term_IsGround(%struct.term*) #2

declare %struct.LIST_HELP* @term_VariableSymbols(%struct.term*) #2

declare i32 @list_HasIntersection(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

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
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

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

declare void @list_DeleteAssocListWithValues(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

declare void @term_Delete(%struct.term*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
