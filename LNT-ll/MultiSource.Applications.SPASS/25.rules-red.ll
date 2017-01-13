; ModuleID = './MultiSource.Applications.SPASS/25.rules-red.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.SPLIT_NODE = type { i32, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.CLAUSE_HELP* }
%struct.CONDITION_HELP = type { i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP* }

@red_USABLE = constant i32 1, align 4
@red_WORKEDOFF = constant i32 2, align 4
@red_ALL = constant i32 3, align 4
@red_STAMPID = internal global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [43 x i8] c"\0A Error while applying bound restrictions:\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\0A You selected an unknown bound mode.\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"\0ADeleted by bound: \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"\0AKept: \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"\0ADerived: \00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"\0A\0AStatic Soft Typing tried on: \00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"\0A*************** Static Soft Typing Subproof: ***************\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"The usable list:\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0AThe worked-off list:\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0A\09Subproof Given clause: \00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"\0AStatic Soft Typing not successful: \00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c" Static Soft Typing not successful!\00", align 1
@.str.12 = private unnamed_addr constant [49 x i8] c"\0AStatic Soft Typing failed, constraint solvable.\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"************  Static Soft Typing Subproof finished. ************\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\0AStatic Soft Typing deleted: \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/rules-red.c\00", align 1
@.str.17 = private unnamed_addr constant [67 x i8] c"\0A In red_CheckSplitSubsumptionCondition: No clause found implying \00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"\0A Current Split: \00", align 1
@.str.19 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"\0ATautology: \00", align 1
@fol_EQUALITY = external global i32, align 4
@.str.21 = private unnamed_addr constant [11 x i8] c"\0AObvious: \00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c" ==> \00", align 1
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@clause_CLAUSECOUNTER = external global i32, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"\0ACondensing: \00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"\0AAED: \00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\0AFSubsumption: \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" by %d %d \00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"\0AFRewriting: \00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c" ==>[ \00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"%d.%d \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@term_STAMP = external global i32, align 4
@cont_RIGHTCONTEXT = external global %struct.binding*, align 8
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@fol_NOT = external global i32, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.31 = private unnamed_addr constant [18 x i8] c"\0AFContRewriting: \00", align 1
@flag_CLEAN = external constant i32, align 4
@.str.32 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8
@.str.34 = private unnamed_addr constant [22 x i8] c"\0ASortSimplification: \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"\0AFMatchingReplacementResolution: \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" ==> [ \00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"\0AUnitConflict: \00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c" ==> [ %d.%d ]\00", align 1
@.str.40 = private unnamed_addr constant [16 x i8] c"\0ABSubsumption: \00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" by %d \00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"\0ABMatchingReplacementResolution: \00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c" ==>[ %d.%d ] \00", align 1
@symbol_TYPEMASK = external constant i32, align 4
@.str.44 = private unnamed_addr constant [14 x i8] c"\0ABRewriting: \00", align 1
@.str.45 = private unnamed_addr constant [18 x i8] c"\0ABContRewriting: \00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"\0AFSubsumption:\00", align 1
@fol_TRUE = external global i32, align 4
@fol_FALSE = external global i32, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @red_Init() #0 {
entry:
  %call = call i32 @term_GetStampID()
  store i32 %call, i32* @red_STAMPID, align 4
  ret void
}

declare i32 @term_GetStampID() #1

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @red_ReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause, i32 %Mode) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %RedClause = alloca %struct.CLAUSE_HELP*, align 8
  %Redundant = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Redundant, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %RedClause, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load i32, i32* %Mode.addr, align 4
  %call1 = call i32 @red_StaticReductions(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP** %Clause.addr, %struct.CLAUSE_HELP** %RedClause, %struct.LIST_HELP** %Redundant, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantDerivedClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %3, %struct.CLAUSE_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %tobool2 = icmp ne %struct.CLAUSE_HELP* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %9)
  %call6 = call i32 @prfs_SplitLevelCondition(i32 %call3, i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call9 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %12)
  call void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP* %10, %struct.CLAUSE_HELP* %11, i32 %call9)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %13)
  %call11 = call i32 @flag_GetFlagValue(i32* %call10, i32 9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15)
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %16)
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Clause.addr, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %entry
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantDerivedClauses(%struct.PROOFSEARCH_HELP* %17, %struct.LIST_HELP* %18, %struct.CLAUSE_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.15
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret %struct.CLAUSE_HELP* %21
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define internal i32 @red_StaticReductions(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP** %Clause, %struct.CLAUSE_HELP** %Subsumer, %struct.LIST_HELP** %Result, i32 %Mode) #0 {
entry:
  %retval = alloca i32, align 4
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Subsumer.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %Mode.addr = alloca i32, align 4
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %Redundant = alloca i32, align 4
  %Index = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP** %Clause, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  store %struct.CLAUSE_HELP** %Subsumer, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32, i32* %Mode.addr, align 4
  %call2 = call i32 @red_OnlyWorkedOffMode(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %3)
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.SHARED_INDEX_NODE* [ %call3, %cond.true ], [ %call4, %cond.false ]
  store %struct.SHARED_INDEX_NODE* %cond, %struct.SHARED_INDEX_NODE** %Index, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Copy, align 8
  %5 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %6 = load i32*, i32** %Flags, align 8
  %7 = load i32*, i32** %Precedence, align 8
  %8 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call5 = call i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %5, i32* %6, i32* %7, %struct.LIST_HELP** %8)
  store i32 %call5, i32* %Redundant, align 4
  %9 = load i32, i32* %Redundant, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load i32, i32* %Redundant, align 4
  store i32 %10, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %11 = load i32*, i32** %Flags, align 8
  %call7 = call i32 @flag_GetFlagValue(i32* %11, i32 93)
  %cmp = icmp ne i32 %call7, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %12, align 8
  %14 = load i32*, i32** %Flags, align 8
  %15 = load i32*, i32** %Precedence, align 8
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %16)
  %17 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %17, i32 93)
  %cmp10 = icmp eq i32 %call9, 2
  %conv = zext i1 %cmp10 to i32
  %call11 = call i32 @red_AssignmentEquationDeletion(%struct.CLAUSE_HELP* %13, i32* %14, i32* %15, %struct.CLAUSE_HELP** %Copy, i32 %call8, i32 %conv)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %land.lhs.true
  %18 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %19 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %18, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %19)
  %20 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %20, align 8
  %call14 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %21)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %land.lhs.true, %if.end
  %22 = load i32*, i32** %Flags, align 8
  %call19 = call i32 @flag_GetFlagValue(i32* %22, i32 91)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  %23 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %23, align 8
  %25 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index, align 8
  %26 = load i32*, i32** %Flags, align 8
  %27 = load i32*, i32** %Precedence, align 8
  %call22 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %24, %struct.SHARED_INDEX_NODE* %25, i32* %26, i32* %27)
  %28 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call22, %struct.CLAUSE_HELP** %28, align 8
  %29 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %29, align 8
  %cmp23 = icmp ne %struct.CLAUSE_HELP* %30, null
  %conv24 = zext i1 %cmp23 to i32
  store i32 %conv24, i32* %Redundant, align 4
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.then.21
  %31 = load i32, i32* %Redundant, align 4
  store i32 %31, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.then.21
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.18
  %32 = load i32*, i32** %Flags, align 8
  %call28 = call i32 @flag_GetFlagValue(i32* %32, i32 79)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %land.lhs.true.30, label %lor.lhs.false

land.lhs.true.30:                                 ; preds = %if.end.27
  %33 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %33, align 8
  %35 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index, align 8
  %36 = load i32*, i32** %Flags, align 8
  %37 = load i32*, i32** %Precedence, align 8
  %38 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call31 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %38)
  %call32 = call i32 @red_RewriteRedClause(%struct.CLAUSE_HELP* %34, %struct.SHARED_INDEX_NODE* %35, i32* %36, i32* %37, %struct.CLAUSE_HELP** %Copy, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.30, %if.end.27
  %39 = load i32*, i32** %Flags, align 8
  %call34 = call i32 @flag_GetFlagValue(i32* %39, i32 81)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.58

land.lhs.true.36:                                 ; preds = %lor.lhs.false
  %40 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %41 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %41, align 8
  %43 = load i32, i32* %Mode.addr, align 4
  %44 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call37 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %44)
  %call38 = call i32 @red_ContextualRewriting(%struct.PROOFSEARCH_HELP* %40, %struct.CLAUSE_HELP* %42, i32 %43, i32 %call37, %struct.CLAUSE_HELP** %Copy)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.58

if.then.40:                                       ; preds = %land.lhs.true.36, %land.lhs.true.30
  %45 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %46 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %45, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %46)
  %47 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %48 = load i32*, i32** %Flags, align 8
  %49 = load i32*, i32** %Precedence, align 8
  %50 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call41 = call i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %47, i32* %48, i32* %49, %struct.LIST_HELP** %50)
  store i32 %call41, i32* %Redundant, align 4
  %51 = load i32, i32* %Redundant, align 4
  %tobool42 = icmp ne i32 %51, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.40
  %52 = load i32, i32* %Redundant, align 4
  store i32 %52, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.40
  %53 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %53, align 8
  %call45 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %54)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  br label %return

if.end.48:                                        ; preds = %if.end.44
  %55 = load i32*, i32** %Flags, align 8
  %call49 = call i32 @flag_GetFlagValue(i32* %55, i32 91)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end.48
  %56 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %56, align 8
  %58 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index, align 8
  %59 = load i32*, i32** %Flags, align 8
  %60 = load i32*, i32** %Precedence, align 8
  %call52 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %57, %struct.SHARED_INDEX_NODE* %58, i32* %59, i32* %60)
  %61 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call52, %struct.CLAUSE_HELP** %61, align 8
  %62 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %62, align 8
  %cmp53 = icmp ne %struct.CLAUSE_HELP* %63, null
  %conv54 = zext i1 %cmp53 to i32
  store i32 %conv54, i32* %Redundant, align 4
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  %64 = load i32, i32* %Redundant, align 4
  store i32 %64, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.48
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %land.lhs.true.36, %lor.lhs.false
  %65 = load i32, i32* %Mode.addr, align 4
  %call59 = call i32 @red_OnlyWorkedOffMode(i32 %65)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.73

land.lhs.true.61:                                 ; preds = %if.end.58
  %66 = load i32*, i32** %Flags, align 8
  %call62 = call i32 @flag_GetFlagValue(i32* %66, i32 90)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.73

if.then.64:                                       ; preds = %land.lhs.true.61
  %67 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call65 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %67)
  %68 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %68, align 8
  %70 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call66 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %70)
  %71 = load i32*, i32** %Flags, align 8
  %call67 = call i32 @flag_GetFlagValue(i32* %71, i32 9)
  %72 = load i32*, i32** %Flags, align 8
  %73 = load i32*, i32** %Precedence, align 8
  %call68 = call i32 @red_SortSimplification(%struct.SORTTHEORY_HELP* %call65, %struct.CLAUSE_HELP* %69, i32 %call66, i32 %call67, i32* %72, i32* %73, %struct.CLAUSE_HELP** %Copy)
  %74 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %75 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %74, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %75)
  %76 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %76, align 8
  %call69 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %77)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.64
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.64
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %land.lhs.true.61, %if.end.58
  %78 = load i32*, i32** %Flags, align 8
  %call74 = call i32 @flag_GetFlagValue(i32* %78, i32 83)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.83

if.then.76:                                       ; preds = %if.end.73
  %79 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %79, align 8
  %81 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index, align 8
  %82 = load i32*, i32** %Flags, align 8
  %83 = load i32*, i32** %Precedence, align 8
  %84 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call77 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %84)
  %call78 = call i32 @red_MatchingReplacementResolution(%struct.CLAUSE_HELP* %80, %struct.SHARED_INDEX_NODE* %81, i32* %82, i32* %83, %struct.CLAUSE_HELP** %Copy, i32 %call77)
  %85 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %86 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %85, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %86)
  %87 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %87, align 8
  %call79 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %88)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.then.76
  store i32 0, i32* %retval
  br label %return

if.end.82:                                        ; preds = %if.then.76
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.73
  %89 = load i32*, i32** %Flags, align 8
  %call84 = call i32 @flag_GetFlagValue(i32* %89, i32 86)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.93

if.then.86:                                       ; preds = %if.end.83
  %90 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %91 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %90, align 8
  %92 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index, align 8
  %93 = load i32*, i32** %Flags, align 8
  %94 = load i32*, i32** %Precedence, align 8
  %95 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call87 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %95)
  %call88 = call i32 @red_UnitConflict(%struct.CLAUSE_HELP* %91, %struct.SHARED_INDEX_NODE* %92, i32* %93, i32* %94, %struct.CLAUSE_HELP** %Copy, i32 %call87)
  %96 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %97 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %96, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %97)
  %98 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %99 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %98, align 8
  %call89 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %99)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.then.86
  store i32 0, i32* %retval
  br label %return

if.end.92:                                        ; preds = %if.then.86
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.83
  %100 = load i32, i32* %Mode.addr, align 4
  %call94 = call i32 @red_OnlyWorkedOffMode(i32 %100)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.102

land.lhs.true.96:                                 ; preds = %if.end.93
  %101 = load i32*, i32** %Flags, align 8
  %call97 = call i32 @flag_GetFlagValue(i32* %101, i32 89)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %land.lhs.true.96
  %102 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call100 = call %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %102)
  %103 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %103, align 8
  %105 = load i32*, i32** %Flags, align 8
  %106 = load i32*, i32** %Precedence, align 8
  %call101 = call i32 @red_ClauseDeletion(%struct.SORTTHEORY_HELP* %call100, %struct.CLAUSE_HELP* %104, i32* %105, i32* %106)
  store i32 %call101, i32* %Redundant, align 4
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %land.lhs.true.96, %if.end.93
  %107 = load i32, i32* %Redundant, align 4
  store i32 %107, i32* %retval
  br label %return

return:                                           ; preds = %if.end.102, %if.then.91, %if.then.81, %if.then.71, %if.then.55, %if.then.47, %if.then.43, %if.then.25, %if.then.16, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal void @red_HandleRedundantDerivedClauses(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Blocked, %struct.CLAUSE_HELP* %RedClause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Blocked.addr = alloca %struct.LIST_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Blocked, %struct.LIST_HELP** %Blocked.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked.addr, align 8
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
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call2 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %6)
  %call5 = call i32 @prfs_SplitLevelCondition(i32 %call2, i32 %call3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call7 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %9)
  call void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP* %7, %struct.CLAUSE_HELP* %8, i32 %call7)
  br label %if.end.13

if.else:                                          ; preds = %for.body
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %10)
  %call9 = call i32 @flag_GetFlagValue(i32* %call8, i32 9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %11, %struct.CLAUSE_HELP* %12)
  br label %if.end

if.else.12:                                       ; preds = %if.else
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %13)
  br label %if.end

if.end:                                           ; preds = %if.else.12, %if.then.11
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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
define internal i32 @prfs_SplitLevelCondition(i32 %OriginLevel, i32 %RedundantLevel, i32 %BacktrackLevel) #2 {
entry:
  %OriginLevel.addr = alloca i32, align 4
  %RedundantLevel.addr = alloca i32, align 4
  %BacktrackLevel.addr = alloca i32, align 4
  store i32 %OriginLevel, i32* %OriginLevel.addr, align 4
  store i32 %RedundantLevel, i32* %RedundantLevel.addr, align 4
  store i32 %BacktrackLevel, i32* %BacktrackLevel.addr, align 4
  %0 = load i32, i32* %OriginLevel.addr, align 4
  %1 = load i32, i32* %RedundantLevel.addr, align 4
  %cmp = icmp ugt i32 %0, %1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %OriginLevel.addr, align 4
  %3 = load i32, i32* %BacktrackLevel.addr, align 4
  %cmp1 = icmp ugt i32 %2, %3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
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
define internal i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %lastbacktrack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 17
  %1 = load i32, i32* %lastbacktrack, align 4
  ret i32 %1
}

declare void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* %Store, i32 %FlagId) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %store = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 14
  %1 = load i32*, i32** %store, align 8
  ret i32* %1
}

declare void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @clause_Delete(%struct.CLAUSE_HELP*) #1

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause, i32 %Mode) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %RedClause = alloca %struct.CLAUSE_HELP*, align 8
  %Redundant = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Redundant, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %RedClause, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %1 = load i32, i32* %Mode.addr, align 4
  %call1 = call i32 @red_SelectedStaticReductions(%struct.PROOFSEARCH_HELP* %0, %struct.CLAUSE_HELP** %Clause.addr, %struct.CLAUSE_HELP** %RedClause, %struct.LIST_HELP** %Redundant, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.16

if.then:                                          ; preds = %entry
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantDerivedClauses(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %3, %struct.CLAUSE_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %tobool2 = icmp ne %struct.CLAUSE_HELP* %6, null
  br i1 %tobool2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %9)
  %call6 = call i32 @prfs_SplitLevelCondition(i32 %call3, i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %land.lhs.true
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call9 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %12)
  call void @split_KeepClauseAtLevel(%struct.PROOFSEARCH_HELP* %10, %struct.CLAUSE_HELP* %11, i32 %call9)
  br label %if.end.15

if.else:                                          ; preds = %land.lhs.true, %if.then
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %13)
  %call11 = call i32 @flag_GetFlagValue(i32* %call10, i32 9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15)
  br label %if.end

if.else.14:                                       ; preds = %if.else
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %16)
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then.8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Clause.addr, align 8
  br label %if.end.17

if.else.16:                                       ; preds = %entry
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantDerivedClauses(%struct.PROOFSEARCH_HELP* %17, %struct.LIST_HELP* %18, %struct.CLAUSE_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.16, %if.end.15
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret %struct.CLAUSE_HELP* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @red_SelectedStaticReductions(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP** %Clause, %struct.CLAUSE_HELP** %Subsumer, %struct.LIST_HELP** %Result, i32 %Mode) #0 {
entry:
  %retval = alloca i32, align 4
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Subsumer.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %Mode.addr = alloca i32, align 4
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %Redundant = alloca i32, align 4
  %Rewritten = alloca i32, align 4
  %Tried = alloca i32, align 4
  %ContextualRew = alloca i32, align 4
  %StandardRew = alloca i32, align 4
  %WoIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %UsIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP** %Clause, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  store %struct.CLAUSE_HELP** %Subsumer, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  store %struct.SHARED_INDEX_NODE* null, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  store %struct.SHARED_INDEX_NODE* null, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %2 = load i32, i32* %Mode.addr, align 4
  %call2 = call i32 @red_WorkedOffMode(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %3)
  store %struct.SHARED_INDEX_NODE* %call3, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %Mode.addr, align 4
  %call4 = call i32 @red_UsableMode(i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  store %struct.SHARED_INDEX_NODE* %call7, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Copy, align 8
  %6 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %7 = load i32*, i32** %Flags, align 8
  %8 = load i32*, i32** %Precedence, align 8
  %9 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call9 = call i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %6, i32* %7, i32* %8, %struct.LIST_HELP** %9)
  store i32 %call9, i32* %Redundant, align 4
  %10 = load i32, i32* %Redundant, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %11 = load i32, i32* %Redundant, align 4
  store i32 %11, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %12 = load i32*, i32** %Flags, align 8
  %call13 = call i32 @flag_GetFlagValue(i32* %12, i32 93)
  %cmp = icmp ne i32 %call13, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.12
  %13 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %13, align 8
  %15 = load i32*, i32** %Flags, align 8
  %16 = load i32*, i32** %Precedence, align 8
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call14 = call i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %17)
  %18 = load i32*, i32** %Flags, align 8
  %call15 = call i32 @flag_GetFlagValue(i32* %18, i32 93)
  %cmp16 = icmp eq i32 %call15, 2
  %conv = zext i1 %cmp16 to i32
  %call17 = call i32 @red_AssignmentEquationDeletion(%struct.CLAUSE_HELP* %14, i32* %15, i32* %16, %struct.CLAUSE_HELP** %Copy, i32 %call14, i32 %conv)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %land.lhs.true
  %19 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %20 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %19, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %20)
  %21 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %21, align 8
  %call20 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %22)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.19
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %if.end.12
  %23 = load i32*, i32** %Flags, align 8
  %call25 = call i32 @flag_GetFlagValue(i32* %23, i32 91)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.46

if.then.27:                                       ; preds = %if.end.24
  %24 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %24, align 8
  %25 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %cmp28 = icmp ne %struct.SHARED_INDEX_NODE* %25, null
  br i1 %cmp28, label %if.then.30, label %if.end.36

if.then.30:                                       ; preds = %if.then.27
  %26 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %26, align 8
  %28 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %29 = load i32*, i32** %Flags, align 8
  %30 = load i32*, i32** %Precedence, align 8
  %call31 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %27, %struct.SHARED_INDEX_NODE* %28, i32* %29, i32* %30)
  %31 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call31, %struct.CLAUSE_HELP** %31, align 8
  %32 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %32, align 8
  %cmp32 = icmp ne %struct.CLAUSE_HELP* %33, null
  br i1 %cmp32, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.30
  store i32 1, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.27
  %34 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %cmp37 = icmp ne %struct.SHARED_INDEX_NODE* %34, null
  br i1 %cmp37, label %if.then.39, label %if.end.45

if.then.39:                                       ; preds = %if.end.36
  %35 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %35, align 8
  %37 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %38 = load i32*, i32** %Flags, align 8
  %39 = load i32*, i32** %Precedence, align 8
  %call40 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %36, %struct.SHARED_INDEX_NODE* %37, i32* %38, i32* %39)
  %40 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call40, %struct.CLAUSE_HELP** %40, align 8
  %41 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %41, align 8
  %cmp41 = icmp ne %struct.CLAUSE_HELP* %42, null
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.then.39
  store i32 1, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.then.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %if.end.24
  %43 = load i32*, i32** %Flags, align 8
  %call47 = call i32 @flag_GetFlagValue(i32* %43, i32 79)
  store i32 %call47, i32* %StandardRew, align 4
  %44 = load i32*, i32** %Flags, align 8
  %call48 = call i32 @flag_GetFlagValue(i32* %44, i32 81)
  store i32 %call48, i32* %ContextualRew, align 4
  %45 = load i32, i32* %StandardRew, align 4
  %tobool49 = icmp ne i32 %45, 0
  br i1 %tobool49, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.46
  %46 = load i32, i32* %ContextualRew, align 4
  %tobool50 = icmp ne i32 %46, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.46
  %47 = phi i1 [ true, %if.end.46 ], [ %tobool50, %lor.rhs ]
  %lor.ext = zext i1 %47 to i32
  store i32 %lor.ext, i32* %Rewritten, align 4
  store i32 0, i32* %Tried, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.138, %lor.end
  %48 = load i32, i32* %Rewritten, align 4
  %tobool51 = icmp ne i32 %48, 0
  br i1 %tobool51, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %Rewritten, align 4
  %49 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %cmp52 = icmp ne %struct.SHARED_INDEX_NODE* %49, null
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.92

land.lhs.true.54:                                 ; preds = %while.body
  %50 = load i32, i32* %StandardRew, align 4
  %tobool55 = icmp ne i32 %50, 0
  br i1 %tobool55, label %land.lhs.true.56, label %lor.lhs.false

land.lhs.true.56:                                 ; preds = %land.lhs.true.54
  %51 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %51, align 8
  %53 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %54 = load i32*, i32** %Flags, align 8
  %55 = load i32*, i32** %Precedence, align 8
  %56 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call57 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %56)
  %call58 = call i32 @red_RewriteRedClause(%struct.CLAUSE_HELP* %52, %struct.SHARED_INDEX_NODE* %53, i32* %54, i32* %55, %struct.CLAUSE_HELP** %Copy, i32 %call57)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.56, %land.lhs.true.54
  %57 = load i32, i32* %ContextualRew, align 4
  %tobool60 = icmp ne i32 %57, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.92

land.lhs.true.61:                                 ; preds = %lor.lhs.false
  %58 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %59 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %59, align 8
  %61 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call62 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %61)
  %call63 = call i32 @red_ContextualRewriting(%struct.PROOFSEARCH_HELP* %58, %struct.CLAUSE_HELP* %60, i32 2, i32 %call62, %struct.CLAUSE_HELP** %Copy)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.92

if.then.65:                                       ; preds = %land.lhs.true.61, %land.lhs.true.56
  store i32 1, i32* %Rewritten, align 4
  %62 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %63 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %62, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %63)
  %64 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %65 = load i32*, i32** %Flags, align 8
  %66 = load i32*, i32** %Precedence, align 8
  %67 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call66 = call i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %64, i32* %65, i32* %66, %struct.LIST_HELP** %67)
  store i32 %call66, i32* %Redundant, align 4
  %68 = load i32, i32* %Redundant, align 4
  %tobool67 = icmp ne i32 %68, 0
  br i1 %tobool67, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %if.then.65
  %69 = load i32, i32* %Redundant, align 4
  store i32 %69, i32* %retval
  br label %return

if.end.69:                                        ; preds = %if.then.65
  %70 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %70, align 8
  %call70 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %71)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.69
  store i32 0, i32* %retval
  br label %return

if.end.73:                                        ; preds = %if.end.69
  %72 = load i32*, i32** %Flags, align 8
  %call74 = call i32 @flag_GetFlagValue(i32* %72, i32 91)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.91

if.then.76:                                       ; preds = %if.end.73
  %73 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %73, align 8
  %74 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %74, align 8
  %76 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %77 = load i32*, i32** %Flags, align 8
  %78 = load i32*, i32** %Precedence, align 8
  %call77 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %75, %struct.SHARED_INDEX_NODE* %76, i32* %77, i32* %78)
  %79 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call77, %struct.CLAUSE_HELP** %79, align 8
  %80 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %80, align 8
  %cmp78 = icmp ne %struct.CLAUSE_HELP* %81, null
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  store i32 1, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.then.76
  %82 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %cmp82 = icmp ne %struct.SHARED_INDEX_NODE* %82, null
  br i1 %cmp82, label %if.then.84, label %if.end.90

if.then.84:                                       ; preds = %if.end.81
  %83 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %83, align 8
  %85 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %86 = load i32*, i32** %Flags, align 8
  %87 = load i32*, i32** %Precedence, align 8
  %call85 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %84, %struct.SHARED_INDEX_NODE* %85, i32* %86, i32* %87)
  %88 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call85, %struct.CLAUSE_HELP** %88, align 8
  %89 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %89, align 8
  %cmp86 = icmp ne %struct.CLAUSE_HELP* %90, null
  br i1 %cmp86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.84
  store i32 1, i32* %retval
  br label %return

if.end.89:                                        ; preds = %if.then.84
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.81
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.73
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %land.lhs.true.61, %lor.lhs.false, %while.body
  %91 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %cmp93 = icmp ne %struct.SHARED_INDEX_NODE* %91, null
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.138

land.lhs.true.95:                                 ; preds = %if.end.92
  %92 = load i32, i32* %Tried, align 4
  %tobool96 = icmp ne i32 %92, 0
  br i1 %tobool96, label %lor.lhs.false.97, label %land.lhs.true.99

lor.lhs.false.97:                                 ; preds = %land.lhs.true.95
  %93 = load i32, i32* %Rewritten, align 4
  %tobool98 = icmp ne i32 %93, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.138

land.lhs.true.99:                                 ; preds = %lor.lhs.false.97, %land.lhs.true.95
  %94 = load i32, i32* %StandardRew, align 4
  %tobool100 = icmp ne i32 %94, 0
  br i1 %tobool100, label %land.lhs.true.101, label %lor.lhs.false.105

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %95 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %96 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %95, align 8
  %97 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %98 = load i32*, i32** %Flags, align 8
  %99 = load i32*, i32** %Precedence, align 8
  %100 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call102 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %100)
  %call103 = call i32 @red_RewriteRedClause(%struct.CLAUSE_HELP* %96, %struct.SHARED_INDEX_NODE* %97, i32* %98, i32* %99, %struct.CLAUSE_HELP** %Copy, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.111, label %lor.lhs.false.105

lor.lhs.false.105:                                ; preds = %land.lhs.true.101, %land.lhs.true.99
  %101 = load i32, i32* %ContextualRew, align 4
  %tobool106 = icmp ne i32 %101, 0
  br i1 %tobool106, label %land.lhs.true.107, label %if.end.138

land.lhs.true.107:                                ; preds = %lor.lhs.false.105
  %102 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %103 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %103, align 8
  %105 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call108 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %105)
  %call109 = call i32 @red_ContextualRewriting(%struct.PROOFSEARCH_HELP* %102, %struct.CLAUSE_HELP* %104, i32 1, i32 %call108, %struct.CLAUSE_HELP** %Copy)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.138

if.then.111:                                      ; preds = %land.lhs.true.107, %land.lhs.true.101
  store i32 1, i32* %Rewritten, align 4
  %106 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %107 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %106, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %107)
  %108 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %109 = load i32*, i32** %Flags, align 8
  %110 = load i32*, i32** %Precedence, align 8
  %111 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call112 = call i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %108, i32* %109, i32* %110, %struct.LIST_HELP** %111)
  store i32 %call112, i32* %Redundant, align 4
  %112 = load i32, i32* %Redundant, align 4
  %tobool113 = icmp ne i32 %112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %if.then.111
  %113 = load i32, i32* %Redundant, align 4
  store i32 %113, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.then.111
  %114 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %115 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %114, align 8
  %call116 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %115)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.end.115
  store i32 0, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.end.115
  %116 = load i32*, i32** %Flags, align 8
  %call120 = call i32 @flag_GetFlagValue(i32* %116, i32 91)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.137

if.then.122:                                      ; preds = %if.end.119
  %117 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %117, align 8
  %118 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %cmp123 = icmp ne %struct.SHARED_INDEX_NODE* %118, null
  br i1 %cmp123, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.122
  %119 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %120 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %119, align 8
  %121 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %122 = load i32*, i32** %Flags, align 8
  %123 = load i32*, i32** %Precedence, align 8
  %call126 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %120, %struct.SHARED_INDEX_NODE* %121, i32* %122, i32* %123)
  %124 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call126, %struct.CLAUSE_HELP** %124, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.then.122
  %125 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %126 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %125, align 8
  %cmp128 = icmp ne %struct.CLAUSE_HELP* %126, null
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  store i32 1, i32* %retval
  br label %return

if.end.131:                                       ; preds = %if.end.127
  %127 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %128 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %127, align 8
  %129 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %130 = load i32*, i32** %Flags, align 8
  %131 = load i32*, i32** %Precedence, align 8
  %call132 = call %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %128, %struct.SHARED_INDEX_NODE* %129, i32* %130, i32* %131)
  %132 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  store %struct.CLAUSE_HELP* %call132, %struct.CLAUSE_HELP** %132, align 8
  %133 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Subsumer.addr, align 8
  %134 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %133, align 8
  %cmp133 = icmp ne %struct.CLAUSE_HELP* %134, null
  br i1 %cmp133, label %if.then.135, label %if.end.136

if.then.135:                                      ; preds = %if.end.131
  store i32 1, i32* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.131
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.end.119
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %land.lhs.true.107, %lor.lhs.false.105, %lor.lhs.false.97, %if.end.92
  store i32 1, i32* %Tried, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %135 = load i32*, i32** %Flags, align 8
  %call139 = call i32 @flag_GetFlagValue(i32* %135, i32 90)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.150

if.then.141:                                      ; preds = %while.end
  %136 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call142 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %136)
  %137 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %138 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %137, align 8
  %139 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call143 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %139)
  %140 = load i32*, i32** %Flags, align 8
  %call144 = call i32 @flag_GetFlagValue(i32* %140, i32 9)
  %141 = load i32*, i32** %Flags, align 8
  %142 = load i32*, i32** %Precedence, align 8
  %call145 = call i32 @red_SortSimplification(%struct.SORTTHEORY_HELP* %call142, %struct.CLAUSE_HELP* %138, i32 %call143, i32 %call144, i32* %141, i32* %142, %struct.CLAUSE_HELP** %Copy)
  %143 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %144 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %143, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %144)
  %145 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %146 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %145, align 8
  %call146 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %146)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %if.then.141
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.then.141
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %while.end
  %147 = load i32*, i32** %Flags, align 8
  %call151 = call i32 @flag_GetFlagValue(i32* %147, i32 83)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.172

if.then.153:                                      ; preds = %if.end.150
  %148 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %tobool154 = icmp ne %struct.SHARED_INDEX_NODE* %148, null
  br i1 %tobool154, label %if.then.155, label %if.end.158

if.then.155:                                      ; preds = %if.then.153
  %149 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %150 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %149, align 8
  %151 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %152 = load i32*, i32** %Flags, align 8
  %153 = load i32*, i32** %Precedence, align 8
  %154 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call156 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %154)
  %call157 = call i32 @red_MatchingReplacementResolution(%struct.CLAUSE_HELP* %150, %struct.SHARED_INDEX_NODE* %151, i32* %152, i32* %153, %struct.CLAUSE_HELP** %Copy, i32 %call156)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.155, %if.then.153
  %155 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %156 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %155, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %156)
  %157 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %158 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %157, align 8
  %call159 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %158)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.then.161, label %if.end.162

if.then.161:                                      ; preds = %if.end.158
  store i32 0, i32* %retval
  br label %return

if.end.162:                                       ; preds = %if.end.158
  %159 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %tobool163 = icmp ne %struct.SHARED_INDEX_NODE* %159, null
  br i1 %tobool163, label %if.then.164, label %if.end.167

if.then.164:                                      ; preds = %if.end.162
  %160 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %161 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %160, align 8
  %162 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %163 = load i32*, i32** %Flags, align 8
  %164 = load i32*, i32** %Precedence, align 8
  %165 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call165 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %165)
  %call166 = call i32 @red_MatchingReplacementResolution(%struct.CLAUSE_HELP* %161, %struct.SHARED_INDEX_NODE* %162, i32* %163, i32* %164, %struct.CLAUSE_HELP** %Copy, i32 %call165)
  br label %if.end.167

if.end.167:                                       ; preds = %if.then.164, %if.end.162
  %166 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %167 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %166, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %167)
  %168 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %169 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %168, align 8
  %call168 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %169)
  %tobool169 = icmp ne i32 %call168, 0
  br i1 %tobool169, label %if.then.170, label %if.end.171

if.then.170:                                      ; preds = %if.end.167
  store i32 0, i32* %retval
  br label %return

if.end.171:                                       ; preds = %if.end.167
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.150
  %170 = load i32*, i32** %Flags, align 8
  %call173 = call i32 @flag_GetFlagValue(i32* %170, i32 86)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.194

if.then.175:                                      ; preds = %if.end.172
  %171 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %tobool176 = icmp ne %struct.SHARED_INDEX_NODE* %171, null
  br i1 %tobool176, label %if.then.177, label %if.end.180

if.then.177:                                      ; preds = %if.then.175
  %172 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %173 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %172, align 8
  %174 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WoIndex, align 8
  %175 = load i32*, i32** %Flags, align 8
  %176 = load i32*, i32** %Precedence, align 8
  %177 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call178 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %177)
  %call179 = call i32 @red_UnitConflict(%struct.CLAUSE_HELP* %173, %struct.SHARED_INDEX_NODE* %174, i32* %175, i32* %176, %struct.CLAUSE_HELP** %Copy, i32 %call178)
  br label %if.end.180

if.end.180:                                       ; preds = %if.then.177, %if.then.175
  %178 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %179 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %178, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %179)
  %180 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %181 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %180, align 8
  %call181 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %181)
  %tobool182 = icmp ne i32 %call181, 0
  br i1 %tobool182, label %if.then.183, label %if.end.184

if.then.183:                                      ; preds = %if.end.180
  store i32 0, i32* %retval
  br label %return

if.end.184:                                       ; preds = %if.end.180
  %182 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %tobool185 = icmp ne %struct.SHARED_INDEX_NODE* %182, null
  br i1 %tobool185, label %if.then.186, label %if.end.189

if.then.186:                                      ; preds = %if.end.184
  %183 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %184 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %183, align 8
  %185 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %186 = load i32*, i32** %Flags, align 8
  %187 = load i32*, i32** %Precedence, align 8
  %188 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call187 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %188)
  %call188 = call i32 @red_UnitConflict(%struct.CLAUSE_HELP* %184, %struct.SHARED_INDEX_NODE* %185, i32* %186, i32* %187, %struct.CLAUSE_HELP** %Copy, i32 %call187)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.186, %if.end.184
  %189 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %190 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %189, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %190)
  %191 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %192 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %191, align 8
  %call190 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %192)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.then.192, label %if.end.193

