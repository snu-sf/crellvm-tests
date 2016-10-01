; ModuleID = './MultiSource.Applications.SPASS/3.analyze.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
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
%struct.GRAPH_STRUCT = type { i32, %struct.LIST_HELP*, i32, i32 }
%struct.GRAPHNODE_STRUCT = type { i32, i32, i32, i8*, %struct.LIST_HELP* }

@ana_EQUATIONS = common global i32 0, align 4
@ana_PEQUATIONS = internal global i32 0, align 4
@ana_NEQUATIONS = internal global i32 0, align 4
@ana_FUNCTIONS = internal global i32 0, align 4
@ana_FINDOMAIN = internal global i32 0, align 4
@ana_NONTRIVDOMAIN = internal global i32 0, align 4
@ana_MONADIC = internal global i32 0, align 4
@ana_NONMONADIC = internal global i32 0, align 4
@ana_PROP = internal global i32 0, align 4
@ana_GROUND = internal global i32 0, align 4
@ana_SORTRES = common global i32 0, align 4
@ana_USORTRES = common global i32 0, align 4
@ana_NONUNIT = internal global i32 0, align 4
@ana_CONGROUND = internal global i32 0, align 4
@ana_AXIOMCLAUSES = internal global i32 0, align 4
@ana_CONCLAUSES = internal global i32 0, align 4
@ana_NONHORNCLAUSES = internal global i32 0, align 4
@ana_FINITEMONADICPREDICATES = common global %struct.LIST_HELP* null, align 8
@ana_PUREEQUATIONAL = internal global i32 0, align 4
@ana_PUREPROPOSITIONAL = internal global i32 0, align 4
@ana_SORTMANYEQUATIONS = internal global i32 0, align 4
@ana_SORTDECEQUATIONS = common global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Horn\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Non-Horn\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A This is a monadic %s problem\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c" with equality.\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c" without equality.\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"\0A This is a first-order %s problem containing equality.\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"\0A This is a pure equality %s problem.\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"\0A This is a unit equality problem.\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"\0A This is a first-order %s problem without equality.\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"\0A This is a propositional %s problem.\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"\0A This is a problem that has, if any, a finite domain model.\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\0A There is a finite domain clause.\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"\0A There are no function symbols.\00", align 1
@.str.13 = private unnamed_addr constant [66 x i8] c"\0A This is a problem that has, if any, a non-trivial domain model.\00", align 1
@.str.14 = private unnamed_addr constant [52 x i8] c"\0A This is a problem that contains sort information.\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"\0A All equations are many sorted.\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"\0A All equations are sort-decreasing.\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"\0A The conjecture is ground.\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"\0A The following monadic predicates have finite extensions: \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"\0A Axiom clauses: %d Conjecture clauses: %d\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"\0A Extras    : \00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"Input Saturation, \00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"No Input Saturation, \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"No Selection, \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"Dynamic Selection, \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Always Selection, \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Full Splitting, \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"No Splitting, \00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Maximum of %d Splits, \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Full Reduction, \00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"Lazy Reduction, \00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c" Ratio: %d, FuncWeight: %d, VarWeight: %d\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"\0A Precedence: \00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"\0A Ordering  : \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"KBO\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"RPOS\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.37 = private unnamed_addr constant [15 x i8] c"\0A Inferences: \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"%s=%d \00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\0A Reductions: \00", align 1
@symbol_TYPEMASK = external constant i32, align 4
@symbol_TYPESTATBITS = external constant i32, align 4
@.str.40 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8

; Function Attrs: nounwind uwtable
define void @ana_AnalyzeProblem(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32 0, i32* @ana_EQUATIONS, align 4
  store i32 0, i32* @ana_PEQUATIONS, align 4
  store i32 0, i32* @ana_NEQUATIONS, align 4
  store i32 0, i32* @ana_FUNCTIONS, align 4
  store i32 0, i32* @ana_FINDOMAIN, align 4
  store i32 0, i32* @ana_NONTRIVDOMAIN, align 4
  store i32 0, i32* @ana_MONADIC, align 4
  store i32 0, i32* @ana_NONMONADIC, align 4
  store i32 0, i32* @ana_PROP, align 4
  store i32 0, i32* @ana_GROUND, align 4
  store i32 0, i32* @ana_SORTRES, align 4
  store i32 0, i32* @ana_USORTRES, align 4
  store i32 0, i32* @ana_NONUNIT, align 4
  store i32 1, i32* @ana_CONGROUND, align 4
  store i32 0, i32* @ana_AXIOMCLAUSES, align 4
  store i32 0, i32* @ana_CONCLAUSES, align 4
  store i32 0, i32* @ana_NONHORNCLAUSES, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_FiniteMonadicPredicates(%struct.LIST_HELP* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.75, %if.end
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP** %Clause, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %7)
  call void @clause_UpdateWeight(%struct.CLAUSE_HELP* %6, i32* %call6)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call7 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %8, i32 8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %while.body
  %9 = load i32, i32* @ana_CONCLAUSES, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* @ana_CONCLAUSES, align 4
  br label %if.end.11

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* @ana_AXIOMCLAUSES, align 4
  %inc10 = add i32 %10, 1
  store i32 %inc10, i32* @ana_AXIOMCLAUSES, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call12 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %11)
  %cmp = icmp sgt i32 %call12, 1
  br i1 %cmp, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.11
  %12 = load i32, i32* @ana_NONHORNCLAUSES, align 4
  %inc14 = add i32 %12, 1
  store i32 %inc14, i32* @ana_NONHORNCLAUSES, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.11
  %13 = load i32, i32* @ana_CONGROUND, align 4
  %tobool16 = icmp ne i32 %13, 0
  br i1 %tobool16, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.end.15
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call17 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %14, i32 8)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.24

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call20 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %15)
  %call21 = call i32 @symbol_GetInitialStandardVarCounter()
  %cmp22 = icmp ne i32 %call20, %call21
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %land.lhs.true.19
  store i32 0, i32* @ana_CONGROUND, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.19, %land.lhs.true, %if.end.15
  %16 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool25 = icmp ne i32 %16, 0
  br i1 %tobool25, label %if.end.30, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.end.24
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call27 = call i32 @clause_ContainsPositiveEquations(%struct.CLAUSE_HELP* %17)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* @ana_PEQUATIONS, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.end.24
  %18 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool31 = icmp ne i32 %18, 0
  br i1 %tobool31, label %if.end.36, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %if.end.30
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call33 = call i32 @clause_ContainsNegativeEquations(%struct.CLAUSE_HELP* %19)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* @ana_NEQUATIONS, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %land.lhs.true.32, %if.end.30
  %20 = load i32, i32* @ana_MONADIC, align 4
  %tobool37 = icmp ne i32 %20, 0
  br i1 %tobool37, label %lor.lhs.false, label %if.then.43

lor.lhs.false:                                    ; preds = %if.end.36
  %21 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool38 = icmp ne i32 %21, 0
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.43

lor.lhs.false.39:                                 ; preds = %lor.lhs.false
  %22 = load i32, i32* @ana_PROP, align 4
  %tobool40 = icmp ne i32 %22, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %if.then.43

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.39
  %23 = load i32, i32* @ana_GROUND, align 4
  %tobool42 = icmp ne i32 %23, 0
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.39, %lor.lhs.false, %if.end.36
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call44 = call i32 @clause_ContainsFolAtom(%struct.CLAUSE_HELP* %24, i32* @ana_PROP, i32* @ana_GROUND, i32* @ana_MONADIC, i32* @ana_NONMONADIC)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %lor.lhs.false.41
  %25 = load i32, i32* @ana_FUNCTIONS, align 4
  %tobool46 = icmp ne i32 %25, 0
  br i1 %tobool46, label %if.end.51, label %land.lhs.true.47

land.lhs.true.47:                                 ; preds = %if.end.45
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call48 = call i32 @clause_ContainsFunctions(%struct.CLAUSE_HELP* %26)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %land.lhs.true.47
  store i32 1, i32* @ana_FUNCTIONS, align 4
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %land.lhs.true.47, %if.end.45
  %27 = load i32, i32* @ana_FINDOMAIN, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %if.end.57, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %if.end.51
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call54 = call i32 @clause_ImpliesFiniteDomain(%struct.CLAUSE_HELP* %28)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %land.lhs.true.53
  store i32 1, i32* @ana_FINDOMAIN, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %land.lhs.true.53, %if.end.51
  %29 = load i32, i32* @ana_NONTRIVDOMAIN, align 4
  %tobool58 = icmp ne i32 %29, 0
  br i1 %tobool58, label %if.end.64, label %land.lhs.true.59

