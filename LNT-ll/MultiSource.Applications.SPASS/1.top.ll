; ModuleID = './MultiSource.Applications.SPASS/1.top.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
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
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.DEF_HELP = type { %struct.term*, %struct.term*, %struct.term*, %struct.LIST_HELP*, i8*, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@top_RemoveFileOptId = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\0A\09          %s %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"V 2.1\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"\0A\09       Usage: FLOTTER [options] [<input-file>] [<output-file>]\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"\0A\09       Usage: SPASS [options] [<input-file>] \0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Possible options:\0A\00", align 1
@top_InputFile = internal global i8* null, align 8
@stdin = external global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"\0A No formulae and clauses found in input file!\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"axiom%d\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"\0AAdded label %s for axiom \0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"declaration%d\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\0AAdded label %s for declaration \0A\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"\0ASPASS %s \00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"\0ASPASS beiseite: \00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Ran out of time.\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Maximal number of loops exceeded.\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"Proof found.\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"Completion found.\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\0AProblem: %s \00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"Read from stdin.\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"\0ASPASS derived %d clauses,\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c" backtracked %d clauses\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c" and kept %d clauses.\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"\0ASPASS spent\09\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c" on the problem.\0A\09\09\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c" for the input.\0A\09\09\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c" for the FLOTTER CNF translation.\0A\09\09\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c" for inferences.\0A\09\09\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c" for the backtracking.\0A\09\09\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c" for the reduction.\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"{*SPASS V 2.1 *}\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"SPASS\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c".model\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c".clauses\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.35 = private unnamed_addr constant [24 x i8] c"{*Completion_by_SPASS*}\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"satisfiable\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"{*Clauses_generated_by_SPASS*}\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"\0ACompletion printed to: %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [25 x i8] c"\0AClauses printed to: %s\0A\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"\0A\0A The saturated set of worked-off clauses is :\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"\0AFormulae used in the proof :\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"_SORT_\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.45 = private unnamed_addr constant [68 x i8] c"\0A--------------------------SPASS-STOP------------------------------\00", align 1
@stack_POINTER = external global i32, align 4
@ana_FINITEMONADICPREDICATES = external global %struct.LIST_HELP*, align 8
@.str.46 = private unnamed_addr constant [8 x i8] c"FLOTTER\00", align 1
@flag_CLEAN = external constant i32, align 4
@stderr = external global %struct._IO_FILE*, align 8
@.str.47 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@fol_NOT = external global i32, align 4
@clause_CLAUSECOUNTER = external global i32, align 4
@.str.49 = private unnamed_addr constant [36 x i8] c"\0A\09CNF generated by FLOTTER V 2.1 *}\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"\0AFLOTTER needed\09\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c" for the input.\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c" for the  CNF translation.\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.54 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.55 = private unnamed_addr constant [67 x i8] c"--------------------------SPASS-START-----------------------------\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"Input Problem:\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"\0AProcessed Problem:\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"\0AWorked Off Clauses:\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c"\0AUsable Clauses:\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"\0A\09 Split Backtracking level %d:\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"\0ADerived: \00", align 1
@red_ALL = external constant i32, align 4
@red_WORKEDOFF = external constant i32, align 4
@.str.62 = private unnamed_addr constant [15 x i8] c"\0AEmptyClause: \00", align 1
@.str.63 = private unnamed_addr constant [40 x i8] c"\0A\0A\09 ---- New Clause %s Bound: %2d ----\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"Term Depth\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"Weight\00", align 1
@ana_SORTRES = external global i32, align 4
@ana_USORTRES = external global i32, align 4
@.str.66 = private unnamed_addr constant [17 x i8] c"\0A\09Given clause: \00", align 1
@term_STAMP = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %InputClauses = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Axioms = alloca %struct.LIST_HELP*, align 8
  %Conjectures = alloca %struct.LIST_HELP*, align 8
  %Sorts = alloca %struct.LIST_HELP*, align 8
  %QueryClauses = alloca %struct.LIST_HELP*, align 8
  %LabelClauses = alloca %struct.LIST_HELP*, align 8
  %QueryPair = alloca %struct.LIST_HELP*, align 8
  %ProblemClauses = alloca %struct.LIST_HELP*, align 8
  %Labellist = alloca %struct.LIST_HELP*, align 8
  %Sortlabellist = alloca %struct.LIST_HELP*, align 8
  %Symblist = alloca %struct.LIST_HELP*, align 8
  %UserPrecedence = alloca %struct.LIST_HELP*, align 8
  %Search = alloca %struct.PROOFSEARCH_HELP*, align 8
  %FlotterSearch = alloca %struct.PROOFSEARCH_HELP*, align 8
  %InputFlags = alloca i32*, align 8
  %Flags = alloca i32*, align 8
  %InputPrecedence = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %InputStream = alloca %struct._IO_FILE*, align 8
  %TermLabelToClauselist = alloca %struct.LIST_HELP**, align 8
  %ClauseToTermLabellist = alloca %struct.LIST_HELP**, align 8
  %Result = alloca i32, align 4
  %Termcount = alloca i32, align 4
  %L = alloca [100 x i8], align 16
  %Label = alloca i8*, align 8
  %L115 = alloca [100 x i8], align 16
  %Label116 = alloca i8*, align 8
  %deflist = alloca %struct.LIST_HELP*, align 8
  %BoundApplied = alloca i32, align 4
  %l = alloca %struct.LIST_HELP*, align 8
  %l210 = alloca %struct.LIST_HELP*, align 8
  %C = alloca %struct.CLAUSE_HELP*, align 8
  %l224 = alloca %struct.LIST_HELP*, align 8
  %Output = alloca %struct._IO_FILE*, align 8
  %name = alloca [100 x i8], align 16
  %creator = alloca i8*, align 8
  %PrintPotProductive = alloca i32, align 4
  %UsedClauses = alloca %struct.LIST_HELP*, align 8
  %UsedTerms = alloca %struct.LIST_HELP*, align 8
  %L398 = alloca %struct.LIST_HELP*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.PROOFSEARCH_HELP* null, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @clock_Init()
  call void @clock_StartCounter(i32 1)
  call void @memory_Init(i64 -1)
  %call = call i32 @atexit(void ()* @memory_FreeAllMem) #6
  call void @symbol_Init(i32 1)
  call void @stack_Init()
  call void @hash_Init()
  call void @sort_Init()
  call void @term_Init()
  %call1 = call i32* @symbol_CreatePrecedence()
  store i32* %call1, i32** %InputPrecedence, align 8
  %0 = load i32*, i32** %InputPrecedence, align 8
  call void @fol_Init(i32 1, i32* %0)
  call void @cont_Init()
  call void @unify_Init()
  call void @flag_Init()
  call void @subs_Init()
  call void @clause_Init()
  call void @red_Init()
  call void @ren_Init()
  call void @dp_Init()
  call void @opts_Init()
  call void @ana_Init()
  call void @cc_Init()
  %call2 = call %struct.PROOFSEARCH_HELP* @prfs_Create()
  store %struct.PROOFSEARCH_HELP* %call2, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call3 = call i32* @flag_CreateStore()
  store i32* %call3, i32** %InputFlags, align 8
  call void @opts_DeclareSPASSFlagsAsOptions()
  %call4 = call i32 @opts_Declare(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i32 0)
  store i32 %call4, i32* @top_RemoveFileOptId, align 4
  %1 = load i32, i32* %argc.addr, align 4
  %2 = load i8**, i8*** %argv.addr, align 8
  %call5 = call i32 @opts_Read(i32 %1, i8** %2)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32*, i32** %InputFlags, align 8
  call void @flag_InitStoreByDefaults(i32* %3)
  %4 = load i32*, i32** %InputFlags, align 8
  call void @opts_SetFlags(i32* %4)
  %5 = load i32, i32* %argc.addr, align 4
  %call6 = call i32 @opts_Indicator()
  %add = add nsw i32 %call6, 1
  %cmp = icmp slt i32 %5, %add
  br i1 %cmp, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32*, i32** %InputFlags, align 8
  %call7 = call i32 @flag_GetFlagValue(i32* %6, i32 1)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.21, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 0
  %8 = load i8*, i8** %arrayidx, align 8
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %9 = load i8**, i8*** %argv.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %9, i64 0
  %10 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 @top_CalledFlotter(i8* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %11 = load i32*, i32** %InputFlags, align 8
  %call14 = call i32 @flag_GetFlagValue(i32* %11, i32 3)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %lor.lhs.false, %if.then.9
  %call17 = call i32 @puts(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.19

if.else:                                          ; preds = %lor.lhs.false
  %call18 = call i32 @puts(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.16
  %call20 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0))
  call void @opts_PrintSPASSNames()
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true, %if.end
  store %struct.PROOFSEARCH_HELP* null, %struct.PROOFSEARCH_HELP** %FlotterSearch, align 8
  %call22 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %UserPrecedence, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Sortlabellist, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Labellist, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Sorts, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Conjectures, align 8
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Axioms, align 8
  %12 = load i32*, i32** %InputFlags, align 8
  %call23 = call i32 @flag_GetFlagValue(i32* %12, i32 1)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %if.end.21
  store i8* null, i8** @top_InputFile, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %13, %struct._IO_FILE** %InputStream, align 8
  br label %if.end.30

if.else.26:                                       ; preds = %if.end.21
  %call27 = call i32 @opts_Indicator()
  %idxprom = sext i32 %call27 to i64
  %14 = load i8**, i8*** %argv.addr, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx28, align 8
  store i8* %15, i8** @top_InputFile, align 8
  %16 = load i8*, i8** @top_InputFile, align 8
  %call29 = call %struct._IO_FILE* @misc_OpenFile(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  store %struct._IO_FILE* %call29, %struct._IO_FILE** %InputStream, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.26, %if.then.25
  call void @clock_StartCounter(i32 2)
  %17 = load i32*, i32** %InputFlags, align 8
  call void @flag_CleanStore(i32* %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %InputStream, align 8
  %19 = load i32*, i32** %InputFlags, align 8
  %20 = load i32*, i32** %InputPrecedence, align 8
  %call31 = call %struct.LIST_HELP* @dfg_DFGParser(%struct._IO_FILE* %18, i32* %19, i32* %20, %struct.LIST_HELP** %Axioms, %struct.LIST_HELP** %Conjectures, %struct.LIST_HELP** %Sorts, %struct.LIST_HELP** %UserPrecedence)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %InputClauses, align 8
  %21 = load i32*, i32** %InputFlags, align 8
  call void @opts_SetFlags(i32* %21)
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call32 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %22)
  store i32* %call32, i32** %Flags, align 8
  %23 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call33 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %23)
  store i32* %call33, i32** %Precedence, align 8
  %24 = load i32*, i32** %InputFlags, align 8
  %25 = load i32*, i32** %Flags, align 8
  call void @flag_TransferSetFlags(i32* %24, i32* %25)
  %26 = load i32*, i32** %InputPrecedence, align 8
  %27 = load i32*, i32** %Precedence, align 8
  call void @symbol_TransferPrecedence(i32* %26, i32* %27)
  %28 = load i32*, i32** %Flags, align 8
  %call34 = call i32 @flag_GetFlagValue(i32* %28, i32 2)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.47, label %land.lhs.true.36

land.lhs.true.36:                                 ; preds = %if.end.30
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.47

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %30)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %land.lhs.true.39
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %land.lhs.true.42
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @fflush(%struct._IO_FILE* %32)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0))
  call void @misc_Error()
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %land.lhs.true.42, %land.lhs.true.39, %land.lhs.true.36, %if.end.30
  %33 = load i32*, i32** %Flags, align 8
  call void @cnf_Init(i32* %33)
  %34 = load i32*, i32** %Flags, align 8
  %call48 = call i32 @flag_GetFlagValue(i32* %34, i32 2)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  %35 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %35, i32 9, i32 1)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  %36 = load i32*, i32** %Flags, align 8
  %call52 = call i32 @flag_GetFlagValue(i32* %36, i32 9)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.51
  %37 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_AddDocProofSharingIndex(%struct.PROOFSEARCH_HELP* %37)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.end.51
  %38 = load i32*, i32** %Flags, align 8
  %call56 = call i32 @flag_GetFlagValue(i32* %38, i32 9)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.61

if.then.58:                                       ; preds = %if.end.55
  %call59 = call %struct.LIST_HELP** @hsh_Create()
  store %struct.LIST_HELP** %call59, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  %call60 = call %struct.LIST_HELP** @hsh_Create()
  store %struct.LIST_HELP** %call60, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  br label %if.end.62

if.else.61:                                       ; preds = %if.end.55
  store %struct.LIST_HELP** null, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  store %struct.LIST_HELP** null, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.58
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  store %struct.LIST_HELP* %39, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.62
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot = xor i1 %tobool64, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call65 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call65 to %struct.LIST_HELP*
  %call66 = call i32 @fol_Not()
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call67 = call i8* @list_Car(%struct.LIST_HELP* %43)
  %44 = bitcast i8* %call67 to %struct.LIST_HELP*
  %call68 = call i8* @list_PairSecond(%struct.LIST_HELP* %44)
  %call69 = call %struct.LIST_HELP* @list_List(i8* %call68)
  %call70 = call %struct.term* @term_Create(i32 %call66, %struct.LIST_HELP* %call69)
  %45 = bitcast %struct.term* %call70 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %42, %struct.LIST_HELP* %45)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call71 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @clock_StopPassedTime(i32 2)
  %47 = load i8*, i8** @top_InputFile, align 8
  %tobool72 = icmp ne i8* %47, null
  br i1 %tobool72, label %if.then.73, label %if.end.79

if.then.73:                                       ; preds = %for.end
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %InputStream, align 8
  %49 = load i8*, i8** @top_InputFile, align 8
  call void @misc_CloseFile(%struct._IO_FILE* %48, i8* %49)
  %50 = load i32, i32* @top_RemoveFileOptId, align 4
  %call74 = call i32 @opts_IsSet(i32 %50)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.73
  %51 = load i8*, i8** @top_InputFile, align 8
  %call77 = call i32 @remove(i8* %51) #6
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.then.73
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %for.end
  call void @clock_StartCounter(i32 3)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  %call80 = call i32 @list_Empty(%struct.LIST_HELP* %52)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.155

if.then.82:                                       ; preds = %if.end.79
  store i32 0, i32* %Termcount, align 4
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  store %struct.LIST_HELP* %53, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.107, %if.then.82
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call84 = call i32 @list_Empty(%struct.LIST_HELP* %54)
  %tobool85 = icmp ne i32 %call84, 0
  %lnot86 = xor i1 %tobool85, true
  br i1 %lnot86, label %for.body.87, label %for.end.109

for.body.87:                                      ; preds = %for.cond.83
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call88 to %struct.LIST_HELP*
  %call89 = call i8* @list_PairFirst(%struct.LIST_HELP* %56)
  %cmp90 = icmp eq i8* %call89, null
  br i1 %cmp90, label %if.then.91, label %if.end.106

if.then.91:                                       ; preds = %for.body.87
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %L, i32 0, i32 0
  %57 = load i32, i32* %Termcount, align 4
  %call92 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i32 %57) #6
  %arraydecay93 = getelementptr inbounds [100 x i8], [100 x i8]* %L, i32 0, i32 0
  %call94 = call i8* @string_StringCopy(i8* %arraydecay93)
  store i8* %call94, i8** %Label, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call95 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call95 to %struct.LIST_HELP*
  %60 = load i8*, i8** %Label, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %59, i8* %60)
  %61 = load i32*, i32** %Flags, align 8
  %call96 = call i32 @flag_GetFlagValue(i32* %61, i32 9)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %land.lhs.true.98, label %if.end.105

land.lhs.true.98:                                 ; preds = %if.then.91
  %62 = load i32*, i32** %Flags, align 8
  %call99 = call i32 @flag_GetFlagValue(i32* %62, i32 25)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.105

if.then.101:                                      ; preds = %land.lhs.true.98
  %63 = load i8*, i8** %Label, align 8
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0), i8* %63)
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call103 = call i8* @list_Car(%struct.LIST_HELP* %64)
  %65 = bitcast i8* %call103 to %struct.LIST_HELP*
  %call104 = call i8* @list_PairSecond(%struct.LIST_HELP* %65)
  %66 = bitcast i8* %call104 to %struct.term*
  call void @fol_PrettyPrintDFG(%struct.term* %66)
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.101, %land.lhs.true.98, %if.then.91
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %for.body.87
  br label %for.inc.107

for.inc.107:                                      ; preds = %if.end.106
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call108 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %67)
  store %struct.LIST_HELP* %call108, %struct.LIST_HELP** %Scan, align 8
  %68 = load i32, i32* %Termcount, align 4
  %inc = add i32 %68, 1
  store i32 %inc, i32* %Termcount, align 4
  br label %for.cond.83

for.end.109:                                      ; preds = %for.cond.83
  store i32 0, i32* %Termcount, align 4
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  store %struct.LIST_HELP* %69, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.133, %for.end.109
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call111 = call i32 @list_Empty(%struct.LIST_HELP* %70)
  %tobool112 = icmp ne i32 %call111, 0
  %lnot113 = xor i1 %tobool112, true
  br i1 %lnot113, label %for.body.114, label %for.end.135

for.body.114:                                     ; preds = %for.cond.110
  %arraydecay117 = getelementptr inbounds [100 x i8], [100 x i8]* %L115, i32 0, i32 0
  %71 = load i32, i32* %Termcount, align 4
  %call118 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay117, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i32 %71) #6
  %arraydecay119 = getelementptr inbounds [100 x i8], [100 x i8]* %L115, i32 0, i32 0
  %call120 = call i8* @string_StringCopy(i8* %arraydecay119)
  store i8* %call120, i8** %Label116, align 8
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call121 = call i8* @list_Car(%struct.LIST_HELP* %72)
  %73 = bitcast i8* %call121 to %struct.LIST_HELP*
  %74 = load i8*, i8** %Label116, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %73, i8* %74)
  %75 = load i32*, i32** %Flags, align 8
  %call122 = call i32 @flag_GetFlagValue(i32* %75, i32 9)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.131

land.lhs.true.124:                                ; preds = %for.body.114
  %76 = load i32*, i32** %Flags, align 8
  %call125 = call i32 @flag_GetFlagValue(i32* %76, i32 25)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %land.lhs.true.124
  %77 = load i8*, i8** %Label116, align 8
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i32 0, i32 0), i8* %77)
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call129 = call i8* @list_Car(%struct.LIST_HELP* %78)
  %79 = bitcast i8* %call129 to %struct.LIST_HELP*
  %call130 = call i8* @list_PairSecond(%struct.LIST_HELP* %79)
  %80 = bitcast i8* %call130 to %struct.term*
  call void @fol_PrettyPrintDFG(%struct.term* %80)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.127, %land.lhs.true.124, %for.body.114
  %81 = load i8*, i8** %Label116, align 8
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sortlabellist, align 8
  %call132 = call %struct.LIST_HELP* @list_Cons(i8* %81, %struct.LIST_HELP* %82)
  store %struct.LIST_HELP* %call132, %struct.LIST_HELP** %Sortlabellist, align 8
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.131
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call134 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %83)
  store %struct.LIST_HELP* %call134, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.110

for.end.135:                                      ; preds = %for.cond.110
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  %call136 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %84, %struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call136, %struct.LIST_HELP** %Axioms, align 8
  %86 = load i32*, i32** %Flags, align 8
  %call137 = call i32 @flag_GetFlagValue(i32* %86, i32 51)
  %cmp138 = icmp ne i32 %call137, 0
  br i1 %cmp138, label %if.then.139, label %if.end.142