if.then.192:                                      ; preds = %if.end.189
  store i32 0, i32* %retval
  br label %return

if.end.193:                                       ; preds = %if.end.189
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.172
  %193 = load i32*, i32** %Flags, align 8
  %call195 = call i32 @flag_GetFlagValue(i32* %193, i32 89)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.200

if.then.197:                                      ; preds = %if.end.194
  %194 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call198 = call %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %194)
  %195 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Clause.addr, align 8
  %196 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %195, align 8
  %197 = load i32*, i32** %Flags, align 8
  %198 = load i32*, i32** %Precedence, align 8
  %call199 = call i32 @red_ClauseDeletion(%struct.SORTTHEORY_HELP* %call198, %struct.CLAUSE_HELP* %196, i32* %197, i32* %198)
  store i32 %call199, i32* %Redundant, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.197, %if.end.194
  %199 = load i32, i32* %Redundant, align 4
  store i32 %199, i32* %retval
  br label %return

return:                                           ; preds = %if.end.200, %if.then.192, %if.then.183, %if.then.170, %if.then.161, %if.then.148, %if.then.135, %if.then.130, %if.then.118, %if.then.114, %if.then.88, %if.then.80, %if.then.72, %if.then.68, %if.then.43, %if.then.34, %if.then.22, %if.then.11
  %200 = load i32, i32* %retval
  ret i32 %200
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause, i32 %Mode) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %Redundant = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load i32*, i32** %Flags, align 8
  %call3 = call i32 @flag_GetFlagValue(i32* %2, i32 92)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Redundant, align 8
  %3 = load i32, i32* %Mode.addr, align 4
  %call5 = call i32 @red_WorkedOffMode(i32 %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %5)
  %6 = load i32*, i32** %Flags, align 8
  %7 = load i32*, i32** %Precedence, align 8
  %call9 = call %struct.LIST_HELP* @red_BackSubsumption(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %call8, i32* %6, i32* %7)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %8 = load i32, i32* %Mode.addr, align 4
  %call10 = call i32 @red_UsableMode(i32 %8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call13 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %11)
  %12 = load i32*, i32** %Flags, align 8
  %13 = load i32*, i32** %Precedence, align 8
  %call14 = call %struct.LIST_HELP* @red_BackSubsumption(%struct.CLAUSE_HELP* %10, %struct.SHARED_INDEX_NODE* %call13, i32* %12, i32* %13)
  %call15 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %9, %struct.LIST_HELP* %call14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantIndexedClauses(%struct.PROOFSEARCH_HELP* %14, %struct.LIST_HELP* %15, %struct.CLAUSE_HELP* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %17)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %entry
  %18 = load i32*, i32** %Flags, align 8
  %call18 = call i32 @flag_GetFlagValue(i32* %18, i32 84)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %if.end.17
  %call21 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Redundant, align 8
  %19 = load i32, i32* %Mode.addr, align 4
  %call22 = call i32 @red_WorkedOffMode(i32 %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.20
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call25 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %21)
  %22 = load i32*, i32** %Flags, align 8
  %23 = load i32*, i32** %Precedence, align 8
  %call26 = call %struct.LIST_HELP* @red_BackMatchingReplacementResolution(%struct.CLAUSE_HELP* %20, %struct.SHARED_INDEX_NODE* %call25, i32* %22, i32* %23, %struct.LIST_HELP** %Result)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.20
  %24 = load i32, i32* %Mode.addr, align 4
  %call28 = call i32 @red_UsableMode(i32 %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end.27
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %27 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call31 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %27)
  %28 = load i32*, i32** %Flags, align 8
  %29 = load i32*, i32** %Precedence, align 8
  %call32 = call %struct.LIST_HELP* @red_BackMatchingReplacementResolution(%struct.CLAUSE_HELP* %26, %struct.SHARED_INDEX_NODE* %call31, i32* %28, i32* %29, %struct.LIST_HELP** %Result)
  %call33 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %25, %struct.LIST_HELP* %call32)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.end.27
  %30 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantIndexedClauses(%struct.PROOFSEARCH_HELP* %30, %struct.LIST_HELP* %31, %struct.CLAUSE_HELP* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %33)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.17
  %34 = load i32*, i32** %Flags, align 8
  %call36 = call i32 @flag_GetFlagValue(i32* %34, i32 80)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.53

if.then.38:                                       ; preds = %if.end.35
  %call39 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Redundant, align 8
  %35 = load i32, i32* %Mode.addr, align 4
  %call40 = call i32 @red_WorkedOffMode(i32 %35)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.then.38
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %37 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call43 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %37)
  %38 = load i32*, i32** %Flags, align 8
  %39 = load i32*, i32** %Precedence, align 8
  %call44 = call %struct.LIST_HELP* @red_BackRewriting(%struct.CLAUSE_HELP* %36, %struct.SHARED_INDEX_NODE* %call43, i32* %38, i32* %39, %struct.LIST_HELP** %Result)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.then.38
  %40 = load i32, i32* %Mode.addr, align 4
  %call46 = call i32 @red_UsableMode(i32 %40)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.52

if.then.48:                                       ; preds = %if.end.45
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %43 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call49 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %43)
  %44 = load i32*, i32** %Flags, align 8
  %45 = load i32*, i32** %Precedence, align 8
  %call50 = call %struct.LIST_HELP* @red_BackRewriting(%struct.CLAUSE_HELP* %42, %struct.SHARED_INDEX_NODE* %call49, i32* %44, i32* %45, %struct.LIST_HELP** %Result)
  %call51 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %41, %struct.LIST_HELP* %call50)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.48, %if.end.45
  %46 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantIndexedClauses(%struct.PROOFSEARCH_HELP* %46, %struct.LIST_HELP* %47, %struct.CLAUSE_HELP* %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %49)
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.35
  %50 = load i32*, i32** %Flags, align 8
  %call54 = call i32 @flag_GetFlagValue(i32* %50, i32 82)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.69

if.then.56:                                       ; preds = %if.end.53
  %call57 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %Redundant, align 8
  %51 = load i32, i32* %Mode.addr, align 4
  %call58 = call i32 @red_WorkedOffMode(i32 %51)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.62

if.then.60:                                       ; preds = %if.then.56
  %52 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call61 = call %struct.LIST_HELP* @red_BackContextualRewriting(%struct.PROOFSEARCH_HELP* %52, %struct.CLAUSE_HELP* %53, i32 2, %struct.LIST_HELP** %Result)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %if.then.56
  %54 = load i32, i32* %Mode.addr, align 4
  %call63 = call i32 @red_UsableMode(i32 %54)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.68

if.then.65:                                       ; preds = %if.end.62
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %56 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call66 = call %struct.LIST_HELP* @red_BackContextualRewriting(%struct.PROOFSEARCH_HELP* %56, %struct.CLAUSE_HELP* %57, i32 1, %struct.LIST_HELP** %Result)
  %call67 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %55, %struct.LIST_HELP* %call66)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %Redundant, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.65, %if.end.62
  %58 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @red_HandleRedundantIndexedClauses(%struct.PROOFSEARCH_HELP* %58, %struct.LIST_HELP* %59, %struct.CLAUSE_HELP* %60)
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Redundant, align 8
  call void @list_Delete(%struct.LIST_HELP* %61)
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.53
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %62
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %precedence = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 13
  %1 = load i32*, i32** %precedence, align 8
  ret i32* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @red_WorkedOffMode(i32 %Mode) #2 {
entry:
  %Mode.addr = alloca i32, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load i32, i32* %Mode.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %Mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_BackSubsumption(%struct.CLAUSE_HELP* %RedCl, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %RedCl.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %SubsumedCl = alloca %struct.CLAUSE_HELP*, align 8
  %CandLit = alloca %struct.LITERAL_HELP*, align 8
  %CandLits = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %SubsumedList = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %fa = alloca i32, align 4
  %la = alloca i32, align 4
  %fs = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %RedCl, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %SubsumedList, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call3 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call3, i32* %lc, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call4 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call4, i32* %fa, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call5 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call5, i32* %la, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call6 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call6, i32* %fs, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call7 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call7, i32* %l, align 4
  %call8 = call i32 @clause_FirstLitIndex()
  store i32 %call8, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %l, align 4
  %cmp = icmp sle i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %10 = load i32, i32* %j, align 4
  %call9 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  %call10 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call9)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %11, i32 %12)
  %call12 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call11)
  %cmp13 = icmp ugt i32 %call10, %call12
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  %13 = load i32, i32* %j, align 4
  store i32 %13, i32* %i, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %14 = load i32, i32* %j, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call16 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  store %struct.term* %call16, %struct.term** %Atom, align 8
  %call17 = call %struct.binding* @cont_LeftContext()
  %17 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call18 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %17)
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %call19 = call i8* @st_ExistInstance(%struct.binding* %call17, %struct.st* %call18, %struct.term* %18)
  %19 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %19, %struct.term** %CandTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.56, %for.end
  %20 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool20 = icmp ne %struct.term* %20, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %21 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call21 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %21)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %CandLits, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandLits, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.54, %while.body
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %for.body.25, label %for.end.56

for.body.25:                                      ; preds = %for.cond.22
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call26 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %25, %struct.LITERAL_HELP** %CandLit, align 8
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call27 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %26)
  store %struct.CLAUSE_HELP* %call27, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call28 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %27)
  store i32 %call28, i32* %j, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %cmp29 = icmp ne %struct.CLAUSE_HELP* %28, %29
  br i1 %cmp29, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %for.body.25
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %lc, align 4
  %cmp30 = icmp sle i32 %30, %31
  br i1 %cmp30, label %land.lhs.true.31, label %lor.lhs.false

land.lhs.true.31:                                 ; preds = %land.lhs.true
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call32 = call i32 @clause_LiteralIsFromConstraint(%struct.LITERAL_HELP* %32)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31, %land.lhs.true
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %fa, align 4
  %cmp34 = icmp sge i32 %33, %34
  br i1 %cmp34, label %land.lhs.true.35, label %lor.lhs.false.40

land.lhs.true.35:                                 ; preds = %lor.lhs.false
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %la, align 4
  %cmp36 = icmp sle i32 %35, %36
  br i1 %cmp36, label %land.lhs.true.37, label %lor.lhs.false.40

land.lhs.true.37:                                 ; preds = %land.lhs.true.35
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call38 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.lhs.true.45, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %land.lhs.true.37, %land.lhs.true.35, %lor.lhs.false
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %fs, align 4
  %cmp41 = icmp sge i32 %38, %39
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.53

land.lhs.true.42:                                 ; preds = %lor.lhs.false.40
  %40 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call43 = call i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %40)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.53

land.lhs.true.45:                                 ; preds = %land.lhs.true.42, %land.lhs.true.37, %land.lhs.true.31
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %43 = bitcast %struct.CLAUSE_HELP* %42 to i8*
  %call46 = call i32 @list_PointerMember(%struct.LIST_HELP* %41, i8* %43)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.53, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %j, align 4
  %call49 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %44, %struct.CLAUSE_HELP* %45, i32 %46, i32 %47)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %land.lhs.true.48
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %49 = bitcast %struct.CLAUSE_HELP* %48 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %call52 = call %struct.LIST_HELP* @list_Cons(i8* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %SubsumedList, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %land.lhs.true.48, %land.lhs.true.45, %land.lhs.true.42, %lor.lhs.false.40, %for.body.25
  br label %for.inc.54

for.inc.54:                                       ; preds = %if.end.53
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.22

for.end.56:                                       ; preds = %for.cond.22
  %call57 = call i8* @st_NextCandidate()
  %52 = bitcast i8* %call57 to %struct.term*
  store %struct.term* %52, %struct.term** %CandTerm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %53 = load %struct.term*, %struct.term** %Atom, align 8
  %call58 = call i32 @fol_IsEquality(%struct.term* %53)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true.60, label %if.end.119

land.lhs.true.60:                                 ; preds = %while.end
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %55 = load i32, i32* %i, align 4
  %call61 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %54, i32 %55)
  %call62 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.119

if.then.64:                                       ; preds = %land.lhs.true.60
  %call65 = call i32 @fol_Equality()
  %56 = load %struct.term*, %struct.term** %Atom, align 8
  %call66 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %56)
  %call67 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call66)
  %call68 = call %struct.term* @term_Create(i32 %call65, %struct.LIST_HELP* %call67)
  store %struct.term* %call68, %struct.term** %Atom, align 8
  %call69 = call %struct.binding* @cont_LeftContext()
  %57 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call70 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %57)
  %58 = load %struct.term*, %struct.term** %Atom, align 8
  %call71 = call i8* @st_ExistInstance(%struct.binding* %call69, %struct.st* %call70, %struct.term* %58)
  %59 = bitcast i8* %call71 to %struct.term*
  store %struct.term* %59, %struct.term** %CandTerm, align 8
  br label %while.cond.72

while.cond.72:                                    ; preds = %for.end.115, %if.then.64
  %60 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool73 = icmp ne %struct.term* %60, null
  br i1 %tobool73, label %while.body.74, label %while.end.117

while.body.74:                                    ; preds = %while.cond.72
  %61 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call75 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %61)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %CandLits, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandLits, align 8
  store %struct.LIST_HELP* %62, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.113, %while.body.74
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call77 = call i32 @list_Empty(%struct.LIST_HELP* %63)
  %tobool78 = icmp ne i32 %call77, 0
  %lnot79 = xor i1 %tobool78, true
  br i1 %lnot79, label %for.body.80, label %for.end.115

for.body.80:                                      ; preds = %for.cond.76
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call81 = call i8* @list_Car(%struct.LIST_HELP* %64)
  %65 = bitcast i8* %call81 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %65, %struct.LITERAL_HELP** %CandLit, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call82 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call82 to %struct.LITERAL_HELP*
  %call83 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %67)
  store %struct.CLAUSE_HELP* %call83, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call84 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call84 to %struct.LITERAL_HELP*
  %call85 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %69)
  store i32 %call85, i32* %j, align 4
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %cmp86 = icmp ne %struct.CLAUSE_HELP* %70, %71
  br i1 %cmp86, label %land.lhs.true.87, label %if.end.112

land.lhs.true.87:                                 ; preds = %for.body.80
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %lc, align 4
  %cmp88 = icmp sle i32 %72, %73
  br i1 %cmp88, label %land.lhs.true.89, label %lor.lhs.false.92

land.lhs.true.89:                                 ; preds = %land.lhs.true.87
  %74 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call90 = call i32 @clause_LiteralIsFromConstraint(%struct.LITERAL_HELP* %74)
  %tobool91 = icmp ne i32 %call90, 0
  br i1 %tobool91, label %land.lhs.true.104, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %land.lhs.true.89, %land.lhs.true.87
  %75 = load i32, i32* %i, align 4
  %76 = load i32, i32* %fa, align 4
  %cmp93 = icmp sge i32 %75, %76
  br i1 %cmp93, label %land.lhs.true.94, label %lor.lhs.false.99

land.lhs.true.94:                                 ; preds = %lor.lhs.false.92
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %la, align 4
  %cmp95 = icmp sle i32 %77, %78
  br i1 %cmp95, label %land.lhs.true.96, label %lor.lhs.false.99

land.lhs.true.96:                                 ; preds = %land.lhs.true.94
  %79 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call97 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %79)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %land.lhs.true.104, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.96, %land.lhs.true.94, %lor.lhs.false.92
  %80 = load i32, i32* %i, align 4
  %81 = load i32, i32* %fs, align 4
  %cmp100 = icmp sge i32 %80, %81
  br i1 %cmp100, label %land.lhs.true.101, label %if.end.112

land.lhs.true.101:                                ; preds = %lor.lhs.false.99
  %82 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call102 = call i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %82)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %land.lhs.true.104, label %if.end.112

land.lhs.true.104:                                ; preds = %land.lhs.true.101, %land.lhs.true.96, %land.lhs.true.89
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %85 = bitcast %struct.CLAUSE_HELP* %84 to i8*
  %call105 = call i32 @list_PointerMember(%struct.LIST_HELP* %83, i8* %85)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.end.112, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %land.lhs.true.104
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %87 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %88 = load i32, i32* %i, align 4
  %89 = load i32, i32* %j, align 4
  %call108 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %86, %struct.CLAUSE_HELP* %87, i32 %88, i32 %89)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.112

if.then.110:                                      ; preds = %land.lhs.true.107
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %91 = bitcast %struct.CLAUSE_HELP* %90 to i8*
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %call111 = call %struct.LIST_HELP* @list_Cons(i8* %91, %struct.LIST_HELP* %92)
  store %struct.LIST_HELP* %call111, %struct.LIST_HELP** %SubsumedList, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %land.lhs.true.107, %land.lhs.true.104, %land.lhs.true.101, %lor.lhs.false.99, %for.body.80
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.112
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call114 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %93)
  store %struct.LIST_HELP* %call114, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.76

for.end.115:                                      ; preds = %for.cond.76
  %call116 = call i8* @st_NextCandidate()
  %94 = bitcast i8* %call116 to %struct.term*
  store %struct.term* %94, %struct.term** %CandTerm, align 8
  br label %while.cond.72

while.end.117:                                    ; preds = %while.cond.72
  %95 = load %struct.term*, %struct.term** %Atom, align 8
  %call118 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %95)
  call void @list_Delete(%struct.LIST_HELP* %call118)
  %96 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Free(%struct.term* %96)
  br label %if.end.119

if.end.119:                                       ; preds = %while.end.117, %land.lhs.true.60, %while.end
  %97 = load i32*, i32** %Flags.addr, align 8
  %call120 = call i32 @flag_GetFlagValue(i32* %97, i32 12)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.135

if.then.122:                                      ; preds = %if.end.119
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  store %struct.LIST_HELP* %98, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.132, %if.then.122
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call124 = call i32 @list_Empty(%struct.LIST_HELP* %99)
  %tobool125 = icmp ne i32 %call124, 0
  %lnot126 = xor i1 %tobool125, true
  br i1 %lnot126, label %for.body.127, label %for.end.134

for.body.127:                                     ; preds = %for.cond.123
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call128 = call i8* @list_Car(%struct.LIST_HELP* %100)
  %101 = bitcast i8* %call128 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %101, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call129 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %102)
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %103)
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call130 = call i32 @clause_Number(%struct.CLAUSE_HELP* %104)
  %call131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 %call130)
  br label %for.inc.132

for.inc.132:                                      ; preds = %for.body.127
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call133 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %105)
  store %struct.LIST_HELP* %call133, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.123

for.end.134:                                      ; preds = %for.cond.123
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %if.end.119
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  store %struct.LIST_HELP* %106, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.135, %if.then
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %107
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 4
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %woindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @red_UsableMode(i32 %Mode) #2 {
entry:
  %Mode.addr = alloca i32, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load i32, i32* %Mode.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %Mode.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  ret i32 %lor.ext
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %usindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 6
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %usindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

; Function Attrs: nounwind uwtable
define internal void @red_HandleRedundantIndexedClauses(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Blocked, %struct.CLAUSE_HELP* %RedClause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Blocked.addr = alloca %struct.LIST_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Blocked, %struct.LIST_HELP** %Blocked.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked.addr, align 8
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
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP** %Clause, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32 @prfs_LastBacktrackLevel(%struct.PROOFSEARCH_HELP* %7)
  %call6 = call i32 @prfs_SplitLevelCondition(i32 %call3, i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call8 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %10)
  call void @split_DeleteClauseAtLevel(%struct.PROOFSEARCH_HELP* %8, %struct.CLAUSE_HELP* %9, i32 %call8)
  br label %if.end.23

if.else:                                          ; preds = %for.body
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call9 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %11, i32 1)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.16

if.then.11:                                       ; preds = %if.else
  %12 = load i32*, i32** %Flags, align 8
  %call12 = call i32 @flag_GetFlagValue(i32* %12, i32 9)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %if.then.11
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP* %13, %struct.CLAUSE_HELP* %14)
  br label %if.end

if.else.15:                                       ; preds = %if.then.11
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_DeleteWorkedOff(%struct.PROOFSEARCH_HELP* %15, %struct.CLAUSE_HELP* %16)
  br label %if.end

if.end:                                           ; preds = %if.else.15, %if.then.14
  br label %if.end.22

if.else.16:                                       ; preds = %if.else
  %17 = load i32*, i32** %Flags, align 8
  %call17 = call i32 @flag_GetFlagValue(i32* %17, i32 9)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP* %18, %struct.CLAUSE_HELP* %19)
  br label %if.end.21

if.else.20:                                       ; preds = %if.else.16
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_DeleteUsable(%struct.PROOFSEARCH_HELP* %20, %struct.CLAUSE_HELP* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_BackMatchingReplacementResolution(%struct.CLAUSE_HELP* %RedClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %Result) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %Blocked = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %Document = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %LitList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Iter = alloca %struct.LIST_HELP*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %RedClNum = alloca i32, align 4
  %PClause = alloca %struct.CLAUSE_HELP*, align 8
  %PIndL = alloca %struct.LIST_HELP*, align 8
  %PClause89 = alloca %struct.CLAUSE_HELP*, align 8
  %ActLit90 = alloca %struct.LITERAL_HELP*, align 8
  %PLit91 = alloca %struct.LITERAL_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %LitList92 = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %RedClNum93 = alloca i32, align 4
  %PInd = alloca i32, align 4
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Blocked, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %0, i32 9)
  store i32 %call1, i32* %Document, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp eq i32 %call2, 1
  br i1 %cmp, label %if.then, label %if.else.88

if.then:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call3 = call i32 @clause_FirstLitIndex()
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %2, i32 %call3)
  store %struct.LITERAL_HELP* %call4, %struct.LITERAL_HELP** %ActLit, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call5 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %3)
  %call6 = call i32 @fol_IsEquality(%struct.term* %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %if.then
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call7 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.87

if.then.9:                                        ; preds = %lor.lhs.false, %if.then
  %call10 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call11 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %5)
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call12 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  %call13 = call i8* @st_ExistInstance(%struct.binding* %call10, %struct.st* %call11, %struct.term* %call12)
  %7 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %7, %struct.term** %CandTerm, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call14 = call i32 @clause_Number(%struct.CLAUSE_HELP* %8)
  store i32 %call14, i32* %RedClNum, align 4
  %call15 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %LitList, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then.9
  %9 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool16 = icmp ne %struct.term* %9, null
  br i1 %tobool16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call17 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %10)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call20 to %struct.LITERAL_HELP*
  %call21 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %12, %struct.LITERAL_HELP* %14)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call25 = call %struct.LIST_HELP* @list_Cons(i8* %call24, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %LitList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call27 = call i8* @st_NextCandidate()
  %18 = bitcast i8* %call27 to %struct.term*
  store %struct.term* %18, %struct.term** %CandTerm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.84, %while.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br i1 %lnot31, label %while.body.32, label %while.end.86

while.body.32:                                    ; preds = %while.cond.28
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call33 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %21, %struct.LITERAL_HELP** %PLit, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %23 = bitcast %struct.LITERAL_HELP* %22 to i8*
  %call34 = call %struct.LIST_HELP* @list_List(i8* %23)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %PIndL, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call35 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %24)
  store %struct.CLAUSE_HELP* %call35, %struct.CLAUSE_HELP** %PClause, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %26 = bitcast %struct.CLAUSE_HELP* %25 to i8*
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call36 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Blocked, align 8
  %28 = load i32*, i32** %Flags.addr, align 8
  %call37 = call i32 @flag_GetFlagValue(i32* %28, i32 20)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %while.body.32
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %29)
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call41 = call i32 @clause_Number(%struct.CLAUSE_HELP* %31)
  %call42 = call i32 @clause_FirstLitIndex()
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %call41, i32 %call42)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %while.body.32
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %Iter, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.57, %if.end.44
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool48 = icmp ne i32 %call47, 0
  %lnot49 = xor i1 %tobool48, true
  br i1 %lnot49, label %for.body.50, label %for.end.59

for.body.50:                                      ; preds = %for.cond.46
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call51 to %struct.LITERAL_HELP*
  %call52 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %37)
  %cmp53 = icmp eq %struct.CLAUSE_HELP* %35, %call52
  br i1 %cmp53, label %if.then.54, label %if.else

if.then.54:                                       ; preds = %for.body.50
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  call void @list_Rplacd(%struct.LIST_HELP* %38, %struct.LIST_HELP* %call55)
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PIndL, align 8
  call void @list_Rplacd(%struct.LIST_HELP* %40, %struct.LIST_HELP* %41)
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  store %struct.LIST_HELP* %42, %struct.LIST_HELP** %PIndL, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  store %struct.LIST_HELP* %43, %struct.LIST_HELP** %Scan, align 8
  br label %if.end.56

if.else:                                          ; preds = %for.body.50
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  store %struct.LIST_HELP* %44, %struct.LIST_HELP** %Iter, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.54
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.46

for.end.59:                                       ; preds = %for.cond.46
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  store %struct.LIST_HELP* %46, %struct.LIST_HELP** %Iter, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call60 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %LitList, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  call void @list_Free(%struct.LIST_HELP* %48)
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call61 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %49)
  store %struct.CLAUSE_HELP* %call61, %struct.CLAUSE_HELP** %Copy, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %50, i32 1)
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %51, %struct.CLAUSE_HELP* %52)
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PIndL, align 8
  store %struct.LIST_HELP* %53, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.69, %for.end.59
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %54)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot65 = xor i1 %tobool64, true
  br i1 %lnot65, label %for.body.66, label %for.end.71

for.body.66:                                      ; preds = %for.cond.62
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call67 = call i8* @list_Car(%struct.LIST_HELP* %56)
  %57 = bitcast i8* %call67 to %struct.LITERAL_HELP*
  %call68 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %57)
  %conv = sext i32 %call68 to i64
  %58 = inttoptr i64 %conv to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %55, i8* %58)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.66
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.62

for.end.71:                                       ; preds = %for.cond.62
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PIndL, align 8
  %62 = load i32*, i32** %Flags.addr, align 8
  %63 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %60, %struct.LIST_HELP* %61, i32* %62, i32* %63)
  %64 = load i32, i32* %Document, align 4
  %tobool72 = icmp ne i32 %64, 0
  br i1 %tobool72, label %if.then.73, label %if.else.79

if.then.73:                                       ; preds = %for.end.71
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PIndL, align 8
  %67 = load i32, i32* %RedClNum, align 4
  %conv74 = sext i32 %67 to i64
  %68 = inttoptr i64 %conv74 to i8*
  %call75 = call %struct.LIST_HELP* @list_List(i8* %68)
  %call76 = call i32 @clause_FirstLitIndex()
  %conv77 = sext i32 %call76 to i64
  %69 = inttoptr i64 %conv77 to i8*
  %call78 = call %struct.LIST_HELP* @list_List(i8* %69)
  call void @red_DocumentMatchingReplacementResolution(%struct.CLAUSE_HELP* %65, %struct.LIST_HELP* %66, %struct.LIST_HELP* %call75, %struct.LIST_HELP* %call78)
  br label %if.end.80

if.else.79:                                       ; preds = %for.end.71
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PIndL, align 8
  call void @list_Delete(%struct.LIST_HELP* %70)
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.79, %if.then.73
  %71 = load i32*, i32** %Flags.addr, align 8
  %call81 = call i32 @flag_GetFlagValue(i32* %71, i32 20)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %72)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.83, %if.end.80
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %74 = bitcast %struct.CLAUSE_HELP* %73 to i8*
  %75 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %75, align 8
  %call85 = call %struct.LIST_HELP* @list_Cons(i8* %74, %struct.LIST_HELP* %76)
  %77 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %77, align 8
  br label %while.cond.28

while.end.86:                                     ; preds = %while.cond.28
  br label %if.end.87

if.end.87:                                        ; preds = %while.end.86, %lor.lhs.false
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  store %struct.LIST_HELP* %78, %struct.LIST_HELP** %retval
  br label %return

if.else.88:                                       ; preds = %entry
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call94 = call i32 @clause_Number(%struct.CLAUSE_HELP* %79)
  store i32 %call94, i32* %RedClNum93, align 4
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call95 = call i32 @clause_Length(%struct.CLAUSE_HELP* %80)
  store i32 %call95, i32* %length, align 4
  %call96 = call i32 @clause_FirstLitIndex()
  store i32 %call96, i32* %i, align 4
  br label %for.cond.97

for.cond.97:                                      ; preds = %for.inc.147, %if.else.88
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %length, align 4
  %cmp98 = icmp slt i32 %81, %82
  br i1 %cmp98, label %for.body.100, label %for.end.148

for.body.100:                                     ; preds = %for.cond.97
  %83 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %84 = load i32, i32* %i, align 4
  %call101 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %83, i32 %84)
  store %struct.LITERAL_HELP* %call101, %struct.LITERAL_HELP** %ActLit90, align 8
  %85 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit90, align 8
  %call102 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %85)
  %call103 = call i32 @fol_IsEquality(%struct.term* %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.end.146, label %if.then.105

if.then.105:                                      ; preds = %for.body.100
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %87 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit90, align 8
  %88 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call106 = call %struct.LIST_HELP* @red_GetBackMRResLits(%struct.CLAUSE_HELP* %86, %struct.LITERAL_HELP* %87, %struct.SHARED_INDEX_NODE* %88)
  store %struct.LIST_HELP* %call106, %struct.LIST_HELP** %LitList92, align 8
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList92, align 8
  store %struct.LIST_HELP* %89, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.143, %if.then.105
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call108 = call i32 @list_Empty(%struct.LIST_HELP* %90)
  %tobool109 = icmp ne i32 %call108, 0
  %lnot110 = xor i1 %tobool109, true
  br i1 %lnot110, label %for.body.111, label %for.end.145

for.body.111:                                     ; preds = %for.cond.107
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call112 = call i8* @list_Car(%struct.LIST_HELP* %91)
  %92 = bitcast i8* %call112 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %92, %struct.LITERAL_HELP** %PLit91, align 8
  %93 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit91, align 8
  %call113 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %93)
  store %struct.CLAUSE_HELP* %call113, %struct.CLAUSE_HELP** %PClause89, align 8
  %94 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit91, align 8
  %call114 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %94)
  store i32 %call114, i32* %PInd, align 4
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause89, align 8
  %call115 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %95)
  store %struct.CLAUSE_HELP* %call115, %struct.CLAUSE_HELP** %Copy, align 8
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %97 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause89, align 8
  %98 = bitcast %struct.CLAUSE_HELP* %97 to i8*
  %call116 = call i32 @list_PointerMember(%struct.LIST_HELP* %96, i8* %98)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.else.123

if.then.118:                                      ; preds = %for.body.111
  %99 = load i32*, i32** %Flags.addr, align 8
  %call119 = call i32 @flag_GetFlagValue(i32* %99, i32 9)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.122, label %if.then.121

if.then.121:                                      ; preds = %if.then.118
  %100 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %100)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.then.118
  br label %if.end.125

if.else.123:                                      ; preds = %for.body.111
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause89, align 8
  %102 = bitcast %struct.CLAUSE_HELP* %101 to i8*
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call124 = call %struct.LIST_HELP* @list_Cons(i8* %102, %struct.LIST_HELP* %103)
  store %struct.LIST_HELP* %call124, %struct.LIST_HELP** %Blocked, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.123, %if.end.122
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %104, i32 1)
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %106 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %105, %struct.CLAUSE_HELP* %106)
  %107 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %108 = load i32, i32* %PInd, align 4
  %109 = load i32*, i32** %Flags.addr, align 8
  %110 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %107, i32 %108, i32* %109, i32* %110)
  %111 = load i32, i32* %Document, align 4
  %tobool126 = icmp ne i32 %111, 0
  br i1 %tobool126, label %if.then.127, label %if.end.134

if.then.127:                                      ; preds = %if.end.125
  %112 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %113 = load i32, i32* %PInd, align 4
  %conv128 = sext i32 %113 to i64
  %114 = inttoptr i64 %conv128 to i8*
  %call129 = call %struct.LIST_HELP* @list_List(i8* %114)
  %115 = load i32, i32* %RedClNum93, align 4
  %conv130 = sext i32 %115 to i64
  %116 = inttoptr i64 %conv130 to i8*
  %call131 = call %struct.LIST_HELP* @list_List(i8* %116)
  %117 = load i32, i32* %i, align 4
  %conv132 = sext i32 %117 to i64
  %118 = inttoptr i64 %conv132 to i8*
  %call133 = call %struct.LIST_HELP* @list_List(i8* %118)
  call void @red_DocumentMatchingReplacementResolution(%struct.CLAUSE_HELP* %112, %struct.LIST_HELP* %call129, %struct.LIST_HELP* %call131, %struct.LIST_HELP* %call133)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.127, %if.end.125
  %119 = load i32*, i32** %Flags.addr, align 8
  %call135 = call i32 @flag_GetFlagValue(i32* %119, i32 20)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.end.141

if.then.137:                                      ; preds = %if.end.134
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call138 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %120)
  %121 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause89, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %121)
  %122 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call139 = call i32 @clause_Number(%struct.CLAUSE_HELP* %122)
  %123 = load i32, i32* %i, align 4
  %call140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %call139, i32 %123)
  %124 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %124)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.137, %if.end.134
  %125 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %126 = bitcast %struct.CLAUSE_HELP* %125 to i8*
  %127 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %128 = load %struct.LIST_HELP*, %struct.LIST_HELP** %127, align 8
  %call142 = call %struct.LIST_HELP* @list_Cons(i8* %126, %struct.LIST_HELP* %128)
  %129 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.LIST_HELP* %call142, %struct.LIST_HELP** %129, align 8
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.141
  %130 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call144 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %130)
  store %struct.LIST_HELP* %call144, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.107

for.end.145:                                      ; preds = %for.cond.107
  %131 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList92, align 8
  call void @list_Delete(%struct.LIST_HELP* %131)
  br label %if.end.146

if.end.146:                                       ; preds = %for.end.145, %for.body.100
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %132 = load i32, i32* %i, align 4
  %inc = add nsw i32 %132, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.97

for.end.148:                                      ; preds = %for.cond.97
  %133 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  store %struct.LIST_HELP* %133, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.148, %if.end.87
  %134 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %134
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_BackRewriting(%struct.CLAUSE_HELP* %RedClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %Result) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Blocked = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Blocked, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %length, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %ActLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call4 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %9 = load i32, i32* %i, align 4
  %10 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %11 = load i32*, i32** %Flags.addr, align 8
  %12 = load i32*, i32** %Precedence.addr, align 8
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call5 = call %struct.LIST_HELP* @red_LiteralRewriting(%struct.CLAUSE_HELP* %7, %struct.LITERAL_HELP* %8, i32 %9, %struct.SHARED_INDEX_NODE* %10, i32* %11, i32* %12, %struct.LIST_HELP** %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call6 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call5, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Blocked, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call7 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Blocked, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  ret %struct.LIST_HELP* %17
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_BackContextualRewriting(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %RuleClause, i32 %Mode, %struct.LIST_HELP** %Result) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %found = alloca i32, align 4
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Blocked = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Blocked, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call3, i32* %ls, align 4
  store i32 0, i32* %found, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call4 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %6, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.LITERAL_HELP* %call5, %struct.LITERAL_HELP** %Lit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call6 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call8 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %11, i32 2)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %14 = load i32*, i32** %Flags, align 8
  %15 = load i32*, i32** %Precedence, align 8
  %call11 = call i32 @red_LeftTermOfEquationIsStrictlyMaximalTerm(%struct.CLAUSE_HELP* %12, %struct.LITERAL_HELP* %13, i32* %14, i32* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %Mode.addr, align 4
  %21 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %call13 = call %struct.LIST_HELP* @red_BackCRwOnLiteral(%struct.PROOFSEARCH_HELP* %16, %struct.CLAUSE_HELP* %17, %struct.LITERAL_HELP* %18, i32 %19, i32 %20, %struct.LIST_HELP** %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call13, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Blocked, align 8
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call15 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Blocked, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  ret %struct.LIST_HELP* %25
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @red_CompleteReductionOnDerivedClauses(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %DerivedClauses, i32 %Mode, i32 %Bound, i32 %BoundMode, i32* %BoundApplied) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %DerivedClauses.addr = alloca %struct.LIST_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %Bound.addr = alloca i32, align 4
  %BoundMode.addr = alloca i32, align 4
  %BoundApplied.addr = alloca i32*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %NewClauses = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ClauseBound = alloca i32, align 4
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Flags = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %DerivedClauses, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  store i32 %Bound, i32* %Bound.addr, align 4
  store i32 %BoundMode, i32* %BoundMode.addr, align 4
  store i32* %BoundApplied, i32** %BoundApplied.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %EmptyClauses, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %0)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  store i32 0, i32* %ClauseBound, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Flags, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.69, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i8* @list_NCar(%struct.LIST_HELP** %DerivedClauses.addr)
  %3 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %7 = load i32, i32* %Mode.addr, align 4
  %call7 = call %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %5, %struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.CLAUSE_HELP* %call7, %struct.CLAUSE_HELP** %Clause, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %8, null
  br i1 %cmp, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* %BoundMode.addr, align 4
  %cmp8 = icmp ne i32 %9, 0
  br i1 %cmp8, label %land.lhs.true.9, label %if.end.34

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %10 = load i32, i32* %Bound.addr, align 4
  %cmp10 = icmp ne i32 %10, -1
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.34

land.lhs.true.11:                                 ; preds = %land.lhs.true.9
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call12 = call i32 @clause_IsFromInput(%struct.CLAUSE_HELP* %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.34, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %land.lhs.true.11
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call15 = call i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.34, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true.14
  %13 = load i32, i32* %BoundMode.addr, align 4
  switch i32 %13, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %if.then.17
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call18 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %14)
  store i32 %call18, i32* %ClauseBound, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.then.17
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call20 = call i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %15)
  store i32 %call20, i32* %ClauseBound, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.17
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fflush(%struct._IO_FILE* %16)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0))
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  call void @misc_Error()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.19, %sw.bb
  %17 = load i32, i32* %ClauseBound, align 4
  %18 = load i32, i32* %Bound.addr, align 4
  %cmp22 = icmp ugt i32 %17, %18
  br i1 %cmp22, label %if.then.23, label %if.end.33