land.lhs.true.59:                                 ; preds = %if.end.57
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call60 = call i32 @clause_ImpliesNonTrivialDomain(%struct.CLAUSE_HELP* %30)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.64

if.then.62:                                       ; preds = %land.lhs.true.59
  %31 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call63 = call i32 @clause_Number(%struct.CLAUSE_HELP* %32)
  call void @prfs_SetNonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %31, i32 %call63)
  store i32 1, i32* @ana_NONTRIVDOMAIN, align 4
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %land.lhs.true.59, %if.end.57
  %33 = load i32, i32* @ana_NONUNIT, align 4
  %tobool65 = icmp ne i32 %33, 0
  br i1 %tobool65, label %if.end.70, label %land.lhs.true.66

land.lhs.true.66:                                 ; preds = %if.end.64
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call67 = call i32 @clause_Length(%struct.CLAUSE_HELP* %34)
  %cmp68 = icmp sgt i32 %call67, 1
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %land.lhs.true.66
  store i32 1, i32* @ana_NONUNIT, align 4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.69, %land.lhs.true.66, %if.end.64
  %35 = load i32, i32* @ana_SORTRES, align 4
  %tobool71 = icmp ne i32 %35, 0
  br i1 %tobool71, label %lor.lhs.false.72, label %if.then.74

lor.lhs.false.72:                                 ; preds = %if.end.70
  %36 = load i32, i32* @ana_USORTRES, align 4
  %tobool73 = icmp ne i32 %36, 0
  br i1 %tobool73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false.72, %if.end.70
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_ContainsSortRestriction(%struct.CLAUSE_HELP* %37, i32* @ana_SORTRES, i32* @ana_USORTRES)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %lor.lhs.false.72
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool77 = icmp ne i32 %39, 0
  br i1 %tobool77, label %land.lhs.true.80, label %lor.lhs.false.78

lor.lhs.false.78:                                 ; preds = %while.end
  %40 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool79 = icmp ne i32 %40, 0
  br i1 %tobool79, label %land.lhs.true.80, label %land.end

land.lhs.true.80:                                 ; preds = %lor.lhs.false.78, %while.end
  %41 = load i32, i32* @ana_MONADIC, align 4
  %tobool81 = icmp ne i32 %41, 0
  br i1 %tobool81, label %land.end, label %land.lhs.true.82

land.lhs.true.82:                                 ; preds = %land.lhs.true.80
  %42 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool83 = icmp ne i32 %42, 0
  br i1 %tobool83, label %land.end, label %land.lhs.true.84

land.lhs.true.84:                                 ; preds = %land.lhs.true.82
  %43 = load i32, i32* @ana_PROP, align 4
  %tobool85 = icmp ne i32 %43, 0
  br i1 %tobool85, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true.84
  %44 = load i32, i32* @ana_GROUND, align 4
  %tobool86 = icmp ne i32 %44, 0
  %lnot87 = xor i1 %tobool86, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.84, %land.lhs.true.82, %land.lhs.true.80, %lor.lhs.false.78
  %45 = phi i1 [ false, %land.lhs.true.84 ], [ false, %land.lhs.true.82 ], [ false, %land.lhs.true.80 ], [ false, %lor.lhs.false.78 ], [ %lnot87, %land.rhs ]
  %land.ext = zext i1 %45 to i32
  store i32 %land.ext, i32* @ana_PUREEQUATIONAL, align 4
  %46 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool88 = icmp ne i32 %46, 0
  br i1 %tobool88, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.end
  %47 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool89 = icmp ne i32 %47, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.end
  %48 = phi i1 [ true, %land.end ], [ %tobool89, %lor.rhs ]
  %lor.ext = zext i1 %48 to i32
  store i32 %lor.ext, i32* @ana_EQUATIONS, align 4
  %49 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool90 = icmp ne i32 %49, 0
  br i1 %tobool90, label %land.end.99, label %land.lhs.true.91

land.lhs.true.91:                                 ; preds = %lor.end
  %50 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool92 = icmp ne i32 %50, 0
  br i1 %tobool92, label %land.end.99, label %land.lhs.true.93

land.lhs.true.93:                                 ; preds = %land.lhs.true.91
  %51 = load i32, i32* @ana_MONADIC, align 4
  %tobool94 = icmp ne i32 %51, 0
  br i1 %tobool94, label %land.end.99, label %land.lhs.true.95

land.lhs.true.95:                                 ; preds = %land.lhs.true.93
  %52 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool96 = icmp ne i32 %52, 0
  br i1 %tobool96, label %land.end.99, label %land.rhs.97

land.rhs.97:                                      ; preds = %land.lhs.true.95
  %53 = load i32, i32* @ana_PROP, align 4
  %tobool98 = icmp ne i32 %53, 0
  br label %land.end.99

land.end.99:                                      ; preds = %land.rhs.97, %land.lhs.true.95, %land.lhs.true.93, %land.lhs.true.91, %lor.end
  %54 = phi i1 [ false, %land.lhs.true.95 ], [ false, %land.lhs.true.93 ], [ false, %land.lhs.true.91 ], [ false, %lor.end ], [ %tobool98, %land.rhs.97 ]
  %land.ext100 = zext i1 %54 to i32
  store i32 %land.ext100, i32* @ana_PUREPROPOSITIONAL, align 4
  br label %return

return:                                           ; preds = %land.end.99, %if.then
  ret void
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
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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

declare %struct.LIST_HELP* @clause_FiniteMonadicPredicates(%struct.LIST_HELP*) #2

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

declare i32 @clause_ContainsPositiveEquations(%struct.CLAUSE_HELP*) #2

declare i32 @clause_ContainsNegativeEquations(%struct.CLAUSE_HELP*) #2

declare i32 @clause_ContainsFolAtom(%struct.CLAUSE_HELP*, i32*, i32*, i32*, i32*) #2

declare i32 @clause_ContainsFunctions(%struct.CLAUSE_HELP*) #2

declare i32 @clause_ImpliesFiniteDomain(%struct.CLAUSE_HELP*) #2

declare i32 @clause_ImpliesNonTrivialDomain(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetNonTrivClauseNumber(%struct.PROOFSEARCH_HELP* %Prf, i32 %Number) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Number.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load i32, i32* %Number.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %nontrivclausenumber = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 23
  store i32 %0, i32* %nontrivclausenumber, align 4
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

declare void @clause_ContainsSortRestriction(%struct.CLAUSE_HELP*, i32*, i32*) #2

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

; Function Attrs: nounwind uwtable
define void @ana_AnalyzeSortStructure(%struct.LIST_HELP* %Clauses, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @ana_SORTRES, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %3 = load i32*, i32** %Flags.addr, align 8
  %4 = load i32*, i32** %Precedence.addr, align 8
  %call = call i32 @sort_AnalyzeSortStructure(%struct.LIST_HELP* %2, i32* %3, i32* %4)
  store i32 %call, i32* %Result, align 4
  %5 = load i32, i32* %Result, align 4
  %cmp = icmp eq i32 %5, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* @ana_SORTMANYEQUATIONS, align 4
  %6 = load i32, i32* %Result, align 4
  %cmp2 = icmp eq i32 %6, 3
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then
  %7 = load i32, i32* %Result, align 4
  %cmp4 = icmp eq i32 %7, 2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then
  %8 = phi i1 [ true, %if.then ], [ %cmp4, %lor.rhs ]
  %lor.ext = zext i1 %8 to i32
  store i32 %lor.ext, i32* @ana_SORTDECEQUATIONS, align 4
  br label %if.end

if.end:                                           ; preds = %lor.end, %land.lhs.true, %entry
  ret void
}

declare i32 @sort_AnalyzeSortStructure(%struct.LIST_HELP*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define void @ana_Print(i32* %Flags, i32* %Precedence) #0 {
entry:
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Horn = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* @ana_NONHORNCLAUSES, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8** %Horn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8** %Horn, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* @ana_MONADIC, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.10

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.else.10, label %if.then.2

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load i8*, i8** %Horn, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* %3)
  %4 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.2
  %5 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.then.5, label %if.else.7

if.then.5:                                        ; preds = %lor.lhs.false, %if.then.2
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %if.end.9

if.else.7:                                        ; preds = %lor.lhs.false
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.5
  br label %if.end.38

if.else.10:                                       ; preds = %land.lhs.true, %if.end
  %8 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool11 = icmp ne i32 %8, 0
  br i1 %tobool11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.else.10
  %9 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool13 = icmp ne i32 %9, 0
  br i1 %tobool13, label %if.then.14, label %if.else.30

if.then.14:                                       ; preds = %lor.lhs.false.12, %if.else.10
  %10 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool15 = icmp ne i32 %10, 0
  br i1 %tobool15, label %if.then.20, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %if.then.14
  %11 = load i32, i32* @ana_MONADIC, align 4
  %tobool17 = icmp ne i32 %11, 0
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.16
  %12 = load i32, i32* @ana_PROP, align 4
  %tobool19 = icmp ne i32 %12, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false.16, %if.then.14
  %13 = load i8*, i8** %Horn, align 8
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i32 0, i32 0), i8* %13)
  br label %if.end.29