if.then.139:                                      ; preds = %for.end.135
  %87 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  call void @def_ExtractDefsFromTermlist(%struct.PROOFSEARCH_HELP* %87, %struct.LIST_HELP* %88, %struct.LIST_HELP* %89)
  %90 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call140 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %90)
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  %92 = load i32*, i32** %Flags, align 8
  %93 = load i32*, i32** %Precedence, align 8
  %call141 = call %struct.LIST_HELP* @def_ApplyDefinitionToTermList(%struct.LIST_HELP* %call140, %struct.LIST_HELP* %91, i32* %92, i32* %93)
  store %struct.LIST_HELP* %call141, %struct.LIST_HELP** %Conjectures, align 8
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.139, %for.end.135
  %call143 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call143, %struct.LIST_HELP** %Symblist, align 8
  %94 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  %96 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  %97 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  %98 = load i32*, i32** %Flags, align 8
  %99 = load i32*, i32** %Precedence, align 8
  %call144 = call %struct.PROOFSEARCH_HELP* @cnf_Flotter(%struct.LIST_HELP* %94, %struct.LIST_HELP* %95, %struct.LIST_HELP** %InputClauses, %struct.LIST_HELP** %Labellist, %struct.LIST_HELP** %96, %struct.LIST_HELP** %97, i32* %98, i32* %99, %struct.LIST_HELP** %Symblist)
  store %struct.PROOFSEARCH_HELP* %call144, %struct.PROOFSEARCH_HELP** %FlotterSearch, align 8
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  %call145 = call %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %100)
  store %struct.LIST_HELP* %call145, %struct.LIST_HELP** %InputClauses, align 8
  call void @clause_SetCounter(i32 1)
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  store %struct.LIST_HELP* %101, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.152, %if.end.142
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call147 = call i32 @list_Empty(%struct.LIST_HELP* %102)
  %tobool148 = icmp ne i32 %call147, 0
  %lnot149 = xor i1 %tobool148, true
  br i1 %lnot149, label %for.body.150, label %for.end.154

for.body.150:                                     ; preds = %for.cond.146
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call151 = call i8* @list_Car(%struct.LIST_HELP* %103)
  %104 = bitcast i8* %call151 to %struct.CLAUSE_HELP*
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %104)
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.150
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call153 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %105)
  store %struct.LIST_HELP* %call153, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.146

for.end.154:                                      ; preds = %for.cond.146
  br label %if.end.171

if.else.155:                                      ; preds = %if.end.79
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %106)
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %107)
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures, align 8
  call void @dfg_DeleteFormulaPairList(%struct.LIST_HELP* %108)
  %109 = load i32*, i32** %Flags, align 8
  %call156 = call i32 @flag_GetFlagValue(i32* %109, i32 51)
  %cmp157 = icmp ne i32 %call156, 0
  br i1 %cmp157, label %if.then.158, label %if.end.170

if.then.158:                                      ; preds = %if.else.155
  %110 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %111 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  call void @def_ExtractDefsFromClauselist(%struct.PROOFSEARCH_HELP* %110, %struct.LIST_HELP* %111)
  %112 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @def_FlattenDefinitionsDestructive(%struct.PROOFSEARCH_HELP* %112)
  %113 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call159 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %113)
  store %struct.LIST_HELP* %call159, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.167, %if.then.158
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call161 = call i32 @list_Empty(%struct.LIST_HELP* %114)
  %tobool162 = icmp ne i32 %call161, 0
  %lnot163 = xor i1 %tobool162, true
  br i1 %lnot163, label %for.body.164, label %for.end.169

for.body.164:                                     ; preds = %for.cond.160
  %115 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %116 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call165 = call i8* @list_Car(%struct.LIST_HELP* %116)
  %117 = bitcast i8* %call165 to %struct.DEF_HELP*
  %118 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  %call166 = call %struct.LIST_HELP* @def_ApplyDefToClauselist(%struct.PROOFSEARCH_HELP* %115, %struct.DEF_HELP* %117, %struct.LIST_HELP* %118, i32 1)
  store %struct.LIST_HELP* %call166, %struct.LIST_HELP** %InputClauses, align 8
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.164
  %119 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call168 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %119)
  store %struct.LIST_HELP* %call168, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.160

for.end.169:                                      ; preds = %for.cond.160
  br label %if.end.170

if.end.170:                                       ; preds = %for.end.169, %if.else.155
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170, %for.end.154
  call void @clock_StopPassedTime(i32 3)
  %120 = load i8**, i8*** %argv.addr, align 8
  %arrayidx172 = getelementptr inbounds i8*, i8** %120, i64 0
  %121 = load i8*, i8** %arrayidx172, align 8
  %call173 = call i32 @top_CalledFlotter(i8* %121)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then.178, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %if.end.171
  %122 = load i32*, i32** %Flags, align 8
  %call176 = call i32 @flag_GetFlagValue(i32* %122, i32 3)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.then.178, label %if.end.179

if.then.178:                                      ; preds = %lor.lhs.false.175, %if.end.171
  %123 = load i32, i32* %argc.addr, align 4
  %124 = load i8**, i8*** %argv.addr, align 8
  %125 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  call void @top_Flotter(i32 %123, i8** %124, %struct.LIST_HELP* %125)
  %126 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %126, i32 7, i32 0)
  %127 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %127, i32 2, i32 0)
  %128 = load i32*, i32** %Flags, align 8
  call void @flag_SetFlagValue(i32* %128, i32 27, i32 0)
  br label %if.end.179

if.end.179:                                       ; preds = %if.then.178, %lor.lhs.false.175
  %129 = load i32*, i32** %Flags, align 8
  %call180 = call i32 @flag_GetFlagValue(i32* %129, i32 6)
  %conv = sext i32 %call180 to i64
  call void @memory_Restrict(i64 %conv)
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.179
  %call181 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call181, %struct.LIST_HELP** %ProblemClauses, align 8
  %call182 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call182, %struct.LIST_HELP** %LabelClauses, align 8
  store i32 2, i32* %Result, align 4
  %130 = load i32*, i32** %Flags, align 8
  %call183 = call i32 @flag_GetFlagValue(i32* %130, i32 2)
  %tobool184 = icmp ne i32 %call183, 0
  br i1 %tobool184, label %if.then.185, label %if.else.248

if.then.185:                                      ; preds = %do.body
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %InputStream, align 8
  %132 = load i32*, i32** %Flags, align 8
  %call186 = call %struct.LIST_HELP* @ia_GetNextRequest(%struct._IO_FILE* %131, i32* %132)
  store %struct.LIST_HELP* %call186, %struct.LIST_HELP** %QueryPair, align 8
  %133 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  %call187 = call i32 @list_Empty(%struct.LIST_HELP* %133)
  %tobool188 = icmp ne i32 %call187, 0
  br i1 %tobool188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.then.185
  br label %do.end

if.end.190:                                       ; preds = %if.then.185
  %134 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  %call191 = call i8* @list_PairSecond(%struct.LIST_HELP* %134)
  %135 = bitcast i8* %call191 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %135, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.202, %if.end.190
  %136 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call193 = call i32 @list_Empty(%struct.LIST_HELP* %136)
  %tobool194 = icmp ne i32 %call193, 0
  %lnot195 = xor i1 %tobool194, true
  br i1 %lnot195, label %for.body.196, label %for.end.204

for.body.196:                                     ; preds = %for.cond.192
  %137 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  %138 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call197 = call i8* @list_Car(%struct.LIST_HELP* %138)
  %call198 = call %struct.LIST_HELP* @hsh_GetWithCompareFunc(%struct.LIST_HELP** %137, i8* %call197, i32 (i8*, i8*)* @cnf_LabelEqual, i64 (i8*)* @hsh_StringHashKey)
  store %struct.LIST_HELP* %call198, %struct.LIST_HELP** %l, align 8
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call199 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %139)
  %call200 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %call199)
  store %struct.LIST_HELP* %call200, %struct.LIST_HELP** %l, align 8
  %140 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %141 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LabelClauses, align 8
  %call201 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %140, %struct.LIST_HELP* %141)
  store %struct.LIST_HELP* %call201, %struct.LIST_HELP** %LabelClauses, align 8
  br label %for.inc.202

for.inc.202:                                      ; preds = %for.body.196
  %142 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call203 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %142)
  store %struct.LIST_HELP* %call203, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.192

for.end.204:                                      ; preds = %for.cond.192
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sortlabellist, align 8
  store %struct.LIST_HELP* %143, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.205

for.cond.205:                                     ; preds = %for.inc.216, %for.end.204
  %144 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call206 = call i32 @list_Empty(%struct.LIST_HELP* %144)
  %tobool207 = icmp ne i32 %call206, 0
  %lnot208 = xor i1 %tobool207, true
  br i1 %lnot208, label %for.body.209, label %for.end.218

for.body.209:                                     ; preds = %for.cond.205
  %145 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  %146 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call211 = call i8* @list_Car(%struct.LIST_HELP* %146)
  %call212 = call %struct.LIST_HELP* @hsh_GetWithCompareFunc(%struct.LIST_HELP** %145, i8* %call211, i32 (i8*, i8*)* @cnf_LabelEqual, i64 (i8*)* @hsh_StringHashKey)
  store %struct.LIST_HELP* %call212, %struct.LIST_HELP** %l210, align 8
  %147 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l210, align 8
  %call213 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %147)
  %call214 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %call213)
  store %struct.LIST_HELP* %call214, %struct.LIST_HELP** %l210, align 8
  %148 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l210, align 8
  %149 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LabelClauses, align 8
  %call215 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %148, %struct.LIST_HELP* %149)
  store %struct.LIST_HELP* %call215, %struct.LIST_HELP** %LabelClauses, align 8
  br label %for.inc.216

for.inc.216:                                      ; preds = %for.body.209
  %150 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call217 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %150)
  store %struct.LIST_HELP* %call217, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.205

for.end.218:                                      ; preds = %for.cond.205
  %151 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LabelClauses, align 8
  store %struct.LIST_HELP* %151, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.219

for.cond.219:                                     ; preds = %for.inc.231, %for.end.218
  %152 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call220 = call i32 @list_Empty(%struct.LIST_HELP* %152)
  %tobool221 = icmp ne i32 %call220, 0
  %lnot222 = xor i1 %tobool221, true
  br i1 %lnot222, label %for.body.223, label %for.end.233

for.body.223:                                     ; preds = %for.cond.219
  %153 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call225 = call i8* @list_Car(%struct.LIST_HELP* %153)
  %154 = bitcast i8* %call225 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %154, %struct.CLAUSE_HELP** %C, align 8
  %155 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  %156 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C, align 8
  %157 = bitcast %struct.CLAUSE_HELP* %156 to i8*
  %call226 = call %struct.LIST_HELP* @hsh_Get(%struct.LIST_HELP** %155, i8* %157)
  %call227 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call226)
  store %struct.LIST_HELP* %call227, %struct.LIST_HELP** %l224, align 8
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l224, align 8
  %call228 = call %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %158)
  store %struct.LIST_HELP* %call228, %struct.LIST_HELP** %l224, align 8
  %159 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %160 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C, align 8
  %call229 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %160)
  %161 = bitcast %struct.CLAUSE_HELP* %call229 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %159, i8* %161)
  %162 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  %163 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call230 = call i8* @list_Car(%struct.LIST_HELP* %163)
  %164 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l224, align 8
  call void @hsh_PutList(%struct.LIST_HELP** %162, i8* %call230, %struct.LIST_HELP* %164)
  br label %for.inc.231

for.inc.231:                                      ; preds = %for.body.223
  %165 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call232 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %165)
  store %struct.LIST_HELP* %call232, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.219

for.end.233:                                      ; preds = %for.cond.219
  %166 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %FlotterSearch, align 8
  %167 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  %call234 = call i8* @list_PairFirst(%struct.LIST_HELP* %167)
  %168 = bitcast i8* %call234 to %struct.term*
  %call235 = call %struct.LIST_HELP* @cnf_QueryFlotter(%struct.PROOFSEARCH_HELP* %166, %struct.term* %168, %struct.LIST_HELP** %Symblist)
  store %struct.LIST_HELP* %call235, %struct.LIST_HELP** %QueryClauses, align 8
  %169 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryClauses, align 8
  %170 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LabelClauses, align 8
  %call236 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %169, %struct.LIST_HELP* %170)
  store %struct.LIST_HELP* %call236, %struct.LIST_HELP** %ProblemClauses, align 8
  %171 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  %call237 = call i8* @list_PairSecond(%struct.LIST_HELP* %171)
  %172 = bitcast i8* %call237 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %172, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.244, %for.end.233
  %173 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call239 = call i32 @list_Empty(%struct.LIST_HELP* %173)
  %tobool240 = icmp ne i32 %call239, 0
  %lnot241 = xor i1 %tobool240, true
  br i1 %lnot241, label %for.body.242, label %for.end.246

for.body.242:                                     ; preds = %for.cond.238
  %174 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call243 = call i8* @list_Car(%struct.LIST_HELP* %174)
  call void @string_StringFree(i8* %call243)
  br label %for.inc.244

for.inc.244:                                      ; preds = %for.body.242
  %175 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call245 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %175)
  store %struct.LIST_HELP* %call245, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.238

for.end.246:                                      ; preds = %for.cond.238
  %176 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  %call247 = call i8* @list_PairSecond(%struct.LIST_HELP* %176)
  %177 = bitcast i8* %call247 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %177)
  %178 = load %struct.LIST_HELP*, %struct.LIST_HELP** %QueryPair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %178)
  call void @clock_InitCounter(i32 1)
  call void @clock_StartCounter(i32 1)
  br label %if.end.250

if.else.248:                                      ; preds = %do.body
  %179 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  store %struct.LIST_HELP* %179, %struct.LIST_HELP** %ProblemClauses, align 8
  %call249 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call249, %struct.LIST_HELP** %InputClauses, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.248, %for.end.246
  %180 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %181 = load i32*, i32** %Flags, align 8
  %call251 = call i32 @flag_GetFlagValue(i32* %181, i32 5)
  call void @prfs_SetSplitCounter(%struct.PROOFSEARCH_HELP* %180, i32 %call251)
  %182 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %183 = load i32*, i32** %Flags, align 8
  %call252 = call i32 @flag_GetFlagValue(i32* %183, i32 11)
  call void @prfs_SetLoops(%struct.PROOFSEARCH_HELP* %182, i32 %call252)
  %184 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_SetBacktrackedClauses(%struct.PROOFSEARCH_HELP* %184, i32 0)
  store i32 -1, i32* %BoundApplied, align 4
  %185 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %186 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses, align 8
  %187 = load i32*, i32** %InputFlags, align 8
  %188 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UserPrecedence, align 8
  %call253 = call %struct.PROOFSEARCH_HELP* @top_ProofSearch(%struct.PROOFSEARCH_HELP* %185, %struct.LIST_HELP* %186, i32* %187, %struct.LIST_HELP* %188, i32* %BoundApplied)
  store %struct.PROOFSEARCH_HELP* %call253, %struct.PROOFSEARCH_HELP** %Search, align 8
  %189 = load i32*, i32** %Flags, align 8
  %call254 = call i32 @flag_GetFlagValue(i32* %189, i32 7)
  %cmp255 = icmp eq i32 %call254, -1
  br i1 %cmp255, label %land.lhs.true.263, label %lor.lhs.false.257

lor.lhs.false.257:                                ; preds = %if.end.250
  %190 = load i32*, i32** %Flags, align 8
  %call258 = call i32 @flag_GetFlagValue(i32* %190, i32 7)
  %conv259 = sitofp i32 %call258 to float
  %call260 = call float @clock_GetSeconds(i32 1)
  %cmp261 = fcmp ogt float %conv259, %call260
  br i1 %cmp261, label %land.lhs.true.263, label %if.end.281

land.lhs.true.263:                                ; preds = %lor.lhs.false.257, %if.end.250
  %191 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call264 = call i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %191)
  %cmp265 = icmp ne i32 %call264, 0
  br i1 %cmp265, label %land.lhs.true.267, label %if.end.281

land.lhs.true.267:                                ; preds = %land.lhs.true.263
  %192 = load i32, i32* %BoundApplied, align 4
  %cmp268 = icmp eq i32 %192, -1
  br i1 %cmp268, label %if.then.274, label %lor.lhs.false.270

lor.lhs.false.270:                                ; preds = %land.lhs.true.267
  %193 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call271 = call %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %193)
  %call272 = call i32 @list_Empty(%struct.LIST_HELP* %call271)
  %tobool273 = icmp ne i32 %call272, 0
  br i1 %tobool273, label %if.end.281, label %if.then.274

if.then.274:                                      ; preds = %lor.lhs.false.270, %land.lhs.true.267
  %194 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call275 = call %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %194)
  %call276 = call i32 @list_Empty(%struct.LIST_HELP* %call275)
  %tobool277 = icmp ne i32 %call276, 0
  br i1 %tobool277, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %if.then.274
  store i32 1, i32* %Result, align 4
  br label %if.end.280

if.else.279:                                      ; preds = %if.then.274
  store i32 0, i32* %Result, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.279, %if.then.278
  br label %if.end.281

if.end.281:                                       ; preds = %if.end.280, %lor.lhs.false.270, %land.lhs.true.263, %lor.lhs.false.257
  %195 = load i32*, i32** %Flags, align 8
  %call282 = call i32 @flag_GetFlagValue(i32* %195, i32 7)
  %cmp283 = icmp ne i32 %call282, 0
  br i1 %cmp283, label %if.then.285, label %if.end.429

if.then.285:                                      ; preds = %if.end.281
  %call286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0))
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call287 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %196)
  %197 = load i32, i32* %Result, align 4
  switch i32 %197, label %sw.default [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.296
  ]

sw.bb:                                            ; preds = %if.then.285
  %198 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call288 = call i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %198)
  %cmp289 = icmp ne i32 %call288, 0
  br i1 %cmp289, label %if.then.291, label %if.else.293

if.then.291:                                      ; preds = %sw.bb
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call292 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %199)
  br label %if.end.295

if.else.293:                                      ; preds = %sw.bb
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call294 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %200)
  br label %if.end.295

if.end.295:                                       ; preds = %if.else.293, %if.then.291
  br label %sw.epilog

sw.bb.296:                                        ; preds = %if.then.285
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call297 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %201)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.285
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call298 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %202)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.296, %if.end.295
  %203 = load i8*, i8** @top_InputFile, align 8
  %cmp299 = icmp ne i8* %203, null
  br i1 %cmp299, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.epilog
  %204 = load i8*, i8** @top_InputFile, align 8
  %call301 = call i8* @mybasename(i8* %204)
  br label %cond.end

cond.false:                                       ; preds = %sw.epilog
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call301, %cond.true ], [ getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i32 0, i32 0), %cond.false ]
  %call302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %cond)
  %205 = load i32*, i32** %Flags, align 8
  %call303 = call i32 @flag_GetFlagValue(i32* %205, i32 29)
  %tobool304 = icmp ne i32 %call303, 0
  br i1 %tobool304, label %if.then.305, label %if.end.319

if.then.305:                                      ; preds = %cond.end
  call void @clock_StopPassedTime(i32 1)
  %206 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call306 = call i32 @prfs_DerivedClauses(%struct.PROOFSEARCH_HELP* %206)
  %call307 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0), i32 %call306)
  %207 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call308 = call i32 @prfs_BacktrackedClauses(%struct.PROOFSEARCH_HELP* %207)
  %call309 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i32 0, i32 0), i32 %call308)
  %208 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call310 = call i32 @prfs_KeptClauses(%struct.PROOFSEARCH_HELP* %208)
  %call311 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0), i32 %call310)
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call312 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %209)
  call void @clock_PrintTime(i32 1)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call313 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %210)
  call void @clock_PrintTime(i32 2)
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call314 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %211)
  call void @clock_PrintTime(i32 3)
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call315 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %212)
  call void @clock_PrintTime(i32 5)
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call316 = call i32 @fputs(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %213)
  call void @clock_PrintTime(i32 0)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call317 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %214)
  call void @clock_PrintTime(i32 4)
  %call318 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.305, %cond.end
  %215 = load i32, i32* %Result, align 4
  %cmp320 = icmp ne i32 %215, 0
  br i1 %cmp320, label %land.lhs.true.322, label %if.end.370