if.then.23:                                       ; preds = %sw.epilog
  %19 = load i32*, i32** %Flags, align 8
  %call24 = call i32 @flag_GetFlagValue(i32* %19, i32 35)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.then.23
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %21)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %22)
  %23 = load i32*, i32** %BoundApplied.addr, align 8
  %24 = load i32, i32* %23, align 4
  %cmp29 = icmp eq i32 %24, -1
  br i1 %cmp29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.28
  %25 = load i32, i32* %ClauseBound, align 4
  %26 = load i32*, i32** %BoundApplied.addr, align 8
  %27 = load i32, i32* %26, align 4
  %cmp30 = icmp ult i32 %25, %27
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.28
  %28 = load i32, i32* %ClauseBound, align 4
  %29 = load i32*, i32** %BoundApplied.addr, align 8
  store i32 %28, i32* %29, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %lor.lhs.false
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Clause, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %sw.epilog
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true.14, %land.lhs.true.11, %land.lhs.true.9, %land.lhs.true, %if.end
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %cmp35 = icmp ne %struct.CLAUSE_HELP* %30, null
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.41

land.lhs.true.36:                                 ; preds = %if.end.34
  %31 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call37 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %31)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %land.lhs.true.36
  %32 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %34 = load i32, i32* %Mode.addr, align 4
  %call40 = call %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %32, %struct.CLAUSE_HELP* %33, i32 %34)
  store %struct.CLAUSE_HELP* %call40, %struct.CLAUSE_HELP** %Clause, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %land.lhs.true.36, %if.end.34
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %tobool42 = icmp ne %struct.CLAUSE_HELP* %35, null
  br i1 %tobool42, label %if.then.43, label %if.end.69

if.then.43:                                       ; preds = %if.end.41
  %36 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_IncKeptClauses(%struct.PROOFSEARCH_HELP* %36)
  %37 = load i32*, i32** %Flags, align 8
  %call44 = call i32 @flag_GetFlagValue(i32* %37, i32 26)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %if.then.43
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %38)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.then.43
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call49 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %40)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.48
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %42 = bitcast %struct.CLAUSE_HELP* %41 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call52 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.68

if.else:                                          ; preds = %if.end.48
  %44 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %46 = load i32, i32* %Mode.addr, align 4
  %call53 = call %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %44, %struct.CLAUSE_HELP* %45, i32 %46)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %NewClauses, align 8
  %47 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call54 = call i32 @list_Length(%struct.LIST_HELP* %48)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %47, i32 %call54)
  %49 = load i32*, i32** %Flags, align 8
  %call55 = call i32 @flag_GetFlagValue(i32* %49, i32 23)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %if.else
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.57
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call61 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %52)
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call62 = call i8* @list_Car(%struct.LIST_HELP* %53)
  %54 = bitcast i8* %call62 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %54)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %if.else
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call65 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %56, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %NewClauses, align 8
  %57 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %57, %struct.CLAUSE_HELP* %58)
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call66 = call %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP* %59, i32 (i8*)* bitcast (i32 (%struct.CLAUSE_HELP*)* @clause_Weight to i32 (i8*)*))
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %NewClauses, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %call67 = call %struct.LIST_HELP* @red_MergeClauseListsByWeight(%struct.LIST_HELP* %60, %struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %DerivedClauses.addr, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.64, %if.then.51
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.41
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  ret %struct.LIST_HELP* %62
}

declare %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP*) #1

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
define internal i8* @list_NCar(%struct.LIST_HELP** %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP**, align 8
  %Result = alloca i8*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %L, %struct.LIST_HELP*** %L.addr, align 8
  %0 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %0, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %1, i32 0, i32 1
  %2 = load i8*, i8** %car, align 8
  store i8* %2, i8** %Result, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %3, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %4, i32 0, i32 0
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Help, align 8
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %6, align 8
  call void @list_Free(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %9 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %L.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %9, align 8
  %10 = load i8*, i8** %Result, align 8
  ret i8* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %0)
  %call1 = call i32 @list_StackEmpty(%struct.LIST_HELP* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsFromInput(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  %1 = load i32, i32* %origin, align 4
  %cmp = icmp eq i32 %1, 16
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsFromSplitting(%struct.CLAUSE_HELP* %Clause) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Weight(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
}

declare i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP*) #1

declare i32 @fflush(%struct._IO_FILE*) #1

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
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare void @clause_Print(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_IncKeptClauses(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %keptclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 19
  %1 = load i32, i32* %keptclauses, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %keptclauses, align 4
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %Prf, i32 %k) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %k.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %derivedclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 20
  %2 = load i32, i32* %derivedclauses, align 4
  %add = add nsw i32 %2, %0
  store i32 %add, i32* %derivedclauses, align 4
  ret void
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

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

declare %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP*, %struct.LIST_HELP**) #1

declare void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP*, i32 (i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @red_MergeClauseListsByWeight(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #2 {
entry:
  %L1.addr = alloca %struct.LIST_HELP*, align 8
  %L2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L1, %struct.LIST_HELP** %L1.addr, align 8
  store %struct.LIST_HELP* %L2, %struct.LIST_HELP** %L2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L1.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L2.addr, align 8
  %call = call %struct.LIST_HELP* @list_NNumberMerge(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1, i32 (i8*)* bitcast (i32 (%struct.CLAUSE_HELP*)* @clause_Weight to i32 (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: nounwind uwtable
define i32 @red_ClauseDeletion(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %RedClause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ConstraintClause = alloca %struct.CLAUSE_HELP*, align 8
  %GivenClause = alloca %struct.CLAUSE_HELP*, align 8
  %ApproxUsableList = alloca %struct.LIST_HELP*, align 8
  %ApproxWOList = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %ApproxDerivables = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %nc = alloca i32, align 4
  %Count = alloca i32, align 4
  %OldClauseCounter = alloca i32, align 4
  %Index = alloca %struct.st*, align 8
  %DerClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %cmp = icmp ne %struct.SORTTHEORY_HELP* %0, null
  br i1 %cmp, label %if.then, label %if.end.122

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %2, i32 89)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32*, i32** %Flags.addr, align 8
  %call4 = call i32 @flag_GetFlagValue(i32* %3, i32 8)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %5)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %call9 = call %struct.st* @st_IndexCreate()
  store %struct.st* %call9, %struct.st** %Index, align 8
  %call10 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call11 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %6)
  store i32 %call11, i32* %nc, align 4
  %call12 = call i32 @clause_Counter()
  store i32 %call12, i32* %OldClauseCounter, align 4
  %call13 = call i32 @clause_FirstLitIndex()
  store i32 %call13, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.8
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nc, align 4
  %cmp14 = icmp slt i32 %7, %8
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  %call16 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call15)
  %call17 = call %struct.term* @term_Copy(%struct.term* %call16)
  %11 = bitcast %struct.term* %call17 to i8*
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %11, %struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call %struct.LIST_HELP* @list_Nil()
  %call21 = call %struct.LIST_HELP* @list_Nil()
  %16 = load i32*, i32** %Flags.addr, align 8
  %17 = load i32*, i32** %Precedence.addr, align 8
  %call22 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %15, %struct.LIST_HELP* %call20, %struct.LIST_HELP* %call21, i32* %16, i32* %17)
  store %struct.CLAUSE_HELP* %call22, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call23 = call i32 @clause_Number(%struct.CLAUSE_HELP* %21)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %20, i32 %call23)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  %call24 = call i32 @clause_FirstLitIndex()
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %22, i32 %call24)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  call void @clause_SetFromClauseDeletion(%struct.CLAUSE_HELP* %23)
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  %25 = load %struct.st*, %struct.st** %Index, align 8
  call void @clause_InsertFlatIntoIndex(%struct.CLAUSE_HELP* %24, %struct.st* %25)
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ConstraintClause, align 8
  %27 = bitcast %struct.CLAUSE_HELP* %26 to i8*
  %call25 = call %struct.LIST_HELP* @list_List(i8* %27)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %ApproxUsableList, align 8
  %call26 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %ApproxWOList, align 8
  %call27 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %EmptyClauses, align 8
  store i32 0, i32* %Count, align 4
  %28 = load i32*, i32** %Flags.addr, align 8
  %call28 = call i32 @flag_GetFlagValue(i32* %28, i32 8)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %for.end
  %call31 = call i32 @puts(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i32 0, i32 0))
  %call32 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxUsableList, align 8
  call void @clause_ListPrint(%struct.LIST_HELP* %29)
  %call33 = call i32 @puts(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxWOList, align 8
  call void @clause_ListPrint(%struct.LIST_HELP* %30)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %for.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.101, %if.end.34
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxUsableList, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool38 = icmp ne i32 %call37, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %tobool38, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxUsableList, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call39 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %35, %struct.CLAUSE_HELP** %GivenClause, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %36, i32 1)
  %37 = load i32*, i32** %Flags.addr, align 8
  %call40 = call i32 @flag_GetFlagValue(i32* %37, i32 8)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %while.body
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %38)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call44 = call i32 @fflush(%struct._IO_FILE* %40)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %while.body
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %42 = bitcast %struct.CLAUSE_HELP* %41 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxWOList, align 8
  %call46 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %ApproxWOList, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxUsableList, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %46 = bitcast %struct.CLAUSE_HELP* %45 to i8*
  %call47 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %44, i8* %46)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %ApproxUsableList, align 8
  %47 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %49 = load i32*, i32** %Flags.addr, align 8
  %50 = load i32*, i32** %Precedence.addr, align 8
  %call48 = call %struct.LIST_HELP* @red_CDDerivables(%struct.SORTTHEORY_HELP* %47, %struct.CLAUSE_HELP* %48, i32* %49, i32* %50)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %ApproxDerivables, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxDerivables, align 8
  %call49 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %51, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %ApproxDerivables, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %52)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else, label %if.then.52

if.then.52:                                       ; preds = %if.end.45
  %53 = load i32*, i32** %Flags.addr, align 8
  %call53 = call i32 @flag_GetFlagValue(i32* %53, i32 8)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.58

if.then.55:                                       ; preds = %if.then.52
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call56 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call57 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.55, %if.then.52
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxDerivables, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %57)
  %call59 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %ApproxDerivables, align 8
  br label %if.end.101

if.else:                                          ; preds = %if.end.45
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxDerivables, align 8
  store %struct.LIST_HELP* %58, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.85, %if.else
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call61 = call i32 @list_Empty(%struct.LIST_HELP* %59)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.end.66, label %land.rhs.63

land.rhs.63:                                      ; preds = %for.cond.60
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call64 = call i32 @list_Empty(%struct.LIST_HELP* %60)
  %tobool65 = icmp ne i32 %call64, 0
  br label %land.end.66

land.end.66:                                      ; preds = %land.rhs.63, %for.cond.60
  %61 = phi i1 [ false, %for.cond.60 ], [ %tobool65, %land.rhs.63 ]
  br i1 %61, label %for.body.67, label %for.end.87

for.body.67:                                      ; preds = %land.end.66
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call68 = call i8* @list_Car(%struct.LIST_HELP* %62)
  %63 = bitcast i8* %call68 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %63, %struct.CLAUSE_HELP** %DerClause, align 8
  %64 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %DerClause, align 8
  %66 = load i32*, i32** %Flags.addr, align 8
  %67 = load i32*, i32** %Precedence.addr, align 8
  %68 = load %struct.st*, %struct.st** %Index, align 8
  %call69 = call i32 @red_CDReduce(%struct.SORTTHEORY_HELP* %64, %struct.CLAUSE_HELP* %65, i32* %66, i32* %67, %struct.LIST_HELP** %ApproxUsableList, %struct.LIST_HELP** %ApproxWOList, %struct.st* %68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %for.body.67
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %DerClause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %69)
  br label %if.end.84

if.else.72:                                       ; preds = %for.body.67
  %70 = load i32, i32* %Count, align 4
  %inc73 = add nsw i32 %70, 1
  store i32 %inc73, i32* %Count, align 4
  %71 = load i32*, i32** %Flags.addr, align 8
  %call74 = call i32 @flag_GetFlagValue(i32* %71, i32 8)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.else.72
  %call77 = call i32 @putchar(i32 10)
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %DerClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %72)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.else.72
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %DerClause, align 8
  %call79 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %73)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %if.end.78
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %DerClause, align 8
  %75 = bitcast %struct.CLAUSE_HELP* %74 to i8*
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call82 = call %struct.LIST_HELP* @list_Cons(i8* %75, %struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %if.end.78
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.71
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %77, i8* null)
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call86 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.60

for.end.87:                                       ; preds = %land.end.66
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call88 = call i32 @list_Empty(%struct.LIST_HELP* %79)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.else.98, label %if.then.90

if.then.90:                                       ; preds = %for.end.87
  %80 = load i32*, i32** %Flags.addr, align 8
  %call91 = call i32 @flag_GetFlagValue(i32* %80, i32 8)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.then.93, label %if.end.96

if.then.93:                                       ; preds = %if.then.90
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call94 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %81)
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call95 = call i8* @list_Car(%struct.LIST_HELP* %82)
  %83 = bitcast i8* %call95 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %83)
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.93, %if.then.90
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxDerivables, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %84)
  %call97 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call97, %struct.LIST_HELP** %ApproxDerivables, align 8
  br label %if.end.100

if.else.98:                                       ; preds = %for.end.87
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxDerivables, align 8
  call void @list_Delete(%struct.LIST_HELP* %85)
  %call99 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call99, %struct.LIST_HELP** %ApproxDerivables, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.98, %if.end.96
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.58
  br label %while.cond

while.end:                                        ; preds = %land.end
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call102 = call i32 @list_Empty(%struct.LIST_HELP* %86)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.else.111, label %if.then.104

if.then.104:                                      ; preds = %while.end
  %87 = load i32*, i32** %Flags.addr, align 8
  %call105 = call i32 @flag_GetFlagValue(i32* %87, i32 8)
  %tobool106 = icmp ne i32 %call105, 0
  br i1 %tobool106, label %if.then.107, label %if.end.110

if.then.107:                                      ; preds = %if.then.104
  %call108 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.12, i32 0, i32 0))
  %call109 = call i32 @puts(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.107, %if.then.104
  br label %if.end.117

if.else.111:                                      ; preds = %while.end
  %88 = load i32*, i32** %Flags.addr, align 8
  %call112 = call i32 @flag_GetFlagValue(i32* %88, i32 19)
  %tobool113 = icmp ne i32 %call112, 0
  br i1 %tobool113, label %if.then.114, label %if.end.116

if.then.114:                                      ; preds = %if.else.111
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call115 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %89)
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %90)
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.114, %if.else.111
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.110
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxUsableList, align 8
  %92 = load %struct.st*, %struct.st** %Index, align 8
  call void @clause_DeleteClauseListFlatFromIndex(%struct.LIST_HELP* %91, %struct.st* %92)
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ApproxWOList, align 8
  %94 = load %struct.st*, %struct.st** %Index, align 8
  call void @clause_DeleteClauseListFlatFromIndex(%struct.LIST_HELP* %93, %struct.st* %94)
  %95 = load %struct.st*, %struct.st** %Index, align 8
  call void @st_IndexDelete(%struct.st* %95)
  %96 = load i32, i32* %OldClauseCounter, align 4
  call void @clause_SetCounter(i32 %96)
  %97 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call118 = call i32 @list_Empty(%struct.LIST_HELP* %97)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %if.end.117
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %98)
  store i32 0, i32* %retval
  br label %return

if.end.121:                                       ; preds = %if.end.117
  store i32 1, i32* %retval
  br label %return

if.end.122:                                       ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.122, %if.end.121, %if.then.120, %if.then.3
  %99 = load i32, i32* %retval
  ret i32 %99
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

declare %struct.st* @st_IndexCreate() #1

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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Counter() #2 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstLitIndex() #2 {
entry:
  ret i32 0
}

declare %struct.term* @term_Copy(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %L) #2 {
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
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %C, i32 %Index) #2 {
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

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #1

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_InitSplitData(%struct.CLAUSE_HELP* %C) #2 {
entry:
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 4
  store i64* null, i64** %splitfield, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 5
  store i32 0, i32* %splitfield_length, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %2, i32 0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_AddParentClause(%struct.CLAUSE_HELP* %Clause, i32 %PClause) #2 {
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
define internal i32 @clause_Number(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %clausenumber, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %Clause, i32 %PLit) #2 {
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
define internal void @clause_SetFromClauseDeletion(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 0, i32* %origin, align 4
  ret void
}

declare void @clause_InsertFlatIntoIndex(%struct.CLAUSE_HELP*, %struct.st*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #2 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

declare i32 @puts(i8*) #1

declare void @clause_ListPrint(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #2 {
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

declare %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_CDDerivables(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %GivenClause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ListOfDerivedClauses = alloca %struct.LIST_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %2 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call1 = call %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %2)
  %3 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call %struct.LIST_HELP* @inf_ForwardSortResolution(%struct.CLAUSE_HELP* %1, %struct.st* %call1, %struct.SORTTHEORY_HELP* %3, i32 1, i32* %4, i32* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %7 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %call3 = call %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %7)
  %8 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call %struct.LIST_HELP* @inf_ForwardEmptySort(%struct.CLAUSE_HELP* %6, %struct.st* %call3, %struct.SORTTHEORY_HELP* %8, i32 1, i32* %9, i32* %10)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  ret %struct.LIST_HELP* %11
}

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define internal i32 @red_CDReduce(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %RedClause, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %ApproxUsListPt, %struct.LIST_HELP** %ApproxWOListPt, %struct.st* %Index) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ApproxUsListPt.addr = alloca %struct.LIST_HELP**, align 8
  %ApproxWOListPt.addr = alloca %struct.LIST_HELP**, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %ApproxUsListPt, %struct.LIST_HELP*** %ApproxUsListPt.addr, align 8
  store %struct.LIST_HELP** %ApproxWOListPt, %struct.LIST_HELP*** %ApproxWOListPt.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Copy, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  %call = call i32 @red_ObviousReductions(%struct.CLAUSE_HELP* %0, i32 0, i32* %1, i32* %2, %struct.CLAUSE_HELP** %Copy)
  %3 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  %6 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call i32 @red_SortSimplification(%struct.SORTTHEORY_HELP* %3, %struct.CLAUSE_HELP* %4, i32 -1, i32 0, i32* %5, i32* %6, %struct.CLAUSE_HELP** %Copy)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call2 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %7)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call i32 @red_Condensing(%struct.CLAUSE_HELP* %8, i32 0, i32* %9, i32* %10, %struct.CLAUSE_HELP** %Copy)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %12 = load %struct.st*, %struct.st** %Index.addr, align 8
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call i32 @red_CDForwardSubsumption(%struct.CLAUSE_HELP* %11, %struct.st* %12, i32* %13, i32* %14)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %16 = load i32*, i32** %Flags.addr, align 8
  %17 = load i32*, i32** %Precedence.addr, align 8
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ApproxUsListPt.addr, align 8
  %19 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ApproxWOListPt.addr, align 8
  %20 = load %struct.st*, %struct.st** %Index.addr, align 8
  call void @red_CDBackSubsumption(%struct.CLAUSE_HELP* %15, i32* %16, i32* %17, %struct.LIST_HELP** %18, %struct.LIST_HELP** %19, %struct.st* %20)
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %22 = load %struct.st*, %struct.st** %Index.addr, align 8
  call void @clause_InsertFlatIntoIndex(%struct.CLAUSE_HELP* %21, %struct.st* %22)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %24 = bitcast %struct.CLAUSE_HELP* %23 to i8*
  %25 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ApproxUsListPt.addr, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %25, align 8
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %26)
  %27 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ApproxUsListPt.addr, align 8
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %27, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.6, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

declare i32 @putchar(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #2 {
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

declare void @clause_DeleteClauseListFlatFromIndex(%struct.LIST_HELP*, %struct.st*) #1

declare void @st_IndexDelete(%struct.st*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetCounter(i32 %Value) #2 {
entry:
  %Value.addr = alloca i32, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Value.addr, align 4
  store i32 %0, i32* @clause_CLAUSECOUNTER, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @red_SatUnit(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %ClauseList) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Given = alloca %struct.CLAUSE_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Derivables = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %BackReduced = alloca %struct.LIST_HELP*, align 8
  %n = alloca i32, align 4
  %Derived = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32*, i32** %Flags, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %2, i32 55)
  store i32 %call2, i32* %Derived, align 4
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %EmptyClauses, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call4 = call %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %ClauseList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.35, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %tobool7, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call8 = call i8* @list_NCar(%struct.LIST_HELP** %ClauseList.addr)
  %7 = bitcast i8* %call8 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %7, %struct.CLAUSE_HELP** %Given, align 8
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call9 = call %struct.CLAUSE_HELP* @red_ReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %8, %struct.CLAUSE_HELP* %9, i32 1)
  store %struct.CLAUSE_HELP* %call9, %struct.CLAUSE_HELP** %Given, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %tobool10 = icmp ne %struct.CLAUSE_HELP* %10, null
  br i1 %tobool10, label %if.then, label %if.end.35

if.then:                                          ; preds = %while.body
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call11 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %13 = bitcast %struct.CLAUSE_HELP* %12 to i8*
  %call14 = call %struct.LIST_HELP* @list_List(i8* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.34

if.else:                                          ; preds = %if.then
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call15 = call %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15, i32 1)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %BackReduced, align 8
  %16 = load i32, i32* %Derived, align 4
  %cmp = icmp ne i32 %16, 0
  br i1 %cmp, label %if.then.16, label %if.else.23

if.then.16:                                       ; preds = %if.else
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call17 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %18)
  %19 = load i32*, i32** %Flags, align 8
  %20 = load i32*, i32** %Precedence, align 8
  %call18 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %17, %struct.SHARED_INDEX_NODE* %call17, i32 0, i32* %19, i32* %20)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Derivables, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call19 = call i32 @list_Length(%struct.LIST_HELP* %21)
  store i32 %call19, i32* %n, align 4
  %22 = load i32, i32* %n, align 4
  %23 = load i32, i32* %Derived, align 4
  %cmp20 = icmp ugt i32 %22, %23
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %if.then.16
  store i32 0, i32* %Derived, align 4
  br label %if.end

if.else.22:                                       ; preds = %if.then.16
  %24 = load i32, i32* %Derived, align 4
  %25 = load i32, i32* %n, align 4
  %sub = sub i32 %24, %25
  store i32 %sub, i32* %Derived, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.22, %if.then.21
  br label %if.end.25

if.else.23:                                       ; preds = %if.else
  %call24 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.end
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call26 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Derivables, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call27 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %28, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Derivables, align 8
  %29 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %29, %struct.CLAUSE_HELP* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call30 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %34, %struct.CLAUSE_HELP** %Clause, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %35, i32 0)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call32 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %37, %struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call33 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.then.13
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.LIST_HELP* %39, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %while.end
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot39 = xor i1 %tobool38, true
  br i1 %lnot39, label %for.body.40, label %for.end.44

for.body.40:                                      ; preds = %for.cond.36
  %41 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call41 to %struct.CLAUSE_HELP*
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %41, %struct.CLAUSE_HELP* %43)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.40
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  ret %struct.LIST_HELP* %46
}

declare %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetDepth(%struct.CLAUSE_HELP* %Clause, i32 %NewDepth) #2 {
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @red_ReduceInput(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %ClauseList) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Given = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %BackReduced = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %EmptyClauses, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %2)
  %call4 = call %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %ClauseList.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call5 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %3, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %ClauseList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %6, i32 7)
  %cmp = icmp eq i32 %call9, -1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i32*, i32** %Flags, align 8
  %call10 = call i32 @flag_GetFlagValue(i32* %7, i32 7)
  %conv = sitofp i32 %call10 to float
  %call11 = call float @clock_GetSeconds(i32 1)
  %cmp12 = fcmp ogt float %conv, %call11
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp12, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call14 = call i8* @list_NCar(%struct.LIST_HELP** %ClauseList.addr)
  %10 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %10, %struct.CLAUSE_HELP** %Given, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %12 = load i32*, i32** %Flags, align 8
  %13 = load i32*, i32** %Precedence, align 8
  %call15 = call %struct.CLAUSE_HELP* @red_SpecialInputReductions(%struct.CLAUSE_HELP* %11, i32* %12, i32* %13)
  store %struct.CLAUSE_HELP* %call15, %struct.CLAUSE_HELP** %Given, align 8
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call16 = call %struct.CLAUSE_HELP* @red_ReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %14, %struct.CLAUSE_HELP* %15, i32 1)
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %Given, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %tobool17 = icmp ne %struct.CLAUSE_HELP* %16, null
  br i1 %tobool17, label %if.then, label %if.end.27

if.then:                                          ; preds = %while.body
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_IncKeptClauses(%struct.PROOFSEARCH_HELP* %17)
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call18 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %20 = bitcast %struct.CLAUSE_HELP* %19 to i8*
  %call21 = call %struct.LIST_HELP* @list_List(i8* %20)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call22 = call %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %21, %struct.CLAUSE_HELP* %22, i32 1)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %BackReduced, align 8
  %23 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %call23 = call i32 @list_Length(%struct.LIST_HELP* %24)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %23, i32 %call23)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %call24 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %25, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %BackReduced, align 8
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %26, %struct.CLAUSE_HELP* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %call25 = call %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %BackReduced, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %call26 = call %struct.LIST_HELP* @red_MergeClauseListsByWeight(%struct.LIST_HELP* %29, %struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %ClauseList.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.LIST_HELP* %31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call30 to %struct.CLAUSE_HELP*
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %33, %struct.CLAUSE_HELP* %35)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %37)
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  ret %struct.LIST_HELP* %38
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

declare float @clock_GetSeconds(i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_SpecialInputReductions(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %end = alloca i32, align 4
  %Indexes = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Indexes, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %end, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %end, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call i32 @fol_IsTrue(%struct.term* %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %11)
  store i32 %call7, i32* %end, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call8 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %12)
  store i32 %call8, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.21, %for.end
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %end, align 4
  %cmp10 = icmp sle i32 %13, %14
  br i1 %cmp10, label %for.body.12, label %for.end.23

for.body.12:                                      ; preds = %for.cond.9
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call13 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  %call14 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call13)
  store %struct.term* %call14, %struct.term** %Atom, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call15 = call i32 @fol_IsFalse(%struct.term* %17)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %for.body.12
  %18 = load i32, i32* %i, align 4
  %conv18 = sext i32 %18 to i64
  %19 = inttoptr i64 %conv18 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %for.body.12
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end.20
  %21 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %21, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.9

for.end.23:                                       ; preds = %for.cond.9
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %24 = load i32*, i32** %Flags.addr, align 8
  %25 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %22, %struct.LIST_HELP* %23, i32* %24, i32* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @list_Delete(%struct.LIST_HELP* %26)
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret %struct.CLAUSE_HELP* %27
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @red_SatInput(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Given = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ClauseList = alloca %struct.LIST_HELP*, align 8
  %Derivables = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %n = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %EmptyClauses, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ClauseList, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %2)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Length(%struct.LIST_HELP* %3)
  store i32 %call5, i32* %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %land.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.cond
  %5 = load i32, i32* %n, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %6 = load i32*, i32** %Flags, align 8
  %call7 = call i32 @flag_GetFlagValue(i32* %6, i32 7)
  %cmp8 = icmp eq i32 %call7, -1
  br i1 %cmp8, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %7, i32 7)
  %conv = sitofp i32 %call9 to float
  %call10 = call float @clock_GetSeconds(i32 1)
  %cmp11 = fcmp ogt float %conv, %call10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %8 = phi i1 [ true, %land.rhs ], [ %cmp11, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %9 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %8, %lor.end ]
  br i1 %9, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %11, %struct.CLAUSE_HELP** %Given, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call14 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %12, i32 8)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call16 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %14)
  %15 = load i32*, i32** %Flags, align 8
  %16 = load i32*, i32** %Precedence, align 8
  %call17 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %13, %struct.SHARED_INDEX_NODE* %call16, i32 0, i32* %15, i32* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Derivables, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call18 = call i32 @list_Length(%struct.LIST_HELP* %17)
  %18 = load i32, i32* %n, align 4
  %sub = sub i32 %18, %call18
  store i32 %sub, i32* %n, align 4
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call19 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %ClauseList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call21 = call i32 @list_Length(%struct.LIST_HELP* %23)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %22, i32 %call21)
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call22 = call %struct.LIST_HELP* @red_ReduceInput(%struct.PROOFSEARCH_HELP* %24, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %EmptyClauses, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  call void @list_Delete(%struct.LIST_HELP* %26)
  %call23 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %ClauseList, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.64

if.then.26:                                       ; preds = %while.end
  %28 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call27 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %28)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.28

while.cond.28:                                    ; preds = %if.end.59, %if.then.26
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.end.45, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %while.cond.28
  %30 = load i32, i32* %n, align 4
  %cmp32 = icmp sgt i32 %30, 0
  br i1 %cmp32, label %land.rhs.34, label %land.end.45

land.rhs.34:                                      ; preds = %land.lhs.true.31
  %31 = load i32*, i32** %Flags, align 8
  %call35 = call i32 @flag_GetFlagValue(i32* %31, i32 7)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %lor.end.44, label %lor.rhs.38

lor.rhs.38:                                       ; preds = %land.rhs.34
  %32 = load i32*, i32** %Flags, align 8
  %call39 = call i32 @flag_GetFlagValue(i32* %32, i32 7)
  %conv40 = sitofp i32 %call39 to float
  %call41 = call float @clock_GetSeconds(i32 1)
  %cmp42 = fcmp ogt float %conv40, %call41
  br label %lor.end.44

lor.end.44:                                       ; preds = %lor.rhs.38, %land.rhs.34
  %33 = phi i1 [ true, %land.rhs.34 ], [ %cmp42, %lor.rhs.38 ]
  br label %land.end.45

land.end.45:                                      ; preds = %lor.end.44, %land.lhs.true.31, %while.cond.28
  %34 = phi i1 [ false, %land.lhs.true.31 ], [ false, %while.cond.28 ], [ %33, %lor.end.44 ]
  br i1 %34, label %while.body.46, label %while.end.61

while.body.46:                                    ; preds = %land.end.45
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call47 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %36, %struct.CLAUSE_HELP** %Given, align 8
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call48 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %37, i32 8)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.59

land.lhs.true.50:                                 ; preds = %while.body.46
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call51 = call i32 @clause_IsFromInput(%struct.CLAUSE_HELP* %38)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.59

if.then.53:                                       ; preds = %land.lhs.true.50
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %40 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call54 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %40)
  %41 = load i32*, i32** %Flags, align 8
  %42 = load i32*, i32** %Precedence, align 8
  %call55 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %39, %struct.SHARED_INDEX_NODE* %call54, i32 1, i32* %41, i32* %42)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %Derivables, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call56 = call i32 @list_Length(%struct.LIST_HELP* %43)
  %44 = load i32, i32* %n, align 4
  %sub57 = sub i32 %44, %call56
  store i32 %sub57, i32* %n, align 4
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call58 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %45, %struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %ClauseList, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.53, %land.lhs.true.50, %while.body.46
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call60 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.28

while.end.61:                                     ; preds = %land.end.45
  %48 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call62 = call i32 @list_Length(%struct.LIST_HELP* %49)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %48, i32 %call62)
  %50 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  %call63 = call %struct.LIST_HELP* @red_ReduceInput(%struct.PROOFSEARCH_HELP* %50, %struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %EmptyClauses, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList, align 8
  call void @list_Delete(%struct.LIST_HELP* %52)
  br label %if.end.64

if.end.64:                                        ; preds = %while.end.61, %while.end
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  ret %struct.LIST_HELP* %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 7
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %uslist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_GetFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #2 {
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

; Function Attrs: nounwind uwtable
define void @red_CheckSplitSubsumptionCondition(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.SPLIT_NODE*
  %call5 = call %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call11 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call12 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %10)
  %11 = load i32*, i32** %Flags, align 8
  %12 = load i32*, i32** %Precedence, align 8
  %call13 = call %struct.CLAUSE_HELP* @red_ForwardSubsumer(%struct.CLAUSE_HELP* %9, %struct.SHARED_INDEX_NODE* %call12, i32* %11, i32* %12)
  %tobool14 = icmp ne %struct.CLAUSE_HELP* %call13, null
  br i1 %tobool14, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.10
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call15 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %14)
  %15 = load i32*, i32** %Flags, align 8
  %16 = load i32*, i32** %Precedence, align 8
  %call16 = call %struct.CLAUSE_HELP* @red_ForwardSubsumer(%struct.CLAUSE_HELP* %13, %struct.SHARED_INDEX_NODE* %call15, i32* %15, i32* %16)
  %tobool17 = icmp ne %struct.CLAUSE_HELP* %call16, null
  br i1 %tobool17, label %if.end, label %land.lhs.true.18

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call19 = call %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %17)
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %19 = load i32*, i32** %Flags, align 8
  %20 = load i32*, i32** %Precedence, align 8
  %call20 = call i32 @red_ClauseDeletion(%struct.SORTTHEORY_HELP* %call19, %struct.CLAUSE_HELP* %18, i32* %19, i32* %20)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.18
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call22 = call i32 @fflush(%struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.16, i32 0, i32 0), i32 4500)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.17, i32 0, i32 0))
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %23)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0))
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call24 to %struct.SPLIT_NODE*
  call void @prfs_PrintSplit(%struct.SPLIT_NODE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %26)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.18, %land.lhs.true, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.29:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitDeletedClauses(%struct.SPLIT_NODE* %S) #2 {