if.else.22:                                       ; preds = %lor.lhs.false.18
  %14 = load i32, i32* @ana_NONUNIT, align 4
  %tobool23 = icmp ne i32 %14, 0
  br i1 %tobool23, label %if.then.24, label %if.else.26

if.then.24:                                       ; preds = %if.else.22
  %15 = load i8*, i8** %Horn, align 8
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i32 0, i32 0), i8* %15)
  br label %if.end.28

if.else.26:                                       ; preds = %if.else.22
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.20
  br label %if.end.37

if.else.30:                                       ; preds = %lor.lhs.false.12
  %17 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool31 = icmp ne i32 %17, 0
  br i1 %tobool31, label %if.then.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.else.30
  %18 = load i32, i32* @ana_MONADIC, align 4
  %tobool33 = icmp ne i32 %18, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %lor.lhs.false.32, %if.else.30
  %19 = load i8*, i8** %Horn, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i32 0, i32 0), i8* %19)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %lor.lhs.false.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.29
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.9
  %20 = load i32, i32* @ana_PUREPROPOSITIONAL, align 4
  %tobool39 = icmp ne i32 %20, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.end.38
  %21 = load i8*, i8** %Horn, align 8
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i32 0, i32 0), i8* %21)
  br label %if.end.57

if.else.42:                                       ; preds = %if.end.38
  %22 = load i32, i32* @ana_FINDOMAIN, align 4
  %tobool43 = icmp ne i32 %22, 0
  br i1 %tobool43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.else.42
  %23 = load i32, i32* @ana_FUNCTIONS, align 4
  %tobool45 = icmp ne i32 %23, 0
  br i1 %tobool45, label %if.end.56, label %if.then.46

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.else.42
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %24)
  %25 = load i32, i32* @ana_FINDOMAIN, align 4
  %tobool48 = icmp ne i32 %25, 0
  br i1 %tobool48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %if.then.46
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %if.then.46
  %27 = load i32, i32* @ana_FUNCTIONS, align 4
  %tobool52 = icmp ne i32 %27, 0
  br i1 %tobool52, label %if.end.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call54 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %28)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.51
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %lor.lhs.false.44
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.40
  %29 = load i32, i32* @ana_NONTRIVDOMAIN, align 4
  %tobool58 = icmp ne i32 %29, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %30)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.57
  %31 = load i32, i32* @ana_SORTRES, align 4
  %tobool62 = icmp ne i32 %31, 0
  br i1 %tobool62, label %if.then.63, label %if.end.77

if.then.63:                                       ; preds = %if.end.61
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call64 = call i32 @fputs(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool65 = icmp ne i32 %33, 0
  br i1 %tobool65, label %if.then.66, label %if.end.76

if.then.66:                                       ; preds = %if.then.63
  %34 = load i32, i32* @ana_SORTMANYEQUATIONS, align 4
  %tobool67 = icmp ne i32 %34, 0
  br i1 %tobool67, label %if.then.68, label %if.else.70

if.then.68:                                       ; preds = %if.then.66
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %35)
  br label %if.end.75

if.else.70:                                       ; preds = %if.then.66
  %36 = load i32, i32* @ana_SORTDECEQUATIONS, align 4
  %tobool71 = icmp ne i32 %36, 0
  br i1 %tobool71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.else.70
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call73 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %37)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.else.70
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %if.then.68
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.63
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.61
  %38 = load i32, i32* @ana_CONCLAUSES, align 4
  %cmp78 = icmp ugt i32 %38, 0
  br i1 %cmp78, label %land.lhs.true.79, label %if.end.85

land.lhs.true.79:                                 ; preds = %if.end.77
  %39 = load i32, i32* @ana_CONGROUND, align 4
  %tobool80 = icmp ne i32 %39, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.85

land.lhs.true.81:                                 ; preds = %land.lhs.true.79
  %40 = load i32, i32* @ana_PUREPROPOSITIONAL, align 4
  %tobool82 = icmp ne i32 %40, 0
  br i1 %tobool82, label %if.end.85, label %if.then.83

if.then.83:                                       ; preds = %land.lhs.true.81
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %41)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %land.lhs.true.81, %land.lhs.true.79, %if.end.77
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  %call86 = call i32 @list_Empty(%struct.LIST_HELP* %42)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.101, label %if.then.88

if.then.88:                                       ; preds = %if.end.85
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call89 = call i32 @fputs(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  store %struct.LIST_HELP* %44, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.88
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call90 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  %tobool91 = icmp ne i32 %call90, 0
  %lnot = xor i1 %tobool91, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call92 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = ptrtoint i8* %call92 to i32
  call void @symbol_Print(i32 %47)
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call93 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %48)
  %call94 = call i32 @list_Empty(%struct.LIST_HELP* %call93)
  %tobool95 = icmp ne i32 %call94, 0
  br i1 %tobool95, label %if.end.98, label %if.then.96

if.then.96:                                       ; preds = %for.body
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call97 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %49)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call99 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call99, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call100 = call i32 @putchar(i32 46)
  br label %if.end.101

if.end.101:                                       ; preds = %for.end, %if.end.85
  %51 = load i32, i32* @ana_AXIOMCLAUSES, align 4
  %52 = load i32, i32* @ana_CONCLAUSES, align 4
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i32 0, i32 0), i32 %51, i32 %52)
  %53 = load i32*, i32** %Flags.addr, align 8
  call void @flag_PrintInferenceRules(i32* %53)
  %54 = load i32*, i32** %Flags.addr, align 8
  call void @flag_PrintReductionRules(i32* %54)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call103 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %55)
  %56 = load i32*, i32** %Flags.addr, align 8
  %call104 = call i32 @flag_GetFlagValue(i32* %56, i32 41)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.else.108

if.then.106:                                      ; preds = %if.end.101
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call107 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %57)
  br label %if.end.110

if.else.108:                                      ; preds = %if.end.101
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call109 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %58)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.108, %if.then.106
  %59 = load i32*, i32** %Flags.addr, align 8
  %call111 = call i32 @flag_GetFlagValue(i32* %59, i32 38)
  %cmp112 = icmp eq i32 %call111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.115

if.then.113:                                      ; preds = %if.end.110
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call114 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %60)
  br label %if.end.123

if.else.115:                                      ; preds = %if.end.110
  %61 = load i32*, i32** %Flags.addr, align 8
  %call116 = call i32 @flag_GetFlagValue(i32* %61, i32 38)
  %cmp117 = icmp eq i32 %call116, 1
  br i1 %cmp117, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.else.115
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call119 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %62)
  br label %if.end.122

if.else.120:                                      ; preds = %if.else.115
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call121 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %63)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.120, %if.then.118
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.122, %if.then.113
  %64 = load i32*, i32** %Flags.addr, align 8
  %call124 = call i32 @flag_GetFlagValue(i32* %64, i32 5)
  %cmp125 = icmp eq i32 %call124, -1
  br i1 %cmp125, label %if.then.126, label %if.else.128

if.then.126:                                      ; preds = %if.end.123
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call127 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %65)
  br label %if.end.137

if.else.128:                                      ; preds = %if.end.123
  %66 = load i32*, i32** %Flags.addr, align 8
  %call129 = call i32 @flag_GetFlagValue(i32* %66, i32 5)
  %cmp130 = icmp eq i32 %call129, 0
  br i1 %cmp130, label %if.then.131, label %if.else.133

if.then.131:                                      ; preds = %if.else.128
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call132 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %67)
  br label %if.end.136