land.lhs.true.322:                                ; preds = %if.end.319
  %216 = load i32*, i32** %Flags, align 8
  %call323 = call i32 @flag_GetFlagValue(i32* %216, i32 30)
  %cmp324 = icmp ne i32 %call323, 0
  br i1 %cmp324, label %if.then.326, label %if.end.370

if.then.326:                                      ; preds = %land.lhs.true.322
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i8** %creator, align 8
  %arraydecay327 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %217 = load i8*, i8** @top_InputFile, align 8
  %cmp328 = icmp ne i8* %217, null
  br i1 %cmp328, label %cond.true.330, label %cond.false.331

cond.true.330:                                    ; preds = %if.then.326
  %218 = load i8*, i8** @top_InputFile, align 8
  br label %cond.end.332

cond.false.331:                                   ; preds = %if.then.326
  br label %cond.end.332

cond.end.332:                                     ; preds = %cond.false.331, %cond.true.330
  %cond333 = phi i8* [ %218, %cond.true.330 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %cond.false.331 ]
  %call334 = call i8* @strcpy(i8* %arraydecay327, i8* %cond333) #6
  %219 = load i32, i32* %Result, align 4
  %cmp335 = icmp eq i32 %219, 1
  br i1 %cmp335, label %if.then.337, label %if.else.340

if.then.337:                                      ; preds = %cond.end.332
  %arraydecay338 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call339 = call i8* @strcat(i8* %arraydecay338, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0)) #6
  br label %if.end.343

if.else.340:                                      ; preds = %cond.end.332
  %arraydecay341 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call342 = call i8* @strcat(i8* %arraydecay341, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)) #6
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.337
  %arraydecay344 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call345 = call %struct._IO_FILE* @misc_OpenFile(i8* %arraydecay344, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  store %struct._IO_FILE* %call345, %struct._IO_FILE** %Output, align 8
  %220 = load i32*, i32** %Flags, align 8
  %call346 = call i32 @flag_GetFlagValue(i32* %220, i32 30)
  %cmp347 = icmp eq i32 %call346, 2
  %conv348 = zext i1 %cmp347 to i32
  store i32 %conv348, i32* %PrintPotProductive, align 4
  %221 = load i32, i32* %Result, align 4
  %cmp349 = icmp eq i32 %221, 1
  br i1 %cmp349, label %if.then.351, label %if.else.355

if.then.351:                                      ; preds = %if.end.343
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %223 = load i32, i32* %PrintPotProductive, align 4
  %224 = load i8*, i8** %creator, align 8
  %call352 = call i8* @dfg_ProblemDescription()
  %225 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call353 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %225)
  %call354 = call %struct.LIST_HELP* @list_Nil()
  %226 = load i32*, i32** %Flags, align 8
  %227 = load i32*, i32** %Precedence, align 8
  call void @clause_FPrintCnfFormulasDFGProblem(%struct._IO_FILE* %222, i32 %223, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.35, i32 0, i32 0), i8* %224, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* %call352, %struct.LIST_HELP* %call353, %struct.LIST_HELP* %call354, i32* %226, i32* %227)
  br label %if.end.359

if.else.355:                                      ; preds = %if.end.343
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %229 = load i32, i32* %PrintPotProductive, align 4
  %230 = load i8*, i8** %creator, align 8
  %call356 = call i8* @dfg_ProblemDescription()
  %231 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call357 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %231)
  %232 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call358 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %232)
  %233 = load i32*, i32** %Flags, align 8
  %234 = load i32*, i32** %Precedence, align 8
  call void @clause_FPrintCnfFormulasDFGProblem(%struct._IO_FILE* %228, i32 %229, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0), i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8* %call356, %struct.LIST_HELP* %call357, %struct.LIST_HELP* %call358, i32* %233, i32* %234)
  br label %if.end.359

if.end.359:                                       ; preds = %if.else.355, %if.then.351
  %235 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %arraydecay360 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  call void @misc_CloseFile(%struct._IO_FILE* %235, i8* %arraydecay360)
  %236 = load i32, i32* %Result, align 4
  %cmp361 = icmp eq i32 %236, 1
  br i1 %cmp361, label %if.then.363, label %if.else.366

if.then.363:                                      ; preds = %if.end.359
  %arraydecay364 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i8* %arraydecay364)
  br label %if.end.369

if.else.366:                                      ; preds = %if.end.359
  %arraydecay367 = getelementptr inbounds [100 x i8], [100 x i8]* %name, i32 0, i32 0
  %call368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.40, i32 0, i32 0), i8* %arraydecay367)
  br label %if.end.369

if.end.369:                                       ; preds = %if.else.366, %if.then.363
  br label %if.end.370

if.end.370:                                       ; preds = %if.end.369, %land.lhs.true.322, %if.end.319
  %237 = load i32*, i32** %Flags, align 8
  %call371 = call i32 @flag_GetFlagValue(i32* %237, i32 9)
  %tobool372 = icmp ne i32 %call371, 0
  br i1 %tobool372, label %land.lhs.true.373, label %if.end.428

land.lhs.true.373:                                ; preds = %if.end.370
  %238 = load i32, i32* %Result, align 4
  %cmp374 = icmp ne i32 %238, 2
  br i1 %cmp374, label %if.then.376, label %if.end.428

if.then.376:                                      ; preds = %land.lhs.true.373
  %239 = load i32, i32* %Result, align 4
  %cmp377 = icmp eq i32 %239, 1
  br i1 %cmp377, label %if.then.379, label %if.else.382

if.then.379:                                      ; preds = %if.then.376
  %call380 = call i32 @puts(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0))
  %240 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call381 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %240)
  call void @clause_ListPrint(%struct.LIST_HELP* %call381)
  br label %if.end.427

if.else.382:                                      ; preds = %if.then.376
  %241 = load i8*, i8** @top_InputFile, align 8
  %tobool383 = icmp ne i8* %241, null
  br i1 %tobool383, label %if.end.385, label %if.then.384

if.then.384:                                      ; preds = %if.else.382
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8** @top_InputFile, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.384, %if.else.382
  %242 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %243 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call386 = call %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %243)
  %244 = load i8*, i8** @top_InputFile, align 8
  %call387 = call %struct.LIST_HELP* @dp_PrintProof(%struct.PROOFSEARCH_HELP* %242, %struct.LIST_HELP* %call386, i8* %244)
  store %struct.LIST_HELP* %call387, %struct.LIST_HELP** %UsedClauses, align 8
  %call388 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call388, %struct.LIST_HELP** %UsedTerms, align 8
  %245 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedClauses, align 8
  store %struct.LIST_HELP* %245, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.389

for.cond.389:                                     ; preds = %for.inc.405, %if.end.385
  %246 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call390 = call i32 @list_Empty(%struct.LIST_HELP* %246)
  %tobool391 = icmp ne i32 %call390, 0
  %lnot392 = xor i1 %tobool391, true
  br i1 %lnot392, label %for.body.393, label %for.end.407

for.body.393:                                     ; preds = %for.cond.389
  %247 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call394 = call i8* @list_Car(%struct.LIST_HELP* %247)
  %248 = bitcast i8* %call394 to %struct.CLAUSE_HELP*
  %call395 = call i32 @clause_IsFromInput(%struct.CLAUSE_HELP* %248)
  %tobool396 = icmp ne i32 %call395, 0
  br i1 %tobool396, label %if.then.397, label %if.end.404

if.then.397:                                      ; preds = %for.body.393
  %249 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  %250 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call399 = call i8* @list_Car(%struct.LIST_HELP* %250)
  %call400 = call %struct.LIST_HELP* @hsh_Get(%struct.LIST_HELP** %249, i8* %call399)
  store %struct.LIST_HELP* %call400, %struct.LIST_HELP** %L398, align 8
  %251 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L398, align 8
  %call401 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %251)
  store %struct.LIST_HELP* %call401, %struct.LIST_HELP** %L398, align 8
  %252 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L398, align 8
  %call402 = call %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %252)
  store %struct.LIST_HELP* %call402, %struct.LIST_HELP** %L398, align 8
  %253 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %254 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L398, align 8
  %call403 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %253, %struct.LIST_HELP* %254)
  store %struct.LIST_HELP* %call403, %struct.LIST_HELP** %UsedTerms, align 8
  br label %if.end.404

if.end.404:                                       ; preds = %if.then.397, %for.body.393
  br label %for.inc.405

for.inc.405:                                      ; preds = %if.end.404
  %255 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call406 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %255)
  store %struct.LIST_HELP* %call406, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.389

for.end.407:                                      ; preds = %for.cond.389
  %256 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %256)
  %257 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call408 = call %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %257)
  store %struct.LIST_HELP* %call408, %struct.LIST_HELP** %UsedTerms, align 8
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call409 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), %struct._IO_FILE* %258)
  %259 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  store %struct.LIST_HELP* %259, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.410

for.cond.410:                                     ; preds = %for.inc.423, %for.end.407
  %260 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call411 = call i32 @list_Empty(%struct.LIST_HELP* %260)
  %tobool412 = icmp ne i32 %call411, 0
  %lnot413 = xor i1 %tobool412, true
  br i1 %lnot413, label %for.body.414, label %for.end.425

for.body.414:                                     ; preds = %for.cond.410
  %261 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call415 = call i8* @list_Car(%struct.LIST_HELP* %261)
  %call416 = call i32 @strncmp(i8* %call415, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i64 6) #7
  %cmp417 = icmp eq i32 %call416, 0
  br i1 %cmp417, label %if.end.422, label %if.then.419

if.then.419:                                      ; preds = %for.body.414
  %262 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call420 = call i8* @list_Car(%struct.LIST_HELP* %262)
  %call421 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* %call420)
  br label %if.end.422

if.end.422:                                       ; preds = %if.then.419, %for.body.414
  br label %for.inc.423

for.inc.423:                                      ; preds = %if.end.422
  %263 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call424 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %263)
  store %struct.LIST_HELP* %call424, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.410

for.end.425:                                      ; preds = %for.cond.410
  %call426 = call i32 @putchar(i32 10)
  %264 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  call void @list_Delete(%struct.LIST_HELP* %264)
  br label %if.end.427

if.end.427:                                       ; preds = %for.end.425, %if.then.379
  br label %if.end.428

if.end.428:                                       ; preds = %if.end.427, %land.lhs.true.373, %if.end.370
  br label %if.end.429

if.end.429:                                       ; preds = %if.end.428, %if.end.281
  %265 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LabelClauses, align 8
  store %struct.LIST_HELP* %265, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.430

for.cond.430:                                     ; preds = %for.inc.436, %if.end.429
  %266 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call431 = call i32 @list_Empty(%struct.LIST_HELP* %266)
  %tobool432 = icmp ne i32 %call431, 0
  %lnot433 = xor i1 %tobool432, true
  br i1 %lnot433, label %for.body.434, label %for.end.438

for.body.434:                                     ; preds = %for.cond.430
  %267 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  %268 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call435 = call i8* @list_Car(%struct.LIST_HELP* %268)
  call void @hsh_DelItem(%struct.LIST_HELP** %267, i8* %call435)
  br label %for.inc.436

for.inc.436:                                      ; preds = %for.body.434
  %269 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call437 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %269)
  store %struct.LIST_HELP* %call437, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.430

for.end.438:                                      ; preds = %for.cond.430
  %270 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %270)
  %271 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call439 = call i32 @fflush(%struct._IO_FILE* %271)
  %272 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call440 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %272)
  store %struct.LIST_HELP* %call440, %struct.LIST_HELP** %deflist, align 8
  %273 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call441 = call %struct.LIST_HELP* @list_Nil()
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %273, %struct.LIST_HELP* %call441)
  %274 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_Clean(%struct.PROOFSEARCH_HELP* %274)
  %275 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %276 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %275, %struct.LIST_HELP* %276)
  %277 = load i32*, i32** %InputPrecedence, align 8
  %278 = load i32*, i32** %Precedence, align 8
  call void @symbol_TransferPrecedence(i32* %277, i32* %278)
  %279 = load i32*, i32** %Flags, align 8
  %call442 = call i32 @flag_GetFlagValue(i32* %279, i32 27)
  %tobool443 = icmp ne i32 %call442, 0
  br i1 %tobool443, label %if.then.444, label %if.end.446

if.then.444:                                      ; preds = %for.end.438
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call445 = call i32 @fputs(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.45, i32 0, i32 0), %struct._IO_FILE* %280)
  br label %if.end.446

if.end.446:                                       ; preds = %if.then.444, %for.end.438
  br label %do.cond

do.cond:                                          ; preds = %if.end.446
  %281 = load i32*, i32** %Flags, align 8
  %call447 = call i32 @flag_GetFlagValue(i32* %281, i32 2)
  %tobool448 = icmp ne i32 %call447, 0
  br i1 %tobool448, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %282 = load i32*, i32** %Flags, align 8
  %call449 = call i32 @flag_GetFlagValue(i32* %282, i32 7)
  %cmp450 = icmp ne i32 %call449, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %283 = phi i1 [ false, %do.cond ], [ %cmp450, %land.rhs ]
  br i1 %283, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then.189
  %284 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  store %struct.LIST_HELP* %284, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.452

for.cond.452:                                     ; preds = %for.inc.458, %do.end
  %285 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call453 = call i32 @list_Empty(%struct.LIST_HELP* %285)
  %tobool454 = icmp ne i32 %call453, 0
  %lnot455 = xor i1 %tobool454, true
  br i1 %lnot455, label %for.body.456, label %for.end.460

for.body.456:                                     ; preds = %for.cond.452
  %286 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call457 = call i8* @list_Car(%struct.LIST_HELP* %286)
  %287 = bitcast i8* %call457 to %struct.CLAUSE_HELP*
  %288 = load i32*, i32** %Flags, align 8
  %289 = load i32*, i32** %Precedence, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %287, i32* %288, i32* %289)
  br label %for.inc.458

for.inc.458:                                      ; preds = %for.body.456
  %290 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call459 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %290)
  store %struct.LIST_HELP* %call459, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.452

for.end.460:                                      ; preds = %for.cond.452
  %291 = load i32*, i32** %Flags, align 8
  %call461 = call i32 @flag_GetFlagValue(i32* %291, i32 2)
  %tobool462 = icmp ne i32 %call461, 0
  br i1 %tobool462, label %if.then.463, label %if.end.473

if.then.463:                                      ; preds = %for.end.460
  %292 = load i32*, i32** %Flags, align 8
  %call464 = call i32 @flag_GetFlagValue(i32* %292, i32 9)
  %tobool465 = icmp ne i32 %call464, 0
  br i1 %tobool465, label %if.then.466, label %if.else.467

if.then.466:                                      ; preds = %if.then.463
  %293 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symblist, align 8
  call void @list_Delete(%struct.LIST_HELP* %293)
  br label %if.end.468

if.else.467:                                      ; preds = %if.then.463
  %294 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symblist, align 8
  call void @symbol_DeleteSymbolList(%struct.LIST_HELP* %294)
  br label %if.end.468

if.end.468:                                       ; preds = %if.else.467, %if.then.466
  %295 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %FlotterSearch, align 8
  %cmp469 = icmp ne %struct.PROOFSEARCH_HELP* %295, null
  br i1 %cmp469, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.end.468
  %296 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %FlotterSearch, align 8
  call void @prfs_Delete(%struct.PROOFSEARCH_HELP* %296)
  br label %if.end.472

if.end.472:                                       ; preds = %if.then.471, %if.end.468
  br label %if.end.473

if.end.473:                                       ; preds = %if.end.472, %for.end.460
  %297 = load i32*, i32** %Flags, align 8
  %call474 = call i32 @flag_GetFlagValue(i32* %297, i32 32)
  %tobool475 = icmp ne i32 %call474, 0
  br i1 %tobool475, label %if.then.476, label %if.end.478

if.then.476:                                      ; preds = %if.end.473
  %call477 = call i32 @putchar(i32 10)
  %298 = load i32*, i32** %Flags, align 8
  call void @flag_Print(i32* %298)
  br label %if.end.478

if.end.478:                                       ; preds = %if.then.476, %if.end.473
  %299 = load i32*, i32** %Flags, align 8
  %call479 = call i32 @flag_GetFlagValue(i32* %299, i32 9)
  %tobool480 = icmp ne i32 %call479, 0
  br i1 %tobool480, label %if.then.481, label %if.end.482

if.then.481:                                      ; preds = %if.end.478
  %300 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TermLabelToClauselist, align 8
  call void @hsh_Delete(%struct.LIST_HELP** %300)
  %301 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist, align 8
  call void @hsh_Delete(%struct.LIST_HELP** %301)
  br label %if.end.482

if.end.482:                                       ; preds = %if.then.481, %if.end.478
  %302 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Labellist, align 8
  store %struct.LIST_HELP* %302, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.483

for.cond.483:                                     ; preds = %for.inc.489, %if.end.482
  %303 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call484 = call i32 @list_Empty(%struct.LIST_HELP* %303)
  %tobool485 = icmp ne i32 %call484, 0
  %lnot486 = xor i1 %tobool485, true
  br i1 %lnot486, label %for.body.487, label %for.end.491

for.body.487:                                     ; preds = %for.cond.483
  %304 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call488 = call i8* @list_Car(%struct.LIST_HELP* %304)
  call void @string_StringFree(i8* %call488)
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.body.487
  %305 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call490 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %305)
  store %struct.LIST_HELP* %call490, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.483

for.end.491:                                      ; preds = %for.cond.483
  %306 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Labellist, align 8
  call void @list_Delete(%struct.LIST_HELP* %306)
  %307 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sortlabellist, align 8
  call void @list_Delete(%struct.LIST_HELP* %307)
  %308 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UserPrecedence, align 8
  call void @list_Delete(%struct.LIST_HELP* %308)
  %309 = load i32*, i32** %Flags, align 8
  call void @cnf_Free(i32* %309)
  %310 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_Delete(%struct.PROOFSEARCH_HELP* %310)
  %311 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %311)
  %312 = load i32*, i32** %InputFlags, align 8
  call void @flag_DeleteStore(i32* %312)
  %313 = load i32*, i32** %InputPrecedence, align 8
  call void @symbol_DeletePrecedence(i32* %313)
  call void @cc_Free()
  call void @ana_Free()
  call void @sort_Free()
  call void @unify_Free()
  call void @cont_Free()
  call void @fol_Free()
  call void @symbol_FreeAllSymbols()
  call void @dfg_Free()
  call void @opts_Free()
  %call492 = call i32 @putchar(i32 10)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.491, %if.end.19, %if.then
  %314 = load i32, i32* %retval
  ret i32 %314
}

declare void @clock_Init() #1

declare void @clock_StartCounter(i32) #1

declare void @memory_Init(i64) #1

; Function Attrs: nounwind
declare i32 @atexit(void ()*) #2

declare void @memory_FreeAllMem() #1

declare void @symbol_Init(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_Init() #3 {
entry:
  store i32 0, i32* @stack_POINTER, align 4
  ret void
}

declare void @hash_Init() #1

declare void @sort_Init() #1

declare void @term_Init() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @symbol_CreatePrecedence() #3 {
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

declare void @fol_Init(i32, i32*) #1

declare void @cont_Init() #1

declare void @unify_Init() #1

declare void @flag_Init() #1

declare void @subs_Init() #1

declare void @clause_Init() #1

declare void @red_Init() #1

declare void @ren_Init() #1

declare void @dp_Init() #1

declare void @opts_Init() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @ana_Init() #3 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  ret void
}

declare void @cc_Init() #1