entry:
  %S.addr = alloca %struct.SPLIT_NODE*, align 8
  store %struct.SPLIT_NODE* %S, %struct.SPLIT_NODE** %S.addr, align 8
  %0 = load %struct.SPLIT_NODE*, %struct.SPLIT_NODE** %S.addr, align 8
  %deletedClauses = getelementptr inbounds %struct.SPLIT_NODE, %struct.SPLIT_NODE* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deletedClauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_ForwardSubsumer(%struct.CLAUSE_HELP* %RedCl, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %RedCl.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %AtomGen = alloca %struct.term*, align 8
  %CandCl = alloca %struct.CLAUSE_HELP*, align 8
  %CandLit = alloca %struct.LITERAL_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %fa = alloca i32, align 4
  %la = alloca i32, align 4
  %fs = alloca i32, align 4
  %ls = alloca i32, align 4
  store %struct.CLAUSE_HELP* %RedCl, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %lc, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %fa, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call2 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %la, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call3 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %fs, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call4 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %ls, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.112

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.term* %call5, %struct.term** %Atom, align 8
  %call6 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call7 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %9)
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call i8* @st_ExistGen(%struct.binding* %call6, %struct.st* %call7, %struct.term* %10)
  %11 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %11, %struct.term** %AtomGen, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.44, %for.body
  %12 = load %struct.term*, %struct.term** %AtomGen, align 8
  %tobool = icmp ne %struct.term* %12, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.term*, %struct.term** %AtomGen, align 8
  %call9 = call i32 @term_IsVariable(%struct.term* %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.44, label %if.then

if.then:                                          ; preds = %while.body
  %14 = load %struct.term*, %struct.term** %AtomGen, align 8
  %call11 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %14)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br i1 %lnot, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call16 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %17, %struct.LITERAL_HELP** %CandLit, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call17 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %18)
  store %struct.CLAUSE_HELP* %call17, %struct.CLAUSE_HELP** %CandCl, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %cmp18 = icmp ne %struct.CLAUSE_HELP* %19, %20
  br i1 %cmp18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.15
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %call19 = call i32 @clause_FirstLitIndex()
  %call20 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %21, i32 %call19)
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %cmp21 = icmp eq %struct.LITERAL_HELP* %call20, %22
  br i1 %cmp21, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %lc, align 4
  %cmp23 = icmp sle i32 %23, %24
  br i1 %cmp23, label %land.lhs.true.24, label %lor.lhs.false

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call25 = call i32 @clause_LiteralIsFromConstraint(%struct.LITERAL_HELP* %25)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.24, %land.lhs.true.22
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %fa, align 4
  %cmp27 = icmp sge i32 %26, %27
  br i1 %cmp27, label %land.lhs.true.28, label %lor.lhs.false.33

land.lhs.true.28:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %la, align 4
  %cmp29 = icmp sle i32 %28, %29
  br i1 %cmp29, label %land.lhs.true.30, label %lor.lhs.false.33

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call31 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.38, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.30, %land.lhs.true.28, %lor.lhs.false
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %fs, align 4
  %cmp34 = icmp sge i32 %31, %32
  br i1 %cmp34, label %land.lhs.true.35, label %if.end

land.lhs.true.35:                                 ; preds = %lor.lhs.false.33
  %33 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call36 = call i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %33)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end

land.lhs.true.38:                                 ; preds = %land.lhs.true.35, %land.lhs.true.30, %land.lhs.true.24
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call39 = call i32 @clause_FirstLitIndex()
  %36 = load i32, i32* %i, align 4
  %call40 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %34, %struct.CLAUSE_HELP* %35, i32 %call39, i32 %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end

if.then.42:                                       ; preds = %land.lhs.true.38
  call void @st_CancelExistRetrieval()
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  store %struct.CLAUSE_HELP* %37, %struct.CLAUSE_HELP** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.38, %land.lhs.true.35, %lor.lhs.false.33, %land.lhs.true, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %while.body
  %call45 = call i8* @st_NextCandidate()
  %39 = bitcast i8* %call45 to %struct.term*
  store %struct.term* %39, %struct.term** %AtomGen, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %40 = load %struct.term*, %struct.term** %Atom, align 8
  %call46 = call i32 @fol_IsEquality(%struct.term* %40)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.110

land.lhs.true.48:                                 ; preds = %while.end
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %42 = load i32, i32* %i, align 4
  %call49 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %41, i32 %42)
  %call50 = call i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %call49)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.110

if.then.52:                                       ; preds = %land.lhs.true.48
  %call53 = call i32 @fol_Equality()
  %43 = load %struct.term*, %struct.term** %Atom, align 8
  %call54 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  %call55 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call54)
  %call56 = call %struct.term* @term_Create(i32 %call53, %struct.LIST_HELP* %call55)
  store %struct.term* %call56, %struct.term** %Atom, align 8
  %call57 = call %struct.binding* @cont_LeftContext()
  %44 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call58 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %44)
  %45 = load %struct.term*, %struct.term** %Atom, align 8
  %call59 = call i8* @st_ExistGen(%struct.binding* %call57, %struct.st* %call58, %struct.term* %45)
  %46 = bitcast i8* %call59 to %struct.term*
  store %struct.term* %46, %struct.term** %AtomGen, align 8
  br label %while.cond.60

while.cond.60:                                    ; preds = %if.end.106, %if.then.52
  %47 = load %struct.term*, %struct.term** %AtomGen, align 8
  %tobool61 = icmp ne %struct.term* %47, null
  br i1 %tobool61, label %while.body.62, label %while.end.108

while.body.62:                                    ; preds = %while.cond.60
  %48 = load %struct.term*, %struct.term** %AtomGen, align 8
  %call63 = call i32 @term_IsVariable(%struct.term* %48)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.106, label %if.then.65

if.then.65:                                       ; preds = %while.body.62
  %49 = load %struct.term*, %struct.term** %AtomGen, align 8
  %call66 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %49)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.103, %if.then.65
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call68 = call i32 @list_Empty(%struct.LIST_HELP* %50)
  %tobool69 = icmp ne i32 %call68, 0
  %lnot70 = xor i1 %tobool69, true
  br i1 %lnot70, label %for.body.71, label %for.end.105

for.body.71:                                      ; preds = %for.cond.67
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call72 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call72 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %52, %struct.LITERAL_HELP** %CandLit, align 8
  %53 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call73 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %53)
  store %struct.CLAUSE_HELP* %call73, %struct.CLAUSE_HELP** %CandCl, align 8
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %cmp74 = icmp ne %struct.CLAUSE_HELP* %54, %55
  br i1 %cmp74, label %land.lhs.true.75, label %if.end.102

land.lhs.true.75:                                 ; preds = %for.body.71
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %call76 = call i32 @clause_FirstLitIndex()
  %call77 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %56, i32 %call76)
  %57 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %cmp78 = icmp eq %struct.LITERAL_HELP* %call77, %57
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.102

land.lhs.true.79:                                 ; preds = %land.lhs.true.75
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %lc, align 4
  %cmp80 = icmp sle i32 %58, %59
  br i1 %cmp80, label %land.lhs.true.81, label %lor.lhs.false.84

land.lhs.true.81:                                 ; preds = %land.lhs.true.79
  %60 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call82 = call i32 @clause_LiteralIsFromConstraint(%struct.LITERAL_HELP* %60)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %land.lhs.true.96, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %land.lhs.true.81, %land.lhs.true.79
  %61 = load i32, i32* %i, align 4
  %62 = load i32, i32* %fa, align 4
  %cmp85 = icmp sge i32 %61, %62
  br i1 %cmp85, label %land.lhs.true.86, label %lor.lhs.false.91

land.lhs.true.86:                                 ; preds = %lor.lhs.false.84
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %la, align 4
  %cmp87 = icmp sle i32 %63, %64
  br i1 %cmp87, label %land.lhs.true.88, label %lor.lhs.false.91

land.lhs.true.88:                                 ; preds = %land.lhs.true.86
  %65 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call89 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %65)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.lhs.true.96, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %land.lhs.true.88, %land.lhs.true.86, %lor.lhs.false.84
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* %fs, align 4
  %cmp92 = icmp sge i32 %66, %67
  br i1 %cmp92, label %land.lhs.true.93, label %if.end.102

land.lhs.true.93:                                 ; preds = %lor.lhs.false.91
  %68 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CandLit, align 8
  %call94 = call i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %68)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %land.lhs.true.96, label %if.end.102

land.lhs.true.96:                                 ; preds = %land.lhs.true.93, %land.lhs.true.88, %land.lhs.true.81
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call97 = call i32 @clause_FirstLitIndex()
  %71 = load i32, i32* %i, align 4
  %call98 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %69, %struct.CLAUSE_HELP* %70, i32 %call97, i32 %71)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %land.lhs.true.96
  call void @st_CancelExistRetrieval()
  %72 = load %struct.term*, %struct.term** %Atom, align 8
  %call101 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %72)
  call void @list_Delete(%struct.LIST_HELP* %call101)
  %73 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Free(%struct.term* %73)
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  store %struct.CLAUSE_HELP* %74, %struct.CLAUSE_HELP** %retval
  br label %return

if.end.102:                                       ; preds = %land.lhs.true.96, %land.lhs.true.93, %lor.lhs.false.91, %land.lhs.true.75, %for.body.71
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call104 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.67

for.end.105:                                      ; preds = %for.cond.67
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %while.body.62
  %call107 = call i8* @st_NextCandidate()
  %76 = bitcast i8* %call107 to %struct.term*
  store %struct.term* %76, %struct.term** %AtomGen, align 8
  br label %while.cond.60

while.end.108:                                    ; preds = %while.cond.60
  %77 = load %struct.term*, %struct.term** %Atom, align 8
  %call109 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %77)
  call void @list_Delete(%struct.LIST_HELP* %call109)
  %78 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Free(%struct.term* %78)
  br label %if.end.110

if.end.110:                                       ; preds = %while.end.108, %land.lhs.true.48, %while.end
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %79 = load i32, i32* %i, align 4
  %inc = add nsw i32 %79, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.112:                                      ; preds = %for.cond
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.112, %if.then.100, %if.then.42
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %80
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SORTTHEORY_HELP* @prfs_StaticSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %astatic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 8
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %astatic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @misc_ErrorReport(i8*, ...) #1

declare void @prfs_PrintSplit(%struct.SPLIT_NODE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #2 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0), %struct._IO_FILE* %0)
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @red_OnlyWorkedOffMode(i32 %Mode) #2 {
entry:
  %Mode.addr = alloca i32, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load i32, i32* %Mode.addr, align 4
  %cmp = icmp eq i32 %0, 2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @red_SimpleStaticReductions(%struct.CLAUSE_HELP** %RedClause, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %Result) #0 {
entry:
  %retval = alloca i32, align 4
  %RedClause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %DocProof = alloca i32, align 4
  store %struct.CLAUSE_HELP** %RedClause, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %Copy, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 9)
  store i32 %call, i32* %DocProof, align 4
  %1 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %1, i32 88)
  %cmp = icmp ne i32 %call1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @red_Tautology(%struct.CLAUSE_HELP* %3, i32* %4, i32* %5)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i32*, i32** %Flags.addr, align 8
  %call3 = call i32 @flag_GetFlagValue(i32* %6, i32 85)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %7, align 8
  %9 = load i32, i32* %DocProof, align 4
  %10 = load i32*, i32** %Flags.addr, align 8
  %11 = load i32*, i32** %Precedence.addr, align 8
  %call6 = call i32 @red_ObviousReductions(%struct.CLAUSE_HELP* %8, i32 %9, i32* %10, i32* %11, %struct.CLAUSE_HELP** %Copy)
  %12 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %12, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %13)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %14 = load i32*, i32** %Flags.addr, align 8
  %call8 = call i32 @flag_GetFlagValue(i32* %14, i32 94)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end.7
  %15 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %15, align 8
  %17 = load i32, i32* %DocProof, align 4
  %18 = load i32*, i32** %Flags.addr, align 8
  %19 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call i32 @red_Condensing(%struct.CLAUSE_HELP* %16, i32 %17, i32* %18, i32* %19, %struct.CLAUSE_HELP** %Copy)
  %20 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %21 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  call void @red_ExchangeClauses(%struct.CLAUSE_HELP** %20, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.10, %if.end.7
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define internal i32 @red_AssignmentEquationDeletion(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed, i32 %NonTrivClauseNumber, i32 %NonTrivDomain) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %NonTrivClauseNumber.addr = alloca i32, align 4
  %NonTrivDomain.addr = alloca i32, align 4
  %Indexes = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %LeftArg = alloca %struct.term*, align 8
  %RightArg = alloca %struct.term*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store i32 %NonTrivClauseNumber, i32* %NonTrivClauseNumber.addr, align 4
  store i32 %NonTrivDomain, i32* %NonTrivDomain.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Indexes, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_ContainsNegativeEquations(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp ule i32 %2, %call3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call5 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.25

if.then.7:                                        ; preds = %for.body
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call8 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %7)
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %call8)
  store %struct.term* %call9, %struct.term** %LeftArg, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call10 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %call10)
  store %struct.term* %call11, %struct.term** %RightArg, align 8
  %10 = load %struct.term*, %struct.term** %LeftArg, align 8
  %call12 = call i32 @term_IsVariable(%struct.term* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then.7
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load %struct.term*, %struct.term** %LeftArg, align 8
  %call14 = call i32 @term_TopSymbol(%struct.term* %12)
  %call15 = call i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP* %11, i32 %call14)
  %cmp16 = icmp eq i32 %call15, 1
  br i1 %cmp16, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then.7
  %13 = load %struct.term*, %struct.term** %RightArg, align 8
  %call17 = call i32 @term_IsVariable(%struct.term* %13)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %lor.lhs.false
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %15 = load %struct.term*, %struct.term** %RightArg, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %15)
  %call21 = call i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP* %14, i32 %call20)
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true.19, %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %conv = zext i32 %16 to i64
  %17 = inttoptr i64 %conv to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call24 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true.19, %lor.lhs.false
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %19 = load i32, i32* %i, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.69

if.else:                                          ; preds = %entry
  %20 = load i32, i32* %NonTrivDomain.addr, align 4
  %tobool26 = icmp ne i32 %20, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.68

land.lhs.true.27:                                 ; preds = %if.else
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call28 = call i32 @clause_ContainsPositiveEquations(%struct.CLAUSE_HELP* %21)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.68

if.then.30:                                       ; preds = %land.lhs.true.27
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call31 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %22)
  store i32 %call31, i32* %i, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.65, %if.then.30
  %23 = load i32, i32* %i, align 4
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call33 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %24)
  %cmp34 = icmp ule i32 %23, %call33
  br i1 %cmp34, label %for.body.36, label %for.end.67

for.body.36:                                      ; preds = %for.cond.32
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load i32, i32* %i, align 4
  %call37 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %25, i32 %26)
  %call38 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.64

if.then.40:                                       ; preds = %for.body.36
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %28 = load i32, i32* %i, align 4
  %call41 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %27, i32 %28)
  %call42 = call %struct.term* @term_FirstArgument(%struct.term* %call41)
  store %struct.term* %call42, %struct.term** %LeftArg, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %30 = load i32, i32* %i, align 4
  %call43 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %29, i32 %30)
  %call44 = call %struct.term* @term_SecondArgument(%struct.term* %call43)
  store %struct.term* %call44, %struct.term** %RightArg, align 8
  %31 = load %struct.term*, %struct.term** %LeftArg, align 8
  %call45 = call i32 @term_IsVariable(%struct.term* %31)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true.47, label %lor.lhs.false.52

land.lhs.true.47:                                 ; preds = %if.then.40
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %33 = load %struct.term*, %struct.term** %LeftArg, align 8
  %call48 = call i32 @term_TopSymbol(%struct.term* %33)
  %call49 = call i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP* %32, i32 %call48)
  %cmp50 = icmp eq i32 %call49, 1
  br i1 %cmp50, label %if.then.60, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %land.lhs.true.47, %if.then.40
  %34 = load %struct.term*, %struct.term** %RightArg, align 8
  %call53 = call i32 @term_IsVariable(%struct.term* %34)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end.63

land.lhs.true.55:                                 ; preds = %lor.lhs.false.52
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %36 = load %struct.term*, %struct.term** %RightArg, align 8
  %call56 = call i32 @term_TopSymbol(%struct.term* %36)
  %call57 = call i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP* %35, i32 %call56)
  %cmp58 = icmp eq i32 %call57, 1
  br i1 %cmp58, label %if.then.60, label %if.end.63

if.then.60:                                       ; preds = %land.lhs.true.55, %land.lhs.true.47
  %37 = load i32, i32* %i, align 4
  %conv61 = zext i32 %37 to i64
  %38 = inttoptr i64 %conv61 to i8*
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call62 = call %struct.LIST_HELP* @list_Cons(i8* %38, %struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.60, %land.lhs.true.55, %lor.lhs.false.52
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %for.body.36
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %40 = load i32, i32* %i, align 4
  %inc66 = add i32 %40, 1
  store i32 %inc66, i32* %i, align 4
  br label %for.cond.32

for.end.67:                                       ; preds = %for.cond.32
  br label %if.end.68

if.end.68:                                        ; preds = %for.end.67, %land.lhs.true.27, %if.else
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %for.end
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call70 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.93, label %if.then.72

if.then.72:                                       ; preds = %if.end.69
  %42 = load i32*, i32** %Flags.addr, align 8
  %call73 = call i32 @flag_GetFlagValue(i32* %42, i32 22)
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.end.78

if.then.75:                                       ; preds = %if.then.72
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call76 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %45)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.75, %if.then.72
  %46 = load i32*, i32** %Flags.addr, align 8
  %call79 = call i32 @flag_GetFlagValue(i32* %46, i32 9)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.else.87

if.then.81:                                       ; preds = %if.end.78
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call82 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %47)
  store %struct.CLAUSE_HELP* %call82, %struct.CLAUSE_HELP** %Copy, align 8
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %50 = load i32*, i32** %Flags.addr, align 8
  %51 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %48, %struct.LIST_HELP* %49, i32* %50, i32* %51)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %54 = load i32, i32* %NonTrivClauseNumber.addr, align 4
  call void @red_DocumentAssignmentEquationDeletion(%struct.CLAUSE_HELP* %52, %struct.LIST_HELP* %53, i32 %54)
  %55 = load i32*, i32** %Flags.addr, align 8
  %call83 = call i32 @flag_GetFlagValue(i32* %55, i32 22)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.81
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %56)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.then.81
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %58 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %57, %struct.CLAUSE_HELP** %58, align 8
  br label %if.end.92

if.else.87:                                       ; preds = %if.end.78
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %61 = load i32*, i32** %Flags.addr, align 8
  %62 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %59, %struct.LIST_HELP* %60, i32* %61, i32* %62)
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @list_Delete(%struct.LIST_HELP* %63)
  %64 = load i32*, i32** %Flags.addr, align 8
  %call88 = call i32 @flag_GetFlagValue(i32* %64, i32 22)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.else.87
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %65)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.else.87
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.86
  store i32 1, i32* %retval
  br label %return

if.end.93:                                        ; preds = %if.end.69
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.93, %if.end.92
  %66 = load i32, i32* %retval
  ret i32 %66
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_NonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %nontrivclausenumber = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 23
  %1 = load i32, i32* %nontrivclausenumber, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal void @red_ExchangeClauses(%struct.CLAUSE_HELP** %RedClause, %struct.CLAUSE_HELP** %Copy, %struct.LIST_HELP** %Result) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Copy.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.CLAUSE_HELP** %RedClause, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  store %struct.CLAUSE_HELP** %Copy, %struct.CLAUSE_HELP*** %Copy.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %0 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Copy.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %0, align 8
  %tobool = icmp ne %struct.CLAUSE_HELP* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %4 = bitcast %struct.CLAUSE_HELP* %3 to i8*
  %5 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %5, align 8
  %call = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %6)
  %7 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %7, align 8
  %8 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Copy.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %8, align 8
  %10 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %RedClause.addr, align 8
  store %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP** %10, align 8
  %11 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Copy.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %11, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_ForwardSubsumption(%struct.CLAUSE_HELP* %RedClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Subsumer = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.CLAUSE_HELP* @red_ForwardSubsumer(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1, i32* %2, i32* %3)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %Subsumer, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %4, i32 12)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  %tobool2 = icmp ne %struct.CLAUSE_HELP* %5, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  %call4 = call i32 @clause_Number(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %9)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 %call4, i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  ret %struct.CLAUSE_HELP* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @red_RewriteRedClause(%struct.CLAUSE_HELP* %RedClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed, i32 %Level) #0 {
entry:
  %retval = alloca i32, align 4
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Level.addr = alloca i32, align 4
  %RedAtom = alloca %struct.term*, align 8
  %RedTermS = alloca %struct.term*, align 8
  %B_Stack = alloca i32, align 4
  %ci = alloca i32, align 4
  %length = alloca i32, align 4
  %Rewritten = alloca i32, align 4
  %Result = alloca i32, align 4
  %Document = alloca i32, align 4
  %TermS = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %EqScan = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %RewriteClause = alloca %struct.CLAUSE_HELP*, align 8
  %RewriteLit = alloca %struct.LITERAL_HELP*, align 8
  %ri = alloca i32, align 4
  %TermT = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %length, align 4
  %1 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %1, i32 9)
  store i32 %call1, i32* %Document, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  %6 = load i32*, i32** %Precedence.addr, align 8
  %7 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  %8 = load i32, i32* %Level.addr, align 4
  %call2 = call i32 @red_RewriteRedUnitClause(%struct.CLAUSE_HELP* %3, %struct.SHARED_INDEX_NODE* %4, i32* %5, i32* %6, %struct.CLAUSE_HELP** %7, i32 %8)
  store i32 %call2, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %Result, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP** %Copy, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call3 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %10)
  store i32 %call3, i32* %ci, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.116, %if.end
  %11 = load i32, i32* %ci, align 4
  %12 = load i32, i32* %length, align 4
  %cmp4 = icmp slt i32 %11, %12
  br i1 %cmp4, label %for.body, label %for.end.117

for.body:                                         ; preds = %for.cond
  store i32 1, i32* %Rewritten, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %14 = load i32, i32* %ci, align 4
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %13, i32 %14)
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call5)
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.115, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %while.end.113, %if.then.8
  %15 = load i32, i32* %Rewritten, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %while.body, label %while.end.114

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %Rewritten, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %17 = load i32, i32* %ci, align 4
  %call10 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %16, i32 %17)
  store %struct.term* %call10, %struct.term** %RedAtom, align 8
  %call11 = call i32 @stack_Bottom()
  store i32 %call11, i32* %B_Stack, align 4
  %18 = load %struct.term*, %struct.term** %RedAtom, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  call void @sharing_PushListReverseOnStack(%struct.LIST_HELP* %call12)
  br label %while.cond.13

while.cond.13:                                    ; preds = %while.end, %while.body
  %19 = load i32, i32* %B_Stack, align 4
  %call14 = call i32 @stack_Empty(i32 %19)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %while.body.16, label %while.end.113

while.body.16:                                    ; preds = %while.cond.13
  %call17 = call i8* @stack_PopResult()
  %20 = bitcast i8* %call17 to %struct.term*
  store %struct.term* %20, %struct.term** %RedTermS, align 8
  %call18 = call %struct.binding* @cont_LeftContext()
  %21 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call19 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %21)
  %22 = load %struct.term*, %struct.term** %RedTermS, align 8
  %call20 = call i8* @st_ExistGen(%struct.binding* %call18, %struct.st* %call19, %struct.term* %22)
  %23 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %23, %struct.term** %TermS, align 8
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.112, %while.body.16
  %24 = load %struct.term*, %struct.term** %TermS, align 8
  %tobool22 = icmp ne %struct.term* %24, null
  br i1 %tobool22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.21
  %25 = load i32, i32* %Rewritten, align 4
  %tobool23 = icmp ne i32 %25, 0
  %lnot24 = xor i1 %tobool23, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.21
  %26 = phi i1 [ false, %while.cond.21 ], [ %lnot24, %land.rhs ]
  br i1 %26, label %while.body.25, label %while.end

while.body.25:                                    ; preds = %land.end
  %27 = load %struct.term*, %struct.term** %TermS, align 8
  %call26 = call i32 @term_IsVariable(%struct.term* %27)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.108, label %if.then.28

if.then.28:                                       ; preds = %while.body.25
  %28 = load %struct.term*, %struct.term** %TermS, align 8
  %call29 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %28)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.105, %if.then.28
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.end.36, label %land.rhs.33

land.rhs.33:                                      ; preds = %for.cond.30
  %30 = load i32, i32* %Rewritten, align 4
  %tobool34 = icmp ne i32 %30, 0
  %lnot35 = xor i1 %tobool34, true
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.33, %for.cond.30
  %31 = phi i1 [ false, %for.cond.30 ], [ %lnot35, %land.rhs.33 ]
  br i1 %31, label %for.body.37, label %for.end.107

for.body.37:                                      ; preds = %land.end.36
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call38 to %struct.term*
  store %struct.term* %33, %struct.term** %PartnerEq, align 8
  %34 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call39 = call i32 @fol_IsEquality(%struct.term* %34)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end.104

land.lhs.true:                                    ; preds = %for.body.37
  %35 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %TermS, align 8
  %cmp42 = icmp eq %struct.term* %call41, %36
  br i1 %cmp42, label %if.then.43, label %if.end.104

if.then.43:                                       ; preds = %land.lhs.true
  %37 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call44 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %37)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.then.43
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call46 = call i32 @list_Empty(%struct.LIST_HELP* %38)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.end.51, label %land.rhs.48

land.rhs.48:                                      ; preds = %for.cond.45
  %39 = load i32, i32* %Rewritten, align 4
  %tobool49 = icmp ne i32 %39, 0
  %lnot50 = xor i1 %tobool49, true
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.48, %for.cond.45
  %40 = phi i1 [ false, %for.cond.45 ], [ %lnot50, %land.rhs.48 ]
  br i1 %40, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %land.end.51
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call53 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %42, %struct.LITERAL_HELP** %RewriteLit, align 8
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call54 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %43)
  store %struct.CLAUSE_HELP* %call54, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call55 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %44)
  store i32 %call55, i32* %ri, align 4
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call56 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %45)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.102

land.lhs.true.58:                                 ; preds = %for.body.52
  %46 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call59 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %46)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.102

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %49 = load i32, i32* %ri, align 4
  %50 = load i32, i32* %ci, align 4
  %call62 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %47, %struct.CLAUSE_HELP* %48, i32 %49, i32 %50)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.102

if.then.64:                                       ; preds = %land.lhs.true.61
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %cmp65 = icmp eq %struct.CLAUSE_HELP* %51, %52
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.75

land.lhs.true.66:                                 ; preds = %if.then.64
  %53 = load i32, i32* %Document, align 4
  %tobool67 = icmp ne i32 %53, 0
  br i1 %tobool67, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.66
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call68 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %54)
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call69 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %55)
  %56 = load i32, i32* %Level.addr, align 4
  %call70 = call i32 @prfs_SplitLevelCondition(i32 %call68, i32 %call69, i32 %56)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.75

if.then.72:                                       ; preds = %lor.lhs.false, %land.lhs.true.66
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call73 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %57)
  store %struct.CLAUSE_HELP* %call73, %struct.CLAUSE_HELP** %Copy, align 8
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %59 = load i32, i32* %ci, align 4
  %call74 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %58, i32 %59)
  store %struct.term* %call74, %struct.term** %RedAtom, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %lor.lhs.false, %if.then.64
  %60 = load i32, i32* %Result, align 4
  %tobool76 = icmp ne i32 %60, 0
  br i1 %tobool76, label %if.end.84, label %if.then.77

if.then.77:                                       ; preds = %if.end.75
  %61 = load i32*, i32** %Flags.addr, align 8
  %call78 = call i32 @flag_GetFlagValue(i32* %61, i32 13)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.then.77
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call81 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %62)
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call82 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %64)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.then.77
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  %65 = load i32, i32* %Document, align 4
  %tobool85 = icmp ne i32 %65, 0
  br i1 %tobool85, label %if.then.86, label %if.end.90

if.then.86:                                       ; preds = %if.end.84
  %66 = load i32, i32* %Result, align 4
  %tobool87 = icmp ne i32 %66, 0
  br i1 %tobool87, label %if.else, label %if.then.88

if.then.88:                                       ; preds = %if.then.86
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %68 = load i32, i32* %ci, align 4
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %70 = load i32, i32* %ri, align 4
  call void @red_DocumentRewriting(%struct.CLAUSE_HELP* %67, i32 %68, %struct.CLAUSE_HELP* %69, i32 %70)
  br label %if.end.89

if.else:                                          ; preds = %if.then.86
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %72 = load i32, i32* %ci, align 4
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %74 = load i32, i32* %ri, align 4
  call void @red_DocumentFurtherRewriting(%struct.CLAUSE_HELP* %71, i32 %72, %struct.CLAUSE_HELP* %73, i32 %74)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else, %if.then.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.end.84
  store i32 1, i32* %Result, align 4
  %call91 = call %struct.binding* @cont_LeftContext()
  %75 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call92 = call %struct.term* @term_SecondArgument(%struct.term* %75)
  %call93 = call %struct.term* @term_Copy(%struct.term* %call92)
  %call94 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call91, %struct.term* %call93, i32 1)
  store %struct.term* %call94, %struct.term** %TermT, align 8
  %76 = load %struct.term*, %struct.term** %RedAtom, align 8
  %77 = load %struct.term*, %struct.term** %RedTermS, align 8
  %78 = load %struct.term*, %struct.term** %TermT, align 8
  %call95 = call i32 @term_ReplaceSubtermBy(%struct.term* %76, %struct.term* %77, %struct.term* %78)
  store i32 1, i32* %Rewritten, align 4
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %79, %struct.CLAUSE_HELP* %80)
  %81 = load %struct.term*, %struct.term** %TermT, align 8
  call void @term_Delete(%struct.term* %81)
  %82 = load i32, i32* %B_Stack, align 4
  call void @stack_SetBottom(i32 %82)
  %83 = load i32*, i32** %Flags.addr, align 8
  %call96 = call i32 @flag_GetFlagValue(i32* %83, i32 13)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.101

if.then.98:                                       ; preds = %if.end.90
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call99 = call i32 @clause_Number(%struct.CLAUSE_HELP* %84)
  %85 = load i32, i32* %ri, align 4
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %call99, i32 %85)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.98, %if.end.90
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %87 = load i32*, i32** %Flags.addr, align 8
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %86, i32* %87)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %land.lhs.true.61, %land.lhs.true.58, %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.102
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call103 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %88)
  store %struct.LIST_HELP* %call103, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.45

for.end:                                          ; preds = %land.end.51
  br label %if.end.104

if.end.104:                                       ; preds = %for.end, %land.lhs.true, %for.body.37
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call106 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %89)
  store %struct.LIST_HELP* %call106, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond.30

for.end.107:                                      ; preds = %land.end.36
  br label %if.end.108

if.end.108:                                       ; preds = %for.end.107, %while.body.25
  %90 = load i32, i32* %Rewritten, align 4
  %tobool109 = icmp ne i32 %90, 0
  br i1 %tobool109, label %if.end.112, label %if.then.110

if.then.110:                                      ; preds = %if.end.108
  %call111 = call i8* @st_NextCandidate()
  %91 = bitcast i8* %call111 to %struct.term*
  store %struct.term* %91, %struct.term** %TermS, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.110, %if.end.108
  br label %while.cond.21

while.end:                                        ; preds = %land.end
  call void @st_CancelExistRetrieval()
  br label %while.cond.13

while.end.113:                                    ; preds = %while.cond.13
  br label %while.cond

while.end.114:                                    ; preds = %while.cond
  br label %if.end.115

if.end.115:                                       ; preds = %while.end.114, %for.body
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %92 = load i32, i32* %ci, align 4
  %inc = add nsw i32 %92, 1
  store i32 %inc, i32* %ci, align 4
  br label %for.cond

for.end.117:                                      ; preds = %for.cond
  %93 = load i32, i32* %Result, align 4
  %tobool118 = icmp ne i32 %93, 0
  br i1 %tobool118, label %if.then.119, label %if.end.128

if.then.119:                                      ; preds = %for.end.117
  %94 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %95 = load i32*, i32** %Flags.addr, align 8
  %96 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %94, i32* %95, i32* %96)
  %97 = load i32*, i32** %Flags.addr, align 8
  %call120 = call i32 @flag_GetFlagValue(i32* %97, i32 13)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %if.then.119
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call123 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %98)
  %99 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %99)
  br label %if.end.124

if.end.124:                                       ; preds = %if.then.122, %if.then.119
  %100 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %cmp125 = icmp ne %struct.CLAUSE_HELP* %100, %101
  br i1 %cmp125, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.end.124
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %103 = load i32*, i32** %Flags.addr, align 8
  %104 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %102, i32* %103, i32* %104)
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %106 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %105, %struct.CLAUSE_HELP** %106, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.126, %if.end.124
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %for.end.117
  %107 = load i32, i32* %Result, align 4
  store i32 %107, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.then
  %108 = load i32, i32* %retval
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @red_ContextualRewriting(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %RedClause, i32 %Mode, i32 %Level, %struct.CLAUSE_HELP** %Changed) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mode.addr = alloca i32, align 4
  %Level.addr = alloca i32, align 4
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %RedAtom = alloca %struct.term*, align 8
  %RedTermS = alloca %struct.term*, align 8
  %B_Stack = alloca i32, align 4
  %ri = alloca i32, align 4
  %last = alloca i32, align 4
  %Rewritten = alloca i32, align 4
  %Result = alloca i32, align 4
  %Document = alloca i32, align 4
  %TermS = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %Gen = alloca %struct.LIST_HELP*, align 8
  %EqScan = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %ShIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %RuleClause = alloca %struct.CLAUSE_HELP*, align 8
  %HelpClause = alloca %struct.CLAUSE_HELP*, align 8
  %RuleLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %TermT = alloca %struct.term*, align 8
  %PClauses = alloca %struct.LIST_HELP*, align 8
  %PLits = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  store i32 %Level, i32* %Level.addr, align 4
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32, i32* %Mode.addr, align 4
  %call2 = call i32 @red_WorkedOffMode(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %3)
  store %struct.SHARED_INDEX_NODE* %call3, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  store %struct.SHARED_INDEX_NODE* %call4, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call5 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %last, align 4
  %6 = load i32*, i32** %Flags, align 8
  %call6 = call i32 @flag_GetFlagValue(i32* %6, i32 9)
  store i32 %call6, i32* %Document, align 4
  store i32 0, i32* %Result, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.CLAUSE_HELP* %7, %struct.CLAUSE_HELP** %Copy, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call7 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %8)
  store i32 %call7, i32* %ri, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.147, %if.end
  %9 = load i32, i32* %ri, align 4
  %10 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.148

for.body:                                         ; preds = %for.cond
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %12 = load i32, i32* %ri, align 4
  %call8 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %11, i32 %12)
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call8)
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.146, label %if.then.12

if.then.12:                                       ; preds = %for.body
  store i32 1, i32* %Rewritten, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.12
  %13 = load i32, i32* %Rewritten, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %while.body, label %while.end.145

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %Rewritten, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %15 = load i32, i32* %ri, align 4
  %call14 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %14, i32 %15)
  store %struct.term* %call14, %struct.term** %RedAtom, align 8
  %call15 = call i32 @stack_Bottom()
  store i32 %call15, i32* %B_Stack, align 4
  %16 = load %struct.term*, %struct.term** %RedAtom, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  call void @sharing_PushListReverseOnStack(%struct.LIST_HELP* %call16)
  br label %while.cond.17

while.cond.17:                                    ; preds = %for.end.144, %while.body
  %17 = load i32, i32* %B_Stack, align 4
  %call18 = call i32 @stack_Empty(i32 %17)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %while.body.20, label %while.end

while.body.20:                                    ; preds = %while.cond.17
  %call21 = call i8* @stack_PopResult()
  %18 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %18, %struct.term** %RedTermS, align 8
  %call22 = call %struct.binding* @cont_LeftContext()
  %19 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %call23 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %19)
  %20 = load %struct.term*, %struct.term** %RedTermS, align 8
  %call24 = call %struct.LIST_HELP* @st_GetGen(%struct.binding* %call22, %struct.st* %call23, %struct.term* %20)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Gen, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.142, %while.body.20
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Gen, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.25
  %22 = load i32, i32* %Rewritten, align 4
  %tobool28 = icmp ne i32 %22, 0
  %lnot29 = xor i1 %tobool28, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.25
  %23 = phi i1 [ false, %for.cond.25 ], [ %lnot29, %land.rhs ]
  br i1 %23, label %for.body.30, label %for.end.144

for.body.30:                                      ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Gen, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call31 to %struct.term*
  store %struct.term* %25, %struct.term** %TermS, align 8
  %26 = load %struct.term*, %struct.term** %TermS, align 8
  %call32 = call i32 @term_IsVariable(%struct.term* %26)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.141, label %if.then.34