if.else.133:                                      ; preds = %if.else.128
  %68 = load i32*, i32** %Flags.addr, align 8
  %call134 = call i32 @flag_GetFlagValue(i32* %68, i32 5)
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i32 %call134)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.131
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.126
  %69 = load i32*, i32** %Flags.addr, align 8
  %call138 = call i32 @flag_GetFlagValue(i32* %69, i32 44)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.then.140, label %if.else.142

if.then.140:                                      ; preds = %if.end.137
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call141 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %70)
  br label %if.end.144

if.else.142:                                      ; preds = %if.end.137
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call143 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %71)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.142, %if.then.140
  %72 = load i32*, i32** %Flags.addr, align 8
  %call145 = call i32 @flag_GetFlagValue(i32* %72, i32 42)
  %73 = load i32*, i32** %Flags.addr, align 8
  %call146 = call i32 @flag_GetFlagValue(i32* %73, i32 45)
  %74 = load i32*, i32** %Flags.addr, align 8
  %call147 = call i32 @flag_GetFlagValue(i32* %74, i32 46)
  %call148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.32, i32 0, i32 0), i32 %call145, i32 %call146, i32 %call147)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call149 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %75)
  %76 = load i32*, i32** %Precedence.addr, align 8
  call void @fol_PrintPrecedence(i32* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call150 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %77)
  %78 = load i32*, i32** %Flags.addr, align 8
  %call151 = call i32 @flag_GetFlagValue(i32* %78, i32 52)
  %cmp152 = icmp eq i32 %call151, 0
  %cond = select i1 %cmp152, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call153 = call i32 @fputs(i8* %cond, %struct._IO_FILE* %79)
  ret void
}

declare i32 @printf(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @symbol_Print(i32) #2

declare i32 @putchar(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_PrintInferenceRules(i32* %Store) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.37, i32 0, i32 0), %struct._IO_FILE* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call1 = call i32 @flag_IsInference(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32*, i32** %Store.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i32 @flag_GetFlagValue(i32* %3, i32 %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %i, align 4
  %call4 = call i8* @flag_Name(i32 %5)
  %6 = load i32*, i32** %Store.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call5 = call i32 @flag_GetFlagValue(i32* %6, i32 %7)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %call4, i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_PrintReductionRules(i32* %Store) #1 {
entry:
  %Store.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %1, 96
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %call1 = call i32 @flag_IsReduction(i32 %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32*, i32** %Store.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call i32 @flag_GetFlagValue(i32* %3, i32 %4)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i32, i32* %i, align 4
  %call4 = call i8* @flag_Name(i32 %5)
  %6 = load i32*, i32** %Store.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call5 = call i32 @flag_GetFlagValue(i32* %6, i32 %7)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* %call4, i32 %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
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

declare void @fol_PrintPrecedence(i32*) #2

; Function Attrs: nounwind uwtable
define void @ana_AutoConfiguration(%struct.LIST_HELP* %Clauses, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Functions = alloca %struct.LIST_HELP*, align 8
  %Predicates = alloca %struct.LIST_HELP*, align 8
  %Constants = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @symbol_GetAllFunctions()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Functions, align 8
  %call1 = call %struct.LIST_HELP* @fol_GetNonFOLPredicates()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Predicates, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call2 = call %struct.LIST_HELP* @ana_CalculatePredicatePrecedence(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Predicates, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %4 = load i32*, i32** %Flags.addr, align 8
  %call3 = call %struct.LIST_HELP* @ana_CalculateFunctionPrecedence(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3, i32* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Functions, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Constants, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call6 to i32
  %call7 = call i32 @symbol_IsConstant(i32 %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* %call9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Constants, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call12 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Functions, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call13 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Constants, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.20, %for.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  br i1 %lnot17, label %for.body.18, label %for.end.22

for.body.18:                                      ; preds = %for.cond.14
  %16 = load i32*, i32** %Precedence.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call19 to i32
  call void @symbol_SetIncreasedOrdering(i32* %16, i32 %18)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.18
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions, align 8
  %call21 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Functions, align 8
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.29, %for.end.22
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %for.body.27, label %for.end.31

for.body.27:                                      ; preds = %for.cond.23
  %21 = load i32*, i32** %Precedence.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = ptrtoint i8* %call28 to i32
  call void @symbol_SetIncreasedOrdering(i32* %21, i32 %23)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.27
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates, align 8
  %call30 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Predicates, align 8
  br label %for.cond.23

for.end.31:                                       ; preds = %for.cond.23
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.38, %for.end.31
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool34 = icmp ne i32 %call33, 0
  %lnot35 = xor i1 %tobool34, true
  br i1 %lnot35, label %for.body.36, label %for.end.40

for.body.36:                                      ; preds = %for.cond.32
  %26 = load i32*, i32** %Precedence.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = ptrtoint i8* %call37 to i32
  call void @symbol_SetIncreasedOrdering(i32* %26, i32 %28)
  br label %for.inc.38

for.inc.38:                                       ; preds = %for.body.36
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constants, align 8
  %call39 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Constants, align 8
  br label %for.cond.32

for.end.40:                                       ; preds = %for.cond.32
  %30 = load i32*, i32** %Flags.addr, align 8
  call void @flag_ClearInferenceRules(i32* %30)
  %31 = load i32*, i32** %Flags.addr, align 8
  call void @flag_ClearReductionRules(i32* %31)
  %32 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %32, i32 85, i32 1)
  %33 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %33, i32 88, i32 1)
  %34 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %34, i32 91, i32 1)
  %35 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %35, i32 92, i32 1)
  %36 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %36, i32 83, i32 1)
  %37 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %37, i32 84, i32 1)
  %38 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %38, i32 86, i32 1)
  %39 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %39, i32 44, i32 1)
  %40 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %40, i32 42, i32 5)
  %41 = load i32, i32* @ana_NEQUATIONS, align 4
  %tobool41 = icmp ne i32 %41, 0
  br i1 %tobool41, label %if.then.42, label %if.end.49

if.then.42:                                       ; preds = %for.end.40
  %42 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %42, i32 61, i32 1)
  %43 = load i32, i32* @ana_NONUNIT, align 4
  %tobool43 = icmp ne i32 %43, 0
  br i1 %tobool43, label %if.then.44, label %if.end.48

if.then.44:                                       ; preds = %if.then.42
  %44 = load i32, i32* @ana_NONTRIVDOMAIN, align 4
  %tobool45 = icmp ne i32 %44, 0
  br i1 %tobool45, label %if.then.46, label %if.else

if.then.46:                                       ; preds = %if.then.44
  %45 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %45, i32 93, i32 2)
  br label %if.end.47

if.else:                                          ; preds = %if.then.44
  %46 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %46, i32 93, i32 1)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else, %if.then.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %for.end.40
  %47 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool50 = icmp ne i32 %47, 0
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end.49
  %48 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %48, i32 65, i32 1)
  %49 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %49, i32 68, i32 1)
  %50 = load i32, i32* @ana_NONHORNCLAUSES, align 4
  %cmp = icmp ugt i32 %50, 0
  br i1 %cmp, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %if.then.51
  %51 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %51, i32 63, i32 1)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %if.then.51
  %52 = load i32, i32* @ana_NONUNIT, align 4
  %tobool54 = icmp ne i32 %52, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.53
  %53 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %53, i32 94, i32 1)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.end.53
  %54 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %54, i32 79, i32 1)
  %55 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %55, i32 80, i32 1)
  %56 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %56, i32 81, i32 0)
  %57 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %57, i32 82, i32 0)
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.49
  %58 = load i32, i32* @ana_SORTRES, align 4
  %tobool58 = icmp ne i32 %58, 0
  br i1 %tobool58, label %if.then.59, label %if.else.64

if.then.59:                                       ; preds = %if.end.57
  %59 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %59, i32 40, i32 1)
  %60 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %60, i32 59, i32 1)
  %61 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %61, i32 60, i32 1)
  %62 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %62, i32 90, i32 1)
  %63 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool60 = icmp ne i32 %63, 0
  br i1 %tobool60, label %lor.lhs.false, label %if.then.62

lor.lhs.false:                                    ; preds = %if.then.59
  %64 = load i32, i32* @ana_SORTMANYEQUATIONS, align 4
  %tobool61 = icmp ne i32 %64, 0
  br i1 %tobool61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %lor.lhs.false, %if.then.59
  %65 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %65, i32 89, i32 1)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.62, %lor.lhs.false
  br label %if.end.65