declare %struct.PROOFSEARCH_HELP* @prfs_Create() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @flag_CreateStore() #3 {
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

declare void @opts_DeclareSPASSFlagsAsOptions() #1

declare i32 @opts_Declare(i8*, i32) #1

declare i32 @opts_Read(i32, i8**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_InitStoreByDefaults(i32* %Store) #3 {
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

declare void @opts_SetFlags(i32*) #1

declare i32 @opts_Indicator() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_GetFlagValue(i32* %Store, i32 %FlagId) #3 {
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

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @top_CalledFlotter(i8* %Call) #0 {
entry:
  %Call.addr = alloca i8*, align 8
  %length = alloca i32, align 4
  store i8* %Call, i8** %Call.addr, align 8
  %0 = load i8*, i8** %Call.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %length, align 4
  %1 = load i8*, i8** %Call.addr, align 8
  %2 = load i32, i32* %length, align 4
  %cmp = icmp sgt i32 %2, 7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %3, 7
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ 0, %cond.false ]
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %idx.ext
  %call2 = call i32 @string_Equal(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.46, i32 0, i32 0))
  ret i32 %call2
}

declare i32 @puts(i8*) #1

declare void @opts_PrintSPASSNames() #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #3 {
entry:
  ret %struct.LIST_HELP* null
}

declare %struct._IO_FILE* @misc_OpenFile(i8*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CleanStore(i32* %Store) #3 {
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

declare %struct.LIST_HELP* @dfg_DFGParser(%struct._IO_FILE*, i32*, i32*, %struct.LIST_HELP**, %struct.LIST_HELP**, %struct.LIST_HELP**, %struct.LIST_HELP**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %store = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 14
  %1 = load i32*, i32** %store, align 8
  ret i32* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %precedence = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 13
  %1 = load i32*, i32** %precedence, align 8
  ret i32* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_TransferSetFlags(i32* %Source, i32* %Destination) #3 {
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
  %1 = load i32*, i32** %Source.addr, align 8
  %2 = load i32, i32* %i, align 4
  %call = call i32 @flag_ValueIsClean(i32* %1, i32 %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %3 = load i32*, i32** %Source.addr, align 8
  %4 = load i32*, i32** %Destination.addr, align 8
  %5 = load i32, i32* %i, align 4
  call void @flag_TransferFlag(i32* %3, i32* %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_TransferPrecedence(i32* %Source, i32* %Target) #3 {
entry:
  %Source.addr = alloca i32*, align 8
  %Target.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Target, i32** %Target.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 4000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32*, i32** %Source.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load i32*, i32** %Target.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %5, i64 %idxprom1
  store i32 %3, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Empty(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp eq %struct.LIST_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @misc_UserErrorReport(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_Error() #3 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  call void @exit(i32 1) #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare void @cnf_Init(i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_SetFlagValue(i32* %Store, i32 %FlagId, i32 %Value) #3 {
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
define internal void @prfs_AddDocProofSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @sharing_IndexCreate()
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dpindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 11
  store %struct.SHARED_INDEX_NODE* %call, %struct.SHARED_INDEX_NODE** %dpindex, align 8
  ret void
}

declare %struct.LIST_HELP** @hsh_Create() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplacd(%struct.LIST_HELP* %L1, %struct.LIST_HELP* %L2) #3 {
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
define internal i8* @list_Car(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #3 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_List(i8* %P) #3 {
entry:
  %P.addr = alloca i8*, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load i8*, i8** %P.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  %call1 = call %struct.LIST_HELP* @list_Cons(i8* %0, %struct.LIST_HELP* %call)
  ret %struct.LIST_HELP* %call1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairSecond(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = bitcast %struct.LIST_HELP* %call to i8*
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cdr = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %cdr, align 8
  ret %struct.LIST_HELP* %1
}

declare void @clock_StopPassedTime(i32) #1

declare void @misc_CloseFile(%struct._IO_FILE*, i8*) #1

declare i32 @opts_IsSet(i32) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_PairFirst(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare i8* @string_StringCopy(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Rplaca(%struct.LIST_HELP* %L, i8* %P) #3 {
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

declare void @fol_PrettyPrintDFG(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Cons(i8* %Ptr, %struct.LIST_HELP* %List) #3 {
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
define internal %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #3 {
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

declare void @def_ExtractDefsFromTermlist(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

declare %struct.LIST_HELP* @def_ApplyDefinitionToTermList(%struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.PROOFSEARCH_HELP* @cnf_Flotter(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP**, %struct.LIST_HELP**, %struct.LIST_HELP**, %struct.LIST_HELP**, i32*, i32*, %struct.LIST_HELP**) #1

declare %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetCounter(i32 %Value) #3 {
entry:
  %Value.addr = alloca i32, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Value.addr, align 4
  store i32 %0, i32* @clause_CLAUSECOUNTER, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_NewNumber(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_IncreaseCounter()
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 0
  store i32 %call, i32* %clausenumber, align 4
  ret void
}

declare void @dfg_DeleteFormulaPairList(%struct.LIST_HELP*) #1

declare void @def_ExtractDefsFromClauselist(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*) #1

declare void @def_FlattenDefinitionsDestructive(%struct.PROOFSEARCH_HELP*) #1

declare %struct.LIST_HELP* @def_ApplyDefToClauselist(%struct.PROOFSEARCH_HELP*, %struct.DEF_HELP*, %struct.LIST_HELP*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @top_Flotter(i32 %argc, i8** %argv, %struct.LIST_HELP* %InputClauses) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %InputClauses.addr = alloca %struct.LIST_HELP*, align 8
  %Output = alloca %struct._IO_FILE*, align 8
  %description = alloca i8*, align 8
  %creator = alloca i8*, align 8
  %size = alloca i32, align 4
  %creator_size = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct.LIST_HELP* %InputClauses, %struct.LIST_HELP** %InputClauses.addr, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i32 0, i32 0), i8** %creator, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %call = call i32 @opts_Indicator()
  %add = add nsw i32 %call, 2
  %cmp = icmp slt i32 %0, %add
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %Output, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call1 = call i32 @opts_Indicator()
  %add2 = add nsw i32 %call1, 1
  %idxprom = sext i32 %add2 to i64
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %call3 = call %struct._IO_FILE* @misc_OpenFile(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %Output, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load i8*, i8** %creator, align 8
  %call4 = call i64 @strlen(i8* %4) #7
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %creator_size, align 4
  %call5 = call i8* @dfg_ProblemDescription()
  %call6 = call i64 @strlen(i8* %call5) #7
  %conv7 = trunc i64 %call6 to i32
  %5 = load i32, i32* %creator_size, align 4
  %add8 = add nsw i32 %conv7, %5
  store i32 %add8, i32* %size, align 4
  %6 = load i32, i32* %size, align 4
  %conv9 = sext i32 %6 to i64
  %mul = mul i64 1, %conv9
  %conv10 = trunc i64 %mul to i32
  %call11 = call i8* @memory_Malloc(i32 %conv10)
  store i8* %call11, i8** %description, align 8
  %7 = load i8*, i8** %description, align 8
  %call12 = call i8* @dfg_ProblemDescription()
  %8 = load i32, i32* %size, align 4
  %9 = load i32, i32* %creator_size, align 4
  %sub = sub nsw i32 %8, %9
  %sub13 = sub nsw i32 %sub, 3
  %conv14 = sext i32 %sub13 to i64
  %call15 = call i8* @strncpy(i8* %7, i8* %call12, i64 %conv14) #6
  %10 = load i8*, i8** %description, align 8
  %11 = load i32, i32* %size, align 4
  %idx.ext = sext i32 %11 to i64
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %idx.ext
  %12 = load i32, i32* %creator_size, align 4
  %idx.ext16 = sext i32 %12 to i64
  %idx.neg = sub i64 0, %idx.ext16
  %add.ptr17 = getelementptr inbounds i8, i8* %add.ptr, i64 %idx.neg
  %add.ptr18 = getelementptr inbounds i8, i8* %add.ptr17, i64 -3
  %13 = load i8*, i8** %creator, align 8
  %call19 = call i8* @strcpy(i8* %add.ptr18, i8* %13) #6
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %call20 = call i8* @dfg_ProblemName()
  %call21 = call i8* @dfg_ProblemAuthor()
  %call22 = call i8* @dfg_ProblemStatusString()
  %15 = load i8*, i8** %description, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %InputClauses.addr, align 8
  call void @clause_FPrintCnfDFGProblem(%struct._IO_FILE* %14, i8* %call20, i8* %call21, i8* %call22, i8* %15, %struct.LIST_HELP* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @clock_PrintTime(i32 2)
  %call24 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0))
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %18)
  call void @clock_PrintTime(i32 3)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %cmp27 = icmp ne %struct._IO_FILE* %20, %21
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %if.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %Output, align 8
  %call30 = call i32 @opts_Indicator()
  %add31 = add nsw i32 %call30, 1
  %idxprom32 = sext i32 %add31 to i64
  %23 = load i8**, i8*** %argv.addr, align 8
  %arrayidx33 = getelementptr inbounds i8*, i8** %23, i64 %idxprom32
  %24 = load i8*, i8** %arrayidx33, align 8
  call void @misc_CloseFile(%struct._IO_FILE* %22, i8* %24)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %if.end
  %25 = load i8*, i8** %description, align 8
  %26 = load i32, i32* %size, align 4
  %conv35 = sext i32 %26 to i64
  %mul36 = mul i64 1, %conv35
  %conv37 = trunc i64 %mul36 to i32
  call void @memory_Free(i8* %25, i32 %conv37)
  ret void
}

declare void @memory_Restrict(i64) #1

declare %struct.LIST_HELP* @ia_GetNextRequest(%struct._IO_FILE*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @hsh_GetWithCompareFunc(%struct.LIST_HELP** %H, i8* %Key, i32 (i8*, i8*)* %Test, i64 (i8*)* %HashFunc) #3 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %HashFunc.addr = alloca i64 (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  store i64 (i8*)* %HashFunc, i64 (i8*)** %HashFunc.addr, align 8
  %0 = load i64 (i8*)*, i64 (i8*)** %HashFunc.addr, align 8
  %1 = load i8*, i8** %Key.addr, align 8
  %call = call i64 %0(i8* %1)
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %2, i64 %call
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Pair, align 8
  %7 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %8)
  %9 = load i8*, i8** %Key.addr, align 8
  %call4 = call i32 %7(i8* %call3, i8* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call6 = call i8* @list_PairSecond(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.LIST_HELP* null, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cnf_LabelEqual(i8* %l1, i8* %l2) #3 {
entry:
  %l1.addr = alloca i8*, align 8
  %l2.addr = alloca i8*, align 8
  store i8* %l1, i8** %l1.addr, align 8
  store i8* %l2, i8** %l2.addr, align 8
  %0 = load i8*, i8** %l1.addr, align 8
  %1 = load i8*, i8** %l2.addr, align 8
  %call = call i32 @string_Equal(i8* %0, i8* %1)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @hsh_StringHashKey(i8* %Label) #3 {
entry:
  %Label.addr = alloca i8*, align 8
  %i = alloca i64, align 8
  %s = alloca i64, align 8
  store i8* %Label, i8** %Label.addr, align 8
  store i64 0, i64* %s, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load i8*, i8** %Label.addr, align 8
  %call = call i64 @strlen(i8* %1) #7
  %cmp = icmp ule i64 %0, %call
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %i, align 8
  %3 = load i8*, i8** %Label.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %2
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i64
  %5 = load i64, i64* %s, align 8
  %add = add i64 %5, %conv
  store i64 %add, i64* %s, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i64, i64* %s, align 8
  %rem = urem i64 %7, 29
  store i64 %rem, i64* %s, align 8
  %8 = load i64, i64* %s, align 8
  ret i64 %8
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #1

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @hsh_Get(%struct.LIST_HELP** %H, i8* %Key) #3 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %call = call i64 @hsh_Index(i8* %0)
  %1 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %1, i64 %call
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Pair, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %6)
  %7 = load i8*, i8** %Key.addr, align 8
  %cmp = icmp eq i8* %call3, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call4 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.LIST_HELP* null, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %11
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %Labels) #3 {
entry:
  %Labels.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Labels, %struct.LIST_HELP** %Labels.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Labels.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %0, i32 (i8*, i8*)* @cnf_LabelEqual)
  ret %struct.LIST_HELP* %call
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @hsh_PutList(%struct.LIST_HELP** %H, i8* %Key, %struct.LIST_HELP* %List) #3 {
entry:
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %HashKey = alloca i64, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %call = call i64 @hsh_Index(i8* %0)
  store i64 %call, i64* %HashKey, align 8
  %1 = load i64, i64* %HashKey, align 8
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %2, i64 %1
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Pair, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = load i8*, i8** %Key.addr, align 8
  %cmp = icmp eq i8* %call3, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call4 to %struct.LIST_HELP*
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %11, %struct.LIST_HELP* %12)
  call void @list_Rplacd(%struct.LIST_HELP* %9, %struct.LIST_HELP* %call5)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %Key.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %16 = bitcast %struct.LIST_HELP* %15 to i8*
  %call7 = call %struct.LIST_HELP* @list_PairCreate(i8* %14, i8* %16)
  %17 = bitcast %struct.LIST_HELP* %call7 to i8*
  %18 = load i64, i64* %HashKey, align 8
  %19 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx8 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %19, i64 %18
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx8, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %20)
  %21 = load i64, i64* %HashKey, align 8
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %22, i64 %21
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %arrayidx10, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

declare %struct.LIST_HELP* @cnf_QueryFlotter(%struct.PROOFSEARCH_HELP*, %struct.term*, %struct.LIST_HELP**) #1

declare void @string_StringFree(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_Delete(%struct.LIST_HELP* %L) #3 {
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
define internal void @list_PairFree(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

declare void @clock_InitCounter(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetSplitCounter(%struct.PROOFSEARCH_HELP* %Prf, i32 %c) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %c.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 18
  store i32 %0, i32* %splitcounter, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetLoops(%struct.PROOFSEARCH_HELP* %Prf, i32 %k) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %k.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 21
  store i32 %0, i32* %loops, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetBacktrackedClauses(%struct.PROOFSEARCH_HELP* %Prf, i32 %k) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %k.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 22
  store i32 %0, i32* %backtracked, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.PROOFSEARCH_HELP* @top_ProofSearch(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %ProblemClauses, i32* %InputFlags, %struct.LIST_HELP* %UserPrecedence, i32* %BoundApplied) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ProblemClauses.addr = alloca %struct.LIST_HELP*, align 8
  %InputFlags.addr = alloca i32*, align 8
  %UserPrecedence.addr = alloca %struct.LIST_HELP*, align 8
  %BoundApplied.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %Derivables = alloca %struct.LIST_HELP*, align 8
  %UsedEmptyClauses = alloca %struct.LIST_HELP*, align 8
  %SplitClause = alloca %struct.CLAUSE_HELP*, align 8
  %HighestLevelEmptyClause = alloca %struct.CLAUSE_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %Counter = alloca i32, align 4
  %ActBound = alloca i32, align 4
  %BoundMode = alloca i32, align 4
  %BoundLoops = alloca i32, align 4
  %Strong = alloca i32, align 4
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  %clause99 = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %ProblemClauses, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  store i32* %InputFlags, i32** %InputFlags.addr, align 8
  store %struct.LIST_HELP* %UserPrecedence, %struct.LIST_HELP** %UserPrecedence.addr, align 8
  store i32* %BoundApplied, i32** %BoundApplied.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %UsedEmptyClauses, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %EmptyClauses, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Derivables, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call3, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call4, i32** %Precedence, align 8
  store i32 1, i32* %Counter, align 4
  call void @clock_InitCounter(i32 4)
  call void @clock_InitCounter(i32 0)
  call void @clock_InitCounter(i32 5)
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  call void @ana_AnalyzeProblem(%struct.PROOFSEARCH_HELP* %2, %struct.LIST_HELP* %3)
  %4 = load i32*, i32** %Flags, align 8
  %call5 = call i32 @flag_GetFlagValue(i32* %4, i32 0)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  %call6 = call %struct.LIST_HELP* @ana_FinMonPredList()
  call void @prfs_InstallFiniteMonadicPredicates(%struct.PROOFSEARCH_HELP* %5, %struct.LIST_HELP* %6, %struct.LIST_HELP* %call6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  %8 = load i32*, i32** %Flags, align 8
  %9 = load i32*, i32** %Precedence, align 8
  call void @ana_AutoConfiguration(%struct.LIST_HELP* %7, i32* %8, i32* %9)
  %10 = load i32*, i32** %InputFlags.addr, align 8
  %11 = load i32*, i32** %Flags, align 8
  call void @flag_TransferSetFlags(i32* %10, i32* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load i32*, i32** %Precedence, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UserPrecedence.addr, align 8
  call void @symbol_RearrangePrecedence(i32* %12, %struct.LIST_HELP* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call9 to %struct.CLAUSE_HELP*
  %18 = load i32*, i32** %Flags, align 8
  %19 = load i32*, i32** %Precedence, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %17, i32* %18, i32* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  %22 = load i32*, i32** %Flags, align 8
  %23 = load i32*, i32** %Precedence, align 8
  call void @ana_AnalyzeSortStructure(%struct.LIST_HELP* %21, i32* %22, i32* %23)
  %24 = load i32*, i32** %Flags, align 8
  %call11 = call i32 @flag_GetFlagValue(i32* %24, i32 0)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %for.end
  %25 = load i32*, i32** %Flags, align 8
  call void @ana_ExploitSortAnalysis(i32* %25)
  %26 = load i32*, i32** %InputFlags.addr, align 8
  %27 = load i32*, i32** %Flags, align 8
  call void @flag_TransferSetFlags(i32* %26, i32* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %for.end
  %28 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %29 = load i32*, i32** %Flags, align 8
  %call15 = call i32 @flag_GetFlagValue(i32* %29, i32 5)
  call void @prfs_SetSplitCounter(%struct.PROOFSEARCH_HELP* %28, i32 %call15)
  %30 = load i32*, i32** %Flags, align 8
  %call16 = call i32 @flag_GetFlagValue(i32* %30, i32 49)
  store i32 %call16, i32* %ActBound, align 4
  %31 = load i32*, i32** %Flags, align 8
  %call17 = call i32 @flag_GetFlagValue(i32* %31, i32 48)
  store i32 %call17, i32* %BoundMode, align 4
  %32 = load i32*, i32** %Flags, align 8
  %call18 = call i32 @flag_GetFlagValue(i32* %32, i32 50)
  store i32 %call18, i32* %BoundLoops, align 4
  %33 = load i32*, i32** %BoundApplied.addr, align 8
  store i32 -1, i32* %33, align 4
  %34 = load i32*, i32** %Flags, align 8
  %call19 = call i32 @flag_GetFlagValue(i32* %34, i32 27)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.end.14
  %call22 = call i32 @puts(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.54, i32 0, i32 0))
  %call23 = call i32 @puts(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.55, i32 0, i32 0))
  %call24 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.56, i32 0, i32 0))
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  call void @clause_ListPrint(%struct.LIST_HELP* %35)
  %36 = load i32*, i32** %Flags, align 8
  %37 = load i32*, i32** %Precedence, align 8
  call void @ana_Print(i32* %36, i32* %37)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.end.14
  %38 = load i32*, i32** %Flags, align 8
  %call26 = call i32 @flag_GetFlagValue(i32* %38, i32 40)
  %cmp = icmp ne i32 %call26, 0
  br i1 %cmp, label %if.then.27, label %if.end.39

if.then.27:                                       ; preds = %if.end.25
  %39 = load i32*, i32** %Flags, align 8
  %call28 = call i32 @flag_GetFlagValue(i32* %39, i32 40)
  %cmp29 = icmp eq i32 %call28, 2
  %conv = zext i1 %cmp29 to i32
  store i32 %conv, i32* %Strong, align 4
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  store %struct.LIST_HELP* %40, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.36, %if.then.27
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot33 = xor i1 %tobool32, true
  br i1 %lnot33, label %for.body.34, label %for.end.38

for.body.34:                                      ; preds = %for.cond.30
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call35 to %struct.CLAUSE_HELP*
  %44 = load i32, i32* %Strong, align 4
  %45 = load i32*, i32** %Flags, align 8
  %46 = load i32*, i32** %Precedence, align 8
  call void @clause_SetSortConstraint(%struct.CLAUSE_HELP* %43, i32 %44, i32* %45, i32* %46)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.34
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.30

for.end.38:                                       ; preds = %for.cond.30
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %if.end.25
  %48 = load i32*, i32** %Flags, align 8
  %call40 = call i32 @flag_GetFlagValue(i32* %48, i32 39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %if.end.39
  call void @clock_StartCounter(i32 4)
  %49 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  %call43 = call %struct.LIST_HELP* @red_ReduceInput(%struct.PROOFSEARCH_HELP* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @clock_StopAddPassedTime(i32 4)
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.then.42
  %52 = load i32*, i32** %Flags, align 8
  %call46 = call i32 @flag_GetFlagValue(i32* %52, i32 41)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %land.lhs.true
  %53 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call49 = call %struct.LIST_HELP* @red_SatInput(%struct.PROOFSEARCH_HELP* %53)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %land.lhs.true, %if.then.42
  br label %if.end.60

if.else:                                          ; preds = %if.end.39
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ProblemClauses.addr, align 8
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.57, %if.else
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call i32 @list_Empty(%struct.LIST_HELP* %55)
  %tobool53 = icmp ne i32 %call52, 0
  %lnot54 = xor i1 %tobool53, true
  br i1 %lnot54, label %for.body.55, label %for.end.59

for.body.55:                                      ; preds = %for.cond.51
  %56 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call56 = call i8* @list_Car(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call56 to %struct.CLAUSE_HELP*
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %56, %struct.CLAUSE_HELP* %58)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.55
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.51

for.end.59:                                       ; preds = %for.cond.51
  br label %if.end.60

if.end.60:                                        ; preds = %for.end.59, %if.end.50
  %call61 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Derivables, align 8
  %call62 = call i32 @ana_SortRestrictions()
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.60
  %call64 = call i32 @ana_UnsolvedSortRestrictions()
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %land.lhs.true.66, label %if.end.78

land.lhs.true.66:                                 ; preds = %lor.lhs.false
  %60 = load i32*, i32** %Flags, align 8
  %call67 = call i32 @flag_GetFlagValue(i32* %60, i32 40)
  %cmp68 = icmp eq i32 %call67, 2
  br i1 %cmp68, label %if.then.70, label %if.end.78

if.then.70:                                       ; preds = %land.lhs.true.66, %if.end.60
  %61 = load i32*, i32** %Flags, align 8
  %call71 = call i32 @flag_GetFlagValue(i32* %61, i32 89)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.then.70
  %62 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %63 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call74 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %63)
  %64 = load i32*, i32** %Flags, align 8
  %65 = load i32*, i32** %Precedence, align 8
  %call75 = call %struct.SORTTHEORY_HELP* @sort_ApproxStaticSortTheory(%struct.LIST_HELP* %call74, i32* %64, i32* %65)
  call void @prfs_SetStaticSortTheory(%struct.PROOFSEARCH_HELP* %62, %struct.SORTTHEORY_HELP* %call75)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.then.70
  %66 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call77 = call %struct.SORTTHEORY_HELP* @sort_TheoryCreate()
  call void @prfs_SetDynamicSortTheory(%struct.PROOFSEARCH_HELP* %66, %struct.SORTTHEORY_HELP* %call77)
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.76, %land.lhs.true.66, %lor.lhs.false
  %67 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call79 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %67)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.90, %if.end.78
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call81 = call i32 @list_Empty(%struct.LIST_HELP* %68)
  %tobool82 = icmp ne i32 %call81, 0
  %lnot83 = xor i1 %tobool82, true
  br i1 %lnot83, label %for.body.84, label %for.end.92

for.body.84:                                      ; preds = %for.cond.80
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call85 = call i8* @list_Car(%struct.LIST_HELP* %69)
  %70 = bitcast i8* %call85 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %70, %struct.CLAUSE_HELP** %clause, align 8
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %72 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call86 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %72)
  call void @clause_MakeUnshared(%struct.CLAUSE_HELP* %71, %struct.SHARED_INDEX_NODE* %call86)
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %74 = load i32*, i32** %Flags, align 8
  %75 = load i32*, i32** %Precedence, align 8
  call void @clause_FixLiteralOrder(%struct.CLAUSE_HELP* %73, i32* %74, i32* %75)
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %77 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call87 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %77)
  %78 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call88 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %78)
  %79 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call89 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %79)
  call void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %76, %struct.SHARED_INDEX_NODE* %call87, i32* %call88, i32* %call89)
  br label %for.inc.90

for.inc.90:                                       ; preds = %for.body.84
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call91 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.80

for.end.92:                                       ; preds = %for.cond.80
  %81 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call93 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %81)
  store %struct.LIST_HELP* %call93, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.101, %for.end.92
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call95 = call i32 @list_Empty(%struct.LIST_HELP* %82)
  %tobool96 = icmp ne i32 %call95, 0
  %lnot97 = xor i1 %tobool96, true
  br i1 %lnot97, label %for.body.98, label %for.end.103

for.body.98:                                      ; preds = %for.cond.94
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call100 = call i8* @list_Car(%struct.LIST_HELP* %83)
  %84 = bitcast i8* %call100 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %84, %struct.CLAUSE_HELP** %clause99, align 8
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause99, align 8
  call void @clause_CountSymbols(%struct.CLAUSE_HELP* %85)
  br label %for.inc.101

for.inc.101:                                      ; preds = %for.body.98
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call102 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %86)
  store %struct.LIST_HELP* %call102, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.94

for.end.103:                                      ; preds = %for.cond.94
  %87 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %88 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call104 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %88)
  %call105 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %call104, i32 (i8*, i8*)* bitcast (i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareAbstractLEQ to i32 (i8*, i8*)*))
  call void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %87, %struct.LIST_HELP* %call105)
  %89 = load i32*, i32** %Flags, align 8
  %call106 = call i32 @flag_GetFlagValue(i32* %89, i32 4)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.end.125