if.then.34:                                       ; preds = %for.body.30
  %27 = load %struct.term*, %struct.term** %TermS, align 8
  %call35 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %27)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.138, %if.then.34
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.end.42, label %land.rhs.39

land.rhs.39:                                      ; preds = %for.cond.36
  %29 = load i32, i32* %Rewritten, align 4
  %tobool40 = icmp ne i32 %29, 0
  %lnot41 = xor i1 %tobool40, true
  br label %land.end.42

land.end.42:                                      ; preds = %land.rhs.39, %for.cond.36
  %30 = phi i1 [ false, %for.cond.36 ], [ %lnot41, %land.rhs.39 ]
  br i1 %30, label %for.body.43, label %for.end.140

for.body.43:                                      ; preds = %land.end.42
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call44 to %struct.term*
  store %struct.term* %32, %struct.term** %PartnerEq, align 8
  %33 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call45 = call i32 @fol_IsEquality(%struct.term* %33)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %land.lhs.true, label %if.end.137

land.lhs.true:                                    ; preds = %for.body.43
  %34 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call47 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  %35 = load %struct.term*, %struct.term** %TermS, align 8
  %cmp48 = icmp eq %struct.term* %call47, %35
  br i1 %cmp48, label %if.then.49, label %if.end.137

if.then.49:                                       ; preds = %land.lhs.true
  %36 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call50 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %36)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.49
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call52 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.end.57, label %land.rhs.54

land.rhs.54:                                      ; preds = %for.cond.51
  %38 = load i32, i32* %Rewritten, align 4
  %tobool55 = icmp ne i32 %38, 0
  %lnot56 = xor i1 %tobool55, true
  br label %land.end.57

land.end.57:                                      ; preds = %land.rhs.54, %for.cond.51
  %39 = phi i1 [ false, %for.cond.51 ], [ %lnot56, %land.rhs.54 ]
  br i1 %39, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %land.end.57
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call59 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call59 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %41, %struct.LITERAL_HELP** %RuleLit, align 8
  %42 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %call60 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %42)
  store %struct.CLAUSE_HELP* %call60, %struct.CLAUSE_HELP** %RuleClause, align 8
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %call61 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %43)
  store i32 %call61, i32* %i, align 4
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %HelpClause, align 8
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %call62 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %44)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.135

land.lhs.true.64:                                 ; preds = %for.body.58
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %call65 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %45, i32 2)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.135

land.lhs.true.67:                                 ; preds = %land.lhs.true.64
  %46 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %call68 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %46)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.135

land.lhs.true.70:                                 ; preds = %land.lhs.true.67
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %48 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RuleLit, align 8
  %49 = load i32*, i32** %Flags, align 8
  %50 = load i32*, i32** %Precedence, align 8
  %call71 = call i32 @red_LeftTermOfEquationIsStrictlyMaximalTerm(%struct.CLAUSE_HELP* %47, %struct.LITERAL_HELP* %48, i32* %49, i32* %50)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.135

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %51 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %53 = load i32, i32* %ri, align 4
  %54 = load %struct.term*, %struct.term** %RedTermS, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %56 = load i32, i32* %i, align 4
  %57 = load i32, i32* %Mode.addr, align 4
  %call74 = call i32 @red_CRwTautologyCheck(%struct.PROOFSEARCH_HELP* %51, %struct.CLAUSE_HELP* %52, i32 %53, %struct.term* %54, %struct.CLAUSE_HELP* %55, i32 %56, i32 %57, %struct.CLAUSE_HELP** %HelpClause)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.135

if.then.76:                                       ; preds = %land.lhs.true.73
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %cmp77 = icmp eq %struct.CLAUSE_HELP* %58, %59
  br i1 %cmp77, label %land.lhs.true.78, label %if.end.92

land.lhs.true.78:                                 ; preds = %if.then.76
  %60 = load i32, i32* %Document, align 4
  %tobool79 = icmp ne i32 %60, 0
  br i1 %tobool79, label %if.then.89, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.78
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %call80 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %61)
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call81 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %62)
  %63 = load i32, i32* %Level.addr, align 4
  %call82 = call i32 @prfs_SplitLevelCondition(i32 %call80, i32 %call81, i32 %63)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.89, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call85 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %64)
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call86 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %65)
  %66 = load i32, i32* %Level.addr, align 4
  %call87 = call i32 @prfs_SplitLevelCondition(i32 %call85, i32 %call86, i32 %66)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %lor.lhs.false.84, %lor.lhs.false, %land.lhs.true.78
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call90 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %67)
  store %struct.CLAUSE_HELP* %call90, %struct.CLAUSE_HELP** %Copy, align 8
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %69 = load i32, i32* %ri, align 4
  %call91 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %68, i32 %69)
  store %struct.term* %call91, %struct.term** %RedAtom, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %lor.lhs.false.84, %if.then.76
  %70 = load i32, i32* %Result, align 4
  %tobool93 = icmp ne i32 %70, 0
  br i1 %tobool93, label %if.end.100, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %if.end.92
  %71 = load i32*, i32** %Flags, align 8
  %call95 = call i32 @flag_GetFlagValue(i32* %71, i32 14)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %land.lhs.true.94
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call98 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %72)
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %73)
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call99 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %74)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %land.lhs.true.94, %if.end.92
  %75 = load i32, i32* %Document, align 4
  %tobool101 = icmp ne i32 %75, 0
  br i1 %tobool101, label %if.then.102, label %if.end.117

if.then.102:                                      ; preds = %if.end.100
  %call103 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call103, %struct.LIST_HELP** %PLits, align 8
  store %struct.LIST_HELP* %call103, %struct.LIST_HELP** %PClauses, align 8
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %cmp104 = icmp ne %struct.CLAUSE_HELP* %76, null
  br i1 %cmp104, label %if.then.105, label %if.else.110

if.then.105:                                      ; preds = %if.then.102
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call106 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %77)
  store %struct.LIST_HELP* %call106, %struct.LIST_HELP** %PClauses, align 8
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call107 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %78)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %PLits, align 8
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call108 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %79, %struct.LIST_HELP* %call108)
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call109 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %80, %struct.LIST_HELP* %call109)
  br label %if.end.112

if.else.110:                                      ; preds = %if.then.102
  %call111 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call111, %struct.LIST_HELP** %PLits, align 8
  store %struct.LIST_HELP* %call111, %struct.LIST_HELP** %PClauses, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.110, %if.then.105
  %81 = load i32, i32* %Result, align 4
  %tobool113 = icmp ne i32 %81, 0
  br i1 %tobool113, label %if.else.115, label %if.then.114

if.then.114:                                      ; preds = %if.end.112
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %83 = load i32, i32* %ri, align 4
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %85 = load i32, i32* %i, align 4
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClauses, align 8
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  call void @red_DocumentContextualRewriting(%struct.CLAUSE_HELP* %82, i32 %83, %struct.CLAUSE_HELP* %84, i32 %85, %struct.LIST_HELP* %86, %struct.LIST_HELP* %87)
  br label %if.end.116

if.else.115:                                      ; preds = %if.end.112
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %89 = load i32, i32* %ri, align 4
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %91 = load i32, i32* %i, align 4
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClauses, align 8
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  call void @red_DocumentFurtherCRw(%struct.CLAUSE_HELP* %88, i32 %89, %struct.CLAUSE_HELP* %90, i32 %91, %struct.LIST_HELP* %92, %struct.LIST_HELP* %93)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.100
  store i32 1, i32* %Result, align 4
  call void @cont_StartBinding()
  %call118 = call %struct.binding* @cont_LeftContext()
  %94 = load %struct.term*, %struct.term** %TermS, align 8
  %95 = load %struct.term*, %struct.term** %RedTermS, align 8
  %call119 = call i32 @unify_MatchBindings(%struct.binding* %call118, %struct.term* %94, %struct.term* %95)
  %call120 = call %struct.binding* @cont_LeftContext()
  %96 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call121 = call %struct.term* @term_SecondArgument(%struct.term* %96)
  %call122 = call %struct.term* @term_Copy(%struct.term* %call121)
  %call123 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call120, %struct.term* %call122, i32 1)
  store %struct.term* %call123, %struct.term** %TermT, align 8
  %call124 = call i32 @cont_BackTrack()
  %97 = load %struct.term*, %struct.term** %RedAtom, align 8
  %98 = load %struct.term*, %struct.term** %RedTermS, align 8
  %99 = load %struct.term*, %struct.term** %TermT, align 8
  %call125 = call i32 @term_ReplaceSubtermBy(%struct.term* %97, %struct.term* %98, %struct.term* %99)
  store i32 1, i32* %Rewritten, align 4
  %100 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %100, %struct.CLAUSE_HELP* %101)
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %cmp126 = icmp ne %struct.CLAUSE_HELP* %102, null
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.117
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %103, %struct.CLAUSE_HELP* %104)
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %105)
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.117
  %106 = load %struct.term*, %struct.term** %TermT, align 8
  call void @term_Delete(%struct.term* %106)
  %107 = load i32, i32* %B_Stack, align 4
  call void @stack_SetBottom(i32 %107)
  %108 = load i32*, i32** %Flags, align 8
  %call129 = call i32 @flag_GetFlagValue(i32* %108, i32 14)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.134

if.then.131:                                      ; preds = %if.end.128
  %109 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause, align 8
  %call132 = call i32 @clause_Number(%struct.CLAUSE_HELP* %109)
  %110 = load i32, i32* %i, align 4
  %call133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %call132, i32 %110)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.131, %if.end.128
  %111 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %112 = load i32*, i32** %Flags, align 8
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %111, i32* %112)
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %land.lhs.true.73, %land.lhs.true.70, %land.lhs.true.67, %land.lhs.true.64, %for.body.58
  br label %for.inc

for.inc:                                          ; preds = %if.end.135
  %113 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call136 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %113)
  store %struct.LIST_HELP* %call136, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.51

for.end:                                          ; preds = %land.end.57
  br label %if.end.137

if.end.137:                                       ; preds = %for.end, %land.lhs.true, %for.body.43
  br label %for.inc.138

for.inc.138:                                      ; preds = %if.end.137
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call139 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %114)
  store %struct.LIST_HELP* %call139, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond.36

for.end.140:                                      ; preds = %land.end.42
  br label %if.end.141

if.end.141:                                       ; preds = %for.end.140, %for.body.30
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %115 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Gen, align 8
  %call143 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %115)
  store %struct.LIST_HELP* %call143, %struct.LIST_HELP** %Gen, align 8
  br label %for.cond.25

for.end.144:                                      ; preds = %land.end
  %116 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Gen, align 8
  call void @list_Delete(%struct.LIST_HELP* %116)
  br label %while.cond.17

while.end:                                        ; preds = %while.cond.17
  br label %while.cond

while.end.145:                                    ; preds = %while.cond
  br label %if.end.146

if.end.146:                                       ; preds = %while.end.145, %for.body
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %117 = load i32, i32* %ri, align 4
  %inc = add nsw i32 %117, 1
  store i32 %inc, i32* %ri, align 4
  br label %for.cond

for.end.148:                                      ; preds = %for.cond
  %118 = load i32, i32* %Result, align 4
  %tobool149 = icmp ne i32 %118, 0
  br i1 %tobool149, label %if.then.150, label %if.end.159

if.then.150:                                      ; preds = %for.end.148
  %119 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %120 = load i32*, i32** %Flags, align 8
  %121 = load i32*, i32** %Precedence, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %119, i32* %120, i32* %121)
  %122 = load i32*, i32** %Flags, align 8
  %call151 = call i32 @flag_GetFlagValue(i32* %122, i32 14)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.155

if.then.153:                                      ; preds = %if.then.150
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call154 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %123)
  %124 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %124)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.153, %if.then.150
  %125 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %126 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %cmp156 = icmp ne %struct.CLAUSE_HELP* %125, %126
  br i1 %cmp156, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.155
  %127 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %128 = load i32*, i32** %Flags, align 8
  %129 = load i32*, i32** %Precedence, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %127, i32* %128, i32* %129)
  %130 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %131 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %130, %struct.CLAUSE_HELP** %131, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.155
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %for.end.148
  %132 = load i32, i32* %Result, align 4
  ret i32 %132
}

; Function Attrs: nounwind uwtable
define internal i32 @red_SortSimplification(%struct.SORTTHEORY_HELP* %Theory, %struct.CLAUSE_HELP* %Clause, i32 %Level, i32 %Document, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed) #0 {
entry:
  %retval = alloca i32, align 4
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Level.addr = alloca i32, align 4
  %Document.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Atom = alloca %struct.term*, align 8
  %Term = alloca %struct.term*, align 8
  %SortPair = alloca %struct.LIST_HELP*, align 8
  %TermSort = alloca %struct.LIST_HELP*, align 8
  %LitSort = alloca %struct.LIST_HELP*, align 8
  %Indexes = alloca %struct.LIST_HELP*, align 8
  %NewClauses = alloca %struct.LIST_HELP*, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %j = alloca i32, align 4
  %OldSplitLevel = alloca i32, align 4
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %Cond = alloca %struct.CONDITION_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  store i32 %Document, i32* %Document.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %cmp = icmp ne %struct.SORTTHEORY_HELP* %0, null
  br i1 %cmp, label %if.then, label %if.end.73

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call, i32* %lc, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %OldSplitLevel, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Copy, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Indexes, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Clauses, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %lc, align 4
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %7 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %6, i32 %7)
  %call7 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call6)
  store %struct.term* %call7, %struct.term** %Atom, align 8
  %8 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  store %struct.term* %call8, %struct.term** %Term, align 8
  %9 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %12 = load i32, i32* %i, align 4
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call9 = call %struct.LIST_HELP* @sort_ComputeSortNoResidues(%struct.SORTTHEORY_HELP* %9, %struct.term* %10, %struct.CLAUSE_HELP* %11, i32 %12, i32* %13, i32* %14)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %SortPair, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  %call10 = call i8* @sort_PairSort(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call10 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %TermSort, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  %call11 = call i8* @sort_PairCondition(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call11 to %struct.CONDITION_HELP*
  %call12 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %18)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %NewClauses, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  %call13 = call i8* @sort_PairCondition(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call13 to %struct.CONDITION_HELP*
  %call14 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %20, %struct.LIST_HELP* %call14)
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %22 = load %struct.term*, %struct.term** %Atom, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %22)
  %call16 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %21, i32 %call15)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %LitSort, align 8
  %23 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermSort, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitSort, align 8
  %call17 = call %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP* %23, %struct.LIST_HELP* %24, %struct.LIST_HELP* %25)
  store %struct.CONDITION_HELP* %call17, %struct.CONDITION_HELP** %Cond, align 8
  %cmp18 = icmp ne %struct.CONDITION_HELP* %call17, null
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %while.body
  %26 = load i32, i32* %j, align 4
  %cmp20 = icmp eq i32 %26, 0
  br i1 %cmp20, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.19
  %27 = load i32*, i32** %Flags.addr, align 8
  %call21 = call i32 @flag_GetFlagValue(i32* %27, i32 18)
  %tobool = icmp ne i32 %call21, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %land.lhs.true
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %30)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true, %if.then.19
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %32 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call25 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %32)
  %call26 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %31, %struct.LIST_HELP* %call25)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %NewClauses, align 8
  %33 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  %call27 = call %struct.LIST_HELP* @list_Nil()
  call void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %33, %struct.LIST_HELP* %call27)
  %34 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Cond, align 8
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %cmp30 = icmp eq %struct.CLAUSE_HELP* %37, %38
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.39

land.lhs.true.31:                                 ; preds = %for.body
  %39 = load i32, i32* %Document.addr, align 4
  %tobool32 = icmp ne i32 %39, 0
  br i1 %tobool32, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.31
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call33 to %struct.CLAUSE_HELP*
  %call34 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %41)
  %42 = load i32, i32* %OldSplitLevel, align 4
  %43 = load i32, i32* %Level.addr, align 4
  %call35 = call i32 @prfs_SplitLevelCondition(i32 %call34, i32 %42, i32 %43)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false, %land.lhs.true.31
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call38 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %44)
  store %struct.CLAUSE_HELP* %call38, %struct.CLAUSE_HELP** %Copy, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %lor.lhs.false, %for.body
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call40 to %struct.CLAUSE_HELP*
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %45, %struct.CLAUSE_HELP* %47)
  %48 = load i32*, i32** %Flags.addr, align 8
  %call41 = call i32 @flag_GetFlagValue(i32* %48, i32 18)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.47

if.then.43:                                       ; preds = %if.end.39
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call44 to %struct.CLAUSE_HELP*
  %call45 = call i32 @clause_Number(%struct.CLAUSE_HELP* %50)
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %call45)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.43, %if.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load i32, i32* %Document.addr, align 4
  %tobool49 = icmp ne i32 %52, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %for.end
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %j, align 4
  %add = add nsw i32 %53, %54
  %conv = sext i32 %add to i64
  %55 = inttoptr i64 %conv to i8*
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call51 = call %struct.LIST_HELP* @list_Cons(i8* %55, %struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %for.end
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %58 = load i32, i32* %i, align 4
  %59 = load i32*, i32** %Flags.addr, align 8
  %60 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %57, i32 %58, i32* %59, i32* %60)
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  %call53 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %61, %struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Clauses, align 8
  %63 = load i32, i32* %j, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %j, align 4
  %64 = load i32, i32* %lc, align 4
  %dec = add nsw i32 %64, -1
  store i32 %dec, i32* %lc, align 4
  br label %if.end.55

if.else:                                          ; preds = %while.body
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %65)
  %66 = load i32, i32* %i, align 4
  %inc54 = add nsw i32 %66, 1
  store i32 %inc54, i32* %i, align 4
  br label %if.end.55

if.end.55:                                        ; preds = %if.else, %if.end.52
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SortPair, align 8
  call void @sort_DeleteSortPair(%struct.LIST_HELP* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %68)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %69 = load i32, i32* %j, align 4
  %cmp56 = icmp sgt i32 %69, 0
  br i1 %cmp56, label %if.then.58, label %if.end.72

if.then.58:                                       ; preds = %while.end
  %70 = load i32, i32* %Document.addr, align 4
  %tobool59 = icmp ne i32 %70, 0
  br i1 %tobool59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.then.58
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  call void @red_DocumentSortSimplification(%struct.CLAUSE_HELP* %71, %struct.LIST_HELP* %72, %struct.LIST_HELP* %73)
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.58
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %74)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.60
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %76 = load i32*, i32** %Flags.addr, align 8
  %77 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReInit(%struct.CLAUSE_HELP* %75, i32* %76, i32* %77)
  %78 = load i32*, i32** %Flags.addr, align 8
  %call63 = call i32 @flag_GetFlagValue(i32* %78, i32 18)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.end.62
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call66 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %79)
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %80)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.end.62
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp68 = icmp ne %struct.CLAUSE_HELP* %81, %82
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.67
  %83 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %84 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %83, %struct.CLAUSE_HELP** %84, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  store i32 1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %while.end
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.73, %if.end.71
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 10
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %dynamic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

; Function Attrs: nounwind uwtable
define internal i32 @red_MatchingReplacementResolution(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed, i32 %Level) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Level.addr = alloca i32, align 4
  %PClause = alloca %struct.CLAUSE_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %length = alloca i32, align 4
  %ReducedBy = alloca %struct.LIST_HELP*, align 8
  %ReducedLits = alloca %struct.LIST_HELP*, align 8
  %PLits = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Document = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Copy, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call, i32* %length, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ReducedBy, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ReducedLits, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %PLits, align 8
  %call4 = call i32 @clause_FirstLitIndex()
  store i32 %call4, i32* %i, align 4
  store i32 0, i32* %j, align 4
  %2 = load i32*, i32** %Flags.addr, align 8
  %call5 = call i32 @flag_GetFlagValue(i32* %2, i32 9)
  store i32 %call5, i32* %Document, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %6 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.LITERAL_HELP* %call6, %struct.LITERAL_HELP** %ActLit, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call7 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %7)
  %call8 = call i32 @fol_IsEquality(%struct.term* %call7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %while.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call9 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.else.43

if.then:                                          ; preds = %lor.lhs.false, %while.body
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %10 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call11 = call %struct.LITERAL_HELP* @red_GetMRResLit(%struct.LITERAL_HELP* %9, %struct.SHARED_INDEX_NODE* %10)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %PLit, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call12 = call i32 @clause_LiteralExists(%struct.LITERAL_HELP* %11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.14
  %13 = load i32*, i32** %Flags.addr, align 8
  %call17 = call i32 @flag_GetFlagValue(i32* %13, i32 20)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0), %struct._IO_FILE* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true, %if.then.14
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call21 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %16)
  store %struct.CLAUSE_HELP* %call21, %struct.CLAUSE_HELP** %PClause, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call22 = call i32 @clause_Number(%struct.CLAUSE_HELP* %17)
  %conv = sext i32 %call22 to i64
  %18 = inttoptr i64 %conv to i8*
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  %call23 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %ReducedBy, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call24 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %20)
  %conv25 = sext i32 %call24 to i64
  %21 = inttoptr i64 %conv25 to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  %call26 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %PLits, align 8
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %j, align 4
  %add = add nsw i32 %23, %24
  %conv27 = sext i32 %add to i64
  %25 = inttoptr i64 %conv27 to i8*
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %25, %struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %ReducedLits, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp29 = icmp eq %struct.CLAUSE_HELP* %27, %28
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.40

land.lhs.true.31:                                 ; preds = %if.end
  %29 = load i32, i32* %Document, align 4
  %tobool32 = icmp ne i32 %29, 0
  br i1 %tobool32, label %if.then.38, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %land.lhs.true.31
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call34 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call35 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %31)
  %32 = load i32, i32* %Level.addr, align 4
  %call36 = call i32 @prfs_SplitLevelCondition(i32 %call34, i32 %call35, i32 %32)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %lor.lhs.false.33, %land.lhs.true.31
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call39 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %33)
  store %struct.CLAUSE_HELP* %call39, %struct.CLAUSE_HELP** %Copy, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %lor.lhs.false.33, %if.end
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %34, %struct.CLAUSE_HELP* %35)
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32*, i32** %Flags.addr, align 8
  %39 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %36, i32 %37, i32* %38, i32* %39)
  %40 = load i32, i32* %length, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %length, align 4
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %if.end.42

if.else:                                          ; preds = %if.then
  %42 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %42, 1
  store i32 %inc41, i32* %i, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else, %if.end.40
  br label %if.end.45

if.else.43:                                       ; preds = %lor.lhs.false
  %43 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %43, 1
  store i32 %inc44, i32* %i, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.43, %if.end.42
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  %call46 = call i32 @list_Empty(%struct.LIST_HELP* %44)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.91, label %if.then.48

if.then.48:                                       ; preds = %while.end
  %45 = load i32, i32* %Document, align 4
  %tobool49 = icmp ne i32 %45, 0
  br i1 %tobool49, label %if.then.50, label %if.else.67

if.then.50:                                       ; preds = %if.then.48
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  %call51 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %ReducedBy, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  %call52 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %ReducedLits, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  %call53 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %PLits, align 8
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  call void @red_DocumentMatchingReplacementResolution(%struct.CLAUSE_HELP* %49, %struct.LIST_HELP* %50, %struct.LIST_HELP* %51, %struct.LIST_HELP* %52)
  %53 = load i32*, i32** %Flags.addr, align 8
  %call54 = call i32 @flag_GetFlagValue(i32* %53, i32 20)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.66

if.then.56:                                       ; preds = %if.then.50
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call57 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %Scan1, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  store %struct.LIST_HELP* %56, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.56
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %57)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot = xor i1 %tobool59, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = ptrtoint i8* %call60 to i32
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %60)
  %61 = ptrtoint i8* %call61 to i32
  %call62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %59, i32 %61)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call63 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %Scan1, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call65 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %64)
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %65)
  br label %if.end.66

if.end.66:                                        ; preds = %for.end, %if.then.50
  br label %if.end.86

if.else.67:                                       ; preds = %if.then.48
  %66 = load i32*, i32** %Flags.addr, align 8
  %call68 = call i32 @flag_GetFlagValue(i32* %66, i32 20)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.end.85

if.then.70:                                       ; preds = %if.else.67
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  store %struct.LIST_HELP* %68, %struct.LIST_HELP** %Scan1, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  store %struct.LIST_HELP* %69, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.80, %if.then.70
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call73 = call i32 @list_Empty(%struct.LIST_HELP* %70)
  %tobool74 = icmp ne i32 %call73, 0
  %lnot75 = xor i1 %tobool74, true
  br i1 %lnot75, label %for.body.76, label %for.end.83

for.body.76:                                      ; preds = %for.cond.72
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call77 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = ptrtoint i8* %call77 to i32
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %73)
  %74 = ptrtoint i8* %call78 to i32
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %72, i32 %74)
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.76
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %Scan1, align 8
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.72

for.end.83:                                       ; preds = %for.cond.72
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %77)
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %78)
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.83, %if.else.67
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedBy, align 8
  call void @list_Delete(%struct.LIST_HELP* %79)
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ReducedLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %80)
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %81)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.66
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %83 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp87 = icmp ne %struct.CLAUSE_HELP* %82, %83
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.86
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %85 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %84, %struct.CLAUSE_HELP** %85, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %if.end.86
  store i32 1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.end.90
  %86 = load i32, i32* %retval
  ret i32 %86
}

; Function Attrs: nounwind uwtable
define internal i32 @red_UnitConflict(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed, i32 %Level) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Level.addr = alloca i32, align 4
  %PClause = alloca %struct.CLAUSE_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %Document = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end.127

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.CLAUSE_HELP* %1, %struct.CLAUSE_HELP** %Copy, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %2, i32 9)
  store i32 %call1, i32* %Document, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call2 = call i32 @clause_FirstLitIndex()
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %call2)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %ActLit, align 8
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %PLit, align 8
  %call4 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call5 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %4)
  %call6 = call %struct.binding* @cont_RightContext()
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call7 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  %call8 = call i8* @st_ExistUnifier(%struct.binding* %call4, %struct.st* %call5, %struct.binding* %call6, %struct.term* %call7)
  %6 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %6, %struct.term** %CandTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.then
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %cmp9 = icmp eq %struct.LITERAL_HELP* %7, null
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %8 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool = icmp ne %struct.term* %8, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %tobool, %land.rhs ]
  br i1 %9, label %while.body, label %while.end.32

while.body:                                       ; preds = %land.end
  %10 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call10 = call i32 @term_IsVariable(%struct.term* %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.27, label %if.then.12

if.then.12:                                       ; preds = %while.body
  %11 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call13 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.14

while.cond.14:                                    ; preds = %if.end, %if.then.12
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %while.body.17, label %while.end

while.body.17:                                    ; preds = %while.cond.14
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call18 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %14, %struct.LITERAL_HELP** %PLit, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call19 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %15, %struct.LITERAL_HELP* %16)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.17
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call21 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %17)
  %call22 = call i32 @clause_Length(%struct.CLAUSE_HELP* %call21)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %land.lhs.true
  call void @st_CancelExistRetrieval()
  %call25 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scan, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body.17
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %PLit, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.24
  br label %while.cond.14

while.end:                                        ; preds = %while.cond.14
  br label %if.end.27

if.end.27:                                        ; preds = %while.end, %while.body
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %cmp28 = icmp eq %struct.LITERAL_HELP* %19, null
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.end.27
  %call30 = call i8* @st_NextCandidate()
  %20 = bitcast i8* %call30 to %struct.term*
  store %struct.term* %20, %struct.term** %CandTerm, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.27
  br label %while.cond

while.end.32:                                     ; preds = %land.end
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %cmp33 = icmp eq %struct.LITERAL_HELP* %21, null
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.83

land.lhs.true.34:                                 ; preds = %while.end.32
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call35 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %22)
  %call36 = call i32 @fol_IsEquality(%struct.term* %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.83

if.then.38:                                       ; preds = %land.lhs.true.34
  %call39 = call i32 @fol_Equality()
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call40 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %23)
  %call41 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call40)
  %call42 = call %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP* %call41)
  %call43 = call %struct.term* @term_Create(i32 %call39, %struct.LIST_HELP* %call42)
  store %struct.term* %call43, %struct.term** %Atom, align 8
  %call44 = call %struct.binding* @cont_LeftContext()
  %24 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call45 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %24)
  %call46 = call %struct.binding* @cont_RightContext()
  %25 = load %struct.term*, %struct.term** %Atom, align 8
  %call47 = call i8* @st_ExistUnifier(%struct.binding* %call44, %struct.st* %call45, %struct.binding* %call46, %struct.term* %25)
  %26 = bitcast i8* %call47 to %struct.term*
  store %struct.term* %26, %struct.term** %CandTerm, align 8
  br label %while.cond.48

while.cond.48:                                    ; preds = %if.end.80, %if.then.38
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %cmp49 = icmp eq %struct.LITERAL_HELP* %27, null
  br i1 %cmp49, label %land.rhs.50, label %land.end.52

land.rhs.50:                                      ; preds = %while.cond.48
  %28 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool51 = icmp ne %struct.term* %28, null
  br label %land.end.52

land.end.52:                                      ; preds = %land.rhs.50, %while.cond.48
  %29 = phi i1 [ false, %while.cond.48 ], [ %tobool51, %land.rhs.50 ]
  br i1 %29, label %while.body.53, label %while.end.81

while.body.53:                                    ; preds = %land.end.52
  %30 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call54 = call i32 @term_IsVariable(%struct.term* %30)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end.76, label %if.then.56

if.then.56:                                       ; preds = %while.body.53
  %31 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call57 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %31)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.58

while.cond.58:                                    ; preds = %if.end.74, %if.then.56
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call59 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool60 = icmp ne i32 %call59, 0
  %lnot61 = xor i1 %tobool60, true
  br i1 %lnot61, label %while.body.62, label %while.end.75

while.body.62:                                    ; preds = %while.cond.58
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call63 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %34, %struct.LITERAL_HELP** %PLit, align 8
  %35 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call64 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %35, %struct.LITERAL_HELP* %36)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.else.72

land.lhs.true.66:                                 ; preds = %while.body.62
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call67 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %37)
  %call68 = call i32 @clause_Length(%struct.CLAUSE_HELP* %call67)
  %cmp69 = icmp eq i32 %call68, 1
  br i1 %cmp69, label %if.then.70, label %if.else.72

if.then.70:                                       ; preds = %land.lhs.true.66
  call void @st_CancelExistRetrieval()
  %call71 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %Scan, align 8
  br label %if.end.74

if.else.72:                                       ; preds = %land.lhs.true.66, %while.body.62
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %PLit, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %Scan, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.72, %if.then.70
  br label %while.cond.58

while.end.75:                                     ; preds = %while.cond.58
  br label %if.end.76

if.end.76:                                        ; preds = %while.end.75, %while.body.53
  %39 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %cmp77 = icmp eq %struct.LITERAL_HELP* %39, null
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.end.76
  %call79 = call i8* @st_NextCandidate()
  %40 = bitcast i8* %call79 to %struct.term*
  store %struct.term* %40, %struct.term** %CandTerm, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.end.76
  br label %while.cond.48

while.end.81:                                     ; preds = %land.end.52
  %41 = load %struct.term*, %struct.term** %Atom, align 8
  %call82 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %41)
  call void @list_Delete(%struct.LIST_HELP* %call82)
  %42 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Free(%struct.term* %42)
  br label %if.end.83

if.end.83:                                        ; preds = %while.end.81, %land.lhs.true.34, %while.end.32
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call84 = call i32 @clause_LiteralExists(%struct.LITERAL_HELP* %43)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.126

if.then.86:                                       ; preds = %if.end.83
  %44 = load i32*, i32** %Flags.addr, align 8
  %call87 = call i32 @flag_GetFlagValue(i32* %44, i32 21)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.then.86
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call90 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0), %struct._IO_FILE* %45)
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %46)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.then.86
  %47 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call92 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %47)
  store %struct.CLAUSE_HELP* %call92, %struct.CLAUSE_HELP** %PClause, align 8
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp93 = icmp eq %struct.CLAUSE_HELP* %48, %49
  br i1 %cmp93, label %land.lhs.true.94, label %if.end.102

land.lhs.true.94:                                 ; preds = %if.end.91
  %50 = load i32, i32* %Document, align 4
  %tobool95 = icmp ne i32 %50, 0
  br i1 %tobool95, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call96 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %51)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call97 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %52)
  %53 = load i32, i32* %Level.addr, align 4
  %call98 = call i32 @prfs_SplitLevelCondition(i32 %call96, i32 %call97, i32 %53)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.end.102

if.then.100:                                      ; preds = %lor.lhs.false, %land.lhs.true.94
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call101 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %54)
  store %struct.CLAUSE_HELP* %call101, %struct.CLAUSE_HELP** %Copy, align 8
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.100, %lor.lhs.false, %if.end.91
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %55, %struct.CLAUSE_HELP* %56)
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call103 = call i32 @clause_FirstLitIndex()
  %58 = load i32*, i32** %Flags.addr, align 8
  %59 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %57, i32 %call103, i32* %58, i32* %59)
  %60 = load i32, i32* %Document, align 4
  %tobool104 = icmp ne i32 %60, 0
  br i1 %tobool104, label %if.then.105, label %if.end.114

if.then.105:                                      ; preds = %if.end.102
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call106 = call i32 @clause_FirstLitIndex()
  %conv = sext i32 %call106 to i64
  %62 = inttoptr i64 %conv to i8*
  %call107 = call %struct.LIST_HELP* @list_List(i8* %62)
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call108 = call i32 @clause_Number(%struct.CLAUSE_HELP* %63)
  %conv109 = sext i32 %call108 to i64
  %64 = inttoptr i64 %conv109 to i8*
  %call110 = call %struct.LIST_HELP* @list_List(i8* %64)
  %call111 = call i32 @clause_FirstLitIndex()
  %conv112 = sext i32 %call111 to i64
  %65 = inttoptr i64 %conv112 to i8*
  %call113 = call %struct.LIST_HELP* @list_List(i8* %65)
  call void @red_DocumentUnitConflict(%struct.CLAUSE_HELP* %61, %struct.LIST_HELP* %call107, %struct.LIST_HELP* %call110, %struct.LIST_HELP* %call113)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.105, %if.end.102
  %66 = load i32*, i32** %Flags.addr, align 8
  %call115 = call i32 @flag_GetFlagValue(i32* %66, i32 21)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.114
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %call118 = call i32 @clause_Number(%struct.CLAUSE_HELP* %67)
  %call119 = call i32 @clause_FirstLitIndex()
  %call120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), i32 %call118, i32 %call119)
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %68)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.end.114
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp122 = icmp ne %struct.CLAUSE_HELP* %69, %70
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end.121
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %72 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %71, %struct.CLAUSE_HELP** %72, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end.121
  store i32 1, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.end.83
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.127, %if.end.125
  %73 = load i32, i32* %retval
  ret i32 %73
}

; Function Attrs: nounwind uwtable
define internal i32 @red_Tautology(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %la = alloca i32, align 4
  %n = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %la, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %n, align 4
  store i32 0, i32* %Result, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.29, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %5 = load i32, i32* %Result, align 4
  %tobool = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %6, label %for.body, label %for.end.31

for.body:                                         ; preds = %land.end
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Atom, align 8
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call i32 @fol_IsEquality(%struct.term* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load i32, i32* %j, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  %call8 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %land.lhs.true.10

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call11 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %Atom, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %13)
  %call13 = call i32 @term_Equal(%struct.term* %call11, %struct.term* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.10
  store i32 1, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.10, %land.lhs.true, %for.body
  %call15 = call i32 @clause_FirstLitIndex()
  store i32 %call15, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %if.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %la, align 4
  %cmp17 = icmp sle i32 %14, %15
  br i1 %cmp17, label %land.rhs.18, label %land.end.21

land.rhs.18:                                      ; preds = %for.cond.16
  %16 = load i32, i32* %Result, align 4
  %tobool19 = icmp ne i32 %16, 0
  %lnot20 = xor i1 %tobool19, true
  br label %land.end.21

land.end.21:                                      ; preds = %land.rhs.18, %for.cond.16
  %17 = phi i1 [ false, %for.cond.16 ], [ %lnot20, %land.rhs.18 ]
  br i1 %17, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %land.end.21
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load i32, i32* %i, align 4
  %call23 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  %call24 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call23)
  %call25 = call i32 @term_Equal(%struct.term* %18, %struct.term* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body.22
  store i32 1, i32* %Result, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.16

for.end:                                          ; preds = %land.end.21
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc30 = add nsw i32 %22, 1
  store i32 %inc30, i32* %j, align 4
  br label %for.cond

for.end.31:                                       ; preds = %land.end
  %23 = load i32, i32* %Result, align 4
  %tobool32 = icmp ne i32 %23, 0
  br i1 %tobool32, label %if.end.44, label %land.lhs.true.33

land.lhs.true.33:                                 ; preds = %for.end.31
  %24 = load i32*, i32** %Flags.addr, align 8
  %call34 = call i32 @flag_GetFlagValue(i32* %24, i32 88)
  %cmp35 = icmp eq i32 %call34, 2
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call37 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %25)
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %land.lhs.true.39, label %if.end.44

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call40 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %26)
  %cmp41 = icmp ne i32 %call40, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.39
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call43 = call i32 @cc_Tautology(%struct.CLAUSE_HELP* %27)
  store i32 %call43, i32* %Result, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true.39, %land.lhs.true.36, %land.lhs.true.33, %for.end.31
  %28 = load i32, i32* %Result, align 4
  %tobool45 = icmp ne i32 %28, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.51