if.else.64:                                       ; preds = %if.end.57
  %66 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %66, i32 40, i32 0)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.64, %if.end.63
  %67 = load i32, i32* @ana_MONADIC, align 4
  %tobool66 = icmp ne i32 %67, 0
  br i1 %tobool66, label %if.then.69, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.end.65
  %68 = load i32, i32* @ana_NONMONADIC, align 4
  %tobool68 = icmp ne i32 %68, 0
  br i1 %tobool68, label %if.then.69, label %if.end.76

if.then.69:                                       ; preds = %lor.lhs.false.67, %if.end.65
  %69 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %69, i32 69, i32 1)
  %70 = load i32, i32* @ana_NONHORNCLAUSES, align 4
  %cmp70 = icmp ugt i32 %70, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.69
  %71 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %71, i32 74, i32 1)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %if.then.69
  %72 = load i32, i32* @ana_NONUNIT, align 4
  %tobool73 = icmp ne i32 %72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.end.72
  %73 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %73, i32 94, i32 1)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.74, %if.end.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false.67
  %74 = load i32, i32* @ana_FUNCTIONS, align 4
  %tobool77 = icmp ne i32 %74, 0
  br i1 %tobool77, label %if.else.79, label %if.then.78

if.then.78:                                       ; preds = %if.end.76
  %75 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %75, i32 38, i32 2)
  br label %if.end.84

if.else.79:                                       ; preds = %if.end.76
  %76 = load i32, i32* @ana_NONUNIT, align 4
  %tobool80 = icmp ne i32 %76, 0
  br i1 %tobool80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %if.else.79
  %77 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %77, i32 38, i32 1)
  br label %if.end.83

if.else.82:                                       ; preds = %if.else.79
  %78 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %78, i32 38, i32 0)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.81
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.then.78
  %79 = load i32, i32* @ana_CONCLAUSES, align 4
  %80 = load i32, i32* @ana_AXIOMCLAUSES, align 4
  %cmp85 = icmp ult i32 %79, %80
  br i1 %cmp85, label %if.then.89, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %if.end.84
  %81 = load i32, i32* @ana_CONGROUND, align 4
  %tobool87 = icmp ne i32 %81, 0
  br i1 %tobool87, label %land.lhs.true, label %if.else.90

land.lhs.true:                                    ; preds = %lor.lhs.false.86
  %82 = load i32, i32* @ana_PUREPROPOSITIONAL, align 4
  %tobool88 = icmp ne i32 %82, 0
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %land.lhs.true, %if.end.84
  %83 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %83, i32 41, i32 1)
  br label %if.end.91

if.else.90:                                       ; preds = %land.lhs.true, %lor.lhs.false.86
  %84 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %84, i32 41, i32 0)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.90, %if.then.89
  %85 = load i32, i32* @ana_NONHORNCLAUSES, align 4
  %cmp92 = icmp ugt i32 %85, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.end.91
  %86 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %86, i32 5, i32 -1)
  br label %if.end.95

if.else.94:                                       ; preds = %if.end.91
  %87 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %87, i32 5, i32 0)
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.94, %if.then.93
  ret void
}

declare %struct.LIST_HELP* @symbol_GetAllFunctions() #2

declare %struct.LIST_HELP* @fol_GetNonFOLPredicates() #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ana_CalculatePredicatePrecedence(%struct.LIST_HELP* %Predicates, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Predicates.addr = alloca %struct.LIST_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %graph = alloca %struct.GRAPH_STRUCT*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %s = alloca i32, align 4
  %c = alloca %struct.CLAUSE_HELP*, align 8
  %negPred = alloca i32, align 4
  %posPred = alloca i32, align 4
  %n = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.LIST_HELP* %Predicates, %struct.LIST_HELP** %Predicates.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct.GRAPH_STRUCT* @graph_Create()
  store %struct.GRAPH_STRUCT* %call1, %struct.GRAPH_STRUCT** %graph, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool3, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = ptrtoint i8* %call4 to i32
  %call5 = call i32 @symbol_Index(i32 %5)
  %call6 = call %struct.GRAPHNODE_STRUCT* @graph_AddNode(%struct.GRAPH_STRUCT* %3, i32 %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Predicates.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Predicates.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.47, %for.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body.12, label %for.end.49

for.body.12:                                      ; preds = %for.cond.8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %10, %struct.CLAUSE_HELP** %c, align 8
  %call14 = call i32 @clause_FirstLitIndex()
  store i32 %call14, i32* %i, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.44, %for.body.12
  %11 = load i32, i32* %i, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %call16 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %12)
  %cmp = icmp slt i32 %11, %call16
  br i1 %cmp, label %for.body.17, label %for.end.46

for.body.17:                                      ; preds = %for.cond.15
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %14 = load i32, i32* %i, align 4
  %call18 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %13, i32 %14)
  %call19 = call i32 @term_TopSymbol(%struct.term* %call18)
  store i32 %call19, i32* %negPred, align 4
  %15 = load i32, i32* %negPred, align 4
  %call20 = call i32 @fol_Equality()
  %call21 = call i32 @symbol_Equal(i32 %15, i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.43, label %if.then.23

if.then.23:                                       ; preds = %for.body.17
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %call24 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %16)
  store i32 %call24, i32* %j, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.41, %if.then.23
  %17 = load i32, i32* %j, align 4
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %call26 = call i32 @clause_Length(%struct.CLAUSE_HELP* %18)
  %cmp27 = icmp slt i32 %17, %call26
  br i1 %cmp27, label %for.body.28, label %for.end.42

for.body.28:                                      ; preds = %for.cond.25
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %20 = load i32, i32* %j, align 4
  %call29 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %19, i32 %20)
  %call30 = call i32 @term_TopSymbol(%struct.term* %call29)
  store i32 %call30, i32* %posPred, align 4
  %21 = load i32, i32* %posPred, align 4
  %call31 = call i32 @fol_Equality()
  %call32 = call i32 @symbol_Equal(i32 %21, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.40, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.28
  %22 = load i32, i32* %negPred, align 4
  %23 = load i32, i32* %posPred, align 4
  %cmp34 = icmp ne i32 %22, %23
  br i1 %cmp34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %land.lhs.true
  %24 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %25 = load i32, i32* %negPred, align 4
  %call36 = call i32 @symbol_Index(i32 %25)
  %call37 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %24, i32 %call36)
  %26 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %27 = load i32, i32* %posPred, align 4
  %call38 = call i32 @symbol_Index(i32 %27)
  %call39 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %26, i32 %call38)
  call void @graph_AddEdge(%struct.GRAPHNODE_STRUCT* %call37, %struct.GRAPHNODE_STRUCT* %call39)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.35, %land.lhs.true, %for.body.28
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40
  %28 = load i32, i32* %j, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.25

for.end.42:                                       ; preds = %for.cond.25
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.body.17
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %29 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %29, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond.15

for.end.46:                                       ; preds = %for.cond.15
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end.46
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.end.49:                                       ; preds = %for.cond.8
  %31 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %call50 = call i32 @graph_StronglyConnectedComponents(%struct.GRAPH_STRUCT* %31)
  store i32 %call50, i32* %count, align 4
  %call51 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %result, align 8
  %32 = load i32, i32* %count, align 4
  %sub = sub i32 %32, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.72, %for.end.49
  %33 = load i32, i32* %i, align 4
  %cmp53 = icmp sge i32 %33, 0
  br i1 %cmp53, label %for.body.54, label %for.end.73

for.body.54:                                      ; preds = %for.cond.52
  %34 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %call55 = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %34)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.69, %for.body.54
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %for.body.60, label %for.end.71

for.body.60:                                      ; preds = %for.cond.56
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call61 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %37, %struct.GRAPHNODE_STRUCT** %n, align 8
  %38 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %call62 = call i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %38)
  %39 = load i32, i32* %i, align 4
  %cmp63 = icmp eq i32 %call62, %39
  br i1 %cmp63, label %if.then.64, label %if.end.68

if.then.64:                                       ; preds = %for.body.60
  %40 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n, align 8
  %call65 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %40)
  %call66 = call i32 @symbol_GetSigSymbol(i32 %call65)
  store i32 %call66, i32* %s, align 4
  %41 = load i32, i32* %s, align 4
  %conv = sext i32 %41 to i64
  %42 = inttoptr i64 %conv to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call67 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %result, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.64, %for.body.60
  br label %for.inc.69

for.inc.69:                                       ; preds = %if.end.68
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.56

for.end.71:                                       ; preds = %for.cond.56
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.end.71
  %45 = load i32, i32* %i, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.52