if.then.108:                                      ; preds = %for.end.103
  %90 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call109 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %90)
  %call110 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call109)
  store %struct.LIST_HELP* %call110, %struct.LIST_HELP** %Derivables, align 8
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %91, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.122, %if.then.108
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call112 = call i32 @list_Empty(%struct.LIST_HELP* %92)
  %tobool113 = icmp ne i32 %call112, 0
  %lnot114 = xor i1 %tobool113, true
  br i1 %lnot114, label %for.body.115, label %for.end.124

for.body.115:                                     ; preds = %for.cond.111
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call116 = call i8* @list_Car(%struct.LIST_HELP* %93)
  %94 = bitcast i8* %call116 to %struct.CLAUSE_HELP*
  %call117 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %94, i32 8)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.end.121, label %if.then.119

if.then.119:                                      ; preds = %for.body.115
  %95 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call120 = call i8* @list_Car(%struct.LIST_HELP* %96)
  %97 = bitcast i8* %call120 to %struct.CLAUSE_HELP*
  call void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP* %95, %struct.CLAUSE_HELP* %97)
  br label %if.end.121

if.end.121:                                       ; preds = %if.then.119, %for.body.115
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call123 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %98)
  store %struct.LIST_HELP* %call123, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.111

for.end.124:                                      ; preds = %for.cond.111
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  call void @list_Delete(%struct.LIST_HELP* %99)
  br label %if.end.125

if.end.125:                                       ; preds = %for.end.124, %for.end.103
  %100 = load i32*, i32** %Flags, align 8
  %call126 = call i32 @flag_GetFlagValue(i32* %100, i32 27)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.then.128, label %if.end.134

if.then.128:                                      ; preds = %if.end.125
  %call129 = call i32 @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.57, i32 0, i32 0))
  %call130 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i32 0, i32 0))
  %101 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call131 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %101)
  call void @clause_ListPrint(%struct.LIST_HELP* %call131)
  %call132 = call i32 @puts(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i32 0, i32 0))
  %102 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call133 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %102)
  call void @clause_ListPrint(%struct.LIST_HELP* %call133)
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.128, %if.end.125
  br label %while.cond

while.cond:                                       ; preds = %if.end.292, %if.end.134
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call135 = call i32 @list_Empty(%struct.LIST_HELP* %103)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %land.lhs.true.140, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %while.cond
  %104 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call138 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %104)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %land.end, label %land.lhs.true.140

land.lhs.true.140:                                ; preds = %lor.lhs.false.137, %while.cond
  %105 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call141 = call i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %105)
  %cmp142 = icmp ne i32 %call141, 0
  br i1 %cmp142, label %land.lhs.true.144, label %land.end

land.lhs.true.144:                                ; preds = %land.lhs.true.140
  %106 = load i32*, i32** %BoundApplied.addr, align 8
  %107 = load i32, i32* %106, align 4
  %cmp145 = icmp ne i32 %107, -1
  br i1 %cmp145, label %land.rhs, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.144
  %108 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call148 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %108)
  %call149 = call i32 @list_Empty(%struct.LIST_HELP* %call148)
  %tobool150 = icmp ne i32 %call149, 0
  br i1 %tobool150, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.147, %land.lhs.true.144
  %109 = load i32*, i32** %Flags, align 8
  %call151 = call i32 @flag_GetFlagValue(i32* %109, i32 7)
  %cmp152 = icmp eq i32 %call151, -1
  br i1 %cmp152, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %110 = load i32*, i32** %Flags, align 8
  %call154 = call i32 @flag_GetFlagValue(i32* %110, i32 7)
  %conv155 = sitofp i32 %call154 to float
  %call156 = call float @clock_GetSeconds(i32 1)
  %cmp157 = fcmp ogt float %conv155, %call156
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %111 = phi i1 [ true, %land.rhs ], [ %cmp157, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %lor.lhs.false.147, %land.lhs.true.140, %lor.lhs.false.137
  %112 = phi i1 [ false, %lor.lhs.false.147 ], [ false, %land.lhs.true.140 ], [ false, %lor.lhs.false.137 ], [ %111, %lor.end ]
  br i1 %112, label %while.body, label %while.end.293

while.body:                                       ; preds = %land.end
  %call159 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call159, %struct.LIST_HELP** %Derivables, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %SplitClause, align 8
  %113 = load i32*, i32** %BoundApplied.addr, align 8
  store i32 -1, i32* %113, align 4
  br label %while.cond.160

while.cond.160:                                   ; preds = %if.end.269, %while.body
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call161 = call i32 @list_Empty(%struct.LIST_HELP* %114)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %land.lhs.true.166, label %lor.lhs.false.163

lor.lhs.false.163:                                ; preds = %while.cond.160
  %115 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call164 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %115)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %land.end.188, label %land.lhs.true.166

land.lhs.true.166:                                ; preds = %lor.lhs.false.163, %while.cond.160
  %116 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call167 = call i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %116)
  %cmp168 = icmp ne i32 %call167, 0
  br i1 %cmp168, label %land.lhs.true.170, label %land.end.188

land.lhs.true.170:                                ; preds = %land.lhs.true.166
  %117 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call171 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %117)
  %call172 = call i32 @list_Empty(%struct.LIST_HELP* %call171)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %lor.lhs.false.174, label %land.rhs.177

lor.lhs.false.174:                                ; preds = %land.lhs.true.170
  %118 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call175 = call i32 @list_Empty(%struct.LIST_HELP* %118)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %land.end.188, label %land.rhs.177

land.rhs.177:                                     ; preds = %lor.lhs.false.174, %land.lhs.true.170
  %119 = load i32*, i32** %Flags, align 8
  %call178 = call i32 @flag_GetFlagValue(i32* %119, i32 7)
  %cmp179 = icmp eq i32 %call178, -1
  br i1 %cmp179, label %lor.end.187, label %lor.rhs.181

lor.rhs.181:                                      ; preds = %land.rhs.177
  %120 = load i32*, i32** %Flags, align 8
  %call182 = call i32 @flag_GetFlagValue(i32* %120, i32 7)
  %conv183 = sitofp i32 %call182 to float
  %call184 = call float @clock_GetSeconds(i32 1)
  %cmp185 = fcmp ogt float %conv183, %call184
  br label %lor.end.187

lor.end.187:                                      ; preds = %lor.rhs.181, %land.rhs.177
  %121 = phi i1 [ true, %land.rhs.177 ], [ %cmp185, %lor.rhs.181 ]
  br label %land.end.188

land.end.188:                                     ; preds = %lor.end.187, %lor.lhs.false.174, %land.lhs.true.166, %lor.lhs.false.163
  %122 = phi i1 [ false, %lor.lhs.false.174 ], [ false, %land.lhs.true.166 ], [ false, %lor.lhs.false.163 ], [ %121, %lor.end.187 ]
  br i1 %122, label %while.body.189, label %while.end

while.body.189:                                   ; preds = %land.end.188
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call190 = call i32 @list_Empty(%struct.LIST_HELP* %123)
  %tobool191 = icmp ne i32 %call190, 0
  br i1 %tobool191, label %if.else.227, label %if.then.192

if.then.192:                                      ; preds = %while.body.189
  call void @clock_StartCounter(i32 0)
  %124 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %125 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  %call193 = call %struct.LIST_HELP* @split_Backtrack(%struct.PROOFSEARCH_HELP* %124, %struct.CLAUSE_HELP* %125, %struct.CLAUSE_HELP** %SplitClause)
  store %struct.LIST_HELP* %call193, %struct.LIST_HELP** %Derivables, align 8
  call void @clock_StopAddPassedTime(i32 0)
  %126 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %127 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call194 = call i32 @list_Length(%struct.LIST_HELP* %127)
  call void @prfs_IncBacktrackedClauses(%struct.PROOFSEARCH_HELP* %126, i32 %call194)
  %128 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call195 = call i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %128)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.else.199

if.then.197:                                      ; preds = %if.then.192
  %129 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %130 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call198 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %129, %struct.LIST_HELP* %130)
  store %struct.LIST_HELP* %call198, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.225

if.else.199:                                      ; preds = %if.then.192
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.211, %if.else.199
  %131 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call201 = call i32 @list_Empty(%struct.LIST_HELP* %131)
  %tobool202 = icmp ne i32 %call201, 0
  %lnot203 = xor i1 %tobool202, true
  br i1 %lnot203, label %for.body.204, label %for.end.213

for.body.204:                                     ; preds = %for.cond.200
  %132 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call205 = call i8* @list_Car(%struct.LIST_HELP* %132)
  %133 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  %134 = bitcast %struct.CLAUSE_HELP* %133 to i8*
  %cmp206 = icmp ne i8* %call205, %134
  br i1 %cmp206, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %for.body.204
  %135 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call209 = call i8* @list_Car(%struct.LIST_HELP* %135)
  %136 = bitcast i8* %call209 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %136)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %for.body.204
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %137 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call212 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %137)
  store %struct.LIST_HELP* %call212, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %for.cond.200

for.end.213:                                      ; preds = %for.cond.200
  %138 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %139 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %138, %struct.CLAUSE_HELP* %139)
  %140 = load i32*, i32** %Flags, align 8
  %call214 = call i32 @flag_GetFlagValue(i32* %140, i32 9)
  %tobool215 = icmp ne i32 %call214, 0
  br i1 %tobool215, label %if.then.216, label %if.end.218

if.then.216:                                      ; preds = %for.end.213
  %141 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  %142 = bitcast %struct.CLAUSE_HELP* %141 to i8*
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedEmptyClauses, align 8
  %call217 = call %struct.LIST_HELP* @list_Cons(i8* %142, %struct.LIST_HELP* %143)
  store %struct.LIST_HELP* %call217, %struct.LIST_HELP** %UsedEmptyClauses, align 8
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %for.end.213
  %144 = load i32*, i32** %Flags, align 8
  %call219 = call i32 @flag_GetFlagValue(i32* %144, i32 10)
  %tobool220 = icmp ne i32 %call219, 0
  br i1 %tobool220, label %if.then.221, label %if.end.224

if.then.221:                                      ; preds = %if.end.218
  %145 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call222 = call i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %145)
  %call223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0), i32 %call222)
  br label %if.end.224

if.end.224:                                       ; preds = %if.then.221, %if.end.218
  br label %if.end.225

if.end.225:                                       ; preds = %if.end.224, %if.then.197
  %call226 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call226, %struct.LIST_HELP** %EmptyClauses, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  br label %if.end.235

if.else.227:                                      ; preds = %while.body.189
  %146 = load i32*, i32** %Flags, align 8
  %call228 = call i32 @flag_GetFlagValue(i32* %146, i32 44)
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.else.232

if.then.230:                                      ; preds = %if.else.227
  %147 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call231 = call %struct.LIST_HELP* @top_FullReductionSelectGivenComputeDerivables(%struct.PROOFSEARCH_HELP* %147, %struct.CLAUSE_HELP** %SplitClause, i32* %Counter)
  store %struct.LIST_HELP* %call231, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.234

if.else.232:                                      ; preds = %if.else.227
  %148 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call233 = call %struct.LIST_HELP* @top_LazyReductionSelectGivenComputeDerivables(%struct.PROOFSEARCH_HELP* %148, %struct.CLAUSE_HELP** %SplitClause, i32* %Counter)
  store %struct.LIST_HELP* %call233, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.234

if.end.234:                                       ; preds = %if.else.232, %if.then.230
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.end.225
  %149 = load i32*, i32** %Flags, align 8
  %call236 = call i32 @flag_GetFlagValue(i32* %149, i32 23)
  %tobool237 = icmp ne i32 %call236, 0
  br i1 %tobool237, label %if.then.238, label %if.end.249

if.then.238:                                      ; preds = %if.end.235
  %150 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %150, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.239

for.cond.239:                                     ; preds = %for.inc.246, %if.then.238
  %151 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call240 = call i32 @list_Empty(%struct.LIST_HELP* %151)
  %tobool241 = icmp ne i32 %call240, 0
  %lnot242 = xor i1 %tobool241, true
  br i1 %lnot242, label %for.body.243, label %for.end.248

for.body.243:                                     ; preds = %for.cond.239
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call244 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %152)
  %153 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call245 = call i8* @list_Car(%struct.LIST_HELP* %153)
  %154 = bitcast i8* %call245 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %154)
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.body.243
  %155 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call247 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %155)
  store %struct.LIST_HELP* %call247, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.239

for.end.248:                                      ; preds = %for.cond.239
  br label %if.end.249

if.end.249:                                       ; preds = %for.end.248, %if.end.235
  %156 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call250 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %156, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call250, %struct.LIST_HELP** %Derivables, align 8
  call void @clock_StartCounter(i32 4)
  %157 = load i32*, i32** %Flags, align 8
  %call251 = call i32 @flag_GetFlagValue(i32* %157, i32 44)
  %tobool252 = icmp ne i32 %call251, 0
  br i1 %tobool252, label %if.then.253, label %if.else.256

if.then.253:                                      ; preds = %if.end.249
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %159 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %160 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %161 = load i32, i32* @red_ALL, align 4
  %162 = load i32, i32* %ActBound, align 4
  %163 = load i32, i32* %BoundMode, align 4
  %164 = load i32*, i32** %BoundApplied.addr, align 8
  %call254 = call %struct.LIST_HELP* @red_CompleteReductionOnDerivedClauses(%struct.PROOFSEARCH_HELP* %159, %struct.LIST_HELP* %160, i32 %161, i32 %162, i32 %163, i32* %164)
  %call255 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %158, %struct.LIST_HELP* %call254)
  store %struct.LIST_HELP* %call255, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.259