land.lhs.true.46:                                 ; preds = %if.end.44
  %29 = load i32*, i32** %Flags.addr, align 8
  %call47 = call i32 @flag_GetFlagValue(i32* %29, i32 16)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %land.lhs.true.46
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %31)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %land.lhs.true.46, %if.end.44
  %32 = load i32, i32* %Result, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @red_ObviousReductions(%struct.CLAUSE_HELP* %Clause, i32 %Document, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Document.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %end = alloca i32, align 4
  %Indexes = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Document, i32* %Document.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Indexes, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %end, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.42, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %end, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.44

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call i32 @fol_IsEquality(%struct.term* %6)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  %call7 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call10 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  %call12 = call i32 @term_Equal(%struct.term* %call10, %struct.term* %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9
  %11 = load i32, i32* %i, align 4
  %conv = sext i32 %11 to i64
  %12 = inttoptr i64 %conv to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true.9, %land.lhs.true, %for.body
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.else
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %end, align 4
  %cmp16 = icmp sle i32 %15, %16
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call19 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  %call20 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call19)
  store %struct.term* %call20, %struct.term** %PartnerAtom, align 8
  %19 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %20 = load %struct.term*, %struct.term** %Atom, align 8
  %call21 = call i32 @term_Equal(%struct.term* %19, %struct.term* %20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.18
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  %call23 = call i32 @fol_IsEquality(%struct.term* %21)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true.25, label %if.end

land.lhs.true.25:                                 ; preds = %lor.lhs.false
  %22 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call26 = call i32 @fol_IsEquality(%struct.term* %22)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end

land.lhs.true.28:                                 ; preds = %land.lhs.true.25
  %23 = load %struct.term*, %struct.term** %Atom, align 8
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %23)
  %24 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call30 = call %struct.term* @term_SecondArgument(%struct.term* %24)
  %call31 = call i32 @term_Equal(%struct.term* %call29, %struct.term* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %land.lhs.true.28
  %25 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %25)
  %26 = load %struct.term*, %struct.term** %Atom, align 8
  %call35 = call %struct.term* @term_SecondArgument(%struct.term* %26)
  %call36 = call i32 @term_Equal(%struct.term* %call34, %struct.term* %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %land.lhs.true.33, %for.body.18
  %27 = load i32, i32* %i, align 4
  %conv39 = sext i32 %27 to i64
  %28 = inttoptr i64 %conv39 to i8*
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call40 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Indexes, align 8
  %30 = load i32, i32* %end, align 4
  store i32 %30, i32* %j, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.38, %land.lhs.true.33, %land.lhs.true.28, %land.lhs.true.25, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, i32* %j, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end.41

if.end.41:                                        ; preds = %for.end, %if.then
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %32 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %32, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond

for.end.44:                                       ; preds = %for.cond
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call45 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %33)
  store i32 %call45, i32* %end, align 4
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call46 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %34)
  store i32 %call46, i32* %i, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.85, %for.end.44
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %end, align 4
  %cmp48 = icmp sle i32 %35, %36
  br i1 %cmp48, label %for.body.50, label %for.end.87

for.body.50:                                      ; preds = %for.cond.47
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %38 = load i32, i32* %i, align 4
  %call51 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %37, i32 %38)
  %call52 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call51)
  store %struct.term* %call52, %struct.term** %Atom, align 8
  %39 = load i32, i32* %i, align 4
  %add53 = add nsw i32 %39, 1
  store i32 %add53, i32* %j, align 4
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.82, %for.body.50
  %40 = load i32, i32* %j, align 4
  %41 = load i32, i32* %end, align 4
  %cmp55 = icmp sle i32 %40, %41
  br i1 %cmp55, label %for.body.57, label %for.end.84

for.body.57:                                      ; preds = %for.cond.54
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %43 = load i32, i32* %j, align 4
  %call58 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %42, i32 %43)
  %call59 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call58)
  store %struct.term* %call59, %struct.term** %PartnerAtom, align 8
  %44 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %45 = load %struct.term*, %struct.term** %Atom, align 8
  %call60 = call i32 @term_Equal(%struct.term* %44, %struct.term* %45)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.78, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %for.body.57
  %46 = load %struct.term*, %struct.term** %Atom, align 8
  %call63 = call i32 @fol_IsEquality(%struct.term* %46)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.81

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62
  %47 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call66 = call i32 @fol_IsEquality(%struct.term* %47)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.81

land.lhs.true.68:                                 ; preds = %land.lhs.true.65
  %48 = load %struct.term*, %struct.term** %Atom, align 8
  %call69 = call %struct.term* @term_FirstArgument(%struct.term* %48)
  %49 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call70 = call %struct.term* @term_SecondArgument(%struct.term* %49)
  %call71 = call i32 @term_Equal(%struct.term* %call69, %struct.term* %call70)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.81

land.lhs.true.73:                                 ; preds = %land.lhs.true.68
  %50 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call74 = call %struct.term* @term_FirstArgument(%struct.term* %50)
  %51 = load %struct.term*, %struct.term** %Atom, align 8
  %call75 = call %struct.term* @term_SecondArgument(%struct.term* %51)
  %call76 = call i32 @term_Equal(%struct.term* %call74, %struct.term* %call75)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %land.lhs.true.73, %for.body.57
  %52 = load i32, i32* %i, align 4
  %conv79 = sext i32 %52 to i64
  %53 = inttoptr i64 %conv79 to i8*
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %53, %struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Indexes, align 8
  %55 = load i32, i32* %end, align 4
  store i32 %55, i32* %j, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %land.lhs.true.73, %land.lhs.true.68, %land.lhs.true.65, %lor.lhs.false.62
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %56 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %56, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.54

for.end.84:                                       ; preds = %for.cond.54
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.end.84
  %57 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %57, 1
  store i32 %inc86, i32* %i, align 4
  br label %for.cond.47

for.end.87:                                       ; preds = %for.cond.47
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call88 = call i32 @clause_Length(%struct.CLAUSE_HELP* %58)
  %cmp89 = icmp eq i32 %call88, 1
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.123

land.lhs.true.91:                                 ; preds = %for.end.87
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call92 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %59)
  %cmp93 = icmp eq i32 %call92, 1
  br i1 %cmp93, label %land.lhs.true.95, label %if.end.123

land.lhs.true.95:                                 ; preds = %land.lhs.true.91
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call96 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %61)
  %conv97 = sext i32 %call96 to i64
  %62 = inttoptr i64 %conv97 to i8*
  %call98 = call i32 @list_PointerMember(%struct.LIST_HELP* %60, i8* %62)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end.123, label %land.lhs.true.100

land.lhs.true.100:                                ; preds = %land.lhs.true.95
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call101 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %64)
  %call102 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %63, i32 %call101)
  %call103 = call i32 @fol_IsEquality(%struct.term* %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.123

if.then.105:                                      ; preds = %land.lhs.true.100
  call void @cont_StartBinding()
  %call106 = call %struct.binding* @cont_LeftContext()
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call107 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %66)
  %call108 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %65, i32 %call107)
  %call109 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call108)
  %call110 = call %struct.term* @term_FirstArgument(%struct.term* %call109)
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call111 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %68)
  %call112 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %67, i32 %call111)
  %call113 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call112)
  %call114 = call %struct.term* @term_SecondArgument(%struct.term* %call113)
  %call115 = call i32 @unify_UnifyCom(%struct.binding* %call106, %struct.term* %call110, %struct.term* %call114)
  %tobool116 = icmp ne i32 %call115, 0
  br i1 %tobool116, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.then.105
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call118 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %69)
  %conv119 = sext i32 %call118 to i64
  %70 = inttoptr i64 %conv119 to i8*
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call120 = call %struct.LIST_HELP* @list_Cons(i8* %70, %struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %Indexes, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.117, %if.then.105
  %call122 = call i32 @cont_BackTrack()
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.121, %land.lhs.true.100, %land.lhs.true.95, %land.lhs.true.91, %for.end.87
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call124 = call i32 @list_Empty(%struct.LIST_HELP* %72)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.end.146, label %if.then.126

if.then.126:                                      ; preds = %if.end.123
  %73 = load i32*, i32** %Flags.addr, align 8
  %call127 = call i32 @flag_GetFlagValue(i32* %73, i32 17)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %if.then.126
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call130 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %74)
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %75)
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call131 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %76)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %if.then.126
  %77 = load i32, i32* %Document.addr, align 4
  %tobool133 = icmp ne i32 %77, 0
  br i1 %tobool133, label %if.then.134, label %if.else.140

if.then.134:                                      ; preds = %if.end.132
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call135 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %78)
  store %struct.CLAUSE_HELP* %call135, %struct.CLAUSE_HELP** %Copy, align 8
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %81 = load i32*, i32** %Flags.addr, align 8
  %82 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %79, %struct.LIST_HELP* %80, i32* %81, i32* %82)
  %83 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @red_DocumentObviousReductions(%struct.CLAUSE_HELP* %83, %struct.LIST_HELP* %84)
  %85 = load i32*, i32** %Flags.addr, align 8
  %call136 = call i32 @flag_GetFlagValue(i32* %85, i32 17)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %if.then.134
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %86)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.138, %if.then.134
  %87 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %88 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %87, %struct.CLAUSE_HELP** %88, align 8
  br label %if.end.145

if.else.140:                                      ; preds = %if.end.132
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %91 = load i32*, i32** %Flags.addr, align 8
  %92 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %89, %struct.LIST_HELP* %90, i32* %91, i32* %92)
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @list_Delete(%struct.LIST_HELP* %93)
  %94 = load i32*, i32** %Flags.addr, align 8
  %call141 = call i32 @flag_GetFlagValue(i32* %94, i32 17)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.else.140
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %95)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %if.else.140
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.139
  store i32 1, i32* %retval
  br label %return

if.end.146:                                       ; preds = %if.end.123
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.146, %if.end.145
  %96 = load i32, i32* %retval
  ret i32 %96
}

; Function Attrs: nounwind uwtable
define internal i32 @red_Condensing(%struct.CLAUSE_HELP* %Clause, i32 %Document, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Document.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Indexes = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Document, i32* %Document.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Indexes, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.19, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %Flags.addr, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %2, i32 15)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %6 = load i32, i32* %Document.addr, align 4
  %tobool7 = icmp ne i32 %6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %7)
  store %struct.CLAUSE_HELP* %call9, %struct.CLAUSE_HELP** %Copy, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %10 = load i32*, i32** %Flags.addr, align 8
  %11 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %8, %struct.LIST_HELP* %9, i32* %10, i32* %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @red_DocumentCondensing(%struct.CLAUSE_HELP* %12, %struct.LIST_HELP* %13)
  %14 = load i32*, i32** %Flags.addr, align 8
  %call10 = call i32 @flag_GetFlagValue(i32* %14, i32 15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %17 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %16, %struct.CLAUSE_HELP** %17, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  %20 = load i32*, i32** %Flags.addr, align 8
  %21 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %18, %struct.LIST_HELP* %19, i32* %20, i32* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes, align 8
  call void @list_Delete(%struct.LIST_HELP* %22)
  %23 = load i32*, i32** %Flags.addr, align 8
  %call14 = call i32 @flag_GetFlagValue(i32* %23, i32 15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.else
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.13
  store i32 1, i32* %retval
  br label %return

if.end.19:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.19, %if.end.18
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Length(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal i32 @fol_IsEquality(%struct.term* %Term) #2 {
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
define internal i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %oriented, align 4
  ret i32 %1
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #2 {
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
define internal %struct.term* @term_SecondArgument(%struct.term* %T) #2 {
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

declare i32 @cc_Tautology(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Second(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %call)
  ret i8* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerMember(%struct.LIST_HELP* %List, i8* %Element) #2 {
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
define internal i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %C, i32 %Index) #2 {
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
define internal void @cont_StartBinding() #2 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_UnifyCom(%struct.binding*, %struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BackTrack() #2 {
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

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #1

declare void @clause_DeleteLiterals(%struct.CLAUSE_HELP*, %struct.LIST_HELP*, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @red_DocumentObviousReductions(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Indexes) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indexes.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Indexes, %struct.LIST_HELP** %Indexes.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes.addr, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %3, %struct.LIST_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %6)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %5, i32 %call3)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %7, i32 %call4)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromObviousReductions(%struct.CLAUSE_HELP* %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackPush(i32 %Entry) #2 {
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
define internal void @cont_BackTrackLastBinding() #2 {
entry:
  call void @cont_BackTrackLastBindingHelp()
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackEmpty(i32 %Pointer) #2 {
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
define internal i32 @cont_StackPopResult() #2 {
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
define internal void @cont_BackTrackLastBindingHelp() #2 {
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
define internal %struct.binding* @cont_LastBinding() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetLastBinding(%struct.binding* %B) #2 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  store %struct.binding* %0, %struct.binding** @cont_LASTBINDING, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_BindingLink(%struct.binding* %B) #2 {
entry:
  %B.addr = alloca %struct.binding*, align 8
  store %struct.binding* %B, %struct.binding** %B.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %B.addr, align 8
  %link = getelementptr inbounds %struct.binding, %struct.binding* %0, i32 0, i32 4
  %1 = load %struct.binding*, %struct.binding** %link, align 8
  ret %struct.binding* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingTerm(%struct.binding* %B, %struct.term* %T) #2 {
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
define internal void @cont_SetBindingContext(%struct.binding* %B, %struct.binding* %C) #2 {
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
define internal void @cont_SetBindingRenaming(%struct.binding* %B, i32 %S) #2 {
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
define internal i32 @symbol_Null() #2 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_SetBindingLink(%struct.binding* %B, %struct.binding* %L) #2 {
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
define internal %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 6
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentCls, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 7
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetParentClauses(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %PClauses) #2 {
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
define internal void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %PLits) #2 {
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
define internal void @clause_SetNumber(%struct.CLAUSE_HELP* %Clause, i32 %Number) #2 {
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
define internal i32 @clause_IncreaseCounter() #2 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromObviousReductions(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 19, i32* %origin, align 4
  ret void
}

declare %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP*) #1

; Function Attrs: nounwind uwtable
define internal void @red_DocumentCondensing(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Indexes) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indexes.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Indexes, %struct.LIST_HELP** %Indexes.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes.addr, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %3, %struct.LIST_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %6)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %5, i32 %call3)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %7, i32 %call4)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromCondensing(%struct.CLAUSE_HELP* %8)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromCondensing(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 17, i32* %origin, align 4
  ret void
}

declare i32 @clause_ContainsNegativeEquations(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @fol_IsEquality(%struct.term* %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsVariable(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

declare i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP*, i32) #1

declare i32 @clause_ContainsPositiveEquations(%struct.CLAUSE_HELP*) #1

; Function Attrs: nounwind uwtable
define internal void @red_DocumentAssignmentEquationDeletion(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Indexes, i32 %NonTrivClauseNumber) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indexes.addr = alloca %struct.LIST_HELP*, align 8
  %NonTrivClauseNumber.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Indexes, %struct.LIST_HELP** %Indexes.addr, align 8
  store i32 %NonTrivClauseNumber, i32* %NonTrivClauseNumber.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes.addr, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %3, %struct.LIST_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %6)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %5, i32 %call3)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %7, i32 %call4)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromAssignmentEquationDeletion(%struct.CLAUSE_HELP* %8)
  %9 = load i32, i32* %NonTrivClauseNumber.addr, align 4
  %cmp = icmp ne i32 %9, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load i32, i32* %NonTrivClauseNumber.addr, align 4
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %10, i32 %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %12, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromAssignmentEquationDeletion(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 18, i32* %origin, align 4
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @red_RewriteRedUnitClause(%struct.CLAUSE_HELP* %RedClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.CLAUSE_HELP** %Changed, i32 %Level) #0 {
entry:
  %retval = alloca i32, align 4
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Changed.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Level.addr = alloca i32, align 4
  %RedAtom = alloca %struct.term*, align 8
  %RedTermS = alloca %struct.term*, align 8
  %B_Stack = alloca i32, align 4
  %Rewritten = alloca i32, align 4
  %Result = alloca i32, align 4
  %Oriented = alloca i32, align 4
  %Renamed = alloca i32, align 4
  %Document = alloca i32, align 4
  %TermS = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %EqList = alloca %struct.LIST_HELP*, align 8
  %EqScan = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %RewriteClause = alloca %struct.CLAUSE_HELP*, align 8
  %RewriteLit = alloca %struct.LITERAL_HELP*, align 8
  %Right = alloca %struct.term*, align 8
  %TermT = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.CLAUSE_HELP** %Changed, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store i32 %Level, i32* %Level.addr, align 4
  store i32 0, i32* %Result, align 4
  store i32 0, i32* %Renamed, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Copy, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call = call i32 @clause_FirstLitIndex()
  %call1 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %1, i32 %call)
  store %struct.term* %call1, %struct.term** %RedAtom, align 8
  store i32 1, i32* %Rewritten, align 4
  %2 = load i32*, i32** %Flags.addr, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %2, i32 9)
  store i32 %call2, i32* %Document, align 4
  %call3 = call i32 @clause_FirstLitIndex()
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call4 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %call3, %call4
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.term*, %struct.term** %RedAtom, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i32, i32* %Result, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i32, i32* @red_STAMPID, align 4
  %call7 = call i32 @term_StampOverflow(i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call10 = call i32 @clause_FirstLitIndex()
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %call10)
  %call12 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %call11)
  call void @term_ResetTermStamp(%struct.term* %call12)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end
  call void @term_StartStamp()
  br label %while.cond

while.cond:                                       ; preds = %while.end.145, %if.end.13
  %8 = load i32, i32* %Rewritten, align 4
  %tobool14 = icmp ne i32 %8, 0
  br i1 %tobool14, label %while.body, label %while.end.146

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %Rewritten, align 4
  %call15 = call i32 @stack_Bottom()
  store i32 %call15, i32* %B_Stack, align 4
  %9 = load %struct.term*, %struct.term** %RedAtom, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  call void @sharing_PushListOnStackNoStamps(%struct.LIST_HELP* %call16)
  br label %while.cond.17

while.cond.17:                                    ; preds = %if.end.144, %while.body
  %10 = load i32, i32* %B_Stack, align 4
  %call18 = call i32 @stack_Empty(i32 %10)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %while.body.20, label %while.end.145

while.body.20:                                    ; preds = %while.cond.17
  %call21 = call i8* @stack_PopResult()
  %11 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %11, %struct.term** %RedTermS, align 8
  %call22 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call23 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %12)
  %13 = load %struct.term*, %struct.term** %RedTermS, align 8
  %call24 = call i8* @st_ExistGen(%struct.binding* %call22, %struct.st* %call23, %struct.term* %13)
  %14 = bitcast i8* %call24 to %struct.term*
  store %struct.term* %14, %struct.term** %TermS, align 8
  br label %while.cond.25

while.cond.25:                                    ; preds = %if.end.141, %while.body.20
  %15 = load %struct.term*, %struct.term** %TermS, align 8
  %tobool26 = icmp ne %struct.term* %15, null
  br i1 %tobool26, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.25
  %16 = load i32, i32* %Rewritten, align 4
  %tobool27 = icmp ne i32 %16, 0
  %lnot28 = xor i1 %tobool27, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.25
  %17 = phi i1 [ false, %while.cond.25 ], [ %lnot28, %land.rhs ]
  br i1 %17, label %while.body.29, label %while.end

while.body.29:                                    ; preds = %land.end
  %18 = load %struct.term*, %struct.term** %TermS, align 8
  %call30 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %18)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %EqList, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqList, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %while.body.29
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.end.36, label %land.rhs.33

land.rhs.33:                                      ; preds = %for.cond
  %21 = load i32, i32* %Rewritten, align 4
  %tobool34 = icmp ne i32 %21, 0
  %lnot35 = xor i1 %tobool34, true
  br label %land.end.36

land.end.36:                                      ; preds = %land.rhs.33, %for.cond
  %22 = phi i1 [ false, %for.cond ], [ %lnot35, %land.rhs.33 ]
  br i1 %22, label %for.body, label %for.end.137

for.body:                                         ; preds = %land.end.36
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call37 to %struct.term*
  store %struct.term* %24, %struct.term** %PartnerEq, align 8
  %25 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call38 = call i32 @fol_IsEquality(%struct.term* %25)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.134

if.then.40:                                       ; preds = %for.body
  %26 = load %struct.term*, %struct.term** %TermS, align 8
  %27 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %cmp42 = icmp eq %struct.term* %26, %call41
  br i1 %cmp42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.40
  %28 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call44 = call %struct.term* @term_SecondArgument(%struct.term* %28)
  store %struct.term* %call44, %struct.term** %Right, align 8
  br label %if.end.46

if.else:                                          ; preds = %if.then.40
  %29 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %29)
  store %struct.term* %call45, %struct.term** %Right, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.43
  %30 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call47 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %30)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.end.46
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.end.54, label %land.rhs.51

land.rhs.51:                                      ; preds = %for.cond.48
  %32 = load i32, i32* %Rewritten, align 4
  %tobool52 = icmp ne i32 %32, 0
  %lnot53 = xor i1 %tobool52, true
  br label %land.end.54

land.end.54:                                      ; preds = %land.rhs.51, %for.cond.48
  %33 = phi i1 [ false, %for.cond.48 ], [ %lnot53, %land.rhs.51 ]
  br i1 %33, label %for.body.55, label %for.end

for.body.55:                                      ; preds = %land.end.54
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call56 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = bitcast i8* %call56 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %35, %struct.LITERAL_HELP** %RewriteLit, align 8
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call57 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %36)
  store %struct.CLAUSE_HELP* %call57, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call58 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %37)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %land.lhs.true, label %if.end.132

land.lhs.true:                                    ; preds = %for.body.55
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call60 = call i32 @clause_Length(%struct.CLAUSE_HELP* %38)
  %cmp61 = icmp eq i32 %call60, 1
  br i1 %cmp61, label %if.then.62, label %if.end.132

if.then.62:                                       ; preds = %land.lhs.true
  %39 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call63 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %39)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.rhs.65, label %land.end.68

land.rhs.65:                                      ; preds = %if.then.62
  %40 = load %struct.term*, %struct.term** %TermS, align 8
  %41 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call66 = call %struct.term* @term_FirstArgument(%struct.term* %41)
  %cmp67 = icmp eq %struct.term* %40, %call66
  br label %land.end.68

land.end.68:                                      ; preds = %land.rhs.65, %if.then.62
  %42 = phi i1 [ false, %if.then.62 ], [ %cmp67, %land.rhs.65 ]
  %land.ext = zext i1 %42 to i32
  store i32 %land.ext, i32* %Oriented, align 4
  %43 = load i32, i32* %Oriented, align 4
  %tobool69 = icmp ne i32 %43, 0
  br i1 %tobool69, label %if.end.79, label %land.lhs.true.70

land.lhs.true.70:                                 ; preds = %land.end.68
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RewriteLit, align 8
  %call71 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %44)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.79, label %if.then.73

if.then.73:                                       ; preds = %land.lhs.true.70
  store i32 1, i32* %Renamed, align 4
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call74 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %45)
  call void @term_StartMaxRenaming(i32 %call74)
  %46 = load %struct.term*, %struct.term** %RedAtom, align 8
  %call75 = call %struct.term* @term_Rename(%struct.term* %46)
  %call76 = call %struct.binding* @cont_LeftContext()
  %47 = load %struct.term*, %struct.term** %TermS, align 8
  %call77 = call %struct.binding* @cont_LeftContext()
  %48 = load %struct.term*, %struct.term** %Right, align 8
  %49 = load i32*, i32** %Flags.addr, align 8
  %50 = load i32*, i32** %Precedence.addr, align 8
  %call78 = call i32 @ord_ContGreater(%struct.binding* %call76, %struct.term* %47, %struct.binding* %call77, %struct.term* %48, i32* %49, i32* %50)
  store i32 %call78, i32* %Oriented, align 4
  br label %if.end.79

if.end.79:                                        ; preds = %if.then.73, %land.lhs.true.70, %land.end.68
  %51 = load i32, i32* %Oriented, align 4
  %tobool80 = icmp ne i32 %51, 0
  br i1 %tobool80, label %if.then.81, label %if.end.131

if.then.81:                                       ; preds = %if.end.79
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %cmp82 = icmp eq %struct.CLAUSE_HELP* %52, %53
  br i1 %cmp82, label %land.lhs.true.83, label %if.end.94

land.lhs.true.83:                                 ; preds = %if.then.81
  %54 = load i32, i32* %Document, align 4
  %tobool84 = icmp ne i32 %54, 0
  br i1 %tobool84, label %if.then.90, label %lor.lhs.false.85

lor.lhs.false.85:                                 ; preds = %land.lhs.true.83
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call86 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %55)
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call87 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %56)
  %57 = load i32, i32* %Level.addr, align 4
  %call88 = call i32 @prfs_SplitLevelCondition(i32 %call86, i32 %call87, i32 %57)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.end.94

if.then.90:                                       ; preds = %lor.lhs.false.85, %land.lhs.true.83
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call91 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %58)
  store %struct.CLAUSE_HELP* %call91, %struct.CLAUSE_HELP** %Copy, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call92 = call i32 @clause_FirstLitIndex()
  %call93 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %59, i32 %call92)
  store %struct.term* %call93, %struct.term** %RedAtom, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.90, %lor.lhs.false.85, %if.then.81
  %60 = load i32, i32* %Result, align 4
  %tobool95 = icmp ne i32 %60, 0
  br i1 %tobool95, label %if.end.103, label %if.then.96

if.then.96:                                       ; preds = %if.end.94
  %61 = load i32*, i32** %Flags.addr, align 8
  %call97 = call i32 @flag_GetFlagValue(i32* %61, i32 13)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.102

if.then.99:                                       ; preds = %if.then.96
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call100 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %62)
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %63)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call101 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %64)
  br label %if.end.102

if.end.102:                                       ; preds = %if.then.99, %if.then.96
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %if.end.94
  %65 = load i32, i32* %Document, align 4
  %tobool104 = icmp ne i32 %65, 0
  br i1 %tobool104, label %if.then.105, label %if.end.114

if.then.105:                                      ; preds = %if.end.103
  %66 = load i32, i32* %Result, align 4
  %tobool106 = icmp ne i32 %66, 0
  br i1 %tobool106, label %if.else.110, label %if.then.107

if.then.107:                                      ; preds = %if.then.105
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call108 = call i32 @clause_FirstLitIndex()
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call109 = call i32 @clause_FirstLitIndex()
  call void @red_DocumentRewriting(%struct.CLAUSE_HELP* %67, i32 %call108, %struct.CLAUSE_HELP* %68, i32 %call109)
  br label %if.end.113

if.else.110:                                      ; preds = %if.then.105
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call111 = call i32 @clause_FirstLitIndex()
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call112 = call i32 @clause_FirstLitIndex()
  call void @red_DocumentFurtherRewriting(%struct.CLAUSE_HELP* %69, i32 %call111, %struct.CLAUSE_HELP* %70, i32 %call112)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.107
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.end.103
  store i32 1, i32* %Result, align 4
  %call115 = call %struct.binding* @cont_LeftContext()
  %71 = load %struct.term*, %struct.term** %Right, align 8
  %call116 = call %struct.term* @term_Copy(%struct.term* %71)
  %call117 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call115, %struct.term* %call116, i32 1)
  store %struct.term* %call117, %struct.term** %TermT, align 8
  %call118 = call %struct.binding* @cont_RightContext()
  %call119 = call i32 @cont_BindingsAreRenamingModuloMatching(%struct.binding* %call118)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.then.121, label %if.end.122

if.then.121:                                      ; preds = %if.end.114
  %72 = load %struct.term*, %struct.term** %TermT, align 8
  call void @term_SetTermSubtermStamp(%struct.term* %72)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.121, %if.end.114
  %73 = load %struct.term*, %struct.term** %RedAtom, align 8
  %74 = load %struct.term*, %struct.term** %RedTermS, align 8
  %75 = load %struct.term*, %struct.term** %TermT, align 8
  %call123 = call i32 @term_ReplaceSubtermBy(%struct.term* %73, %struct.term* %74, %struct.term* %75)
  store i32 1, i32* %Rewritten, align 4
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %76, %struct.CLAUSE_HELP* %77)
  %78 = load %struct.term*, %struct.term** %TermT, align 8
  call void @term_Delete(%struct.term* %78)
  %79 = load i32, i32* %B_Stack, align 4
  call void @stack_SetBottom(i32 %79)
  %80 = load i32*, i32** %Flags.addr, align 8
  %call124 = call i32 @flag_GetFlagValue(i32* %80, i32 13)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %if.end.122
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RewriteClause, align 8
  %call127 = call i32 @clause_Number(%struct.CLAUSE_HELP* %81)
  %call128 = call i32 @clause_FirstLitIndex()
  %call129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 %call127, i32 %call128)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %if.end.122
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %83 = load i32*, i32** %Flags.addr, align 8
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %82, i32* %83)
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.79
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %land.lhs.true, %for.body.55
  br label %for.inc

for.inc:                                          ; preds = %if.end.132
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call133 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call133, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.48

for.end:                                          ; preds = %land.end.54
  br label %if.end.134

if.end.134:                                       ; preds = %for.end, %for.body
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EqScan, align 8
  %call136 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call136, %struct.LIST_HELP** %EqScan, align 8
  br label %for.cond

for.end.137:                                      ; preds = %land.end.36
  %86 = load i32, i32* %Rewritten, align 4
  %tobool138 = icmp ne i32 %86, 0
  br i1 %tobool138, label %if.end.141, label %if.then.139

if.then.139:                                      ; preds = %for.end.137
  %call140 = call i8* @st_NextCandidate()
  %87 = bitcast i8* %call140 to %struct.term*
  store %struct.term* %87, %struct.term** %TermS, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %for.end.137
  br label %while.cond.25

while.end:                                        ; preds = %land.end
  call void @st_CancelExistRetrieval()
  %88 = load i32, i32* %Rewritten, align 4
  %tobool142 = icmp ne i32 %88, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %while.end
  %89 = load %struct.term*, %struct.term** %RedTermS, align 8
  call void @term_SetTermStamp(%struct.term* %89)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %while.end
  br label %while.cond.17

while.end.145:                                    ; preds = %while.cond.17
  br label %while.cond

while.end.146:                                    ; preds = %while.cond
  call void @term_StopStamp()
  %90 = load i32, i32* %Result, align 4
  %tobool147 = icmp ne i32 %90, 0
  br i1 %tobool147, label %if.then.148, label %if.else.160

if.then.148:                                      ; preds = %while.end.146
  %91 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %92 = load i32*, i32** %Flags.addr, align 8
  %93 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %91, i32* %92, i32* %93)
  %94 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %cmp149 = icmp ne %struct.CLAUSE_HELP* %94, %95
  br i1 %cmp149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %if.then.148
  %96 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %97 = load i32*, i32** %Flags.addr, align 8
  %98 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %96, i32* %97, i32* %98)
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.150, %if.then.148
  %99 = load i32*, i32** %Flags.addr, align 8
  %call152 = call i32 @flag_GetFlagValue(i32* %99, i32 13)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.then.154, label %if.end.156

if.then.154:                                      ; preds = %if.end.151
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call155 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %100)
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %101)
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.154, %if.end.151
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %cmp157 = icmp ne %struct.CLAUSE_HELP* %102, %103
  br i1 %cmp157, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.156
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %105 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Changed.addr, align 8
  store %struct.CLAUSE_HELP* %104, %struct.CLAUSE_HELP** %105, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.156
  br label %if.end.164

if.else.160:                                      ; preds = %while.end.146
  %106 = load i32, i32* %Renamed, align 4
  %tobool161 = icmp ne i32 %106, 0
  br i1 %tobool161, label %if.then.162, label %if.end.163

if.then.162:                                      ; preds = %if.else.160
  %107 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %108 = load i32*, i32** %Flags.addr, align 8
  %109 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %107, i32* %108, i32* %109)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.162, %if.else.160
  br label %if.end.164

if.end.164:                                       ; preds = %if.end.163, %if.end.159
  %110 = load i32, i32* %Result, align 4
  store i32 %110, i32* %retval
  br label %return

return:                                           ; preds = %if.end.164, %if.then
  %111 = load i32, i32* %retval
  ret i32 %111
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_ArgumentList(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

declare void @sharing_PushListReverseOnStack(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Empty(i32 %Ptr) #2 {
entry:
  %Ptr.addr = alloca i32, align 4
  store i32 %Ptr, i32* %Ptr.addr, align 4
  %0 = load i32, i32* @stack_POINTER, align 4
  %1 = load i32, i32* %Ptr.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_PopResult() #2 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

declare i8* @st_ExistGen(%struct.binding*, %struct.st*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %ShIndex) #2 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %index = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %0, i32 0, i32 0
  %1 = load %struct.st*, %struct.st** %index, align 8
  ret %struct.st* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_SupertermList(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 3
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %owningClause, align 8
  ret %struct.CLAUSE_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %L) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %L) #2 {
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

declare i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @red_DocumentRewriting(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.CLAUSE_HELP* %Rule, i32 %ri) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Rule.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ri.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %Rule, %struct.CLAUSE_HELP** %Rule.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %3)
  %conv = sext i32 %call2 to i64
  %4 = inttoptr i64 %conv to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %4)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call3)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i.addr, align 4
  %conv4 = sext i32 %6 to i64
  %7 = inttoptr i64 %conv4 to i8*
  %call5 = call %struct.LIST_HELP* @list_List(i8* %7)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %5, %struct.LIST_HELP* %call5)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromRewriting(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Rule.addr, align 8
  %call6 = call i32 @clause_Number(%struct.CLAUSE_HELP* %11)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %10, i32 %call6)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load i32, i32* %ri.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %12, i32 %13)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @red_DocumentFurtherRewriting(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.CLAUSE_HELP* %Rule, i32 %ri) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Rule.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ri.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %Rule, %struct.CLAUSE_HELP** %Rule.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %1)
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call)
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %call1)
  %2 = ptrtoint i8* %call2 to i32
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %0, i32 %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Rule.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %6)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %5, i32 %call3)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %ri.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  ret void
}

declare %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding*, %struct.term*, i32) #1

declare i32 @term_ReplaceSubtermBy(%struct.term*, %struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Partner) #2 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Partner.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Partner, %struct.CLAUSE_HELP** %Partner.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Partner.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %1, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Partner.addr, align 8
  %call1 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %2)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Partner.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %5)
  %cmp6 = icmp ugt i32 %call4, %call5
  br i1 %cmp6, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.3
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Partner.addr, align 8
  %call7 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  br label %cond.end

cond.false:                                       ; preds = %if.end.3
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %call8 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call7, %cond.true ], [ %call8, %cond.false ]
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %3, i32 %cond)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Partner.addr, align 8
  call void @clause_UpdateSplitField(%struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP* %9)
  br label %return

return:                                           ; preds = %cond.end, %if.then.2
  ret void
}