for.end.73:                                       ; preds = %for.cond.52
  %46 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  call void @graph_Delete(%struct.GRAPH_STRUCT* %46)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %47, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.73, %if.then
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %48
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @ana_CalculateFunctionPrecedence(%struct.LIST_HELP* %Functions, %struct.LIST_HELP* %Clauses, i32* %Flags) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Functions.addr = alloca %struct.LIST_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %graph = alloca %struct.GRAPH_STRUCT*, align 8
  %n1 = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %n2 = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %distrPairs = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %Add = alloca i32, align 4
  %Mult = alloca i32, align 4
  %c = alloca %struct.CLAUSE_HELP*, align 8
  %t1 = alloca %struct.term*, align 8
  %t2 = alloca %struct.term*, align 8
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  store %struct.LIST_HELP* %Functions, %struct.LIST_HELP** %Functions.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP* %3, i32 (i8*)* bitcast (i32 (i32)* @symbol_PositiveArity to i32 (i8*)*))
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Functions.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct.GRAPH_STRUCT* @graph_Create()
  store %struct.GRAPH_STRUCT* %call5, %struct.GRAPH_STRUCT** %graph, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call8 to i32
  %call9 = call i32 @symbol_Index(i32 %8)
  %call10 = call %struct.GRAPHNODE_STRUCT* @graph_AddNode(%struct.GRAPH_STRUCT* %6, i32 %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Functions.addr, align 8
  %call11 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Functions.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  call void @graph_SortNodes(%struct.GRAPH_STRUCT* %10, i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)* @ana_NodeGreater)
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %distrPairs, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.63, %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end.65

for.body.17:                                      ; preds = %for.cond.13
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call18 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %14, %struct.CLAUSE_HELP** %c, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %call19 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %15)
  store i32 %call19, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.61, %for.body.17
  %16 = load i32, i32* %i, align 4
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %call21 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %17)
  %cmp = icmp ule i32 %16, %call21
  br i1 %cmp, label %for.body.22, label %for.end.62

for.body.22:                                      ; preds = %for.cond.20
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %19 = load i32, i32* %i, align 4
  %call23 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %18, i32 %19)
  %call24 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.60

if.then.26:                                       ; preds = %for.body.22
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %21 = load i32, i32* %i, align 4
  %call27 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %20, i32 %21)
  %call28 = call i32 @fol_DistributiveEquation(%struct.term* %call27, i32* %Add, i32* %Mult)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.then.26
  %22 = load i32, i32* %Add, align 4
  %conv = sext i32 %22 to i64
  %23 = inttoptr i64 %conv to i8*
  %24 = load i32, i32* %Mult, align 4
  %conv31 = sext i32 %24 to i64
  %25 = inttoptr i64 %conv31 to i8*
  %call32 = call %struct.LIST_HELP* @list_PairCreate(i8* %23, i8* %25)
  %26 = bitcast %struct.LIST_HELP* %call32 to i8*
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call33 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %distrPairs, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.30, %if.then.26
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %29 = load i32, i32* %i, align 4
  %call35 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %28, i32 %29)
  %call36 = call %struct.term* @term_FirstArgument(%struct.term* %call35)
  store %struct.term* %call36, %struct.term** %t1, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %31 = load i32, i32* %i, align 4
  %call37 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %30, i32 %31)
  %call38 = call %struct.term* @term_SecondArgument(%struct.term* %call37)
  store %struct.term* %call38, %struct.term** %t2, align 8
  %32 = load %struct.term*, %struct.term** %t1, align 8
  %call39 = call i32 @term_IsVariable(%struct.term* %32)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.59, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.34
  %33 = load %struct.term*, %struct.term** %t2, align 8
  %call41 = call i32 @term_IsVariable(%struct.term* %33)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.59, label %land.lhs.true.43

land.lhs.true.43:                                 ; preds = %land.lhs.true
  %34 = load %struct.term*, %struct.term** %t1, align 8
  %35 = load %struct.term*, %struct.term** %t2, align 8
  %call44 = call i32 @term_EqualTopSymbols(%struct.term* %34, %struct.term* %35)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.59, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %land.lhs.true.43
  %36 = load %struct.term*, %struct.term** %t1, align 8
  %37 = load %struct.term*, %struct.term** %t2, align 8
  %call47 = call i32 @term_HasSubterm(%struct.term* %36, %struct.term* %37)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.59, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %38 = load %struct.term*, %struct.term** %t2, align 8
  %39 = load %struct.term*, %struct.term** %t1, align 8
  %call50 = call i32 @term_HasSubterm(%struct.term* %38, %struct.term* %39)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.59, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.49
  %40 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %41 = load %struct.term*, %struct.term** %t1, align 8
  %call53 = call i32 @term_TopSymbol(%struct.term* %41)
  %call54 = call i32 @symbol_Index(i32 %call53)
  %call55 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %40, i32 %call54)
  store %struct.GRAPHNODE_STRUCT* %call55, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %42 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %43 = load %struct.term*, %struct.term** %t2, align 8
  %call56 = call i32 @term_TopSymbol(%struct.term* %43)
  %call57 = call i32 @symbol_Index(i32 %call56)
  %call58 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %42, i32 %call57)
  store %struct.GRAPHNODE_STRUCT* %call58, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %44 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %45 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  call void @graph_AddEdge(%struct.GRAPHNODE_STRUCT* %44, %struct.GRAPHNODE_STRUCT* %45)
  %46 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %47 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  call void @graph_AddEdge(%struct.GRAPHNODE_STRUCT* %46, %struct.GRAPHNODE_STRUCT* %47)
  %48 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  call void @ana_IncNodeDegree(%struct.GRAPHNODE_STRUCT* %48)
  %49 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  call void @ana_IncNodeDegree(%struct.GRAPHNODE_STRUCT* %49)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.52, %land.lhs.true.49, %land.lhs.true.46, %land.lhs.true.43, %land.lhs.true, %if.end.34
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body.22
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %50 = load i32, i32* %i, align 4
  %inc = add i32 %50, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.20

for.end.62:                                       ; preds = %for.cond.20
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.end.62
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.end.65:                                       ; preds = %for.cond.13
  %52 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  call void @graph_DeleteDuplicateEdges(%struct.GRAPH_STRUCT* %52)
  %53 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %call66 = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %53)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.67

for.cond.67:                                      ; preds = %for.inc.121, %for.end.65
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call68 = call i32 @list_Empty(%struct.LIST_HELP* %54)
  %tobool69 = icmp ne i32 %call68, 0
  %lnot70 = xor i1 %tobool69, true
  br i1 %lnot70, label %for.body.71, label %for.end.123

for.body.71:                                      ; preds = %for.cond.67
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call72 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call72 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %56, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call73 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %result, align 8
  %57 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call74 = call %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %57)
  store %struct.LIST_HELP* %call74, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.109, %for.body.71
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call76 = call i32 @list_Empty(%struct.LIST_HELP* %58)
  %tobool77 = icmp ne i32 %call76, 0
  %lnot78 = xor i1 %tobool77, true
  br i1 %lnot78, label %for.body.79, label %for.end.111

for.body.79:                                      ; preds = %for.cond.75
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %59)
  %60 = bitcast i8* %call80 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %60, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %61 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call81 = call i32 @ana_NodeDegree(%struct.GRAPHNODE_STRUCT* %61)
  store i32 %call81, i32* %i, align 4
  %62 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %call82 = call i32 @ana_NodeDegree(%struct.GRAPHNODE_STRUCT* %62)
  store i32 %call82, i32* %j, align 4
  %63 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call83 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %63)
  %call84 = call i32 @symbol_GetSigSymbol(i32 %call83)
  %call85 = call i32 @symbol_Arity(i32 %call84)
  store i32 %call85, i32* %a1, align 4
  %64 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %call86 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %64)
  %call87 = call i32 @symbol_GetSigSymbol(i32 %call86)
  %call88 = call i32 @symbol_Arity(i32 %call87)
  store i32 %call88, i32* %a2, align 4
  %65 = load i32, i32* %i, align 4
  %66 = load i32, i32* %j, align 4
  %cmp89 = icmp ugt i32 %65, %66
  br i1 %cmp89, label %if.then.96, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.79
  %67 = load i32, i32* %i, align 4
  %68 = load i32, i32* %j, align 4
  %cmp91 = icmp eq i32 %67, %68
  br i1 %cmp91, label %land.lhs.true.93, label %if.end.98