if.else.256:                                      ; preds = %if.end.249
  %165 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %166 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %167 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %168 = load i32, i32* @red_WORKEDOFF, align 4
  %169 = load i32, i32* %ActBound, align 4
  %170 = load i32, i32* %BoundMode, align 4
  %171 = load i32*, i32** %BoundApplied.addr, align 8
  %call257 = call %struct.LIST_HELP* @red_CompleteReductionOnDerivedClauses(%struct.PROOFSEARCH_HELP* %166, %struct.LIST_HELP* %167, i32 %168, i32 %169, i32 %170, i32* %171)
  %call258 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %165, %struct.LIST_HELP* %call257)
  store %struct.LIST_HELP* %call258, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.259

if.end.259:                                       ; preds = %if.else.256, %if.then.253
  call void @clock_StopAddPassedTime(i32 4)
  %172 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call260 = call i32 @list_Empty(%struct.LIST_HELP* %172)
  %tobool261 = icmp ne i32 %call260, 0
  br i1 %tobool261, label %if.end.269, label %if.then.262

if.then.262:                                      ; preds = %if.end.259
  %173 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call263 = call %struct.CLAUSE_HELP* @split_SmallestSplitLevelClause(%struct.LIST_HELP* %173)
  store %struct.CLAUSE_HELP* %call263, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  %174 = load i32*, i32** %Flags, align 8
  %call264 = call i32 @flag_GetFlagValue(i32* %174, i32 28)
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %if.then.266, label %if.end.268

if.then.266:                                      ; preds = %if.then.262
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call267 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %175)
  %176 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %HighestLevelEmptyClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %176)
  br label %if.end.268

if.end.268:                                       ; preds = %if.then.266, %if.then.262
  br label %if.end.269

if.end.269:                                       ; preds = %if.end.268, %if.end.259
  %177 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_DecLoops(%struct.PROOFSEARCH_HELP* %177)
  br label %while.cond.160

while.end:                                        ; preds = %land.end.188
  %178 = load i32, i32* %ActBound, align 4
  %cmp270 = icmp ne i32 %178, -1
  br i1 %cmp270, label %land.lhs.true.272, label %if.end.292

land.lhs.true.272:                                ; preds = %while.end
  %179 = load i32, i32* %BoundMode, align 4
  %cmp273 = icmp ne i32 %179, 0
  br i1 %cmp273, label %if.then.275, label %if.end.292

if.then.275:                                      ; preds = %land.lhs.true.272
  %180 = load i32, i32* %BoundLoops, align 4
  %dec = add nsw i32 %180, -1
  store i32 %dec, i32* %BoundLoops, align 4
  %181 = load i32, i32* %BoundLoops, align 4
  %cmp276 = icmp eq i32 %181, 0
  br i1 %cmp276, label %if.then.278, label %if.else.279

if.then.278:                                      ; preds = %if.then.275
  store i32 -1, i32* %ActBound, align 4
  br label %if.end.280

if.else.279:                                      ; preds = %if.then.275
  %182 = load i32*, i32** %BoundApplied.addr, align 8
  %183 = load i32, i32* %182, align 4
  store i32 %183, i32* %ActBound, align 4
  br label %if.end.280

if.end.280:                                       ; preds = %if.else.279, %if.then.278
  %184 = load i32*, i32** %BoundApplied.addr, align 8
  %185 = load i32, i32* %184, align 4
  %cmp281 = icmp ne i32 %185, -1
  br i1 %cmp281, label %if.then.283, label %if.end.291

if.then.283:                                      ; preds = %if.end.280
  %186 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  call void @prfs_SwapIndexes(%struct.PROOFSEARCH_HELP* %186)
  %187 = load i32*, i32** %Flags, align 8
  %call284 = call i32 @flag_GetFlagValue(i32* %187, i32 36)
  %tobool285 = icmp ne i32 %call284, 0
  br i1 %tobool285, label %if.then.286, label %if.end.290

if.then.286:                                      ; preds = %if.then.283
  %188 = load i32, i32* %BoundMode, align 4
  %cmp287 = icmp eq i32 %188, 2
  %cond = select i1 %cmp287, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0)
  %189 = load i32, i32* %ActBound, align 4
  %call289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.63, i32 0, i32 0), i8* %cond, i32 %189)
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.286, %if.then.283
  br label %if.end.291

if.end.291:                                       ; preds = %if.end.290, %if.end.280
  br label %if.end.292

if.end.292:                                       ; preds = %if.end.291, %land.lhs.true.272, %while.end
  br label %while.cond

while.end.293:                                    ; preds = %land.end
  %190 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %191 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @prfs_SetEmptyClauses(%struct.PROOFSEARCH_HELP* %190, %struct.LIST_HELP* %191)
  %192 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %193 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedEmptyClauses, align 8
  call void @prfs_SetUsedEmptyClauses(%struct.PROOFSEARCH_HELP* %192, %struct.LIST_HELP* %193)
  %194 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  ret %struct.PROOFSEARCH_HELP* %194
}

declare float @clock_GetSeconds(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_Loops(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 21
  %1 = load i32, i32* %loops, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_EmptyClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %emptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %emptyclauses, align 8
  ret %struct.LIST_HELP* %1
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal i8* @mybasename(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %base = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #7
  store i8* %call, i8** %base, align 8
  %1 = load i8*, i8** %base, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i8*, i8** %base, align 8
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load i8*, i8** %str.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %add.ptr, %cond.true ], [ %3, %cond.false ]
  ret i8* %cond
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_DerivedClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %derivedclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 20
  %1 = load i32, i32* %derivedclauses, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_BacktrackedClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 22
  %1 = load i32, i32* %backtracked, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_KeptClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %keptclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 19
  %1 = load i32, i32* %keptclauses, align 4
  ret i32 %1
}

declare void @clock_PrintTime(i32) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #2

declare void @clause_FPrintCnfFormulasDFGProblem(%struct._IO_FILE*, i32, i8*, i8*, i8*, i8*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #1

declare i8* @dfg_ProblemDescription() #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %wolist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 5
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %wolist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %uslist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 7
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %uslist, align 8
  ret %struct.LIST_HELP* %1
}

declare void @clause_ListPrint(%struct.LIST_HELP*) #1

declare %struct.LIST_HELP* @dp_PrintProof(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsFromInput(%struct.CLAUSE_HELP* %Clause) #3 {
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

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare i32 @putchar(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @hsh_DelItem(%struct.LIST_HELP** %H, i8* %Key) #3 {
entry:
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %k = alloca i64, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %call = call i64 @hsh_Index(i8* %0)
  store i64 %call, i64* %k, align 8
  %1 = load i64, i64* %k, align 8
  %2 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %2, i64 %1
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Pair, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %7)
  %8 = load i8*, i8** %Key.addr, align 8
  %cmp = icmp eq i8* %call3, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call4 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %11)
  %12 = load i64, i64* %k, align 8
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %13, i64 %12
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx5, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %16 = bitcast %struct.LIST_HELP* %15 to i8*
  %call6 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %14, i8* %16)
  %17 = load i64, i64* %k, align 8
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %18, i64 %17
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %arrayidx7, align 8
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Definitions) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Definitions.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Definitions, %struct.LIST_HELP** %Definitions.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Definitions.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 0
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %definitions, align 8
  ret void
}

declare void @prfs_Clean(%struct.PROOFSEARCH_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #3 {
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
define internal void @symbol_DeleteSymbolList(%struct.LIST_HELP* %Symbols) #3 {
entry:
  %Symbols.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Symbols, %struct.LIST_HELP** %Symbols.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (i32)* @symbol_Delete to void (i8*)*))
  ret void
}

declare void @prfs_Delete(%struct.PROOFSEARCH_HELP*) #1

declare void @flag_Print(i32*) #1

declare void @hsh_Delete(%struct.LIST_HELP**) #1

declare void @cnf_Free(i32*) #1

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_DeleteStore(i32* %Store) #3 {
entry:
  %Store.addr = alloca i32*, align 8
  store i32* %Store, i32** %Store.addr, align 8
  %0 = load i32*, i32** %Store.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @memory_Free(i8* %1, i32 384)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_DeletePrecedence(i32* %P) #3 {
entry:
  %P.addr = alloca i32*, align 8
  store i32* %P, i32** %P.addr, align 8
  %0 = load i32*, i32** %P.addr, align 8
  %1 = bitcast i32* %0 to i8*
  call void @memory_Free(i8* %1, i32 16000)
  ret void
}

declare void @cc_Free() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @ana_Free() #3 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
  ret void
}

declare void @sort_Free() #1

declare void @unify_Free() #1

declare void @cont_Free() #1

declare void @fol_Free() #1

declare void @symbol_FreeAllSymbols() #1

declare void @dfg_Free() #1

declare void @opts_Free() #1

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ClearPrecedence(i32* %P) #3 {
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

declare i32* @flag_DefaultStore() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #3 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @string_Equal(i8* %S1, i8* %S2) #3 {
entry:
  %S1.addr = alloca i8*, align 8
  %S2.addr = alloca i8*, align 8
  store i8* %S1, i8** %S1.addr, align 8
  store i8* %S2, i8** %S2.addr, align 8
  %0 = load i8*, i8** %S1.addr, align 8
  %1 = load i8*, i8** %S2.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* %1) #7
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @flag_ValueIsClean(i32* %Store, i32 %FlagId) #3 {
entry:
  %Store.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  store i32* %Store, i32** %Store.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32*, i32** %Store.addr, align 8
  %1 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 %1)
  %2 = load i32, i32* @flag_CLEAN, align 4
  %cmp = icmp eq i32 %call, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_TransferFlag(i32* %Source, i32* %Destination, i32 %FlagId) #3 {
entry:
  %Source.addr = alloca i32*, align 8
  %Destination.addr = alloca i32*, align 8
  %FlagId.addr = alloca i32, align 4
  store i32* %Source, i32** %Source.addr, align 8
  store i32* %Destination, i32** %Destination.addr, align 8
  store i32 %FlagId, i32* %FlagId.addr, align 4
  %0 = load i32*, i32** %Destination.addr, align 8
  %1 = load i32, i32* %FlagId.addr, align 4
  %2 = load i32*, i32** %Source.addr, align 8
  %3 = load i32, i32* %FlagId.addr, align 4
  %call = call i32 @flag_GetFlagValue(i32* %2, i32 %3)
  call void @flag_SetFlagValue(i32* %0, i32 %1, i32 %call)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagValueInRange(i32 %FlagId, i32 %Value) #3 {
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.47, i32 0, i32 0), i32 %4, i8* %call2)
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.48, i32 0, i32 0), i32 %9, i8* %call7)
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

declare %struct.SHARED_INDEX_NODE* @sharing_IndexCreate() #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IncreaseCounter() #3 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

declare void @clause_FPrintCnfDFGProblem(%struct._IO_FILE*, i8*, i8*, i8*, i8*, %struct.LIST_HELP*) #1

declare i8* @dfg_ProblemName() #1

declare i8* @dfg_ProblemAuthor() #1

declare i8* @dfg_ProblemStatusString() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @memory_Free(i8* %Freepointer, i32 %Size) #3 {
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
define internal i32 @memory_LookupRealBlockSize(i32 %BlockSize) #3 {
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
declare void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @memory_CalculateRealBlockSize(i32 %BlockSize) #3 {
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
define internal i64 @hsh_Index(i8* %Key) #3 {
entry:
  %Key.addr = alloca i8*, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %rem = urem i64 %1, 29
  ret i64 %rem
}

declare %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #3 {
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
define internal void @list_Free(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = bitcast %struct.LIST_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 16)
  ret void
}

declare void @ana_AnalyzeProblem(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*) #1

declare void @prfs_InstallFiniteMonadicPredicates(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @ana_FinMonPredList() #3 {
entry:
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** @ana_FINITEMONADICPREDICATES, align 8
  ret %struct.LIST_HELP* %0
}

declare void @ana_AutoConfiguration(%struct.LIST_HELP*, i32*, i32*) #1

declare void @symbol_RearrangePrecedence(i32*, %struct.LIST_HELP*) #1

declare void @ana_AnalyzeSortStructure(%struct.LIST_HELP*, i32*, i32*) #1

declare void @ana_ExploitSortAnalysis(i32*) #1

declare void @ana_Print(i32*, i32*) #1

declare void @clause_SetSortConstraint(%struct.CLAUSE_HELP*, i32, i32*, i32*) #1

declare %struct.LIST_HELP* @red_ReduceInput(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*) #1

declare void @clock_StopAddPassedTime(i32) #1

declare %struct.LIST_HELP* @red_SatInput(%struct.PROOFSEARCH_HELP*) #1

declare void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ana_SortRestrictions() #3 {
entry:
  %0 = load i32, i32* @ana_SORTRES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ana_UnsolvedSortRestrictions() #3 {
entry:
  %0 = load i32, i32* @ana_USORTRES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetStaticSortTheory(%struct.PROOFSEARCH_HELP* %Prf, %struct.SORTTHEORY_HELP* %Theory) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %astatic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 8
  store %struct.SORTTHEORY_HELP* %0, %struct.SORTTHEORY_HELP** %astatic, align 8
  ret void
}

declare %struct.SORTTHEORY_HELP* @sort_ApproxStaticSortTheory(%struct.LIST_HELP*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetDynamicSortTheory(%struct.PROOFSEARCH_HELP* %Prf, %struct.SORTTHEORY_HELP* %Theory) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 10
  store %struct.SORTTHEORY_HELP* %0, %struct.SORTTHEORY_HELP** %dynamic, align 8
  ret void
}

declare %struct.SORTTHEORY_HELP* @sort_TheoryCreate() #1

declare void @clause_MakeUnshared(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %usindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 6
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %usindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

declare void @clause_FixLiteralOrder(%struct.CLAUSE_HELP*, i32*, i32*) #1

declare void @clause_InsertIntoSharing(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #1

declare void @clause_CountSymbols(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetUsableClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #3 {
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

declare %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_CompareAbstractLEQ(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #3 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call = call i32 @clause_CompareAbstract(%struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_GetFlag(%struct.CLAUSE_HELP* %Clause, i32 %Flag) #3 {
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

declare void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_SplitStackEmpty(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %0)
  %call1 = call i32 @list_StackEmpty(%struct.LIST_HELP* %call)
  ret i32 %call1
}

declare %struct.LIST_HELP* @split_Backtrack(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_IncBacktrackedClauses(%struct.PROOFSEARCH_HELP* %Prf, i32 %k) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %k.addr = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %backtracked = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 22
  %2 = load i32, i32* %backtracked, align 4
  %add = add nsw i32 %2, %0
  store i32 %add, i32* %backtracked, align 4
  ret void
}

declare i32 @list_Length(%struct.LIST_HELP*) #1

declare void @clause_Delete(%struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %L) #3 {
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

declare void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @prfs_ValidLevel(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %validlevel = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 16
  %1 = load i32, i32* %validlevel, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @top_FullReductionSelectGivenComputeDerivables(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP** %SplitClause, i32* %Counter) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %SplitClause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Counter.addr = alloca i32*, align 8
  %GivenClause = alloca %struct.CLAUSE_HELP*, align 8
  %TerminatorClause = alloca %struct.CLAUSE_HELP*, align 8
  %Derivables = alloca %struct.LIST_HELP*, align 8
  %SplitLits = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %LitIndex = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP** %SplitClause, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store i32* %Counter, i32** %Counter.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Derivables, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %2, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %4)
  %5 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %5, align 8
  %7 = bitcast %struct.CLAUSE_HELP* %6 to i8*
  %call4 = call i32 @list_PointerMember(%struct.LIST_HELP* %call3, i8* %7)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %8, align 8
  store %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %10 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %10, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp5 = icmp eq %struct.CLAUSE_HELP* %11, null
  br i1 %cmp5, label %if.then.6, label %if.end.34

if.then.6:                                        ; preds = %if.end
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call7 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %12)
  %cmp8 = icmp ne i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.6
  %13 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call %struct.CLAUSE_HELP* @top_GetPowerfulSplitClause(%struct.PROOFSEARCH_HELP* %13, i32 0, i32* %LitIndex)
  store %struct.CLAUSE_HELP* %call10, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.6
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp12 = icmp ne %struct.CLAUSE_HELP* %14, null
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.11
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %16 = load i32, i32* %LitIndex, align 4
  %call14 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  %17 = bitcast %struct.LITERAL_HELP* %call14 to i8*
  %call15 = call %struct.LIST_HELP* @list_List(i8* %17)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %SplitLits, align 8
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call16 = call %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP* %18, %struct.CLAUSE_HELP* %19, %struct.LIST_HELP* %20)
  %21 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %21, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %22)
  br label %if.end.33

if.else:                                          ; preds = %if.end.11
  %23 = load i32*, i32** %Counter.addr, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %Flags, align 8
  %call17 = call i32 @flag_GetFlagValue(i32* %25, i32 42)
  %rem = srem i32 %24, %call17
  %cmp18 = icmp eq i32 %rem, 0
  br i1 %cmp18, label %if.then.19, label %if.else.22

if.then.19:                                       ; preds = %if.else
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call20 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %26)
  %27 = load i32*, i32** %Flags, align 8
  %call21 = call %struct.CLAUSE_HELP* @top_SelectClauseDepth(%struct.LIST_HELP* %call20, i32* %27)
  store %struct.CLAUSE_HELP* %call21, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.32

if.else.22:                                       ; preds = %if.else
  %28 = load i32*, i32** %Flags, align 8
  %call23 = call i32 @flag_GetFlagValue(i32* %28, i32 43)
  %cmp24 = icmp ne i32 %call23, 1
  br i1 %cmp24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else.22
  %29 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call26 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %29)
  %30 = load i32*, i32** %Flags, align 8
  %call27 = call %struct.CLAUSE_HELP* @top_SelectMinimalConWeightClause(%struct.LIST_HELP* %call26, i32* %30)
  store %struct.CLAUSE_HELP* %call27, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.31

if.else.28:                                       ; preds = %if.else.22
  %31 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call29 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %31)
  %32 = load i32*, i32** %Flags, align 8
  %call30 = call %struct.CLAUSE_HELP* @top_SelectMinimalWeightClause(%struct.LIST_HELP* %call29, i32* %32)
  store %struct.CLAUSE_HELP* %call30, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.19
  %33 = load i32*, i32** %Counter.addr, align 8
  %34 = load i32, i32* %33, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %33, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.13
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %35 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %35, align 8
  %cmp35 = icmp eq %struct.CLAUSE_HELP* %36, null
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.49

land.lhs.true.36:                                 ; preds = %if.end.34
  %37 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call37 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %37)
  %cmp38 = icmp ne i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %land.lhs.true.36
  %38 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call40 = call i32 @top_GetOptimalSplitLiteralIndex(%struct.PROOFSEARCH_HELP* %38, %struct.CLAUSE_HELP* %39, i32 0)
  store i32 %call40, i32* %LitIndex, align 4
  %40 = load i32, i32* %LitIndex, align 4
  %cmp41 = icmp sge i32 %40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.46

if.then.42:                                       ; preds = %if.then.39
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %42 = load i32, i32* %LitIndex, align 4
  %call43 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %41, i32 %42)
  %43 = bitcast %struct.LITERAL_HELP* %call43 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %43)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %SplitLits, align 8
  %44 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call45 = call %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP* %44, %struct.CLAUSE_HELP* %45, %struct.LIST_HELP* %46)
  %47 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %call45, %struct.CLAUSE_HELP** %47, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %48)
  br label %if.end.48