declare void @term_Delete(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_SetBottom(i32 %Ptr) #2 {
entry:
  %Ptr.addr = alloca i32, align 4
  store i32 %Ptr, i32* %Ptr.addr, align 4
  %0 = load i32, i32* %Ptr.addr, align 4
  store i32 %0, i32* @stack_POINTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateWeight(%struct.CLAUSE_HELP* %Clause, i32* %Flags) #2 {
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

declare i8* @st_NextCandidate() #1

declare void @st_CancelExistRetrieval() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientEqualities(%struct.CLAUSE_HELP* %0, i32* %1, i32* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReInit(%struct.CLAUSE_HELP* %3, i32* %4, i32* %5)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

declare i32 @term_StampOverflow(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_ResetTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  store i32 0, i32* %stamp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 4
  %1 = load %struct.term*, %struct.term** %atomWithSign, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartStamp() #2 {
entry:
  %0 = load i32, i32* @term_STAMP, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @term_STAMP, align 4
  ret void
}

declare void @sharing_PushListOnStackNoStamps(%struct.LIST_HELP*) #1

declare void @term_StartMaxRenaming(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_MaxVar(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 9
  %1 = load i32, i32* %maxVar, align 4
  ret i32 %1
}

declare %struct.term* @term_Rename(%struct.term*) #1

declare i32 @ord_ContGreater(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*, i32*, i32*) #1

declare i32 @cont_BindingsAreRenamingModuloMatching(%struct.binding*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_RightContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_RIGHTCONTEXT, align 8
  ret %struct.binding* %0
}

declare void @term_SetTermSubtermStamp(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetTermStamp(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load i32, i32* @term_STAMP, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 3
  store i32 %0, i32* %stamp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StopStamp() #2 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %L) #2 {
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
define internal i32 @fol_Not() #2 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_NewNumber(%struct.CLAUSE_HELP* %Clause) #2 {
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
define internal void @clause_SetFromRewriting(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 21, i32* %origin, align 4
  ret void
}

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
define internal void @clause_UpdateSplitField(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2) #2 {
entry:
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %splitfield_length, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %splitfield_length1 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 5
  %3 = load i32, i32* %splitfield_length1, align 4
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %splitfield_length2 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 5
  %6 = load i32, i32* %splitfield_length2, align 4
  call void @clause_ExpandSplitField(%struct.CLAUSE_HELP* %4, i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %splitfield_length3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 5
  %9 = load i32, i32* %splitfield_length3, align 4
  %cmp4 = icmp ult i32 %7, %9
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 4
  %12 = load i64*, i64** %splitfield, align 8
  %arrayidx = getelementptr inbounds i64, i64* %12, i64 %idxprom
  %13 = load i64, i64* %arrayidx, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom5 = zext i32 %14 to i64
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %splitfield6 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 4
  %16 = load i64*, i64** %splitfield6, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %16, i64 %idxprom5
  %17 = load i64, i64* %arrayidx7, align 8
  %or = or i64 %13, %17
  %18 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %18 to i64
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %splitfield9 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %19, i32 0, i32 4
  %20 = load i64*, i64** %splitfield9, align 8
  %arrayidx10 = getelementptr inbounds i64, i64* %20, i64 %idxprom8
  store i64 %or, i64* %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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

declare i8* @memory_Malloc(i32) #1

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

declare i32 @clause_ComputeWeight(%struct.CLAUSE_HELP*, i32*) #1

declare void @clause_OrientEqualities(%struct.CLAUSE_HELP*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_ReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #2 {
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

declare void @clause_Normalize(%struct.CLAUSE_HELP*) #1

declare void @clause_SetMaxLitFlags(%struct.CLAUSE_HELP*, i32*, i32*) #1

declare void @clause_UpdateMaxVar(%struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @st_GetGen(%struct.binding*, %struct.st*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %L, i32 %Flag) #2 {
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

; Function Attrs: nounwind uwtable
define internal i32 @red_LeftTermOfEquationIsStrictlyMaximalTerm(%struct.CLAUSE_HELP* %Clause, %struct.LITERAL_HELP* %Equation, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Equation.addr = alloca %struct.LITERAL_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %except = alloca i32, align 4
  %last = alloca i32, align 4
  %LeftTerm = alloca %struct.term*, align 8
  %Atom = alloca %struct.term*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LITERAL_HELP* %Equation, %struct.LITERAL_HELP** %Equation.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Equation.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %call)
  store %struct.term* %call1, %struct.term** %LeftTerm, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Equation.addr, align 8
  %call2 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %1)
  store i32 %call2, i32* %except, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call3, i32* %last, align 4
  %call4 = call i32 @clause_FirstLitIndex()
  store i32 %call4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %except, align 4
  %cmp5 = icmp ne i32 %5, %6
  br i1 %cmp5, label %if.then, label %if.end.24

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call6, %struct.LITERAL_HELP** %ActLit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call7 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %9)
  store %struct.term* %call7, %struct.term** %Atom, align 8
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call i32 @fol_IsEquality(%struct.term* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %11 = load %struct.term*, %struct.term** %LeftTerm, align 8
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call10 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call i32 @ord_Compare(%struct.term* %11, %struct.term* %call10, i32* %13, i32* %14)
  %cmp12 = icmp ne i32 %call11, 3
  br i1 %cmp12, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call13 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %15)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %16 = load %struct.term*, %struct.term** %LeftTerm, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call15 = call %struct.term* @term_SecondArgument(%struct.term* %17)
  %18 = load i32*, i32** %Flags.addr, align 8
  %19 = load i32*, i32** %Precedence.addr, align 8
  %call16 = call i32 @ord_Compare(%struct.term* %16, %struct.term* %call15, i32* %18, i32* %19)
  %cmp17 = icmp ne i32 %call16, 3
  br i1 %cmp17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %land.lhs.true, %if.then.9
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %20 = load %struct.term*, %struct.term** %LeftTerm, align 8
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  %22 = load i32*, i32** %Flags.addr, align 8
  %23 = load i32*, i32** %Precedence.addr, align 8
  %call19 = call i32 @ord_Compare(%struct.term* %20, %struct.term* %21, i32* %22, i32* %23)
  %cmp20 = icmp ne i32 %call19, 3
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.21, %if.then.18
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @red_CRwTautologyCheck(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %RedClause, i32 %i, %struct.term* %TermSInstance, %struct.CLAUSE_HELP* %RuleClause, i32 %j, i32 %Mode, %struct.CLAUSE_HELP** %Result) #0 {
entry:
  %retval = alloca i32, align 4
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %TermSInstance.addr = alloca %struct.term*, align 8
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %j.addr = alloca i32, align 4
  %Mode.addr = alloca i32, align 4
  %Result.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Flags = alloca i32*, align 8
  %BackupFlags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %RuleCopy = alloca %struct.CLAUSE_HELP*, align 8
  %aux = alloca %struct.CLAUSE_HELP*, align 8
  %TermS = alloca %struct.term*, align 8
  %last = alloca i32, align 4
  %h = alloca i32, align 4
  %Rewrite = alloca i32, align 4
  %OldClauseCounter = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.term* %TermSInstance, %struct.term** %TermSInstance.addr, align 8
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  store %struct.CLAUSE_HELP** %Result, %struct.CLAUSE_HELP*** %Result.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Result.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %2, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call2 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %3)
  store %struct.CLAUSE_HELP* %call2, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call3 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %5)
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %4, i32 %call3)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %7 = load i32, i32* %j.addr, align 4
  %call4 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %7)
  %call5 = call %struct.term* @term_FirstArgument(%struct.term* %call4)
  store %struct.term* %call5, %struct.term** %TermS, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call6 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %8)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %9, %struct.LIST_HELP* %call7)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call8 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %10)
  call void @list_Delete(%struct.LIST_HELP* %call8)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %11, %struct.LIST_HELP* %call9)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  call void @clause_SetTemporary(%struct.CLAUSE_HELP* %12)
  call void @cont_StartBinding()
  %call10 = call %struct.binding* @cont_LeftContext()
  %13 = load %struct.term*, %struct.term** %TermS, align 8
  %14 = load %struct.term*, %struct.term** %TermSInstance.addr, align 8
  %call11 = call i32 @unify_MatchBindings(%struct.binding* %call10, %struct.term* %13, %struct.term* %14)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call12 = call %struct.binding* @cont_LeftContext()
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %16 = load i32, i32* %j.addr, align 4
  %call13 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  %call14 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call12, %struct.term* %call13, i32 1)
  %17 = load i32, i32* %i.addr, align 4
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call15 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %18)
  %cmp = icmp sge i32 %17, %call15
  br i1 %cmp, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %20 = load i32, i32* %i.addr, align 4
  %call16 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  %call17 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.28

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %22 = load i32, i32* %i.addr, align 4
  %call20 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %21, i32 %22)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %24 = load i32, i32* %i.addr, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %23, i32 %24)
  %call22 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call21)
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %26 = load i32, i32* %j.addr, align 4
  %call23 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %25, i32 %26)
  %27 = load i32*, i32** %Flags, align 8
  %28 = load i32*, i32** %Precedence, align 8
  %call24 = call i32 @ord_LiteralCompare(%struct.term* %call20, i32 %call22, %struct.term* %call23, i32 1, i32 0, i32* %27, i32* %28)
  %cmp25 = icmp ne i32 %call24, 3
  br i1 %cmp25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %land.lhs.true.19
  %call27 = call i32 @cont_BackTrack()
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %29)
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true.19, %land.lhs.true, %if.end
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call29 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %30)
  store i32 %call29, i32* %last, align 4
  %call30 = call i32 @clause_FirstLitIndex()
  store i32 %call30, i32* %h, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %31 = load i32, i32* %h, align 4
  %32 = load i32, i32* %last, align 4
  %cmp31 = icmp sle i32 %31, %32
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %h, align 4
  %34 = load i32, i32* %j.addr, align 4
  %cmp32 = icmp ne i32 %33, %34
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %for.body
  %call34 = call %struct.binding* @cont_LeftContext()
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %36 = load i32, i32* %h, align 4
  %call35 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %35, i32 %36)
  %call36 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call34, %struct.term* %call35, i32 0)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %37 = load i32, i32* %h, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %h, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call38 = call i32 @cont_BackTrack()
  %call39 = call i32* @flag_CreateStore()
  store i32* %call39, i32** %BackupFlags, align 8
  %38 = load i32*, i32** %Flags, align 8
  %39 = load i32*, i32** %BackupFlags, align 8
  call void @flag_TransferAllFlags(i32* %38, i32* %39)
  %40 = load i32*, i32** %Flags, align 8
  call void @flag_ClearPrinting(i32* %40)
  %41 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %41, i32 82, i32 0)
  %42 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %42, i32 81, i32 0)
  store i32 1, i32* %Rewrite, align 4
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call40 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %43)
  store i32 %call40, i32* %last, align 4
  %call41 = call i32 @clause_Counter()
  store i32 %call41, i32* %OldClauseCounter, align 4
  %call42 = call i32 @clause_FirstLitIndex()
  store i32 %call42, i32* %h, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.66, %for.end
  %44 = load i32, i32* %Rewrite, align 4
  %tobool44 = icmp ne i32 %44, 0
  br i1 %tobool44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.43
  %45 = load i32, i32* %h, align 4
  %46 = load i32, i32* %last, align 4
  %cmp45 = icmp sle i32 %45, %46
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.43
  %47 = phi i1 [ false, %for.cond.43 ], [ %cmp45, %land.rhs ]
  br i1 %47, label %for.body.46, label %for.end.68

for.body.46:                                      ; preds = %land.end
  %48 = load i32, i32* %h, align 4
  %49 = load i32, i32* %j.addr, align 4
  %cmp47 = icmp ne i32 %48, %49
  br i1 %cmp47, label %if.then.48, label %if.end.65

if.then.48:                                       ; preds = %for.body.46
  %50 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %52 = load i32, i32* %i.addr, align 4
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %54 = load i32, i32* %h, align 4
  %55 = load %struct.term*, %struct.term** %TermSInstance.addr, align 8
  %56 = load i32, i32* %Mode.addr, align 4
  %call49 = call %struct.CLAUSE_HELP* @red_CRwLitTautologyCheck(%struct.PROOFSEARCH_HELP* %50, %struct.CLAUSE_HELP* %51, i32 %52, %struct.CLAUSE_HELP* %53, i32 %54, %struct.term* %55, i32 %56)
  store %struct.CLAUSE_HELP* %call49, %struct.CLAUSE_HELP** %aux, align 8
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %cmp50 = icmp eq %struct.CLAUSE_HELP* %57, null
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.then.48
  store i32 0, i32* %Rewrite, align 4
  br label %if.end.64

if.else:                                          ; preds = %if.then.48
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %58, %struct.CLAUSE_HELP* %59)
  %60 = load i32*, i32** %Flags, align 8
  %call52 = call i32 @flag_GetFlagValue(i32* %60, i32 9)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.63

if.then.54:                                       ; preds = %if.else
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call55 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %62)
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call56 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %63)
  %call57 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call55, %struct.LIST_HELP* %call56)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %61, %struct.LIST_HELP* %call57)
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call58 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %65)
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %call59 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %66)
  %call60 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call58, %struct.LIST_HELP* %call59)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %64, %struct.LIST_HELP* %call60)
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call61 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %67, %struct.LIST_HELP* %call61)
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call62 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %68, %struct.LIST_HELP* %call62)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.54, %if.else
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %69)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.51
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %for.body.46
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %70 = load i32, i32* %h, align 4
  %inc67 = add nsw i32 %70, 1
  store i32 %inc67, i32* %h, align 4
  br label %for.cond.43

for.end.68:                                       ; preds = %land.end
  %71 = load i32, i32* %OldClauseCounter, align 4
  call void @clause_SetCounter(i32 %71)
  %72 = load i32*, i32** %BackupFlags, align 8
  %73 = load i32*, i32** %Flags, align 8
  call void @flag_TransferAllFlags(i32* %72, i32* %73)
  %74 = load i32*, i32** %BackupFlags, align 8
  call void @flag_DeleteStore(i32* %74)
  %75 = load i32, i32* %Rewrite, align 4
  %tobool69 = icmp ne i32 %75, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %for.end.68
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  %77 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %76, %struct.CLAUSE_HELP** %77, align 8
  br label %if.end.72

if.else.71:                                       ; preds = %for.end.68
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %78)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  %79 = load i32, i32* %Rewrite, align 4
  store i32 %79, i32* %retval
  br label %return

return:                                           ; preds = %if.end.72, %if.then.26
  %80 = load i32, i32* %retval
  ret i32 %80
}

; Function Attrs: nounwind uwtable
define internal void @red_DocumentContextualRewriting(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.CLAUSE_HELP* %RuleClause, i32 %ri, %struct.LIST_HELP* %AdditionalPClauses, %struct.LIST_HELP* %AdditionalPLits) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ri.addr = alloca i32, align 4
  %AdditionalPClauses.addr = alloca %struct.LIST_HELP*, align 8
  %AdditionalPLits.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  store %struct.LIST_HELP* %AdditionalPClauses, %struct.LIST_HELP** %AdditionalPClauses.addr, align 8
  store %struct.LIST_HELP* %AdditionalPLits, %struct.LIST_HELP** %AdditionalPLits.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AdditionalPClauses.addr, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AdditionalPLits.addr, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %4, %struct.LIST_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %7)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %6, i32 %call2)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %11)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %10, i32 %call3)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load i32, i32* %ri.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %12, i32 %13)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromContextualRewriting(%struct.CLAUSE_HELP* %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @red_DocumentFurtherCRw(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.CLAUSE_HELP* %RuleClause, i32 %ri, %struct.LIST_HELP* %AdditionalPClauses, %struct.LIST_HELP* %AdditionalPLits) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ri.addr = alloca i32, align 4
  %AdditionalPClauses.addr = alloca %struct.LIST_HELP*, align 8
  %AdditionalPLits.addr = alloca %struct.LIST_HELP*, align 8
  %PClauseNum = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  store %struct.LIST_HELP* %AdditionalPClauses, %struct.LIST_HELP** %AdditionalPClauses.addr, align 8
  store %struct.LIST_HELP* %AdditionalPLits, %struct.LIST_HELP** %AdditionalPLits.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call i8* @list_Second(%struct.LIST_HELP* %call)
  %1 = ptrtoint i8* %call1 to i32
  store i32 %1, i32* %PClauseNum, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AdditionalPClauses.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %4)
  %call3 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %3, %struct.LIST_HELP* %call2)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call3)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AdditionalPLits.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %7)
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call4)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %5, %struct.LIST_HELP* %call5)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %PClauseNum, align 4
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %8, i32 %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call6 = call i32 @clause_Number(%struct.CLAUSE_HELP* %13)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %12, i32 %call6)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %15 = load i32, i32* %ri.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %14, i32 %15)
  ret void
}

declare i32 @unify_MatchBindings(%struct.binding*, %struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #2 {
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
define internal i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

declare i32 @ord_Compare(%struct.term*, %struct.term*, i32*, i32*) #1

declare void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetTemporary(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 27, i32* %origin, align 4
  ret void
}

declare i32 @ord_LiteralCompare(%struct.term*, i32, %struct.term*, i32, i32, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %C, i32 %Index) #2 {
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
define internal i32* @flag_CreateStore() #2 {
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
define internal void @flag_TransferAllFlags(i32* %Source, i32* %Destination) #2 {
entry:
  %Source.addr = alloca i32*, align 8
  %Destination.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Destination, i32** %Destination.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %2 = load i32*, i32** %Source.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %4 to i64
  %5 = load i32*, i32** %Destination.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @flag_ClearPrinting(i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #2 {
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

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_CRwLitTautologyCheck(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %RedClause, i32 %Except, %struct.CLAUSE_HELP* %RuleClause, i32 %i, %struct.term* %LeadingTerm, i32 %Mode) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Except.addr = alloca i32, align 4
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %LeadingTerm.addr = alloca %struct.term*, align 8
  %Mode.addr = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %aux = alloca %struct.CLAUSE_HELP*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %DocProof = alloca i32, align 4
  %Negative = alloca i32, align 4
  %Redundant = alloca i32, align 4
  %NegLits = alloca %struct.LIST_HELP*, align 8
  %PosLits = alloca %struct.LIST_HELP*, align 8
  %RedundantList = alloca %struct.LIST_HELP*, align 8
  %OrigNum = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store i32 %Except, i32* %Except.addr, align 4
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.term* %LeadingTerm, %struct.term** %LeadingTerm.addr, align 8
  store i32 %Mode, i32* %Mode.addr, align 4
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32*, i32** %Flags, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %2, i32 9)
  store i32 %call2, i32* %DocProof, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  store %struct.term* %call4, %struct.term** %Atom, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call5 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %6)
  store i32 %call5, i32* %Negative, align 4
  %7 = load i32, i32* %i.addr, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call6 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %8)
  %cmp = icmp sle i32 %7, %call6
  br i1 %cmp, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call7 = call %struct.term* @term_Copy(%struct.term* %9)
  %10 = bitcast %struct.term* %call7 to i8*
  %call8 = call %struct.LIST_HELP* @list_List(i8* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %NegLits, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NegLits, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %call10 = call %struct.LIST_HELP* @list_Nil()
  %12 = load i32*, i32** %Flags, align 8
  %13 = load i32*, i32** %Precedence, align 8
  %call11 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %11, %struct.LIST_HELP* %call9, %struct.LIST_HELP* %call10, i32* %12, i32* %13)
  store %struct.CLAUSE_HELP* %call11, %struct.CLAUSE_HELP** %aux, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_SetTemporary(%struct.CLAUSE_HELP* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NegLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %15)
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %NewClause, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call12 = call i32 @clause_Number(%struct.CLAUSE_HELP* %16)
  store i32 %call12, i32* %OrigNum, align 4
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call13 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %17)
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %19 = load i32, i32* %DocProof, align 4
  %20 = load i32*, i32** %Flags, align 8
  %21 = load i32*, i32** %Precedence, align 8
  %call14 = call i32 @red_SortSimplification(%struct.SORTTHEORY_HELP* %call13, %struct.CLAUSE_HELP* %18, i32 -1, i32 %19, i32* %20, i32* %21, %struct.CLAUSE_HELP** %NewClause)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.then
  %22 = load i32, i32* %DocProof, align 4
  %tobool16 = icmp ne i32 %22, 0
  br i1 %tobool16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.15
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call18 = call %struct.LIST_HELP* @list_Nil()
  %24 = load i32, i32* %OrigNum, align 4
  call void @red_CRwCalculateAdditionalParents(%struct.CLAUSE_HELP* %23, %struct.LIST_HELP* %call18, %struct.CLAUSE_HELP* null, i32 %24)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %if.then.15
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %cmp19 = icmp ne %struct.CLAUSE_HELP* %25, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %26)
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  store %struct.CLAUSE_HELP* %27, %struct.CLAUSE_HELP** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  store %struct.CLAUSE_HELP* %28, %struct.CLAUSE_HELP** %retval
  br label %return

if.end.21:                                        ; preds = %if.then
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %29)
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %entry
  %30 = load i32, i32* %Negative, align 4
  %tobool23 = icmp ne i32 %30, 0
  br i1 %tobool23, label %if.then.24, label %if.else.34

if.then.24:                                       ; preds = %if.end.22
  %31 = load i32, i32* %i.addr, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call25 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %32)
  %cmp26 = icmp sle i32 %31, %call25
  br i1 %cmp26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.then.24
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call28 = call %struct.LIST_HELP* @clause_CopyConstraint(%struct.CLAUSE_HELP* %33)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %NegLits, align 8
  br label %if.end.31

if.else.29:                                       ; preds = %if.then.24
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %35 = load i32, i32* %Except.addr, align 4
  %call30 = call %struct.LIST_HELP* @clause_CopyAntecedentExcept(%struct.CLAUSE_HELP* %34, i32 %35)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %NegLits, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.27
  %36 = load %struct.term*, %struct.term** %Atom, align 8
  %call32 = call %struct.term* @term_Copy(%struct.term* %36)
  %37 = bitcast %struct.term* %call32 to i8*
  %call33 = call %struct.LIST_HELP* @list_List(i8* %37)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %PosLits, align 8
  br label %if.end.38

if.else.34:                                       ; preds = %if.end.22
  %38 = load %struct.term*, %struct.term** %Atom, align 8
  %call35 = call %struct.term* @term_Copy(%struct.term* %38)
  %39 = bitcast %struct.term* %call35 to i8*
  %call36 = call %struct.LIST_HELP* @list_List(i8* %39)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %NegLits, align 8
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %41 = load i32, i32* %Except.addr, align 4
  %call37 = call %struct.LIST_HELP* @clause_CopySuccedentExcept(%struct.CLAUSE_HELP* %40, i32 %41)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %PosLits, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.34, %if.end.31
  %call39 = call %struct.LIST_HELP* @list_Nil()
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NegLits, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PosLits, align 8
  %44 = load i32*, i32** %Flags, align 8
  %45 = load i32*, i32** %Precedence, align 8
  %call40 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %call39, %struct.LIST_HELP* %42, %struct.LIST_HELP* %43, i32* %44, i32* %45)
  store %struct.CLAUSE_HELP* %call40, %struct.CLAUSE_HELP** %aux, align 8
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_SetTemporary(%struct.CLAUSE_HELP* %46)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NegLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %47)
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PosLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %48)
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %50 = load %struct.term*, %struct.term** %LeadingTerm.addr, align 8
  %51 = load i32*, i32** %Flags, align 8
  %52 = load i32*, i32** %Precedence, align 8
  %call41 = call i32 @red_PropagateDefinitions(%struct.CLAUSE_HELP* %49, %struct.term* %50, i32* %51, i32* %52)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.38
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %NewClause, align 8
  %call45 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %RedundantList, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call46 = call i32 @clause_Number(%struct.CLAUSE_HELP* %53)
  store i32 %call46, i32* %OrigNum, align 4
  %54 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %55 = load i32, i32* %Mode.addr, align 4
  %call47 = call i32 @red_SelectedStaticReductions(%struct.PROOFSEARCH_HELP* %54, %struct.CLAUSE_HELP** %aux, %struct.CLAUSE_HELP** %NewClause, %struct.LIST_HELP** %RedundantList, i32 %55)
  store i32 %call47, i32* %Redundant, align 4
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_SetTemporary(%struct.CLAUSE_HELP* %56)
  %57 = load i32, i32* %Redundant, align 4
  %tobool48 = icmp ne i32 %57, 0
  br i1 %tobool48, label %if.then.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.44
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call49 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %58)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.else.60, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %call51 = call i32 @cc_Tautology(%struct.CLAUSE_HELP* %59)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.else.60

if.then.53:                                       ; preds = %land.lhs.true, %if.end.44
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %cmp54 = icmp ne %struct.CLAUSE_HELP* %60, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.53
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %61, %struct.CLAUSE_HELP* %62)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.53
  %63 = load i32, i32* %DocProof, align 4
  %tobool57 = icmp ne i32 %63, 0
  br i1 %tobool57, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %if.end.56
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantList, align 8
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %67 = load i32, i32* %OrigNum, align 4
  call void @red_CRwCalculateAdditionalParents(%struct.CLAUSE_HELP* %64, %struct.LIST_HELP* %65, %struct.CLAUSE_HELP* %66, i32 %67)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.58, %if.end.56
  br label %if.end.61

if.else.60:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %68)
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %aux, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.60, %if.end.59
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantList, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %69)
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %aux, align 8
  store %struct.CLAUSE_HELP* %70, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.else, %if.then.20
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %71
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_DeleteStore(i32* %Store) #2 {
entry:
  %Store.addr = alloca i32*, align 8
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load i32*, i32** %Store.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @memory_Free(i8* %1, i32 384)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CleanStore(i32* %Store) #2 {
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
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #2 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #2 {
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i32 0, i32 0), i32 %4, i8* %call2)
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.33, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #1

declare i8* @flag_Name(i32) #1

declare i32 @flag_Maximum(i32) #1

; Function Attrs: nounwind uwtable
define internal void @red_CRwCalculateAdditionalParents(%struct.CLAUSE_HELP* %Reduced, %struct.LIST_HELP* %RedundantClauses, %struct.CLAUSE_HELP* %Subsumer, i32 %OriginalClauseNumber) #0 {
entry:
  %Reduced.addr = alloca %struct.CLAUSE_HELP*, align 8
  %RedundantClauses.addr = alloca %struct.LIST_HELP*, align 8
  %Subsumer.addr = alloca %struct.CLAUSE_HELP*, align 8
  %OriginalClauseNumber.addr = alloca i32, align 4
  %Parents = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ActNum = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Reduced, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  store %struct.LIST_HELP* %RedundantClauses, %struct.LIST_HELP** %RedundantClauses.addr, align 8
  store %struct.CLAUSE_HELP* %Subsumer, %struct.CLAUSE_HELP** %Subsumer.addr, align 8
  store i32 %OriginalClauseNumber, i32* %OriginalClauseNumber.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Parents, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %1, %struct.LIST_HELP* %call1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  %call4 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call5 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Parents, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer.addr, align 8
  %call7 = call i32 @clause_Number(%struct.CLAUSE_HELP* %9)
  %conv = sext i32 %call7 to i64
  %10 = inttoptr i64 %conv to i8*
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %10, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Parents, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %13 = load i32, i32* %OriginalClauseNumber.addr, align 4
  %conv9 = sext i32 %13 to i64
  %14 = inttoptr i64 %conv9 to i8*
  %call10 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %12, i8* %14)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Parents, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RedundantClauses.addr, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %if.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.11
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call16 to %struct.CLAUSE_HELP*
  %call17 = call i32 @clause_Number(%struct.CLAUSE_HELP* %18)
  store i32 %call17, i32* %ActNum, align 4
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %20 = load i32, i32* %ActNum, align 4
  %conv18 = sext i32 %20 to i64
  %21 = inttoptr i64 %conv18 to i8*
  %call19 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %19, i8* %21)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Parents, align 8
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.11

for.end.22:                                       ; preds = %for.cond.11
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call23 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Parents, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %24, %struct.LIST_HELP* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call24 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Parents, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.30, %for.end.22
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  br i1 %lnot28, label %for.body.29, label %for.end.32

for.body.29:                                      ; preds = %for.cond.25
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %29, i8* null)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.29
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.25

for.end.32:                                       ; preds = %for.cond.25
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  %call33 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %31)
  call void @list_Delete(%struct.LIST_HELP* %call33)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Reduced.addr, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %32, %struct.LIST_HELP* %33)
  ret void
}

declare %struct.LIST_HELP* @clause_CopyConstraint(%struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @clause_CopyAntecedentExcept(%struct.CLAUSE_HELP*, i32) #1

declare %struct.LIST_HELP* @clause_CopySuccedentExcept(%struct.CLAUSE_HELP*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @red_PropagateDefinitions(%struct.CLAUSE_HELP* %Clause, %struct.term* %LeadingTerm, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %LeadingTerm.addr = alloca %struct.term*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %Atom = alloca %struct.term*, align 8
  %Var = alloca i32, align 4
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %j = alloca i32, align 4
  %lj = alloca i32, align 4
  %success = alloca i32, align 4
  %applied = alloca i32, align 4
  %litsToRemove = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %LeadingTerm, %struct.term** %LeadingTerm.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %applied, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %litsToRemove, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %last, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.61, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.63

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %Lit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call4 = call i32 @red_LiteralIsDefinition(%struct.LITERAL_HELP* %6)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.60

if.then:                                          ; preds = %for.body
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call5 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %7)
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %call5)
  store %struct.term* %call6, %struct.term** %Term, align 8
  %8 = load %struct.term*, %struct.term** %Term, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %9 = load %struct.term*, %struct.term** %Term, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %9)
  store i32 %call10, i32* %Var, align 4
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call11 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %10)
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %call11)
  store %struct.term* %call12, %struct.term** %Term, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call13 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  %call14 = call %struct.term* @term_SecondArgument(%struct.term* %call13)
  %call15 = call i32 @term_TopSymbol(%struct.term* %call14)
  store i32 %call15, i32* %Var, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  call void @cont_StartBinding()
  %call16 = call %struct.binding* @cont_LeftContext()
  %12 = load i32, i32* %Var, align 4
  %call17 = call %struct.binding* @cont_InstanceContext()
  %13 = load %struct.term*, %struct.term** %Term, align 8
  %call18 = call i32 @cont_CreateBinding(%struct.binding* %call16, i32 %12, %struct.binding* %call17, %struct.term* %13)
  store i32 1, i32* %success, align 4
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %Lit, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call19 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %14)
  store i32 %call19, i32* %lj, align 4
  %call20 = call i32 @clause_FirstLitIndex()
  store i32 %call20, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.end
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %lj, align 4
  %cmp22 = icmp sle i32 %15, %16
  br i1 %cmp22, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.21
  %17 = load i32, i32* %success, align 4
  %tobool23 = icmp ne i32 %17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.21
  %18 = phi i1 [ false, %for.cond.21 ], [ %tobool23, %land.rhs ]
  br i1 %18, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %land.end
  %19 = load i32, i32* %j, align 4
  %20 = load i32, i32* %i, align 4
  %cmp25 = icmp ne i32 %19, %20
  br i1 %cmp25, label %if.then.26, label %if.end.54

if.then.26:                                       ; preds = %for.body.24
  store i32 0, i32* %success, align 4
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %22 = load i32, i32* %j, align 4
  %call27 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %21, i32 %22)
  store %struct.LITERAL_HELP* %call27, %struct.LITERAL_HELP** %Lit, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call28 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %23)
  store %struct.term* %call28, %struct.term** %Atom, align 8
  %24 = load %struct.term*, %struct.term** %Atom, align 8
  %call29 = call i32 @fol_IsEquality(%struct.term* %24)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.46

if.then.31:                                       ; preds = %if.then.26
  %call32 = call %struct.binding* @cont_InstanceContext()
  %25 = load %struct.term*, %struct.term** %LeadingTerm.addr, align 8
  %call33 = call %struct.binding* @cont_LeftContext()
  %26 = load %struct.term*, %struct.term** %Atom, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %26)
  %27 = load i32*, i32** %Flags.addr, align 8
  %28 = load i32*, i32** %Precedence.addr, align 8
  %call35 = call i32 @ord_ContGreater(%struct.binding* %call32, %struct.term* %25, %struct.binding* %call33, %struct.term* %call34, i32* %27, i32* %28)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true, label %if.end.45

land.lhs.true:                                    ; preds = %if.then.31
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call37 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %29)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.44, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call39 = call %struct.binding* @cont_InstanceContext()
  %30 = load %struct.term*, %struct.term** %LeadingTerm.addr, align 8
  %call40 = call %struct.binding* @cont_LeftContext()
  %31 = load %struct.term*, %struct.term** %Atom, align 8
  %call41 = call %struct.term* @term_SecondArgument(%struct.term* %31)
  %32 = load i32*, i32** %Flags.addr, align 8
  %33 = load i32*, i32** %Precedence.addr, align 8
  %call42 = call i32 @ord_ContGreater(%struct.binding* %call39, %struct.term* %30, %struct.binding* %call40, %struct.term* %call41, i32* %32, i32* %33)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, i32* %success, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %lor.lhs.false, %if.then.31
  br label %if.end.53

if.else.46:                                       ; preds = %if.then.26
  %call47 = call %struct.binding* @cont_InstanceContext()
  %34 = load %struct.term*, %struct.term** %LeadingTerm.addr, align 8
  %call48 = call %struct.binding* @cont_LeftContext()
  %35 = load %struct.term*, %struct.term** %Atom, align 8
  %36 = load i32*, i32** %Flags.addr, align 8
  %37 = load i32*, i32** %Precedence.addr, align 8
  %call49 = call i32 @ord_ContGreater(%struct.binding* %call47, %struct.term* %34, %struct.binding* %call48, %struct.term* %35, i32* %36, i32* %37)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.else.46
  store i32 1, i32* %success, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.else.46
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.end.45
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %38 = load i32, i32* %j, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.21