land.lhs.true.93:                                 ; preds = %lor.lhs.false
  %69 = load i32, i32* %a1, align 4
  %70 = load i32, i32* %a2, align 4
  %cmp94 = icmp sge i32 %69, %70
  br i1 %cmp94, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %land.lhs.true.93, %for.body.79
  %71 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %72 = bitcast %struct.GRAPHNODE_STRUCT* %71 to i8*
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call97 = call %struct.LIST_HELP* @list_Cons(i8* %72, %struct.LIST_HELP* %73)
  store %struct.LIST_HELP* %call97, %struct.LIST_HELP** %result, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %land.lhs.true.93, %lor.lhs.false
  %74 = load i32, i32* %i, align 4
  %75 = load i32, i32* %j, align 4
  %cmp99 = icmp ult i32 %74, %75
  br i1 %cmp99, label %if.then.107, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %if.end.98
  %76 = load i32, i32* %i, align 4
  %77 = load i32, i32* %j, align 4
  %cmp102 = icmp eq i32 %76, %77
  br i1 %cmp102, label %land.lhs.true.104, label %if.end.108

land.lhs.true.104:                                ; preds = %lor.lhs.false.101
  %78 = load i32, i32* %a1, align 4
  %79 = load i32, i32* %a2, align 4
  %cmp105 = icmp sle i32 %78, %79
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %land.lhs.true.104, %if.end.98
  %80 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %81 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  call void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT* %80, %struct.GRAPHNODE_STRUCT* %81)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.107, %land.lhs.true.104, %lor.lhs.false.101
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call110 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %82)
  store %struct.LIST_HELP* %call110, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond.75

for.end.111:                                      ; preds = %for.cond.75
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.118, %for.end.111
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call113 = call i32 @list_Empty(%struct.LIST_HELP* %83)
  %tobool114 = icmp ne i32 %call113, 0
  %lnot115 = xor i1 %tobool114, true
  br i1 %lnot115, label %for.body.116, label %for.end.120

for.body.116:                                     ; preds = %for.cond.112
  %84 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call117 = call i8* @list_Car(%struct.LIST_HELP* %85)
  %86 = bitcast i8* %call117 to %struct.GRAPHNODE_STRUCT*
  call void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT* %84, %struct.GRAPHNODE_STRUCT* %86)
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.116
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call119 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %87)
  store %struct.LIST_HELP* %call119, %struct.LIST_HELP** %result, align 8
  br label %for.cond.112

for.end.120:                                      ; preds = %for.cond.112
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.120
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call122 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %88)
  store %struct.LIST_HELP* %call122, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.67

for.end.123:                                      ; preds = %for.cond.67
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call124 = call i32 @list_Empty(%struct.LIST_HELP* %89)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.end.130, label %land.lhs.true.126

land.lhs.true.126:                                ; preds = %for.end.123
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call127 = call i32 @ana_BidirectionalDistributivity(%struct.LIST_HELP* %90)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %land.lhs.true.126
  %91 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %91, i32 52, i32 1)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %land.lhs.true.126, %for.end.123
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.143, %if.end.130
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call132 = call i32 @list_Empty(%struct.LIST_HELP* %92)
  %tobool133 = icmp ne i32 %call132, 0
  %lnot134 = xor i1 %tobool133, true
  br i1 %lnot134, label %for.body.135, label %for.end.145

for.body.135:                                     ; preds = %for.cond.131
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call136 = call i8* @list_Car(%struct.LIST_HELP* %93)
  %94 = bitcast i8* %call136 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %94, %struct.LIST_HELP** %scan, align 8
  %95 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call137 = call i8* @list_PairFirst(%struct.LIST_HELP* %96)
  %97 = ptrtoint i8* %call137 to i32
  %call138 = call i32 @symbol_Index(i32 %97)
  %call139 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %95, i32 %call138)
  store %struct.GRAPHNODE_STRUCT* %call139, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %98 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call140 = call i8* @list_PairSecond(%struct.LIST_HELP* %99)
  %100 = ptrtoint i8* %call140 to i32
  %call141 = call i32 @symbol_Index(i32 %100)
  %call142 = call %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT* %98, i32 %call141)
  store %struct.GRAPHNODE_STRUCT* %call142, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %101 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %102 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  call void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT* %101, %struct.GRAPHNODE_STRUCT* %102)
  %103 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  %104 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  call void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT* %103, %struct.GRAPHNODE_STRUCT* %104)
  %105 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %106 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n2, align 8
  call void @graph_AddEdge(%struct.GRAPHNODE_STRUCT* %105, %struct.GRAPHNODE_STRUCT* %106)
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  call void @list_PairFree(%struct.LIST_HELP* %107)
  br label %for.inc.143

for.inc.143:                                      ; preds = %for.body.135
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %distrPairs, align 8
  %call144 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %108)
  store %struct.LIST_HELP* %call144, %struct.LIST_HELP** %distrPairs, align 8
  br label %for.cond.131

for.end.145:                                      ; preds = %for.cond.131
  %109 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %call146 = call i32 @graph_StronglyConnectedComponents(%struct.GRAPH_STRUCT* %109)
  store i32 %call146, i32* %i, align 4
  %call147 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call147, %struct.LIST_HELP** %result, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.168, %for.end.145
  %110 = load i32, i32* %i, align 4
  %dec = add i32 %110, -1
  store i32 %dec, i32* %i, align 4
  %cmp148 = icmp ugt i32 %110, 0
  br i1 %cmp148, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %111 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  %call150 = call %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %111)
  store %struct.LIST_HELP* %call150, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.166, %while.body
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call152 = call i32 @list_Empty(%struct.LIST_HELP* %112)
  %tobool153 = icmp ne i32 %call152, 0
  %lnot154 = xor i1 %tobool153, true
  br i1 %lnot154, label %for.body.155, label %for.end.168

for.body.155:                                     ; preds = %for.cond.151
  %113 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call156 = call i8* @list_Car(%struct.LIST_HELP* %113)
  %114 = bitcast i8* %call156 to %struct.GRAPHNODE_STRUCT*
  store %struct.GRAPHNODE_STRUCT* %114, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %115 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call157 = call i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %115)
  %116 = load i32, i32* %i, align 4
  %cmp158 = icmp eq i32 %call157, %116
  br i1 %cmp158, label %if.then.160, label %if.end.165

if.then.160:                                      ; preds = %for.body.155
  %117 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %n1, align 8
  %call161 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %117)
  %call162 = call i32 @symbol_GetSigSymbol(i32 %call161)
  store i32 %call162, i32* %s, align 4
  %118 = load i32, i32* %s, align 4
  %conv163 = sext i32 %118 to i64
  %119 = inttoptr i64 %conv163 to i8*
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call164 = call %struct.LIST_HELP* @list_Cons(i8* %119, %struct.LIST_HELP* %120)
  store %struct.LIST_HELP* %call164, %struct.LIST_HELP** %result, align 8
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.160, %for.body.155
  br label %for.inc.166

for.inc.166:                                      ; preds = %if.end.165
  %121 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call167 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %121)
  store %struct.LIST_HELP* %call167, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.151

for.end.168:                                      ; preds = %for.cond.151
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %122 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %graph, align 8
  call void @graph_Delete(%struct.GRAPH_STRUCT* %122)
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %123, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.2, %if.then
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %124
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsConstant(i32 %S) #1 {
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
  %cmp = icmp eq i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
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

declare %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetIncreasedOrdering(i32* %P, i32 %S) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %S.addr = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32*, i32** %P.addr, align 8
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_GetIncreasedOrderingCounter()
  call void @symbol_SetOrdering(i32* %0, i32 %1, i32 %call)
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

declare void @flag_ClearInferenceRules(i32*) #2

declare void @flag_ClearReductionRules(i32*) #2

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

; Function Attrs: nounwind uwtable
define void @ana_ExploitSortAnalysis(i32* %Flags) #0 {
entry:
  %Flags.addr = alloca i32*, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load i32, i32* @ana_SORTRES, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @ana_PEQUATIONS, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %2 = load i32, i32* @ana_SORTMANYEQUATIONS, align 4
  %tobool2 = icmp ne i32 %2, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %3 = load i32*, i32** %Flags.addr, align 8
  call void @flag_SetFlagValue(i32* %3, i32 89, i32 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void
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

declare i32 @clause_ComputeWeight(%struct.CLAUSE_HELP*, i32*) #2

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
define internal i32 @flag_IsInference(i32 %Flag) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_IsOfType(i32 %1, i32 0)
  ret i32 %call
}