if.else.46:                                       ; preds = %if.then.39
  %49 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call47 = call %struct.CLAUSE_HELP* @prfs_PerformSplitting(%struct.PROOFSEARCH_HELP* %49, %struct.CLAUSE_HELP* %50)
  %51 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %call47, %struct.CLAUSE_HELP** %51, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.46, %if.then.42
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %land.lhs.true.36, %if.end.34
  %52 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP* %52, %struct.CLAUSE_HELP* %53)
  %54 = load i32*, i32** %Flags, align 8
  %call50 = call i32 @flag_GetFlagValue(i32* %54, i32 24)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.55

if.then.52:                                       ; preds = %if.end.49
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %55)
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %56)
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call54 = call i32 @fflush(%struct._IO_FILE* %57)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.52, %if.end.49
  %58 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %58, align 8
  %cmp56 = icmp ne %struct.CLAUSE_HELP* %59, null
  br i1 %cmp56, label %if.then.57, label %if.else.59

if.then.57:                                       ; preds = %if.end.55
  %60 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %60, align 8
  %62 = bitcast %struct.CLAUSE_HELP* %61 to i8*
  %call58 = call %struct.LIST_HELP* @list_List(i8* %62)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.77

if.else.59:                                       ; preds = %if.end.55
  %63 = load i32*, i32** %Flags, align 8
  %call60 = call i32 @flag_GetFlagValue(i32* %63, i32 87)
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then.62, label %if.end.71

if.then.62:                                       ; preds = %if.else.59
  call void @clock_StartCounter(i32 4)
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %65 = load i32*, i32** %Flags, align 8
  %call63 = call i32 @flag_GetFlagValue(i32* %65, i32 87)
  %66 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call64 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %66)
  %67 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call65 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %67)
  %68 = load i32*, i32** %Flags, align 8
  %69 = load i32*, i32** %Precedence, align 8
  %call66 = call %struct.CLAUSE_HELP* @red_Terminator(%struct.CLAUSE_HELP* %64, i32 %call63, %struct.SHARED_INDEX_NODE* %call64, %struct.SHARED_INDEX_NODE* %call65, i32* %68, i32* %69)
  store %struct.CLAUSE_HELP* %call66, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  call void @clock_StopAddPassedTime(i32 4)
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %cmp67 = icmp ne %struct.CLAUSE_HELP* %70, null
  br i1 %cmp67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.62
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %72 = bitcast %struct.CLAUSE_HELP* %71 to i8*
  %call69 = call %struct.LIST_HELP* @list_List(i8* %72)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Derivables, align 8
  %73 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %73, %struct.CLAUSE_HELP* %74)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.then.62
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.else.59
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call72 = call i32 @list_Empty(%struct.LIST_HELP* %75)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.end.71
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %77 = load i32*, i32** %Flags, align 8
  call void @clause_SelectLiteral(%struct.CLAUSE_HELP* %76, i32* %77)
  %78 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_InsertWorkedOffClause(%struct.PROOFSEARCH_HELP* %78, %struct.CLAUSE_HELP* %79)
  call void @clock_StartCounter(i32 5)
  %80 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call75 = call %struct.LIST_HELP* @inf_DerivableClauses(%struct.PROOFSEARCH_HELP* %80, %struct.CLAUSE_HELP* %81)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %Derivables, align 8
  call void @clock_StopAddPassedTime(i32 5)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.74, %if.end.71
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.then.57
  %82 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call78 = call i32 @list_Length(%struct.LIST_HELP* %83)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %82, i32 %call78)
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  ret %struct.LIST_HELP* %84
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @top_LazyReductionSelectGivenComputeDerivables(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP** %SplitClause, i32* %Counter) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %SplitClause.addr = alloca %struct.CLAUSE_HELP**, align 8
  %Counter.addr = alloca i32*, align 8
  %GivenClause = alloca %struct.CLAUSE_HELP*, align 8
  %TerminatorClause = alloca %struct.CLAUSE_HELP*, align 8
  %Derivables = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %LitIndex = alloca i32, align 4
  %SplitLits = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP** %SplitClause, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store i32* %Counter, i32** %Counter.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %GivenClause, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Derivables, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.34, %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp = icmp eq %struct.CLAUSE_HELP* %2, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %3)
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %call3)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %5, align 8
  %cmp5 = icmp ne %struct.CLAUSE_HELP* %6, null
  br i1 %cmp5, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call6 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %7)
  %8 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %8, align 8
  %10 = bitcast %struct.CLAUSE_HELP* %9 to i8*
  %call7 = call i32 @list_PointerMember(%struct.LIST_HELP* %call6, i8* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %11, align 8
  store %struct.CLAUSE_HELP* %12, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %13 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %13, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp9 = icmp eq %struct.CLAUSE_HELP* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.34

if.then.10:                                       ; preds = %if.end
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call11 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %15)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call14 = call %struct.CLAUSE_HELP* @top_GetPowerfulSplitClause(%struct.PROOFSEARCH_HELP* %16, i32 0, i32* %LitIndex)
  store %struct.CLAUSE_HELP* %call14, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp16 = icmp eq %struct.CLAUSE_HELP* %17, null
  br i1 %cmp16, label %if.then.17, label %if.end.33

if.then.17:                                       ; preds = %if.end.15
  %18 = load i32*, i32** %Counter.addr, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %Flags, align 8
  %call18 = call i32 @flag_GetFlagValue(i32* %20, i32 42)
  %rem = srem i32 %19, %call18
  %cmp19 = icmp eq i32 %rem, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.then.17
  %21 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call21 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %21)
  %22 = load i32*, i32** %Flags, align 8
  %call22 = call %struct.CLAUSE_HELP* @top_SelectClauseDepth(%struct.LIST_HELP* %call21, i32* %22)
  store %struct.CLAUSE_HELP* %call22, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.32

if.else:                                          ; preds = %if.then.17
  %23 = load i32*, i32** %Flags, align 8
  %call23 = call i32 @flag_GetFlagValue(i32* %23, i32 43)
  %cmp24 = icmp ne i32 %call23, 1
  br i1 %cmp24, label %if.then.25, label %if.else.28

if.then.25:                                       ; preds = %if.else
  %24 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call26 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %24)
  %25 = load i32*, i32** %Flags, align 8
  %call27 = call %struct.CLAUSE_HELP* @top_SelectMinimalConWeightClause(%struct.LIST_HELP* %call26, i32* %25)
  store %struct.CLAUSE_HELP* %call27, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.31

if.else.28:                                       ; preds = %if.else
  %26 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call29 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %26)
  %27 = load i32*, i32** %Flags, align 8
  %call30 = call %struct.CLAUSE_HELP* @top_SelectMinimalWeightClause(%struct.LIST_HELP* %call29, i32* %27)
  store %struct.CLAUSE_HELP* %call30, %struct.CLAUSE_HELP** %GivenClause, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.25
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %28 = load i32*, i32** %Counter.addr, align 8
  %29 = load i32, i32* %28, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %28, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.end.15
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end
  %30 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP* %30, %struct.CLAUSE_HELP* %31)
  call void @clock_StartCounter(i32 4)
  %32 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %34 = load i32, i32* @red_WORKEDOFF, align 4
  %call35 = call %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %32, %struct.CLAUSE_HELP* %33, i32 %34)
  store %struct.CLAUSE_HELP* %call35, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @clock_StopAddPassedTime(i32 4)
  br label %while.cond

while.end:                                        ; preds = %land.end
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %cmp36 = icmp eq %struct.CLAUSE_HELP* %35, null
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %while.end
  %call38 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %retval
  br label %return

if.end.39:                                        ; preds = %while.end
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call40 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %36)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.else.44

if.then.42:                                       ; preds = %if.end.39
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %38 = bitcast %struct.CLAUSE_HELP* %37 to i8*
  %call43 = call %struct.LIST_HELP* @list_List(i8* %38)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Derivables, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %39, %struct.LIST_HELP** %retval
  br label %return

if.else.44:                                       ; preds = %if.end.39
  call void @clock_StartCounter(i32 4)
  %40 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %42 = load i32, i32* @red_WORKEDOFF, align 4
  %call45 = call %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %40, %struct.CLAUSE_HELP* %41, i32 %42)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Derivables, align 8
  call void @clock_StopAddPassedTime(i32 4)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44
  %43 = load i32*, i32** %Flags, align 8
  %call47 = call i32 @flag_GetFlagValue(i32* %43, i32 24)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.then.49, label %if.end.52

if.then.49:                                       ; preds = %if.end.46
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %44)
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call51 = call i32 @fflush(%struct._IO_FILE* %46)
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.49, %if.end.46
  %47 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call53 = call i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %47)
  %cmp54 = icmp ne i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.65

if.then.55:                                       ; preds = %if.end.52
  %48 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call56 = call i32 @top_GetOptimalSplitLiteralIndex(%struct.PROOFSEARCH_HELP* %48, %struct.CLAUSE_HELP* %49, i32 0)
  store i32 %call56, i32* %LitIndex, align 4
  %50 = load i32, i32* %LitIndex, align 4
  %cmp57 = icmp sge i32 %50, 0
  br i1 %cmp57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %if.then.55
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %52 = load i32, i32* %LitIndex, align 4
  %call59 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %51, i32 %52)
  %53 = bitcast %struct.LITERAL_HELP* %call59 to i8*
  %call60 = call %struct.LIST_HELP* @list_List(i8* %53)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %SplitLits, align 8
  %54 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call61 = call %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP* %54, %struct.CLAUSE_HELP* %55, %struct.LIST_HELP* %56)
  %57 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %call61, %struct.CLAUSE_HELP** %57, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %58)
  br label %if.end.64

if.else.62:                                       ; preds = %if.then.55
  %59 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call63 = call %struct.CLAUSE_HELP* @prfs_PerformSplitting(%struct.PROOFSEARCH_HELP* %59, %struct.CLAUSE_HELP* %60)
  %61 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  store %struct.CLAUSE_HELP* %call63, %struct.CLAUSE_HELP** %61, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.62, %if.then.58
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.52
  %62 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %62, align 8
  %cmp66 = icmp ne %struct.CLAUSE_HELP* %63, null
  br i1 %cmp66, label %if.then.67, label %if.else.69

if.then.67:                                       ; preds = %if.end.65
  %64 = load %struct.CLAUSE_HELP**, %struct.CLAUSE_HELP*** %SplitClause.addr, align 8
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %64, align 8
  %66 = bitcast %struct.CLAUSE_HELP* %65 to i8*
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call68 = call %struct.LIST_HELP* @list_Cons(i8* %66, %struct.LIST_HELP* %67)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.87

if.else.69:                                       ; preds = %if.end.65
  %68 = load i32*, i32** %Flags, align 8
  %call70 = call i32 @flag_GetFlagValue(i32* %68, i32 87)
  %cmp71 = icmp ne i32 %call70, 0
  br i1 %cmp71, label %if.then.72, label %if.end.81

if.then.72:                                       ; preds = %if.else.69
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %70 = load i32*, i32** %Flags, align 8
  %call73 = call i32 @flag_GetFlagValue(i32* %70, i32 87)
  %71 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call74 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %71)
  %72 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call75 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %72)
  %73 = load i32*, i32** %Flags, align 8
  %74 = load i32*, i32** %Precedence, align 8
  %call76 = call %struct.CLAUSE_HELP* @red_Terminator(%struct.CLAUSE_HELP* %69, i32 %call73, %struct.SHARED_INDEX_NODE* %call74, %struct.SHARED_INDEX_NODE* %call75, i32* %73, i32* %74)
  store %struct.CLAUSE_HELP* %call76, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %cmp77 = icmp ne %struct.CLAUSE_HELP* %75, null
  br i1 %cmp77, label %if.then.78, label %if.end.80

if.then.78:                                       ; preds = %if.then.72
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %77 = bitcast %struct.CLAUSE_HELP* %76 to i8*
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call79 = call %struct.LIST_HELP* @list_Cons(i8* %77, %struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %Derivables, align 8
  %79 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %79, %struct.CLAUSE_HELP* %80)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.78, %if.then.72
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.else.69
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %TerminatorClause, align 8
  %cmp82 = icmp eq %struct.CLAUSE_HELP* %81, null
  br i1 %cmp82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.81
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %83 = load i32*, i32** %Flags, align 8
  call void @clause_SelectLiteral(%struct.CLAUSE_HELP* %82, i32* %83)
  %84 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  call void @prfs_InsertWorkedOffClause(%struct.PROOFSEARCH_HELP* %84, %struct.CLAUSE_HELP* %85)
  call void @clock_StartCounter(i32 5)
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %87 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call84 = call %struct.LIST_HELP* @inf_DerivableClauses(%struct.PROOFSEARCH_HELP* %87, %struct.CLAUSE_HELP* %88)
  %call85 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %86, %struct.LIST_HELP* %call84)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %Derivables, align 8
  call void @clock_StopAddPassedTime(i32 5)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.81
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %if.then.67
  %89 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call88 = call i32 @list_Length(%struct.LIST_HELP* %90)
  call void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %89, i32 %call88)
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %91, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.87, %if.then.42, %if.then.37
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %92
}

declare void @clause_Print(%struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP*, %struct.LIST_HELP**) #1

declare %struct.LIST_HELP* @red_CompleteReductionOnDerivedClauses(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*, i32, i32, i32, i32*) #1

declare %struct.CLAUSE_HELP* @split_SmallestSplitLevelClause(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_DecLoops(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %loops = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 21
  %1 = load i32, i32* %loops, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %loops, align 4
  ret void
}

declare void @prfs_SwapIndexes(%struct.PROOFSEARCH_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetEmptyClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %emptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 1
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %emptyclauses, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetUsedEmptyClauses(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Clauses) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %usedemptyclauses = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %usedemptyclauses, align 8
  ret void
}

declare i32 @clause_CompareAbstract(%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_StackEmpty(%struct.LIST_HELP* %S) #3 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  ret i32 %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_SplitStack(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %stack = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 15
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %stack, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_PointerMember(%struct.LIST_HELP* %List, i8* %Element) #3 {
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
define internal i32 @prfs_SplitCounter(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %splitcounter = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 18
  %1 = load i32, i32* %splitcounter, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @top_GetPowerfulSplitClause(%struct.PROOFSEARCH_HELP* %Search, i32 %Usables, i32* %LitIndex) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Usables.addr = alloca i32, align 4
  %LitIndex.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %SplitLits = alloca %struct.LIST_HELP*, align 8
  %MaxNrOfInstances = alloca i32, align 4
  %NrOfInstances = alloca i32, align 4
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %OptimalClause = alloca %struct.CLAUSE_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %WOIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %UsIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Literal = alloca %struct.LITERAL_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store i32 %Usables, i32* %Usables.addr, align 4
  store i32* %LitIndex, i32** %LitIndex.addr, align 8
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %OptimalClause, align 8
  %0 = load i32*, i32** %LitIndex.addr, align 8
  store i32 -1, i32* %0, align 4
  store i32 0, i32* %MaxNrOfInstances, align 4
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %1)
  store %struct.SHARED_INDEX_NODE* %call, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %2)
  store %struct.SHARED_INDEX_NODE* %call1, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %3 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  %call2 = call i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %3)
  %call3 = call i32 @term_StampOverflow(i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %WOIndex, align 8
  call void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %Usables.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %land.lhs.true, label %if.end.9

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  %call5 = call i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %6)
  %call6 = call i32 @term_StampOverflow(i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %UsIndex, align 8
  call void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE* %7)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %land.lhs.true, %if.end
  call void @term_StartStamp()
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call10 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.46, %if.end.9
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %11, %struct.CLAUSE_HELP** %Clause, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call14 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.45

land.lhs.true.16:                                 ; preds = %for.body
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call17 = call i32 @clause_IsHornClause(%struct.CLAUSE_HELP* %13)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.45, label %if.then.19

if.then.19:                                       ; preds = %land.lhs.true.16
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call20 = call %struct.LIST_HELP* @top_GetLiteralsForSplitting(%struct.CLAUSE_HELP* %14)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %SplitLits, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.then.19
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = ptrtoint i8* %call26 to i32
  %call27 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %16, i32 %18)
  store %struct.LITERAL_HELP* %call27, %struct.LITERAL_HELP** %Literal, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal, align 8
  %call28 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %19)
  store %struct.term* %call28, %struct.term** %Atom, align 8
  %20 = load %struct.term*, %struct.term** %Atom, align 8
  %call29 = call i32 @term_AlreadyVisited(%struct.term* %20)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.43, label %if.then.31

if.then.31:                                       ; preds = %for.body.25
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_SetTermStamp(%struct.term* %21)
  %22 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal, align 8
  %24 = load i32, i32* %Usables.addr, align 4
  %call32 = call i32 @prfs_GetNumberOfInstances(%struct.PROOFSEARCH_HELP* %22, %struct.LITERAL_HELP* %23, i32 %24)
  store i32 %call32, i32* %NrOfInstances, align 4
  %25 = load i32, i32* %NrOfInstances, align 4
  %26 = load i32, i32* %MaxNrOfInstances, align 4
  %cmp = icmp ugt i32 %25, %26
  br i1 %cmp, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.31
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %OptimalClause, align 8
  %cmp33 = icmp eq %struct.CLAUSE_HELP* %27, null
  br i1 %cmp33, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false
  %28 = load i32, i32* %NrOfInstances, align 4
  %29 = load i32, i32* %MaxNrOfInstances, align 4
  %cmp35 = icmp eq i32 %28, %29
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.42

land.lhs.true.36:                                 ; preds = %lor.lhs.false.34
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call37 = call i32 @clause_Length(%struct.CLAUSE_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %OptimalClause, align 8
  %call38 = call i32 @clause_Length(%struct.CLAUSE_HELP* %31)
  %cmp39 = icmp slt i32 %call37, %call38
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.36, %lor.lhs.false, %if.then.31
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  store %struct.CLAUSE_HELP* %32, %struct.CLAUSE_HELP** %OptimalClause, align 8
  %33 = load i32, i32* %NrOfInstances, align 4
  store i32 %33, i32* %MaxNrOfInstances, align 4
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %34)
  %35 = ptrtoint i8* %call41 to i32
  %36 = load i32*, i32** %LitIndex.addr, align 8
  store i32 %35, i32* %36, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.36, %lor.lhs.false.34
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call44 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %SplitLits, align 8
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %if.end.45

if.end.45:                                        ; preds = %for.end, %land.lhs.true.16, %for.body
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  call void @term_StopStamp()
  %39 = load i32, i32* %MaxNrOfInstances, align 4
  %cmp49 = icmp eq i32 %39, 0
  br i1 %cmp49, label %if.then.54, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %for.end.48
  %40 = load i32, i32* %Usables.addr, align 4
  %tobool51 = icmp ne i32 %40, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.55

land.lhs.true.52:                                 ; preds = %lor.lhs.false.50
  %41 = load i32, i32* %MaxNrOfInstances, align 4
  %cmp53 = icmp eq i32 %41, 1
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %land.lhs.true.52, %for.end.48
  %42 = load i32*, i32** %LitIndex.addr, align 8
  store i32 -1, i32* %42, align 4
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %OptimalClause, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %land.lhs.true.52, %lor.lhs.false.50
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %OptimalClause, align 8
  ret %struct.CLAUSE_HELP* %43
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %C, i32 %Index) #3 {
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