for.end:                                          ; preds = %land.end
  %call55 = call i32 @cont_BackTrack()
  %39 = load i32, i32* %success, align 4
  %tobool56 = icmp ne i32 %39, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %for.end
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %41 = load i32, i32* %Var, align 4
  %42 = load %struct.term*, %struct.term** %Term, align 8
  call void @clause_ReplaceVariable(%struct.CLAUSE_HELP* %40, i32 %41, %struct.term* %42)
  %43 = load i32, i32* %i, align 4
  %conv = sext i32 %43 to i64
  %44 = inttoptr i64 %conv to i8*
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litsToRemove, align 8
  %call58 = call %struct.LIST_HELP* @list_Cons(i8* %44, %struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %litsToRemove, align 8
  store i32 1, i32* %applied, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %for.end
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %46 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %46, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond

for.end.63:                                       ; preds = %for.cond
  %47 = load i32, i32* %applied, align 4
  %tobool64 = icmp ne i32 %47, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.end.63
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litsToRemove, align 8
  %50 = load i32*, i32** %Flags.addr, align 8
  %51 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %48, %struct.LIST_HELP* %49, i32* %50, i32* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litsToRemove, align 8
  call void @list_Delete(%struct.LIST_HELP* %52)
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %54 = load i32*, i32** %Flags.addr, align 8
  %55 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientEqualities(%struct.CLAUSE_HELP* %53, i32* %54, i32* %55)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %for.end.63
  %56 = load i32, i32* %applied, align 4
  ret i32 %56
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #2 {
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
  br i1 %tobool2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Result, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %List1.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %List1.addr, align 8
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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define internal i32 @red_LiteralIsDefinition(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %retval = alloca i32, align 4
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call, %struct.term** %Atom, align 8
  %1 = load %struct.term*, %struct.term** %Atom, align 8
  %call1 = call i32 @fol_IsEquality(%struct.term* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call2 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.else, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %3 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call %struct.term* @term_FirstArgument(%struct.term* %3)
  %call6 = call i32 @term_IsVariable(%struct.term* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4
  %4 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %call9 = call i32 @term_IsVariable(%struct.term* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %lor.lhs.false, %land.lhs.true.4
  %5 = load %struct.term*, %struct.term** %Atom, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call13 = call %struct.term* @term_SecondArgument(%struct.term* %6)
  %call14 = call i32 @term_VariableEqual(%struct.term* %call12, %struct.term* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.11, %lor.lhs.false, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_CreateBinding(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #2 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %CTerm.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.binding* %CTerm, %struct.binding** %CTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %2 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @cont_CreateBindingHelp(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  %4 = load i32, i32* @cont_BINDINGS, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @cont_BINDINGS, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #2 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
}

declare void @clause_ReplaceVariable(%struct.CLAUSE_HELP*, i32, %struct.term*) #1

declare i32 @term_VariableEqual(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_CreateBindingHelp(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #2 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  %CTerm.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.binding* %CTerm, %struct.binding** %CTerm.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_Binding(%struct.binding* %0, i32 %1)
  store %struct.binding* %call, %struct.binding** @cont_CURRENTBINDING, align 8
  %2 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @cont_SetBindingTerm(%struct.binding* %2, %struct.term* %3)
  %4 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %5 = load %struct.binding*, %struct.binding** %CTerm.addr, align 8
  call void @cont_SetBindingContext(%struct.binding* %4, %struct.binding* %5)
  %6 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  %call1 = call %struct.binding* @cont_LastBinding()
  call void @cont_SetBindingLink(%struct.binding* %6, %struct.binding* %call1)
  %7 = load %struct.binding*, %struct.binding** @cont_CURRENTBINDING, align 8
  call void @cont_SetLastBinding(%struct.binding* %7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_Binding(%struct.binding* %C, i32 %Var) #2 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  ret %struct.binding* %arrayidx
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromContextualRewriting(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 22, i32* %origin, align 4
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

declare %struct.LIST_HELP* @sort_ComputeSortNoResidues(%struct.SORTTHEORY_HELP*, %struct.term*, %struct.CLAUSE_HELP*, i32, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @sort_PairSort(%struct.LIST_HELP* %Pair) #2 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairFirst(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %C) #2 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %clauses = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauses, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @sort_PairCondition(%struct.LIST_HELP* %Pair) #2 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairSecond(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @sort_ConditionPutClauses(%struct.CONDITION_HELP* %C, %struct.LIST_HELP* %Clauses) #2 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %clauses = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %1, i32 0, i32 4
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %clauses, align 8
  ret void
}

declare %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP*, i32) #1

declare %struct.CONDITION_HELP* @sort_TheoryIsSubsortOfNoResidues(%struct.SORTTHEORY_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

declare void @sort_ConditionDelete(%struct.CONDITION_HELP*) #1

declare void @clause_DeleteLiteral(%struct.CLAUSE_HELP*, i32, i32*, i32*) #1

declare void @sort_DeleteSortPair(%struct.LIST_HELP*) #1

declare void @sort_Delete(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define internal void @red_DocumentSortSimplification(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Indexes, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indexes.addr = alloca %struct.LIST_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Declarations = alloca %struct.LIST_HELP*, align 8
  %Self = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Indexes, %struct.LIST_HELP** %Indexes.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Declarations, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Self, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_Number(%struct.CLAUSE_HELP* %4)
  %conv = sext i32 %call5 to i64
  %5 = inttoptr i64 %conv to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Self, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Self, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.20, %for.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body.12, label %for.end.22

for.body.12:                                      ; preds = %for.cond.8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  %call14 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %11)
  %conv15 = sext i32 %call14 to i64
  %12 = inttoptr i64 %conv15 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Declarations, align 8
  %call16 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Declarations, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call17 to %struct.CLAUSE_HELP*
  %call18 = call i32 @clause_Number(%struct.CLAUSE_HELP* %16)
  %conv19 = sext i32 %call18 to i64
  %17 = inttoptr i64 %conv19 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %14, i8* %17)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.12
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.8

for.end.22:                                       ; preds = %for.cond.8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indexes.addr, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Declarations, align 8
  %call23 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %20, %struct.LIST_HELP* %21)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %19, %struct.LIST_HELP* %call23)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Self, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call24 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %23, %struct.LIST_HELP* %24)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %22, %struct.LIST_HELP* %call24)
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call25 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %25, i32 %call25)
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromSortSimplification(%struct.CLAUSE_HELP* %26)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSortSimplification(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 20, i32* %origin, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LITERAL_HELP* @red_GetMRResLit(%struct.LITERAL_HELP* %ActLit, %struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %retval = alloca %struct.LITERAL_HELP*, align 8
  %ActLit.addr = alloca %struct.LITERAL_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %ActClause = alloca %struct.CLAUSE_HELP*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  store %struct.LITERAL_HELP* %ActLit, %struct.LITERAL_HELP** %ActLit.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %NextLit, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %0)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %ActClause, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call1 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %1)
  store i32 %call1, i32* %i, align 4
  %call2 = call %struct.binding* @cont_LeftContext()
  %2 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call3 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %2)
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %3)
  %call5 = call i8* @st_ExistGen(%struct.binding* %call2, %struct.st* %call3, %struct.term* %call4)
  %4 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %4, %struct.term** %CandTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %5 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool = icmp ne %struct.term* %5, null
  br i1 %tobool, label %while.body, label %while.end.28

while.body:                                       ; preds = %while.cond
  %6 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call6 = call i32 @term_IsVariable(%struct.term* %6)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.26, label %if.then

if.then:                                          ; preds = %while.body
  %7 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call8 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %LitScan, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.24, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body.12, label %while.end

while.body.12:                                    ; preds = %while.cond.9
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call13 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %10, %struct.LITERAL_HELP** %NextLit, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call14 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %11, %struct.LITERAL_HELP* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %while.body.12
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call17 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %13)
  %call18 = call i32 @clause_Length(%struct.CLAUSE_HELP* %call17)
  %cmp = icmp eq i32 %call18, 1
  br i1 %cmp, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.16
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call19 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ActClause, align 8
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call20 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %16)
  %17 = load i32, i32* %i, align 4
  %call21 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %call19, %struct.CLAUSE_HELP* %15, i32 %call20, i32 %17)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %lor.lhs.false, %if.then.16
  call void @st_CancelExistRetrieval()
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  store %struct.LITERAL_HELP* %18, %struct.LITERAL_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %while.body.12
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %LitScan, align 8
  br label %while.cond.9

while.end:                                        ; preds = %while.cond.9
  br label %if.end.26

if.end.26:                                        ; preds = %while.end, %while.body
  %call27 = call i8* @st_NextCandidate()
  %20 = bitcast i8* %call27 to %struct.term*
  store %struct.term* %20, %struct.term** %CandTerm, align 8
  br label %while.cond

while.end.28:                                     ; preds = %while.cond
  store %struct.LITERAL_HELP* null, %struct.LITERAL_HELP** %retval
  br label %return

return:                                           ; preds = %while.end.28, %if.then.23
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %retval
  ret %struct.LITERAL_HELP* %21
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralExists(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %cmp = icmp ne %struct.LITERAL_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @red_DocumentMatchingReplacementResolution(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %LitInds, %struct.LIST_HELP* %ClauseNums, %struct.LIST_HELP* %PLitInds) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %LitInds.addr = alloca %struct.LIST_HELP*, align 8
  %ClauseNums.addr = alloca %struct.LIST_HELP*, align 8
  %PLitInds.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %LitInds, %struct.LIST_HELP** %LitInds.addr, align 8
  store %struct.LIST_HELP* %ClauseNums, %struct.LIST_HELP** %ClauseNums.addr, align 8
  store %struct.LIST_HELP* %PLitInds, %struct.LIST_HELP** %PLitInds.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Help, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitInds.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %2)
  %conv = sext i32 %call2 to i64
  %3 = inttoptr i64 %conv to i8*
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %call3 = call %struct.LIST_HELP* @list_Cons(i8* %3, %struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Help, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %6)
  call void @list_Delete(%struct.LIST_HELP* %call5)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %7)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseNums.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %9, %struct.LIST_HELP* %10)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %8, %struct.LIST_HELP* %call7)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitInds.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLitInds.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %12, %struct.LIST_HELP* %13)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %11, %struct.LIST_HELP* %call8)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %14, i32 %call9)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromMatchingReplacementResolution(%struct.CLAUSE_HELP* %15)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP* %L2) #2 {
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
define internal void @clause_SetFromMatchingReplacementResolution(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 23, i32* %origin, align 4
  ret void
}

declare i8* @st_ExistUnifier(%struct.binding*, %struct.st*, %struct.binding*, %struct.term*) #1

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #2 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

declare %struct.LIST_HELP* @list_Reverse(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_Free(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @red_DocumentUnitConflict(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %LitInds, %struct.LIST_HELP* %ClauseNums, %struct.LIST_HELP* %PLitInds) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %LitInds.addr = alloca %struct.LIST_HELP*, align 8
  %ClauseNums.addr = alloca %struct.LIST_HELP*, align 8
  %PLitInds.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %LitInds, %struct.LIST_HELP** %LitInds.addr, align 8
  store %struct.LIST_HELP* %ClauseNums, %struct.LIST_HELP** %ClauseNums.addr, align 8
  store %struct.LIST_HELP* %PLitInds, %struct.LIST_HELP** %PLitInds.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  call void @list_Delete(%struct.LIST_HELP* %call)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %1)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %3)
  %conv = sext i32 %call2 to i64
  %4 = inttoptr i64 %conv to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseNums.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call3, %struct.LIST_HELP* %5)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %2, %struct.LIST_HELP* %call4)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitInds.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLitInds.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %7, %struct.LIST_HELP* %8)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %6, %struct.LIST_HELP* %call5)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_IncreaseCounter()
  call void @clause_SetNumber(%struct.CLAUSE_HELP* %9, i32 %call6)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFromUnitConflict(%struct.CLAUSE_HELP* %10)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromUnitConflict(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 24, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
}

declare i8* @st_ExistInstance(%struct.binding*, %struct.st*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsFromConstraint(%struct.LITERAL_HELP* %Literal) #2 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %index = alloca i32, align 4
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %1)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %clause, align 8
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call2 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %2, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %index, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call3 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %5)
  %cmp4 = icmp sge i32 %4, %call3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %Literal) #2 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %index = alloca i32, align 4
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %1)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %clause, align 8
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call2 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %2, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %index, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call3 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %5)
  %cmp4 = icmp sge i32 %4, %call3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %Literal) #2 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %index = alloca i32, align 4
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %0)
  store i32 %call, i32* %index, align 4
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %1)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %clause, align 8
  %2 = load i32, i32* %index, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call2 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %2, %call2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %4 = load i32, i32* %index, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call3 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  %cmp4 = icmp sge i32 %4, %call3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp4, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsNotOrientedEquality(%struct.LITERAL_HELP* %L) #2 {
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

declare void @split_DeleteClauseAtLevel(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #1

declare void @prfs_MoveWorkedOffDocProof(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @prfs_DeleteWorkedOff(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @prfs_DeleteUsable(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #2 {
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
define internal void @clause_RemoveFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #2 {
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
define internal %struct.LIST_HELP* @red_GetBackMRResLits(%struct.CLAUSE_HELP* %Clause, %struct.LITERAL_HELP* %ActLit, %struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ActLit.addr = alloca %struct.LITERAL_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %PClause = alloca %struct.CLAUSE_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %PClLits = alloca %struct.LIST_HELP*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LITERAL_HELP* %ActLit, %struct.LITERAL_HELP** %ActLit.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %PClLits, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call1 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %0)
  store i32 %call1, i32* %i, align 4
  %call2 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call3 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %1)
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %2)
  %call5 = call i8* @st_ExistInstance(%struct.binding* %call2, %struct.st* %call3, %struct.term* %call4)
  %3 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %3, %struct.term** %CandTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %4 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool = icmp ne %struct.term* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call6 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call9 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %8, %struct.LITERAL_HELP** %PLit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call10 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %9)
  store %struct.CLAUSE_HELP* %call10, %struct.CLAUSE_HELP** %PClause, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call11 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %12, %struct.LITERAL_HELP* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.end

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PClause, align 8
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call14 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %17)
  %call15 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %14, %struct.CLAUSE_HELP* %15, i32 %16, i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.13
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %19 = bitcast %struct.LITERAL_HELP* %18 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClLits, align 8
  %call17 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %PClLits, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.13, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call19 = call i8* @st_NextCandidate()
  %22 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %22, %struct.term** %CandTerm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClLits, align 8
  ret %struct.LIST_HELP* %23
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_LiteralRewriting(%struct.CLAUSE_HELP* %RedClause, %struct.LITERAL_HELP* %ActLit, i32 %ri, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %Result) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ActLit.addr = alloca %struct.LITERAL_HELP*, align 8
  %ri.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %TermS = alloca %struct.term*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %Blocked = alloca %struct.LIST_HELP*, align 8
  %LitList = alloca %struct.LIST_HELP*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %pli = alloca i32, align 4
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.LITERAL_HELP* %ActLit, %struct.LITERAL_HELP** %ActLit.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Blocked, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %call1)
  store %struct.term* %call2, %struct.term** %TermS, align 8
  %call3 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call4 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %1)
  %2 = load %struct.term*, %struct.term** %TermS, align 8
  %call5 = call i8* @st_ExistInstance(%struct.binding* %call3, %struct.st* %call4, %struct.term* %2)
  %3 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %3, %struct.term** %CandTerm, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.33, %entry
  %4 = load %struct.term*, %struct.term** %CandTerm, align 8
  %tobool = icmp ne %struct.term* %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call6 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.33, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %6 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %6)
  %call9 = call i32 @symbol_IsPredicate(i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.33, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.term*, %struct.term** %CandTerm, align 8
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call11 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %7, %struct.SHARED_INDEX_NODE* %8)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call14 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %11, %struct.LITERAL_HELP** %PartnerLit, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call15 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %12)
  store i32 %call15, i32* %pli, align 4
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call16 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %13)
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %call17 = call i32 @clause_Number(%struct.CLAUSE_HELP* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call18 = call i32 @clause_Number(%struct.CLAUSE_HELP* %15)
  %cmp = icmp ne i32 %call17, %call18
  br i1 %cmp, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %for.body
  %16 = load i32, i32* %pli, align 4
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call20 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %17)
  %cmp21 = icmp sge i32 %16, %call20
  br i1 %cmp21, label %land.lhs.true.22, label %if.end

land.lhs.true.22:                                 ; preds = %land.lhs.true.19
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %20 = bitcast %struct.CLAUSE_HELP* %19 to i8*
  %call23 = call i32 @list_PointerMember(%struct.LIST_HELP* %18, i8* %20)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end, label %land.lhs.true.25

land.lhs.true.25:                                 ; preds = %land.lhs.true.22
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %23 = load i32, i32* %ri.addr, align 4
  %24 = load i32, i32* %pli, align 4
  %call26 = call i32 @subs_SubsumesBasic(%struct.CLAUSE_HELP* %21, %struct.CLAUSE_HELP* %22, i32 %23, i32 %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true.25
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %26 = bitcast %struct.CLAUSE_HELP* %25 to i8*
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Blocked, align 8
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call30 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %28)
  store %struct.CLAUSE_HELP* %call30, %struct.CLAUSE_HELP** %Copy, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %29, i32 1)
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %31 = load i32, i32* %ri.addr, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %33 = load i32, i32* %pli, align 4
  %34 = load %struct.term*, %struct.term** %CandTerm, align 8
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  call void @red_ApplyRewriting(%struct.CLAUSE_HELP* %30, i32 %31, %struct.CLAUSE_HELP* %32, i32 %33, %struct.term* %34, i32* %35, i32* %36)
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %38 = bitcast %struct.CLAUSE_HELP* %37 to i8*
  %39 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %39, align 8
  %call31 = call %struct.LIST_HELP* @list_Cons(i8* %38, %struct.LIST_HELP* %40)
  %41 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %41, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true.25, %land.lhs.true.22, %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call32 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %land.lhs.true, %while.body
  %call34 = call i8* @st_NextCandidate()
  %43 = bitcast i8* %call34 to %struct.term*
  store %struct.term* %43, %struct.term** %CandTerm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  ret %struct.LIST_HELP* %44
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsPredicate(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsSignature(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Type(i32 %1)
  %cmp = icmp eq i32 %call1, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare %struct.LIST_HELP* @sharing_GetDataList(%struct.term*, %struct.SHARED_INDEX_NODE*) #1

; Function Attrs: nounwind uwtable
define internal void @red_ApplyRewriting(%struct.CLAUSE_HELP* %RuleCl, i32 %ri, %struct.CLAUSE_HELP* %PartnerClause, i32 %pli, %struct.term* %PartnerTermS, i32* %Flags, i32* %Precedence) #0 {
entry:
  %RuleCl.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ri.addr = alloca i32, align 4
  %PartnerClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %pli.addr = alloca i32, align 4
  %PartnerTermS.addr = alloca %struct.term*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %ReplaceTermT = alloca %struct.term*, align 8
  %NewAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %RuleCl, %struct.CLAUSE_HELP** %RuleCl.addr, align 8
  store i32 %ri, i32* %ri.addr, align 4
  store %struct.CLAUSE_HELP* %PartnerClause, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  store i32 %pli, i32* %pli.addr, align 4
  store %struct.term* %PartnerTermS, %struct.term** %PartnerTermS.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %2 = load i32, i32* %pli.addr, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCl.addr, align 8
  %4 = load i32, i32* %ri.addr, align 4
  call void @red_DocumentRewriting(%struct.CLAUSE_HELP* %1, i32 %2, %struct.CLAUSE_HELP* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %5, i32 13)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCl.addr, align 8
  %call5 = call i32 @clause_Number(%struct.CLAUSE_HELP* %8)
  %9 = load i32, i32* %ri.addr, align 4
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %call5, i32 %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %11 = load i32, i32* %pli.addr, align 4
  %call8 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  store %struct.LITERAL_HELP* %call8, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call9 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCl.addr, align 8
  %13 = load i32, i32* %ri.addr, align 4
  %call10 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %12, i32 %13)
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %call10)
  %call12 = call %struct.term* @term_Copy(%struct.term* %call11)
  %call13 = call %struct.term* @cont_ApplyBindingsModuloMatchingReverse(%struct.binding* %call9, %struct.term* %call12)
  store %struct.term* %call13, %struct.term** %ReplaceTermT, align 8
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call14 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %14)
  store %struct.term* %call14, %struct.term** %NewAtom, align 8
  %15 = load %struct.term*, %struct.term** %NewAtom, align 8
  %16 = load %struct.term*, %struct.term** %PartnerTermS.addr, align 8
  %17 = load %struct.term*, %struct.term** %ReplaceTermT, align 8
  %call15 = call i32 @term_ReplaceSubtermBy(%struct.term* %15, %struct.term* %16, %struct.term* %17)
  %18 = load %struct.term*, %struct.term** %ReplaceTermT, align 8
  call void @term_Delete(%struct.term* %18)
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %20 = load i32*, i32** %Flags.addr, align 8
  %21 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %19, i32* %20, i32* %21)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleCl.addr, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %22, %struct.CLAUSE_HELP* %23)
  %24 = load i32*, i32** %Flags.addr, align 8
  %call16 = call i32 @flag_GetFlagValue(i32* %24, i32 13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.7
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.end.7
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsSignature(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  call void @symbol_CheckNoVariable(i32 %0)
  %1 = load i32, i32* %ActSymbol.addr, align 4
  %sub = sub nsw i32 0, %1
  %2 = load i32, i32* @symbol_TYPEMASK, align 4
  %and = and i32 %sub, %2
  ret i32 %and
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

declare %struct.term* @cont_ApplyBindingsModuloMatchingReverse(%struct.binding*, %struct.term*) #1

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @red_BackCRwOnLiteral(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %RuleClause, %struct.LITERAL_HELP* %Lit, i32 %i, i32 %Mode, %struct.LIST_HELP** %Result) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %RuleClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Mode.addr = alloca i32, align 4
  %Result.addr = alloca %struct.LIST_HELP**, align 8
  %TermS = alloca %struct.term*, align 8
  %CandTerm = alloca %struct.term*, align 8
  %ReplaceTermT = alloca %struct.term*, align 8
  %Inst = alloca %struct.LIST_HELP*, align 8
  %Blocked = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %ShIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %LitList = alloca %struct.LIST_HELP*, align 8
  %RedLit = alloca %struct.LITERAL_HELP*, align 8
  %RedClause = alloca %struct.CLAUSE_HELP*, align 8
  %HelpClause = alloca %struct.CLAUSE_HELP*, align 8
  %ri = alloca i32, align 4
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %PClauses = alloca %struct.LIST_HELP*, align 8
  %PLits = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %RuleClause, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %Mode, i32* %Mode.addr, align 4
  store %struct.LIST_HELP** %Result, %struct.LIST_HELP*** %Result.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32, i32* %Mode.addr, align 4
  %call2 = call i32 @red_WorkedOffMode(i32 %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %3)
  store %struct.SHARED_INDEX_NODE* %call3, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %4)
  store %struct.SHARED_INDEX_NODE* %call4, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Blocked, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call6 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %5)
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %call6)
  store %struct.term* %call7, %struct.term** %TermS, align 8
  %call8 = call %struct.binding* @cont_LeftContext()
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %call9 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %6)
  %7 = load %struct.term*, %struct.term** %TermS, align 8
  %call10 = call %struct.LIST_HELP* @st_GetInstance(%struct.binding* %call8, %struct.st* %call9, %struct.term* %7)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Inst, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.83, %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Inst, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end.85

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Inst, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %10, %struct.term** %CandTerm, align 8
  %11 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call14 = call i32 @term_IsVariable(%struct.term* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.82, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call16 = call i32 @term_TopSymbol(%struct.term* %12)
  %call17 = call i32 @symbol_IsPredicate(i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.82, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true
  %13 = load %struct.term*, %struct.term** %CandTerm, align 8
  %14 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %call20 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %13, %struct.SHARED_INDEX_NODE* %14)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.then.19
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call26 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %17, %struct.LITERAL_HELP** %RedLit, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RedLit, align 8
  %call27 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %18)
  store i32 %call27, i32* %ri, align 4
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %RedLit, align 8
  %call28 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %19)
  store %struct.CLAUSE_HELP* %call28, %struct.CLAUSE_HELP** %RedClause, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %HelpClause, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call29 = call i32 @clause_Number(%struct.CLAUSE_HELP* %20)
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call30 = call i32 @clause_Number(%struct.CLAUSE_HELP* %21)
  %cmp = icmp ne i32 %call29, %call30
  br i1 %cmp, label %land.lhs.true.31, label %if.end.80

land.lhs.true.31:                                 ; preds = %for.body.25
  %22 = load i32, i32* %ri, align 4
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call32 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %23)
  %cmp33 = icmp sge i32 %22, %call32
  br i1 %cmp33, label %land.lhs.true.34, label %if.end.80

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %26 = bitcast %struct.CLAUSE_HELP* %25 to i8*
  %call35 = call i32 @list_PointerMember(%struct.LIST_HELP* %24, i8* %26)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.80, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %27 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %29 = load i32, i32* %ri, align 4
  %30 = load %struct.term*, %struct.term** %CandTerm, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %32 = load i32, i32* %i.addr, align 4
  %33 = load i32, i32* %Mode.addr, align 4
  %call38 = call i32 @red_CRwTautologyCheck(%struct.PROOFSEARCH_HELP* %27, %struct.CLAUSE_HELP* %28, i32 %29, %struct.term* %30, %struct.CLAUSE_HELP* %31, i32 %32, i32 %33, %struct.CLAUSE_HELP** %HelpClause)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.80

if.then.40:                                       ; preds = %land.lhs.true.37
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %35 = bitcast %struct.CLAUSE_HELP* %34 to i8*
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  %call41 = call %struct.LIST_HELP* @list_Cons(i8* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Blocked, align 8
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  %call42 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %37)
  store %struct.CLAUSE_HELP* %call42, %struct.CLAUSE_HELP** %Copy, align 8
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %38, i32 1)
  call void @cont_StartBinding()
  %call43 = call %struct.binding* @cont_LeftContext()
  %39 = load %struct.term*, %struct.term** %TermS, align 8
  %40 = load %struct.term*, %struct.term** %CandTerm, align 8
  %call44 = call i32 @unify_MatchBindings(%struct.binding* %call43, %struct.term* %39, %struct.term* %40)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.47, label %if.then.46

if.then.46:                                       ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.then.40
  %call48 = call %struct.binding* @cont_LeftContext()
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %42 = load i32, i32* %i.addr, align 4
  %call49 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %41, i32 %42)
  %call50 = call %struct.term* @term_SecondArgument(%struct.term* %call49)
  %call51 = call %struct.term* @term_Copy(%struct.term* %call50)
  %call52 = call %struct.term* @cont_ApplyBindingsModuloMatching(%struct.binding* %call48, %struct.term* %call51, i32 1)
  store %struct.term* %call52, %struct.term** %ReplaceTermT, align 8
  %call53 = call i32 @cont_BackTrack()
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %44 = load i32, i32* %ri, align 4
  %call54 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %43, i32 %44)
  %45 = load %struct.term*, %struct.term** %CandTerm, align 8
  %46 = load %struct.term*, %struct.term** %ReplaceTermT, align 8
  %call55 = call i32 @term_ReplaceSubtermBy(%struct.term* %call54, %struct.term* %45, %struct.term* %46)
  %47 = load %struct.term*, %struct.term** %ReplaceTermT, align 8
  call void @term_Delete(%struct.term* %47)
  %48 = load i32*, i32** %Flags, align 8
  %call56 = call i32 @flag_GetFlagValue(i32* %48, i32 9)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.end.68

if.then.58:                                       ; preds = %if.end.47
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %cmp59 = icmp ne %struct.CLAUSE_HELP* %49, null
  br i1 %cmp59, label %if.then.60, label %if.else.65

if.then.60:                                       ; preds = %if.then.58
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call61 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %50)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %PClauses, align 8
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call62 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %51)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %PLits, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call63 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %52, %struct.LIST_HELP* %call63)
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %call64 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %53, %struct.LIST_HELP* %call64)
  br label %if.end.67

if.else.65:                                       ; preds = %if.then.58
  %call66 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %PLits, align 8
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %PClauses, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.60
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %55 = load i32, i32* %ri, align 4
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %57 = load i32, i32* %i.addr, align 4
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PClauses, align 8
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PLits, align 8
  call void @red_DocumentContextualRewriting(%struct.CLAUSE_HELP* %54, i32 %55, %struct.CLAUSE_HELP* %56, i32 %57, %struct.LIST_HELP* %58, %struct.LIST_HELP* %59)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.47
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %60, %struct.CLAUSE_HELP* %61)
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  %cmp69 = icmp ne %struct.CLAUSE_HELP* %62, null
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.68
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  call void @clause_UpdateSplitDataFromPartner(%struct.CLAUSE_HELP* %63, %struct.CLAUSE_HELP* %64)
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HelpClause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %65)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.68
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %67 = load i32*, i32** %Flags, align 8
  %68 = load i32*, i32** %Precedence, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %66, i32* %67, i32* %68)
  %69 = load i32*, i32** %Flags, align 8
  %call72 = call i32 @flag_GetFlagValue(i32* %69, i32 14)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %if.end.71
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %70)
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %71)
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RuleClause.addr, align 8
  %call76 = call i32 @clause_Number(%struct.CLAUSE_HELP* %72)
  %73 = load i32, i32* %i.addr, align 4
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.43, i32 0, i32 0), i32 %call76, i32 %73)
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %74)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.end.71
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %76 = bitcast %struct.CLAUSE_HELP* %75 to i8*
  %77 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %77, align 8
  %call79 = call %struct.LIST_HELP* @list_Cons(i8* %76, %struct.LIST_HELP* %78)
  %79 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Result.addr, align 8
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.78, %land.lhs.true.37, %land.lhs.true.34, %land.lhs.true.31, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.80
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call81 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %if.end.82

if.end.82:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.83

for.inc.83:                                       ; preds = %if.end.82
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Inst, align 8
  %call84 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %81)
  store %struct.LIST_HELP* %call84, %struct.LIST_HELP** %Inst, align 8
  br label %for.cond

for.end.85:                                       ; preds = %for.cond
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Blocked, align 8
  ret %struct.LIST_HELP* %82
}

declare %struct.LIST_HELP* @st_GetInstance(%struct.binding*, %struct.st*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_StackEmpty(%struct.LIST_HELP* %S) #2 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

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

declare %struct.LIST_HELP* @list_NNumberMerge(%struct.LIST_HELP*, %struct.LIST_HELP*, i32 (i8*)*) #1

declare i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @inf_ForwardSortResolution(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %Theory) #2 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 0
  %1 = load %struct.st*, %struct.st** %index, align 8
  ret %struct.st* %1
}

declare %struct.LIST_HELP* @inf_ForwardEmptySort(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #1

; Function Attrs: nounwind uwtable
define internal i32 @red_CDForwardSubsumption(%struct.CLAUSE_HELP* %RedClause, %struct.st* %Index, i32* %Flags, i32* %Precedence) #0 {
entry:
  %RedClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %IsSubsumed = alloca i32, align 4
  %Subsumer = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedClause, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %IsSubsumed, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  %1 = load %struct.st*, %struct.st** %Index.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.CLAUSE_HELP* @red_CDForwardSubsumer(%struct.CLAUSE_HELP* %0, %struct.st* %1, i32* %2, i32* %3)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %Subsumer, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  %call1 = call i32 @clause_Exists(%struct.CLAUSE_HELP* %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  store i32 1, i32* %IsSubsumed, align 4
  %5 = load i32*, i32** %Flags.addr, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %5, i32 8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %6 = load i32*, i32** %Flags.addr, align 8
  %call4 = call i32 @flag_GetFlagValue(i32* %6, i32 12)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.46, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedClause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Subsumer, align 8
  %call8 = call i32 @clause_Number(%struct.CLAUSE_HELP* %9)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 %call8)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %land.lhs.true, %if.then
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %10 = load i32, i32* %IsSubsumed, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal void @red_CDBackSubsumption(%struct.CLAUSE_HELP* %RedCl, i32* %Flags, i32* %Precedence, %struct.LIST_HELP** %UsListPt, %struct.LIST_HELP** %WOListPt, %struct.st* %Index) #0 {
entry:
  %RedCl.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %UsListPt.addr = alloca %struct.LIST_HELP**, align 8
  %WOListPt.addr = alloca %struct.LIST_HELP**, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Atom = alloca %struct.term*, align 8
  %AtomInst = alloca %struct.term*, align 8
  %SubsumedCl = alloca %struct.CLAUSE_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %SubsumedList = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedCl, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %UsListPt, %struct.LIST_HELP*** %UsListPt.addr, align 8
  store %struct.LIST_HELP** %WOListPt, %struct.LIST_HELP*** %WOListPt.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %SubsumedList, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call1 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.49, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call2 = call i32 @clause_FirstLitIndex()
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %1, i32 %call2)
  store %struct.term* %call3, %struct.term** %Atom, align 8
  %call4 = call %struct.binding* @cont_LeftContext()
  %2 = load %struct.st*, %struct.st** %Index.addr, align 8
  %3 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call i8* @st_ExistInstance(%struct.binding* %call4, %struct.st* %2, %struct.term* %3)
  %4 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %4, %struct.term** %AtomInst, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.then
  %5 = load %struct.term*, %struct.term** %AtomInst, align 8
  %tobool6 = icmp ne %struct.term* %5, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.term*, %struct.term** %AtomInst, align 8
  %call7 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call10 to %struct.LITERAL_HELP*
  %call11 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %9)
  store %struct.CLAUSE_HELP* %call11, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %10, %11
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %call12 = call i32 @clause_FirstLitIndex()
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.LITERAL_HELP*
  %call14 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %15)
  %call15 = call i32 @subs_Subsumes(%struct.CLAUSE_HELP* %12, %struct.CLAUSE_HELP* %13, i32 %call12, i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end

land.lhs.true.17:                                 ; preds = %land.lhs.true
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %18 = bitcast %struct.CLAUSE_HELP* %17 to i8*
  %call18 = call i32 @list_PointerMember(%struct.LIST_HELP* %16, i8* %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %land.lhs.true.17
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %20 = bitcast %struct.CLAUSE_HELP* %19 to i8*
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %20, %struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %SubsumedList, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %land.lhs.true.17, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call23 = call i8* @st_NextCandidate()
  %23 = bitcast i8* %call23 to %struct.term*
  store %struct.term* %23, %struct.term** %AtomInst, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  store %struct.LIST_HELP* %24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.46, %while.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %for.body.28, label %for.end.48

for.body.28:                                      ; preds = %for.cond.24
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call29 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %27, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %28 = load i32*, i32** %Flags.addr, align 8
  %call30 = call i32 @flag_GetFlagValue(i32* %28, i32 8)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.39

land.lhs.true.32:                                 ; preds = %for.body.28
  %29 = load i32*, i32** %Flags.addr, align 8
  %call33 = call i32 @flag_GetFlagValue(i32* %29, i32 12)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.39

if.then.35:                                       ; preds = %land.lhs.true.32
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %31)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call37 = call i32 @clause_Number(%struct.CLAUSE_HELP* %32)
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i32 %call37)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.35, %land.lhs.true.32, %for.body.28
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %call40 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %33, i32 1)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  %34 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %WOListPt.addr, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %34, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %37 = bitcast %struct.CLAUSE_HELP* %36 to i8*
  %call43 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %35, i8* %37)
  %38 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %WOListPt.addr, align 8
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %38, align 8
  br label %if.end.45

if.else:                                          ; preds = %if.end.39
  %39 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsListPt.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %39, align 8
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %42 = bitcast %struct.CLAUSE_HELP* %41 to i8*
  %call44 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %40, i8* %42)
  %43 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsListPt.addr, align 8
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %43, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.else, %if.then.42
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %SubsumedCl, align 8
  %45 = load %struct.st*, %struct.st** %Index.addr, align 8
  call void @clause_DeleteFlatFromIndex(%struct.CLAUSE_HELP* %44, %struct.st* %45)
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.24

for.end.48:                                       ; preds = %for.cond.24
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SubsumedList, align 8
  call void @list_Delete(%struct.LIST_HELP* %47)
  br label %if.end.49

if.end.49:                                        ; preds = %for.end.48, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @red_CDForwardSubsumer(%struct.CLAUSE_HELP* %RedCl, %struct.st* %Index, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %RedCl.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %AtomGen = alloca %struct.term*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %CandCl = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %RedCl, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.term* %call1, %struct.term** %Atom, align 8
  %call2 = call %struct.binding* @cont_LeftContext()
  %5 = load %struct.st*, %struct.st** %Index.addr, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call3 = call i8* @st_ExistGen(%struct.binding* %call2, %struct.st* %5, %struct.term* %6)
  %7 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %7, %struct.term** %AtomGen, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %for.body
  %8 = load %struct.term*, %struct.term** %AtomGen, align 8
  %tobool = icmp ne %struct.term* %8, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load %struct.term*, %struct.term** %AtomGen, align 8
  %call4 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %9)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %while.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call9 to %struct.LITERAL_HELP*
  %call10 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %12)
  store %struct.CLAUSE_HELP* %call10, %struct.CLAUSE_HELP** %CandCl, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %call11 = call i32 @clause_FirstLitIndex()
  %call12 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %13, i32 %call11)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.LITERAL_HELP*
  %cmp14 = icmp eq %struct.LITERAL_HELP* %call12, %15
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %RedCl.addr, align 8
  %call15 = call i32 @clause_FirstLitIndex()
  %18 = load i32, i32* %i, align 4
  %call16 = call i32 @subs_Subsumes(%struct.CLAUSE_HELP* %16, %struct.CLAUSE_HELP* %17, i32 %call15, i32 %18)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @st_CancelExistRetrieval()
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %CandCl, align 8
  store %struct.CLAUSE_HELP* %19, %struct.CLAUSE_HELP** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  %call19 = call i8* @st_NextCandidate()
  %21 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %21, %struct.term** %AtomGen, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.20

for.inc.20:                                       ; preds = %while.end
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.21, %if.then
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Exists(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @subs_Subsumes(%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*, i32, i32) #1

declare void @clause_DeleteFlatFromIndex(%struct.CLAUSE_HELP*, %struct.st*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsTrue(%struct.term* %S) #2 {
entry:
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load i32, i32* @fol_TRUE, align 4
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsFalse(%struct.term* %S) #2 {
entry:
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load i32, i32* @fol_FALSE, align 4
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Equal(i32 %A, i32 %B) #2 {
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

; Function Attrs: noreturn nounwind
declare void @abort() #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