declare i8* @flag_Name(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsOfType(i32 %Flag, i32 %Type) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  %Type.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  store i32 %Type, i32* %Type.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Type.addr, align 4
  call void @flag_CheckFlagTypeInRange(i32 %1)
  %2 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_Type(i32 %2)
  %3 = load i32, i32* %Type.addr, align 4
  %cmp = icmp eq i32 %call, %3
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagTypeInRange(i32 %Type) #1 {
entry:
  %Type.addr = alloca i32, align 4
  store i32 %Type, i32* %Type.addr, align 4
  ret void
}

declare i32 @flag_Type(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_IsReduction(i32 %Flag) #1 {
entry:
  %Flag.addr = alloca i32, align 4
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load i32, i32* %Flag.addr, align 4
  call void @flag_CheckFlagIdInRange(i32 %0)
  %1 = load i32, i32* %Flag.addr, align 4
  %call = call i32 @flag_IsOfType(i32 %1, i32 2)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsSignature(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp slt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Type(i32 %ActSymbol) #1 {
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
define internal void @symbol_CheckNoVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetOrdering(i32* %P, i32 %ActSymbol, i32 %Ordering) #1 {
entry:
  %P.addr = alloca i32*, align 8
  %ActSymbol.addr = alloca i32, align 4
  %Ordering.addr = alloca i32, align 4
  %Index = alloca i32, align 4
  store i32* %P, i32** %P.addr, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Ordering, i32* %Ordering.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  store i32 %call, i32* %Index, align 4
  %1 = load i32, i32* %Index, align 4
  call void @symbol_CheckIndexInRange(i32 %1)
  %2 = load i32, i32* %Ordering.addr, align 4
  %3 = load i32, i32* %Index, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** %P.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  store i32 %2, i32* %arrayidx, align 4
  ret void
}

declare i32 @symbol_GetIncreasedOrderingCounter() #2

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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i32 0, i32 0), i32 %4, i8* %call2)
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i32 0, i32 0), i32 %9, i8* %call7)
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

declare %struct.GRAPH_STRUCT* @graph_Create() #2

declare %struct.GRAPHNODE_STRUCT* @graph_AddNode(%struct.GRAPH_STRUCT*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
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
define internal i32 @fol_Equality() #1 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

declare void @graph_AddEdge(%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*) #2

declare %struct.GRAPHNODE_STRUCT* @graph_GetNode(%struct.GRAPH_STRUCT*, i32) #2

declare i32 @graph_StronglyConnectedComponents(%struct.GRAPH_STRUCT*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @graph_Nodes(%struct.GRAPH_STRUCT* %Graph) #1 {
entry:
  %Graph.addr = alloca %struct.GRAPH_STRUCT*, align 8
  store %struct.GRAPH_STRUCT* %Graph, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %0 = load %struct.GRAPH_STRUCT*, %struct.GRAPH_STRUCT** %Graph.addr, align 8
  %nodes = getelementptr inbounds %struct.GRAPH_STRUCT, %struct.GRAPH_STRUCT* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nodes, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeCompNum(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %comp_num = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 2
  %1 = load i32, i32* %comp_num, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetSigSymbol(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %call = call %struct.signature* @symbol_Signature(i32 %0)
  %info = getelementptr inbounds %struct.signature, %struct.signature* %call, i32 0, i32 5
  %1 = load i32, i32* %info, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %number = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 0
  %1 = load i32, i32* %number, align 4
  ret i32 %1
}

declare void @graph_Delete(%struct.GRAPH_STRUCT*) #2

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
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
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

declare %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP*, i32 (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_PositiveArity(i32 %ActSymbol) #1 {
entry:
  %retval = alloca i32, align 4
  %ActSymbol.addr = alloca i32, align 4
  %arity = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Arity(i32 %0)
  store i32 %call, i32* %arity, align 4
  %1 = load i32, i32* %arity, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %arity, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare void @graph_SortNodes(%struct.GRAPH_STRUCT*, i32 (%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ana_NodeGreater(%struct.GRAPHNODE_STRUCT* %N1, %struct.GRAPHNODE_STRUCT* %N2) #0 {
entry:
  %N1.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %N2.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %N1, %struct.GRAPHNODE_STRUCT** %N1.addr, align 8
  store %struct.GRAPHNODE_STRUCT* %N2, %struct.GRAPHNODE_STRUCT** %N2.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %N1.addr, align 8
  %call = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %0)
  %call1 = call i32 @symbol_GetSigSymbol(i32 %call)
  %call2 = call i32 @symbol_Arity(i32 %call1)
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %N2.addr, align 8
  %call3 = call i32 @graph_NodeNumber(%struct.GRAPHNODE_STRUCT* %1)
  %call4 = call i32 @symbol_GetSigSymbol(i32 %call3)
  %call5 = call i32 @symbol_Arity(i32 %call4)
  %cmp = icmp sgt i32 %call2, %call5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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
define internal i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @fol_IsEquality(%struct.term* %call)
  ret i32 %call1
}

declare i32 @fol_DistributiveEquation(%struct.term*, i32*, i32*) #2

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
define internal i32 @term_IsVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsVariable(i32 %call)
  ret i32 %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_EqualTopSymbols(%struct.term* %T, %struct.term* %S) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %S.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.term* %S, %struct.term** %S.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %S.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  ret i32 %call2
}

declare i32 @term_HasSubterm(%struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @ana_IncNodeDegree(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call = call i32 @ana_NodeDegree(%struct.GRAPHNODE_STRUCT* %1)
  %add = add i32 %call, 1
  %conv = zext i32 %add to i64
  %2 = inttoptr i64 %conv to i8*
  call void @graph_NodeSetInfo(%struct.GRAPHNODE_STRUCT* %0, i8* %2)
  ret void
}

declare void @graph_DeleteDuplicateEdges(%struct.GRAPH_STRUCT*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @graph_NodeNeighbors(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %neighbors = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %neighbors, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ana_NodeDegree(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %call = call i8* @graph_NodeInfo(%struct.GRAPHNODE_STRUCT* %0)
  %1 = ptrtoint i8* %call to i32
  ret i32 %1
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

declare void @graph_DeleteEdge(%struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ana_BidirectionalDistributivity(%struct.LIST_HELP* %SymbolPairs) #0 {
entry:
  %retval = alloca i32, align 4
  %SymbolPairs.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %actPair = alloca %struct.LIST_HELP*, align 8
  %nextPair = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %SymbolPairs, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %actPair, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot6 = xor i1 %tobool5, true
  br i1 %lnot6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.3
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call8 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %nextPair, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actPair, align 8
  %call9 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = ptrtoint i8* %call9 to i32
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nextPair, align 8
  %call10 = call i8* @list_PairSecond(%struct.LIST_HELP* %9)
  %10 = ptrtoint i8* %call10 to i32
  %call11 = call i32 @symbol_Equal(i32 %8, i32 %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.7
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actPair, align 8
  %call13 = call i8* @list_PairSecond(%struct.LIST_HELP* %11)
  %12 = ptrtoint i8* %call13 to i32
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nextPair, align 8
  %call14 = call i8* @list_PairFirst(%struct.LIST_HELP* %13)
  %14 = ptrtoint i8* %call14 to i32
  %call15 = call i32 @symbol_Equal(i32 %12, i32 %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.3

for.end:                                          ; preds = %for.cond.3
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %SymbolPairs.addr, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.20, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
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
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

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
define internal i32 @symbol_IsVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @graph_NodeSetInfo(%struct.GRAPHNODE_STRUCT* %Node, i8* %Info) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  %Info.addr = alloca i8*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  store i8* %Info, i8** %Info.addr, align 8
  %0 = load i8*, i8** %Info.addr, align 8
  %1 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %info = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %1, i32 0, i32 3
  store i8* %0, i8** %info, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @graph_NodeInfo(%struct.GRAPHNODE_STRUCT* %Node) #1 {
entry:
  %Node.addr = alloca %struct.GRAPHNODE_STRUCT*, align 8
  store %struct.GRAPHNODE_STRUCT* %Node, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %0 = load %struct.GRAPHNODE_STRUCT*, %struct.GRAPHNODE_STRUCT** %Node.addr, align 8
  %info = getelementptr inbounds %struct.GRAPHNODE_STRUCT, %struct.GRAPHNODE_STRUCT* %0, i32 0, i32 3
  %1 = load i8*, i8** %info, align 8
  ret i8* %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