declare %struct.CLAUSE_HELP* @prfs_DoSplitting(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, %struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @top_SelectClauseDepth(%struct.LIST_HELP* %List, i32* %Flags) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %Vars = alloca i32, align 4
  %NewVars = alloca i32, align 4
  %Weight = alloca i32, align 4
  %Depth = alloca i32, align 4
  %NewDepth = alloca i32, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %1, %struct.CLAUSE_HELP** %Result, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %2)
  store i32 %call1, i32* %Depth, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call2 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %3)
  store i32 %call2, i32* %Weight, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call3 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %4)
  store i32 %call3, i32* %Vars, align 4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  %call7 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %8)
  store i32 %call7, i32* %NewDepth, align 4
  %9 = load i32, i32* %NewDepth, align 4
  %10 = load i32, i32* %Depth, align 4
  %cmp = icmp ule i32 %9, %10
  br i1 %cmp, label %if.then, label %if.end.39

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %NewDepth, align 4
  %12 = load i32, i32* %Depth, align 4
  %cmp8 = icmp ult i32 %11, %12
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call9 to %struct.CLAUSE_HELP*
  %call10 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %14)
  %15 = load i32, i32* %Weight, align 4
  %cmp11 = icmp ult i32 %call10, %15
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.then
  %16 = load i32, i32* %NewDepth, align 4
  store i32 %16, i32* %Depth, align 4
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %18, %struct.CLAUSE_HELP** %Result, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call14 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %19)
  store i32 %call14, i32* %Weight, align 4
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call15 to %struct.CLAUSE_HELP*
  %call16 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %21)
  store i32 %call16, i32* %Vars, align 4
  br label %if.end.38

if.else:                                          ; preds = %lor.lhs.false
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call17 to %struct.CLAUSE_HELP*
  %call18 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %23)
  %24 = load i32, i32* %Weight, align 4
  %cmp19 = icmp eq i32 %call18, %24
  br i1 %cmp19, label %if.then.20, label %if.end.37

if.then.20:                                       ; preds = %if.else
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call21 to %struct.CLAUSE_HELP*
  %call22 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %26)
  store i32 %call22, i32* %NewVars, align 4
  %27 = load i32*, i32** %Flags.addr, align 8
  %call23 = call i32 @flag_GetFlagValue(i32* %27, i32 47)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.else.30

if.then.25:                                       ; preds = %if.then.20
  %28 = load i32, i32* %Vars, align 4
  %29 = load i32, i32* %NewVars, align 4
  %cmp26 = icmp ult i32 %28, %29
  br i1 %cmp26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %if.then.25
  %30 = load i32, i32* %NewDepth, align 4
  store i32 %30, i32* %Depth, align 4
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call28 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %32, %struct.CLAUSE_HELP** %Result, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call29 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %33)
  store i32 %call29, i32* %Weight, align 4
  %34 = load i32, i32* %NewVars, align 4
  store i32 %34, i32* %Vars, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.27, %if.then.25
  br label %if.end.36

if.else.30:                                       ; preds = %if.then.20
  %35 = load i32, i32* %Vars, align 4
  %36 = load i32, i32* %NewVars, align 4
  %cmp31 = icmp ugt i32 %35, %36
  br i1 %cmp31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.else.30
  %37 = load i32, i32* %NewDepth, align 4
  store i32 %37, i32* %Depth, align 4
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call33 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %39, %struct.CLAUSE_HELP** %Result, align 8
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call34 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %40)
  store i32 %call34, i32* %Weight, align 4
  %41 = load i32, i32* %NewVars, align 4
  store i32 %41, i32* %Vars, align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.else.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.else
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.12
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %while.body
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call40 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %43
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @top_SelectMinimalConWeightClause(%struct.LIST_HELP* %List, i32* %Flags) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %NewWeight = alloca i32, align 4
  %Weight = alloca i32, align 4
  %NewVars = alloca i32, align 4
  %Vars = alloca i32, align 4
  %Factor = alloca i32, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %1, %struct.CLAUSE_HELP** %Result, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %2, i32 43)
  store i32 %call1, i32* %Factor, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call2 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %3)
  store i32 %call2, i32* %Weight, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call3 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %4, i32 8)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %Weight, align 4
  %6 = load i32, i32* %Factor, align 4
  %div = udiv i32 %5, %6
  store i32 %div, i32* %Weight, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %call5 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %8)
  store i32 %call5, i32* %Vars, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call9 to %struct.CLAUSE_HELP*
  %call10 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %12)
  store i32 %call10, i32* %NewWeight, align 4
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call11 to %struct.CLAUSE_HELP*
  %call12 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %14, i32 8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %while.body
  %15 = load i32, i32* %NewWeight, align 4
  %16 = load i32, i32* %Factor, align 4
  %div15 = udiv i32 %15, %16
  store i32 %div15, i32* %NewWeight, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %while.body
  %17 = load i32, i32* %NewWeight, align 4
  %18 = load i32, i32* %Weight, align 4
  %cmp = icmp ult i32 %17, %18
  br i1 %cmp, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.end.16
  %19 = load i32, i32* %NewWeight, align 4
  store i32 %19, i32* %Weight, align 4
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call18 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %21, %struct.CLAUSE_HELP** %Result, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call19 to %struct.CLAUSE_HELP*
  %call20 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %23)
  store i32 %call20, i32* %Vars, align 4
  br label %if.end.39

if.else:                                          ; preds = %if.end.16
  %24 = load i32, i32* %NewWeight, align 4
  %25 = load i32, i32* %Weight, align 4
  %cmp21 = icmp eq i32 %24, %25
  br i1 %cmp21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.else
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call23 to %struct.CLAUSE_HELP*
  %call24 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %27)
  store i32 %call24, i32* %NewVars, align 4
  %28 = load i32*, i32** %Flags.addr, align 8
  %call25 = call i32 @flag_GetFlagValue(i32* %28, i32 47)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.32

if.then.27:                                       ; preds = %if.then.22
  %29 = load i32, i32* %Vars, align 4
  %30 = load i32, i32* %NewVars, align 4
  %cmp28 = icmp ult i32 %29, %30
  br i1 %cmp28, label %if.then.29, label %if.end.31

if.then.29:                                       ; preds = %if.then.27
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call30 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %32, %struct.CLAUSE_HELP** %Result, align 8
  %33 = load i32, i32* %NewWeight, align 4
  store i32 %33, i32* %Weight, align 4
  %34 = load i32, i32* %NewVars, align 4
  store i32 %34, i32* %Vars, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.then.27
  br label %if.end.37

if.else.32:                                       ; preds = %if.then.22
  %35 = load i32, i32* %Vars, align 4
  %36 = load i32, i32* %NewVars, align 4
  %cmp33 = icmp ugt i32 %35, %36
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.else.32
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call35 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %38, %struct.CLAUSE_HELP** %Result, align 8
  %39 = load i32, i32* %NewWeight, align 4
  store i32 %39, i32* %Weight, align 4
  %40 = load i32, i32* %NewVars, align 4
  store i32 %40, i32* %Vars, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.else.32
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.17
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call40 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %42
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @top_SelectMinimalWeightClause(%struct.LIST_HELP* %List, i32* %Flags) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %Vars = alloca i32, align 4
  %NewVars = alloca i32, align 4
  %Weight = alloca i32, align 4
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %1, %struct.CLAUSE_HELP** %Result, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %2)
  store i32 %call1, i32* %Weight, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call2 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %3)
  store i32 %call2, i32* %Vars, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.CLAUSE_HELP*
  %call6 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %7)
  %8 = load i32, i32* %Weight, align 4
  %cmp = icmp eq i32 %call6, %8
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %while.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %call8 = call i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %10)
  store i32 %call8, i32* %NewVars, align 4
  %11 = load i32*, i32** %Flags.addr, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %11, i32 47)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %12 = load i32, i32* %Vars, align 4
  %13 = load i32, i32* %NewVars, align 4
  %cmp12 = icmp ult i32 %12, %13
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then.11
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %15, %struct.CLAUSE_HELP** %Result, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call15 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %16)
  store i32 %call15, i32* %Weight, align 4
  %17 = load i32, i32* %NewVars, align 4
  store i32 %17, i32* %Vars, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then.11
  br label %if.end.21

if.else:                                          ; preds = %if.then
  %18 = load i32, i32* %Vars, align 4
  %19 = load i32, i32* %NewVars, align 4
  %cmp16 = icmp ugt i32 %18, %19
  br i1 %cmp16, label %if.then.17, label %if.end.20

if.then.17:                                       ; preds = %if.else
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call18 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %21, %struct.CLAUSE_HELP** %Result, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call19 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %22)
  store i32 %call19, i32* %Weight, align 4
  %23 = load i32, i32* %NewVars, align 4
  store i32 %23, i32* %Vars, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.17, %if.else
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end
  br label %if.end.23

if.else.22:                                       ; preds = %while.body
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  store %struct.CLAUSE_HELP* %24, %struct.CLAUSE_HELP** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.21
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  store %struct.CLAUSE_HELP* %26, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.else.22
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %27
}

; Function Attrs: nounwind uwtable
define internal i32 @top_GetOptimalSplitLiteralIndex(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause, i32 %Usables) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Usables.addr = alloca i32, align 4
  %SplitLits = alloca %struct.LIST_HELP*, align 8
  %Literal = alloca %struct.LITERAL_HELP*, align 8
  %Count = alloca i32, align 4
  %MaxInstances = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Usables, i32* %Usables.addr, align 4
  store i32 -1, i32* %MaxInstances, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @top_GetLiteralsForSplitting(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %SplitLits, align 8
  store i32 -1, i32* %Result, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = ptrtoint i8* %call2 to i32
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %2, i32 %4)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %Literal, align 8
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal, align 8
  %7 = load i32, i32* %Usables.addr, align 4
  %call4 = call i32 @prfs_GetNumberOfInstances(%struct.PROOFSEARCH_HELP* %5, %struct.LITERAL_HELP* %6, i32 %7)
  store i32 %call4, i32* %Count, align 4
  %8 = load i32, i32* %Count, align 4
  %9 = load i32, i32* %MaxInstances, align 4
  %cmp = icmp ugt i32 %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = ptrtoint i8* %call5 to i32
  store i32 %11, i32* %Result, align 4
  %12 = load i32, i32* %Count, align 4
  store i32 %12, i32* %MaxInstances, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SplitLits, align 8
  %call6 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %SplitLits, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %Result, align 4
  ret i32 %14
}

declare %struct.CLAUSE_HELP* @prfs_PerformSplitting(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @prfs_ExtractUsable(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare %struct.CLAUSE_HELP* @red_Terminator(%struct.CLAUSE_HELP*, i32, %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #3 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 4
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %woindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

declare void @clause_SelectLiteral(%struct.CLAUSE_HELP*, i32*) #1

declare void @prfs_InsertWorkedOffClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare %struct.LIST_HELP* @inf_DerivableClauses(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_IncDerivedClauses(%struct.PROOFSEARCH_HELP* %Prf, i32 %k) #3 {
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

declare i32 @term_StampOverflow(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sharing_StampID(%struct.SHARED_INDEX_NODE* %ShIndex) #3 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %stampId = getelementptr inbounds %struct.SHARED_INDEX_NODE, %struct.SHARED_INDEX_NODE* %0, i32 0, i32 3
  %1 = load i32, i32* %stampId, align 4
  ret i32 %1
}

declare void @sharing_ResetAllTermStamps(%struct.SHARED_INDEX_NODE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartStamp() #3 {
entry:
  %0 = load i32, i32* @term_STAMP, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @term_STAMP, align 4
  ret void
}

declare i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP*) #1

declare i32 @clause_IsHornClause(%struct.CLAUSE_HELP*) #1

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @top_GetLiteralsForSplitting(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Variables = alloca %struct.LIST_HELP**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Stop = alloca i32, align 4
  %Failed = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_IsHornClause(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_IsGround(%struct.CLAUSE_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  %cmp = icmp sge i32 %4, %call6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %7 = inttoptr i64 %conv to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call7 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_Length(%struct.CLAUSE_HELP* %11)
  %conv10 = sext i32 %call9 to i64
  %mul = mul i64 8, %conv10
  %conv11 = trunc i64 %mul to i32
  %call12 = call i8* @memory_Malloc(i32 %conv11)
  %12 = bitcast i8* %call12 to %struct.LIST_HELP**
  store %struct.LIST_HELP** %12, %struct.LIST_HELP*** %Variables, align 8
  %call13 = call i32 @clause_FirstLitIndex()
  store i32 %call13, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %if.end.8
  %13 = load i32, i32* %i, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call15 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %14)
  %cmp16 = icmp sle i32 %13, %call15
  br i1 %cmp16, label %for.body.18, label %for.end.22

for.body.18:                                      ; preds = %for.cond.14
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call19 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  %call20 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call19)
  %17 = load i32, i32* %i, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %18, i64 %idxprom
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %arrayidx, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.18
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.14

for.end.22:                                       ; preds = %for.cond.14
  %call23 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %Failed, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call24 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %20)
  store i32 %call24, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.72, %for.end.22
  %21 = load i32, i32* %i, align 4
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call26 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %22)
  %cmp27 = icmp sge i32 %21, %call26
  br i1 %cmp27, label %for.body.29, label %for.end.74

for.body.29:                                      ; preds = %for.cond.25
  %23 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %23 to i64
  %24 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %arrayidx31 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %24, i64 %idxprom30
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx31, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %for.body.29
  %26 = load i32, i32* %i, align 4
  %conv35 = sext i32 %26 to i64
  %27 = inttoptr i64 %conv35 to i8*
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call36 = call %struct.LIST_HELP* @list_Cons(i8* %27, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Result, align 8
  br label %if.end.71

if.else:                                          ; preds = %for.body.29
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Failed, align 8
  %30 = load i32, i32* %i, align 4
  %conv37 = sext i32 %30 to i64
  %31 = inttoptr i64 %conv37 to i8*
  %call38 = call i32 @list_PointerMember(%struct.LIST_HELP* %29, i8* %31)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.70, label %if.then.40

if.then.40:                                       ; preds = %if.else
  store i32 0, i32* %Stop, align 4
  %call41 = call i32 @clause_FirstLitIndex()
  store i32 %call41, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.62, %if.then.40
  %32 = load i32, i32* %j, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call43 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %33)
  %cmp44 = icmp sle i32 %32, %call43
  br i1 %cmp44, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.42
  %34 = load i32, i32* %Stop, align 4
  %tobool46 = icmp ne i32 %34, 0
  %lnot = xor i1 %tobool46, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.42
  %35 = phi i1 [ false, %for.cond.42 ], [ %lnot, %land.rhs ]
  br i1 %35, label %for.body.47, label %for.end.64

for.body.47:                                      ; preds = %land.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %j, align 4
  %cmp48 = icmp ne i32 %36, %37
  br i1 %cmp48, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %for.body.47
  %38 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %38 to i64
  %39 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %arrayidx51 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %39, i64 %idxprom50
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx51, align 8
  %41 = load i32, i32* %j, align 4
  %idxprom52 = sext i32 %41 to i64
  %42 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %arrayidx53 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %42, i64 %idxprom52
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx53, align 8
  %call54 = call i32 @list_HasIntersection(%struct.LIST_HELP* %40, %struct.LIST_HELP* %43)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.61

if.then.56:                                       ; preds = %land.lhs.true
  store i32 1, i32* %Stop, align 4
  %44 = load i32, i32* %i, align 4
  %conv57 = sext i32 %44 to i64
  %45 = inttoptr i64 %conv57 to i8*
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Failed, align 8
  %call58 = call %struct.LIST_HELP* @list_Cons(i8* %45, %struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Failed, align 8
  %47 = load i32, i32* %j, align 4
  %conv59 = sext i32 %47 to i64
  %48 = inttoptr i64 %conv59 to i8*
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Failed, align 8
  %call60 = call %struct.LIST_HELP* @list_Cons(i8* %48, %struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %Failed, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.56, %land.lhs.true, %for.body.47
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %50 = load i32, i32* %j, align 4
  %inc63 = add nsw i32 %50, 1
  store i32 %inc63, i32* %j, align 4
  br label %for.cond.42

for.end.64:                                       ; preds = %land.end
  %51 = load i32, i32* %Stop, align 4
  %tobool65 = icmp ne i32 %51, 0
  br i1 %tobool65, label %if.end.69, label %if.then.66

if.then.66:                                       ; preds = %for.end.64
  %52 = load i32, i32* %i, align 4
  %conv67 = sext i32 %52 to i64
  %53 = inttoptr i64 %conv67 to i8*
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call68 = call %struct.LIST_HELP* @list_Cons(i8* %53, %struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Result, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %for.end.64
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.then.34
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %55 = load i32, i32* %i, align 4
  %dec73 = add nsw i32 %55, -1
  store i32 %dec73, i32* %i, align 4
  br label %for.cond.25

for.end.74:                                       ; preds = %for.cond.25
  %call75 = call i32 @clause_FirstLitIndex()
  store i32 %call75, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.83, %for.end.74
  %56 = load i32, i32* %i, align 4
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call77 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %57)
  %cmp78 = icmp sle i32 %56, %call77
  br i1 %cmp78, label %for.body.80, label %for.end.85

for.body.80:                                      ; preds = %for.cond.76
  %58 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %58 to i64
  %59 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %arrayidx82 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %59, i64 %idxprom81
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx82, align 8
  call void @list_Delete(%struct.LIST_HELP* %60)
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.80
  %61 = load i32, i32* %i, align 4
  %inc84 = add nsw i32 %61, 1
  store i32 %inc84, i32* %i, align 4
  br label %for.cond.76

for.end.85:                                       ; preds = %for.cond.76
  %62 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Variables, align 8
  %63 = bitcast %struct.LIST_HELP** %62 to i8*
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call86 = call i32 @clause_Length(%struct.CLAUSE_HELP* %64)
  %conv87 = sext i32 %call86 to i64
  %mul88 = mul i64 8, %conv87
  %conv89 = trunc i64 %mul88 to i32
  call void @memory_Free(i8* %63, i32 %conv89)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Failed, align 8
  call void @list_Delete(%struct.LIST_HELP* %65)
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.85, %for.end, %if.then
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %67
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %L) #3 {
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
define internal i32 @term_AlreadyVisited(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  %1 = load i32, i32* %stamp, align 4
  %2 = load i32, i32* @term_STAMP, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetTermStamp(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load i32, i32* @term_STAMP, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 3
  store i32 %0, i32* %stamp, align 4
  ret void
}

declare i32 @prfs_GetNumberOfInstances(%struct.PROOFSEARCH_HELP*, %struct.LITERAL_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Length(%struct.CLAUSE_HELP* %Clause) #3 {
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
define internal void @term_StopStamp() #3 {
entry:
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsGround(%struct.CLAUSE_HELP* %Clause) #3 {
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
define internal i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #3 {
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
define internal i32 @clause_FirstLitIndex() #3 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

declare %struct.LIST_HELP* @term_VariableSymbols(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %C, i32 %Index) #3 {
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

declare i32 @list_HasIntersection(%struct.LIST_HELP*, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #3 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_MaxVar(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 9
  %1 = load i32, i32* %maxVar, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialStandardVarCounter() #3 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %a = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 12
  %1 = load i32, i32* %a, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 11
  %1 = load i32, i32* %c, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %L) #3 {
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
define internal %struct.term* @term_FirstArgument(%struct.term* %T) #3 {
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
define internal %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 4
  %1 = load %struct.term*, %struct.term** %atomWithSign, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_TopSymbol(%struct.term* %T) #3 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 0
  %1 = load i32, i32* %symbol, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_First(%struct.LIST_HELP* %L) #3 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %s = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 13
  %1 = load i32, i32* %s, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Depth(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %depth, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Weight(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 1
  %1 = load i32, i32* %weight, align 4
  ret i32 %1
}

declare i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP*) #1

declare %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %C) #3 {
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

declare %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %Clause) #3 {
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
define internal i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %Clause) #3 {
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
define internal i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %Clause) #3 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

declare void @clause_OrientEqualities(%struct.CLAUSE_HELP*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_ReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #3 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateWeight(%struct.CLAUSE_HELP* %Clause, i32* %Flags) #3 {
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

declare void @clause_UpdateMaxVar(%struct.CLAUSE_HELP*) #1

declare i32 @clause_ComputeWeight(%struct.CLAUSE_HELP*, i32*) #1

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #1

declare void @symbol_Delete(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
