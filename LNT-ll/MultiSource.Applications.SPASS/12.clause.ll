; ModuleID = './MultiSource.Applications.SPASS/12.clause.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@clause_WEIGHTUNDEFINED = constant i32 -1, align 4
@clause_SORT = common global [21 x %struct.LIST_HELP*] zeroinitializer, align 16
@clause_STAMPID = common global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@clause_CompareAbstract.clause_compare_functions = internal constant [10 x i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)*] [i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByWeight, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByDepth, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByMaxVar, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByClausePartSize, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByLiterals, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareBySymbolOccurences, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByPredicateDistribution, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByConstantDistribution, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByFunctionDistribution, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_CompareByVariableDistribution], align 16
@.str = private unnamed_addr constant [13 x i8] c"(CLAUSE)NULL\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"[%d:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" || \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" -> \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"(strictly)\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c",%d.%d\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"App\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"EmS\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"SoR\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"EqR\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"EqF\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"MPm\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"SpR\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"SPm\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"OPm\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"SpL\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"Res\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"SHy\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"OHy\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"URR\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"Fac\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"Spt\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"Inp\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Rew\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"CRw\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"Con\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"AED\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"Obv\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"SSi\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"MRR\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"UnC\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Def\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"Ter\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.36 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [82 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/clause.c\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"\0AIn clause_GetOriginFromString: Unknown clause origin.\00", align 1
@.str.39 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Temporary\00", align 1
@.str.41 = private unnamed_addr constant [48 x i8] c"\0A In clause_FPrintOrigin: Clause has no origin.\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c" c = %d a = %d s = %d\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c" Weight : %d\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c" Depth  : %d\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c" %s %s \00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"WorkedOff\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"Usable\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c"Selected\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"NotSelected\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" $F \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"list_of_clauses(axioms, cnf).\0A\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"end_of_list.\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"list_of_clauses(conjectures, cnf).\0A\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"begin_problem(Unknown).\0A\0A\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"list_of_symbols.\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"\0Aend_problem.\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"\0Alist_of_symbols.\0A\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"list_of_formulae(axioms).\0A\00", align 1
@.str.64 = private unnamed_addr constant [32 x i8] c"list_of_formulae(conjectures).\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"list_of_settings(SPASS).\0A{*\0A\00", align 1
@.str.66 = private unnamed_addr constant [33 x i8] c"\0A*}\0Aend_of_list.\0A\0Aend_problem.\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"list(usable).\0A\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"x=x.\0A\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"  step(\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.71 = private unnamed_addr constant [3 x i8] c"([\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"],\00", align 1
@.str.73 = private unnamed_addr constant [3 x i8] c"),\00", align 1
@.str.74 = private unnamed_addr constant [3 x i8] c",[\00", align 1
@.str.75 = private unnamed_addr constant [17 x i8] c",[splitlevel:%d]\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c").\0A\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"  clause(\00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"),%d\00", align 1
@.str.79 = private unnamed_addr constant [4 x i8] c",%d\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"  formula(\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"\0A In clause_Check: Clause not consistent !\0A\00", align 1
@.str.82 = private unnamed_addr constant [65 x i8] c"\0A In clause_Check: Weight or maximal variable not properly set.\0A\00", align 1
@clause_CLAUSECOUNTER = common global i32 0, align 4
@symbol_TYPEMASK = external constant i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@fol_NOT = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@term_STAMP = external global i32, align 4
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.83 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.84 = private unnamed_addr constant [23 x i8] c"list_of_descriptions.\0A\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"name(%s).\0A\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"author(%s).\0A\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"status(%s).\0A\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"description(%s).\0A\00", align 1
@.str.89 = private unnamed_addr constant [14 x i8] c"end_of_list.\0A\00", align 1
@fol_ALL = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_FALSE = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @clause_LiteralIsLiteral(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %cmp = icmp ne %struct.LITERAL_HELP* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %1)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsPredicate(i32 %S) #1 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @term_TopSymbol(%struct.term* %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @clause_LiteralComputeWeight(%struct.LITERAL_HELP* %Literal, i32* %Flags) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Term = alloca %struct.term*, align 8
  %Bottom = alloca i32, align 4
  %Number = alloca i32, align 4
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call, %struct.term** %Term, align 8
  %call1 = call i32 @stack_Bottom()
  store i32 %call1, i32* %Bottom, align 4
  store i32 0, i32* %Number, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.term*, %struct.term** %Term, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load i32*, i32** %Flags.addr, align 8
  %call3 = call i32 @flag_GetFlagValue(i32* %2, i32 45)
  %3 = load i32, i32* %Number, align 4
  %add = add i32 %3, %call3
  store i32 %add, i32* %Number, align 4
  %4 = load %struct.term*, %struct.term** %Term, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %5 = bitcast %struct.LIST_HELP* %call4 to i8*
  call void @stack_Push(i8* %5)
  br label %if.end.13

if.else:                                          ; preds = %do.body
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call5 = call i32 @term_IsVariable(%struct.term* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else
  %7 = load i32*, i32** %Flags.addr, align 8
  %call8 = call i32 @flag_GetFlagValue(i32* %7, i32 46)
  %8 = load i32, i32* %Number, align 4
  %add9 = add i32 %8, %call8
  store i32 %add9, i32* %Number, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else
  %9 = load i32*, i32** %Flags.addr, align 8
  %call11 = call i32 @flag_GetFlagValue(i32* %9, i32 45)
  %10 = load i32, i32* %Number, align 4
  %add12 = add i32 %10, %call11
  store i32 %add12, i32* %Number, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %11 = load i32, i32* %Bottom, align 4
  %call14 = call i32 @stack_Empty(i32 %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call16 = call i8* @stack_Top()
  %12 = bitcast i8* %call16 to %struct.LIST_HELP*
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool18 = icmp ne i32 %call17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %tobool18, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call19 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i32, i32* %Bottom, align 4
  %call20 = call i32 @stack_Empty(i32 %14)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.27, label %if.then.22

if.then.22:                                       ; preds = %while.end
  %call23 = call i8* @stack_Top()
  %15 = bitcast i8* %call23 to %struct.LIST_HELP*
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call24 to %struct.term*
  store %struct.term* %16, %struct.term** %Term, align 8
  %call25 = call i8* @stack_Top()
  %17 = bitcast i8* %call25 to %struct.LIST_HELP*
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  %18 = bitcast %struct.LIST_HELP* %call26 to i8*
  call void @stack_RplacTop(i8* %18)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.27
  %19 = load i32, i32* %Bottom, align 4
  %call28 = call i32 @stack_Empty(i32 %19)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %20 = load i32, i32* %Number, align 4
  ret i32 %20
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
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsComplex(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %cmp = icmp ne %struct.LIST_HELP* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @stack_Push(i8* %Entry) #1 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
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
define internal i32 @stack_Empty(i32 %Ptr) #1 {
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
define internal i8* @stack_Top() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Pop() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
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
define internal void @stack_RplacTop(i8* %Entry) #1 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %1, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
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

; Function Attrs: nounwind uwtable
define %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %Atom, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LITERAL_HELP*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %Result, align 8
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %2, i32 0, i32 4
  store %struct.term* %1, %struct.term** %atomWithSign, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %3, i32 0, i32 2
  store i32 0, i32* %oriented, align 4
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %4, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %5, i32 0, i32 0
  store i32 0, i32* %maxLit, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %7, i32 0, i32 3
  store %struct.CLAUSE_HELP* %6, %struct.CLAUSE_HELP** %owningClause, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  ret %struct.LITERAL_HELP* %8
}

declare i8* @memory_Malloc(i32) #2

; Function Attrs: nounwind uwtable
define %struct.LITERAL_HELP* @clause_LiteralCreateNegative(%struct.term* %Atom, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LITERAL_HELP*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %Result, align 8
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %1, %struct.LIST_HELP* %call1)
  %call2 = call i32 @fol_Not()
  %2 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %3)
  %call4 = call %struct.term* @term_Create(i32 %call2, %struct.LIST_HELP* %call3)
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %4, i32 0, i32 4
  store %struct.term* %call4, %struct.term** %atomWithSign, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %5, i32 0, i32 2
  store i32 0, i32* %oriented, align 4
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %6, i32 0, i32 0
  store i32 0, i32* %maxLit, align 4
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %7, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %9, i32 0, i32 3
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %owningClause, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  ret %struct.LITERAL_HELP* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacSupertermList(%struct.term* %T, %struct.LIST_HELP* %L) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %termlist, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
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
define void @clause_LiteralDelete(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  call void @term_Delete(%struct.term* %call)
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  call void @clause_LiteralFree(%struct.LITERAL_HELP* %1)
  ret void
}

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralFree(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %1 = bitcast %struct.LITERAL_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_LiteralInsertIntoSharing(%struct.LITERAL_HELP* %Lit, %struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call, %struct.term** %Atom, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %3 = bitcast %struct.LITERAL_HELP* %2 to i8*
  %4 = load %struct.term*, %struct.term** %Atom, align 8
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call1 = call %struct.term* @sharing_Insert(i8* %3, %struct.term* %4, %struct.SHARED_INDEX_NODE* %5)
  call void @clause_LiteralSetAtom(%struct.LITERAL_HELP* %1, %struct.term* %call1)
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_Delete(%struct.term* %6)
  ret void
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
define internal void @clause_LiteralSetAtom(%struct.LITERAL_HELP* %L, %struct.term* %A) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %A.addr = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store %struct.term* %A, %struct.term** %A.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call1)
  %2 = load %struct.term*, %struct.term** %A.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call2, i8* %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %A.addr, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %5, i32 0, i32 4
  store %struct.term* %4, %struct.term** %atomWithSign, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.term* @sharing_Insert(i8*, %struct.term*, %struct.SHARED_INDEX_NODE*) #2

; Function Attrs: nounwind uwtable
define void @clause_LiteralDeleteFromSharing(%struct.LITERAL_HELP* %Lit, %struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call, %struct.term** %Atom, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call1 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call2 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %2)
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call2)
  call void @list_Free(%struct.LIST_HELP* %call3)
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %3)
  call void @term_Free(%struct.term* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %5 = bitcast %struct.LITERAL_HELP* %4 to i8*
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @sharing_Delete(i8* %5, %struct.term* %6, %struct.SHARED_INDEX_NODE* %7)
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  call void @clause_LiteralFree(%struct.LITERAL_HELP* %8)
  ret void
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
define internal void @term_Free(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

declare void @sharing_Delete(i8*, %struct.term*, %struct.SHARED_INDEX_NODE*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_CopyConstraint(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %2)
  %call2 = call %struct.LIST_HELP* @clause_CopyLitInterval(%struct.CLAUSE_HELP* %0, i32 %call, i32 %call1)
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @clause_CopyLitInterval(%struct.CLAUSE_HELP* %Clause, i32 %Start, i32 %End) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Start.addr = alloca i32, align 4
  %End.addr = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %List = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Start, i32* %Start.addr, align 4
  store i32 %End, i32* %End.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %List, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %Start.addr, align 4
  %1 = load i32, i32* %End.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %Start.addr, align 4
  %call1 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  %call2 = call %struct.term* @term_Copy(%struct.term* %call1)
  store %struct.term* %call2, %struct.term** %Atom, align 8
  %4 = load %struct.term*, %struct.term** %Atom, align 8
  %5 = bitcast %struct.term* %4 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  %call3 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %List, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %Start.addr, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %Start.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List, align 8
  ret %struct.LIST_HELP* %8
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret i32 0
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_CopyAntecedentExcept(%struct.CLAUSE_HELP* %Clause, i32 %i) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  %3 = load i32, i32* %i.addr, align 4
  %call2 = call %struct.LIST_HELP* @clause_CopyLitIntervalExcept(%struct.CLAUSE_HELP* %0, i32 %call, i32 %call1, i32 %3)
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @clause_CopyLitIntervalExcept(%struct.CLAUSE_HELP* %Clause, i32 %Start, i32 %End, i32 %i) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Start.addr = alloca i32, align 4
  %End.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Start, i32* %Start.addr, align 4
  store i32 %End, i32* %End.addr, align 4
  store i32 %i, i32* %i.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %End.addr, align 4
  %1 = load i32, i32* %Start.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %End.addr, align 4
  %3 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp ne i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %End.addr, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %4, i32 %5)
  %call3 = call %struct.term* @term_Copy(%struct.term* %call2)
  store %struct.term* %call3, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %7 = bitcast %struct.term* %6 to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, i32* %End.addr, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, i32* %End.addr, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %10
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
define internal i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_CopySuccedent(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  %call2 = call %struct.LIST_HELP* @clause_CopyLitInterval(%struct.CLAUSE_HELP* %0, i32 %call, i32 %call1)
  ret %struct.LIST_HELP* %call2
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
define internal i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_CopySuccedentExcept(%struct.CLAUSE_HELP* %Clause, i32 %i) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  %3 = load i32, i32* %i.addr, align 4
  %call2 = call %struct.LIST_HELP* @clause_CopyLitIntervalExcept(%struct.CLAUSE_HELP* %0, i32 %call, i32 %call1, i32 %3)
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: nounwind uwtable
define i32 @clause_IsUnorderedClause(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %0, null
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_CheckSplitLevel(%struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %2)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.lhs.true.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.1
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_FirstLitIndex()
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %call4)
  %call6 = call i32 @clause_LiteralIsLiteral(%struct.LITERAL_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true.8, label %land.end

land.lhs.true.8:                                  ; preds = %lor.lhs.false, %land.lhs.true.1
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %land.rhs, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true.8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 5
  %6 = load i32, i32* %splitfield_length, align 4
  %cmp12 = icmp ugt i32 %6, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.11, %land.lhs.true.8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %8)
  %call14 = call i32 @clause_DependsOnSplitLevel(%struct.CLAUSE_HELP* %7, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.11, %lor.lhs.false, %land.lhs.true, %entry
  %9 = phi i1 [ false, %lor.lhs.false.11 ], [ false, %lor.lhs.false ], [ false, %land.lhs.true ], [ false, %entry ], [ %tobool15, %land.rhs ]
  %land.ext = zext i1 %9 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_CheckSplitLevel(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %validlevel = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 3
  %1 = load i32, i32* %validlevel, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 4
  %3 = load i64*, i64** %splitfield, align 8
  %cmp1 = icmp eq i64* %3, null
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 5
  %5 = load i32, i32* %splitfield_length, align 4
  %sub = sub i32 %5, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %6 = load i32, i32* %i, align 4
  %cmp2 = icmp sge i32 %6, 0
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield4 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 4
  %9 = load i64*, i64** %splitfield4, align 8
  %arrayidx = getelementptr inbounds i64, i64* %9, i64 %idxprom
  %10 = load i64, i64* %arrayidx, align 8
  %cmp5 = icmp ne i64 %10, 0
  br i1 %cmp5, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.7, %for.cond
  store i32 63, i32* %j, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.17, %for.end
  %12 = load i32, i32* %j, align 4
  %cmp9 = icmp sge i32 %12, 0
  br i1 %cmp9, label %for.body.11, label %for.end.19

for.body.11:                                      ; preds = %for.cond.8
  %13 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %13 to i64
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield13 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 4
  %15 = load i64*, i64** %splitfield13, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %15, i64 %idxprom12
  %16 = load i64, i64* %arrayidx14, align 8
  %17 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %17 to i64
  %shl = shl i64 1, %sh_prom
  %and = and i64 %16, %shl
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.11
  br label %for.end.19

if.end.16:                                        ; preds = %for.body.11
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %18 = load i32, i32* %j, align 4
  %dec18 = add nsw i32 %18, -1
  store i32 %dec18, i32* %j, align 4
  br label %for.cond.8

for.end.19:                                       ; preds = %if.then.15, %for.cond.8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %validlevel20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %19, i32 0, i32 3
  %20 = load i32, i32* %validlevel20, align 4
  %conv21 = zext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %conv22 = sext i32 %21 to i64
  %mul = mul i64 %conv22, 8
  %mul23 = mul i64 %mul, 8
  %22 = load i32, i32* %j, align 4
  %conv24 = sext i32 %22 to i64
  %add = add i64 %mul23, %conv24
  %cmp25 = icmp eq i64 %conv21, %add
  %conv26 = zext i1 %cmp25 to i32
  store i32 %conv26, i32* %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
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
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
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
define i32 @clause_IsClause(%struct.CLAUSE_HELP* %Clause, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %HelpRes = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_IsUnorderedClause(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %2, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %ActLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %6)
  %call5 = call i32 @fol_IsEquality(%struct.term* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.17

if.then.7:                                        ; preds = %for.body
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call8 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %7)
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %call8)
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call10 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %8)
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %call10)
  %9 = load i32*, i32** %FlagStore.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call12 = call i32 @ord_Compare(%struct.term* %call9, %struct.term* %call11, i32* %9, i32* %10)
  store i32 %call12, i32* %HelpRes, align 4
  %11 = load i32, i32* %HelpRes, align 4
  %call13 = call i32 @ord_IsSmallerThan(i32 %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.7
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
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

declare i32 @ord_Compare(%struct.term*, %struct.term*, i32*, i32*) #2

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
define internal i32 @ord_IsSmallerThan(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 1, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsPositiveEquations(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp slt i32 %1, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
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
define internal i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @fol_IsEquality(%struct.term* %call)
  ret i32 %call1
}

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsNegativeEquations(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  %cmp = icmp slt i32 %1, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsFolAtom(%struct.CLAUSE_HELP* %Clause, i32* %Prop, i32* %Grd, i32* %Monadic, i32* %NonMonadic) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Prop.addr = alloca i32*, align 8
  %Grd.addr = alloca i32*, align 8
  %Monadic.addr = alloca i32*, align 8
  %NonMonadic.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %Result = alloca i32, align 4
  %Arity = alloca i32, align 4
  %Ground = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Prop, i32** %Prop.addr, align 8
  store i32* %Grd, i32** %Grd.addr, align 8
  store i32* %Monadic, i32** %Monadic.addr, align 8
  store i32* %NonMonadic, i32** %NonMonadic.addr, align 8
  store i32 0, i32* %Result, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.44, %entry
  %0 = load i32, i32* %Result, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp2 = icmp slt i32 %1, %call1
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %3 = load i32*, i32** %Prop.addr, align 8
  %4 = load i32, i32* %3, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %lor.lhs.false, label %lor.end

lor.lhs.false:                                    ; preds = %land.rhs
  %5 = load i32*, i32** %Monadic.addr, align 8
  %6 = load i32, i32* %5, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %lor.lhs.false
  %7 = load i32*, i32** %NonMonadic.addr, align 8
  %8 = load i32, i32* %7, align 4
  %tobool4 = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool4, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %land.rhs
  %9 = phi i1 [ true, %lor.lhs.false ], [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %land.lhs.true, %while.cond
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond ], [ %9, %lor.end ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %11, i32 %12)
  %call6 = call i32 @term_TopSymbol(%struct.term* %call5)
  %call7 = call i32 @symbol_Arity(i32 %call6)
  store i32 %call7, i32* %Arity, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %i, align 4
  %call8 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %13, i32 %14)
  %call9 = call i32 @term_IsGround(%struct.term* %call8)
  store i32 %call9, i32* %Ground, align 4
  %15 = load i32*, i32** %Prop.addr, align 8
  %16 = load i32, i32* %15, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.end, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %while.body
  %17 = load i32, i32* %Arity, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  %18 = load i32, i32* %Result, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %Result, align 4
  %19 = load i32*, i32** %Prop.addr, align 8
  store i32 1, i32* %19, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.11, %while.body
  %20 = load i32*, i32** %Grd.addr, align 8
  %21 = load i32, i32* %20, align 4
  %tobool13 = icmp ne i32 %21, 0
  br i1 %tobool13, label %if.end.24, label %land.lhs.true.14

land.lhs.true.14:                                 ; preds = %if.end
  %22 = load i32, i32* %Arity, align 4
  %cmp15 = icmp sgt i32 %22, 0
  br i1 %cmp15, label %land.lhs.true.16, label %if.end.24

land.lhs.true.16:                                 ; preds = %land.lhs.true.14
  %23 = load i32, i32* %Ground, align 4
  %tobool17 = icmp ne i32 %23, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.24

land.lhs.true.18:                                 ; preds = %land.lhs.true.16
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %i, align 4
  %call19 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %24, i32 %25)
  %call20 = call i32 @fol_IsEquality(%struct.term* %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %land.lhs.true.18
  %26 = load i32, i32* %Result, align 4
  %inc23 = add nsw i32 %26, 1
  store i32 %inc23, i32* %Result, align 4
  %27 = load i32*, i32** %Grd.addr, align 8
  store i32 1, i32* %27, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %land.lhs.true.18, %land.lhs.true.16, %land.lhs.true.14, %if.end
  %28 = load i32*, i32** %Monadic.addr, align 8
  %29 = load i32, i32* %28, align 4
  %tobool25 = icmp ne i32 %29, 0
  br i1 %tobool25, label %if.end.32, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %if.end.24
  %30 = load i32, i32* %Arity, align 4
  %cmp27 = icmp eq i32 %30, 1
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.32

land.lhs.true.28:                                 ; preds = %land.lhs.true.26
  %31 = load i32, i32* %Ground, align 4
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.end.32, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.28
  %32 = load i32, i32* %Result, align 4
  %inc31 = add nsw i32 %32, 1
  store i32 %inc31, i32* %Result, align 4
  %33 = load i32*, i32** %Monadic.addr, align 8
  store i32 1, i32* %33, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.30, %land.lhs.true.28, %land.lhs.true.26, %if.end.24
  %34 = load i32*, i32** %NonMonadic.addr, align 8
  %35 = load i32, i32* %34, align 4
  %tobool33 = icmp ne i32 %35, 0
  br i1 %tobool33, label %if.end.44, label %land.lhs.true.34

land.lhs.true.34:                                 ; preds = %if.end.32
  %36 = load i32, i32* %Arity, align 4
  %cmp35 = icmp sgt i32 %36, 1
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %land.lhs.true.34
  %37 = load i32, i32* %Ground, align 4
  %tobool37 = icmp ne i32 %37, 0
  br i1 %tobool37, label %if.end.44, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %land.lhs.true.36
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %39 = load i32, i32* %i, align 4
  %call39 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %38, i32 %39)
  %call40 = call i32 @fol_IsEquality(%struct.term* %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.44, label %if.then.42

if.then.42:                                       ; preds = %land.lhs.true.38
  %40 = load i32, i32* %Result, align 4
  %inc43 = add nsw i32 %40, 1
  store i32 %inc43, i32* %Result, align 4
  %41 = load i32*, i32** %NonMonadic.addr, align 8
  store i32 1, i32* %41, align 4
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true.38, %land.lhs.true.36, %land.lhs.true.34, %if.end.32
  %42 = load i32, i32* %i, align 4
  %inc45 = add nsw i32 %42, 1
  store i32 %inc45, i32* %i, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %43 = load i32, i32* %Result, align 4
  ret i32 %43
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

declare i32 @term_IsGround(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsVariables(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call2, %struct.term** %Term, align 8
  %4 = load %struct.term*, %struct.term** %Term, align 8
  %call3 = call i32 @term_NumberOfVarOccs(%struct.term* %4)
  %cmp4 = icmp ugt i32 %call3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @term_NumberOfVarOccs(%struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_ContainsSortRestriction(%struct.CLAUSE_HELP* %Clause, i32* %Sortres, i32* %USortres) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Sortres.addr = alloca i32*, align 8
  %USortres.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Sortres, i32** %Sortres.addr, align 8
  store i32* %USortres, i32** %USortres.addr, align 8
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %0, %call1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load i32*, i32** %Sortres.addr, align 8
  %3 = load i32, i32* %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %land.rhs
  %4 = load i32*, i32** %USortres.addr, align 8
  %5 = load i32, i32* %4, align 4
  %tobool2 = icmp ne i32 %5, 0
  %lnot = xor i1 %tobool2, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %6 = phi i1 [ true, %land.rhs ], [ %lnot, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %6, %lor.end ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.term* %call3, %struct.term** %Term, align 8
  %10 = load %struct.term*, %struct.term** %Term, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %10)
  %call5 = call i32 @symbol_IsBaseSort(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %USortres.addr, align 8
  store i32 1, i32* %11, align 4
  %12 = load %struct.term*, %struct.term** %Term, align 8
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  %call9 = call i32 @symbol_IsVariable(i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %13 = load i32*, i32** %Sortres.addr, align 8
  store i32 1, i32* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  ret void
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
define i32 @clause_ContainsFunctions(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call2, %struct.term** %Term, align 8
  %4 = load %struct.term*, %struct.term** %Term, align 8
  %call3 = call i32 @term_ContainsFunctions(%struct.term* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @term_ContainsFunctions(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsSymbol(%struct.CLAUSE_HELP* %Clause, i32 %Symbol) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Symbol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  %4 = load i32, i32* %Symbol.addr, align 4
  %call3 = call i32 @term_ContainsSymbol(%struct.term* %call2, i32 %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

declare i32 @term_ContainsSymbol(%struct.term*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clause_NumberOfSymbolOccurrences(%struct.CLAUSE_HELP* %Clause, i32 %Symbol) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Symbol.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  store i32 0, i32* %Result, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  %4 = load i32, i32* %Symbol.addr, align 4
  %call3 = call i32 @term_NumberOfSymbolOccurrences(%struct.term* %call2, i32 %4)
  %5 = load i32, i32* %Result, align 4
  %add = add i32 %5, %call3
  store i32 %add, i32* %Result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %Result, align 4
  ret i32 %7
}

declare i32 @term_NumberOfSymbolOccurrences(%struct.term*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @clause_ImpliesFiniteDomain(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstLitIndex()
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  %cmp = icmp ne i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp4 = icmp slt i32 %1, %call3
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.term* %call5, %struct.term** %Term, align 8
  %5 = load %struct.term*, %struct.term** %Term, align 8
  %call6 = call i32 @term_TopSymbol(%struct.term* %5)
  %call7 = call i32 @fol_Equality()
  %call8 = call i32 @symbol_Equal(i32 %call6, i32 %call7)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.35

lor.lhs.false:                                    ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call10 = call i32 @term_TopSymbol(%struct.term* %call9)
  %call11 = call i32 @symbol_IsVariable(i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %lor.lhs.false.17, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %call13 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %call14 = call i32 @term_TopSymbol(%struct.term* %call13)
  %call15 = call i32 @symbol_IsVariable(i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.35

lor.lhs.false.17:                                 ; preds = %land.lhs.true, %lor.lhs.false
  %8 = load %struct.term*, %struct.term** %Term, align 8
  %call18 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call19 = call i32 @term_TopSymbol(%struct.term* %call18)
  %call20 = call i32 @symbol_IsVariable(i32 %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %land.lhs.true.22, label %lor.lhs.false.26

land.lhs.true.22:                                 ; preds = %lor.lhs.false.17
  %9 = load %struct.term*, %struct.term** %Term, align 8
  %call23 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  %call24 = call i32 @term_IsGround(%struct.term* %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.35

lor.lhs.false.26:                                 ; preds = %land.lhs.true.22, %lor.lhs.false.17
  %10 = load %struct.term*, %struct.term** %Term, align 8
  %call27 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  %call28 = call i32 @term_TopSymbol(%struct.term* %call27)
  %call29 = call i32 @symbol_IsVariable(i32 %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.36

land.lhs.true.31:                                 ; preds = %lor.lhs.false.26
  %11 = load %struct.term*, %struct.term** %Term, align 8
  %call32 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  %call33 = call i32 @term_IsGround(%struct.term* %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.36, label %if.then.35

if.then.35:                                       ; preds = %land.lhs.true.31, %land.lhs.true.22, %land.lhs.true, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.36:                                        ; preds = %land.lhs.true.31, %lor.lhs.false.26
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.35, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
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

; Function Attrs: nounwind uwtable
define i32 @clause_ImpliesNonTrivialDomain(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LITERAL_HELP* @clause_FirstAntecedentLit(%struct.CLAUSE_HELP* %2)
  %call4 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true.6, label %if.end

land.lhs.true.6:                                  ; preds = %land.lhs.true.2
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call %struct.LITERAL_HELP* @clause_FirstAntecedentLit(%struct.CLAUSE_HELP* %3)
  %call8 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call7)
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %call8)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call10 = call %struct.LITERAL_HELP* @clause_FirstAntecedentLit(%struct.CLAUSE_HELP* %4)
  %call11 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call10)
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %call11)
  %call13 = call i32 @term_Equal(%struct.term* %call9, %struct.term* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.6
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true.2, %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
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
define internal %struct.LITERAL_HELP* @clause_FirstAntecedentLit(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  %idxprom = sext i32 %call to i64
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 10
  %2 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %2, i64 %idxprom
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  ret %struct.LITERAL_HELP* %3
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_FiniteMonadicPredicates(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NonFinite = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Pred = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %NonFinite, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP** %Clause, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call4 = call i32 @clause_Length(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %n, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.6
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load i32, i32* %i, align 4
  %call8 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  %call9 = call i32 @term_TopSymbol(%struct.term* %call8)
  store i32 %call9, i32* %Pred, align 4
  %10 = load i32, i32* %Pred, align 4
  %call10 = call i32 @symbol_Arity(i32 %10)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %for.body.7
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NonFinite, align 8
  %12 = load i32, i32* %Pred, align 4
  %conv = sext i32 %12 to i64
  %13 = inttoptr i64 %conv to i8*
  %call12 = call i32 @list_PointerMember(%struct.LIST_HELP* %11, i8* %13)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %15 = load i32, i32* %i, align 4
  %call14 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %14, i32 %15)
  %call15 = call i32 @term_NumberOfVarOccs(%struct.term* %call14)
  %cmp16 = icmp ugt i32 %call15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %16 = load i32, i32* %n, align 4
  %cmp18 = icmp sgt i32 %16, 1
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %lor.lhs.false, %if.then
  %17 = load i32, i32* %Pred, align 4
  %conv21 = sext i32 %17 to i64
  %18 = inttoptr i64 %conv21 to i8*
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NonFinite, align 8
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %NonFinite, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %21 = load i32, i32* %Pred, align 4
  %conv23 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv23 to i8*
  %call24 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %20, i8* %22)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Result, align 8
  br label %if.end.31

if.else:                                          ; preds = %lor.lhs.false
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %24 = load i32, i32* %Pred, align 4
  %conv25 = sext i32 %24 to i64
  %25 = inttoptr i64 %conv25 to i8*
  %call26 = call i32 @list_PointerMember(%struct.LIST_HELP* %23, i8* %25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end, label %if.then.28

if.then.28:                                       ; preds = %if.else
  %26 = load i32, i32* %Pred, align 4
  %conv29 = sext i32 %26 to i64
  %27 = inttoptr i64 %conv29 to i8*
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %27, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.28, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %if.then.20
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %29 = load i32, i32* %i, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.end
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NonFinite, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call36 = call i32 @fol_Equality()
  %conv37 = sext i32 %call36 to i64
  %33 = inttoptr i64 %conv37 to i8*
  %call38 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %32, i8* %33)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %Result, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %34
}

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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

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
define i32 @clause_NumberOfVarOccs(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 0, i32* %Result, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @term_NumberOfVarOccs(%struct.term* %call2)
  %5 = load i32, i32* %Result, align 4
  %add = add i32 %5, %call3
  store i32 %add, i32* %Result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %Result, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @clause_ComputeWeight(%struct.CLAUSE_HELP* %Clause, i32* %Flags) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Weight = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32 0, i32* %Weight, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %6 = load i32*, i32** %Flags.addr, align 8
  call void @clause_UpdateLiteralWeight(%struct.LITERAL_HELP* %5, i32* %6)
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %7)
  %8 = load i32, i32* %Weight, align 4
  %add = add i32 %8, %call3
  store i32 %add, i32* %Weight, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %Weight, align 4
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_UpdateLiteralWeight(%struct.LITERAL_HELP* %L, i32* %Flags) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @clause_LiteralComputeWeight(%struct.LITERAL_HELP* %0, i32* %1)
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %2, i32 0, i32 1
  store i32 %call, i32* %weight, align 4
  ret void
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

; Function Attrs: nounwind uwtable
define i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Depth = alloca i32, align 4
  %Help = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 0, i32* %Depth, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @term_Depth(%struct.term* %call2)
  store i32 %call3, i32* %Help, align 4
  %5 = load i32, i32* %Help, align 4
  %6 = load i32, i32* %Depth, align 4
  %cmp4 = icmp ugt i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %Help, align 4
  store i32 %7, i32* %Depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %Depth, align 4
  ret i32 %9
}

declare i32 @term_Depth(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_MaxTermDepthClauseList(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Depth = alloca i32, align 4
  %Help = alloca i32, align 4
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32 0, i32* %Depth, align 4
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
  %call2 = call i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %Help, align 4
  %3 = load i32, i32* %Help, align 4
  %4 = load i32, i32* %Depth, align 4
  %cmp = icmp ugt i32 %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load i32, i32* %Help, align 4
  store i32 %5, i32* %Depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load i32, i32* %Depth, align 4
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @clause_ComputeSize(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Size = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 0, i32* %Size, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @term_ComputeSize(%struct.term* %call2)
  %5 = load i32, i32* %Size, align 4
  %add = add i32 %5, %call3
  store i32 %add, i32* %Size, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %Size, align 4
  ret i32 %7
}

declare i32 @term_ComputeSize(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_WeightCorrect(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Weight = alloca i32, align 4
  %Help = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %Weight, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %6 = load i32*, i32** %Flags.addr, align 8
  %call3 = call i32 @clause_LiteralComputeWeight(%struct.LITERAL_HELP* %5, i32* %6)
  store i32 %call3, i32* %Help, align 4
  %7 = load i32, i32* %Help, align 4
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call4 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %8)
  %cmp5 = icmp ne i32 %7, %call4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  %9 = load i32, i32* %Help, align 4
  %10 = load i32, i32* %Weight, align 4
  %add = add i32 %10, %9
  store i32 %add, i32* %Weight, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %12)
  %13 = load i32, i32* %Weight, align 4
  %cmp7 = icmp eq i32 %call6, %13
  %conv = zext i1 %cmp7 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_InsertWeighed(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %UsList, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %UsList.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Weight = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %UsList, %struct.LIST_HELP** %UsList.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Weight(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %Weight, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsList.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  %call3 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %4)
  %5 = load i32, i32* %Weight, align 4
  %cmp = icmp ugt i32 %call3, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = bitcast %struct.CLAUSE_HELP* %6 to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %7, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %call8)
  %11 = bitcast i8* %call9 to %struct.CLAUSE_HELP*
  %call10 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %11)
  %12 = load i32, i32* %Weight, align 4
  %cmp11 = icmp ule i32 %call10, %12
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %13 = phi i1 [ false, %while.cond ], [ %cmp11, %land.rhs ]
  br i1 %13, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %17 = bitcast %struct.CLAUSE_HELP* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %call13)
  call void @list_Rplacd(%struct.LIST_HELP* %15, %struct.LIST_HELP* %call14)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsList.addr, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %20
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %weight = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
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
  %call2 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %3)
  store i32 %call2, i32* %weight, align 4
  %4 = load i32, i32* %weight, align 4
  %cmp = icmp slt i32 %4, 20
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %weight, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 %idxprom
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %call3, %struct.LIST_HELP* %7)
  %8 = load i32, i32* %weight, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 %idxprom5
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %arrayidx6, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** getelementptr inbounds ([21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 20), align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %call7, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** getelementptr inbounds ([21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 20), align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** getelementptr inbounds ([21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 20), align 8
  %call10 = call %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP* %12, i32 (i8*)* bitcast (i32 (%struct.CLAUSE_HELP*)* @clause_Weight to i32 (i8*)*))
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** getelementptr inbounds ([21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 20), align 8
  store i32 19, i32* %weight, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.21, %for.end
  %13 = load i32, i32* %weight, align 4
  %cmp13 = icmp sge i32 %13, 0
  br i1 %cmp13, label %for.body.14, label %for.end.22

for.body.14:                                      ; preds = %for.cond.12
  %14 = load i32, i32* %weight, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 %idxprom15
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx16, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %15, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Nil()
  %17 = load i32, i32* %weight, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 %idxprom19
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %arrayidx20, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.14
  %18 = load i32, i32* %weight, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %weight, align 4
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  ret %struct.LIST_HELP* %20
}

declare %struct.LIST_HELP* @list_NumberSort(%struct.LIST_HELP*, i32 (i8*)*) #2

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

; Function Attrs: nounwind uwtable
define %struct.LITERAL_HELP* @clause_LiteralCopy(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Result = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %0, %struct.LITERAL_HELP** %Result, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  %call2 = call %struct.term* @term_Copy(%struct.term* %call1)
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %2, i32 0, i32 4
  store %struct.term* %call2, %struct.term** %atomWithSign, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call3 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %3)
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %4, i32 0, i32 2
  store i32 %call3, i32* %oriented, align 4
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %5, i32 0, i32 0
  %6 = load i32, i32* %maxLit, align 4
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %maxLit4 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %7, i32 0, i32 0
  store i32 %6, i32* %maxLit4, align 4
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %weight = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %8, i32 0, i32 1
  %9 = load i32, i32* %weight, align 4
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %weight5 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %10, i32 0, i32 1
  store i32 %9, i32* %weight5, align 4
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  %owningClause = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %11, i32 0, i32 3
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %owningClause, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Result, align 8
  ret %struct.LITERAL_HELP* %12
}

declare %struct.term* @term_Copy(%struct.term*) #2

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

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i8* @memory_Malloc(i32 80)
  %0 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Result, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Number(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 0
  store i32 %call1, i32* %clausenumber, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 9
  store i32 %call2, i32* %maxVar, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 8
  %6 = load i32, i32* %flags, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %flags3 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 8
  store i32 %6, i32* %flags3, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %8)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %validlevel = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %10, i32 0, i32 3
  store i32 %call4, i32* %validlevel, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %12, i32 0, i32 4
  %13 = load i64*, i64** %splitfield, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 5
  %15 = load i32, i32* %splitfield_length, align 4
  call void @clause_SetSplitField(%struct.CLAUSE_HELP* %11, i64* %13, i32 %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %16)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %17, i32 0, i32 2
  store i32 %call5, i32* %depth, align 4
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %18, i32 0, i32 1
  %19 = load i32, i32* %weight, align 4
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %weight6 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %20, i32 0, i32 1
  store i32 %19, i32* %weight6, align 4
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %21)
  %call8 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call7)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %22, i32 0, i32 6
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %parentCls, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %23)
  %call10 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call9)
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %24, i32 0, i32 7
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %parentLits, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call11 = call i32 @clause_Origin(%struct.CLAUSE_HELP* %25)
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %26, i32 0, i32 14
  store i32 %call11, i32* %origin, align 4
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call12 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %27)
  store i32 %call12, i32* %c, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %c13 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %28, i32 0, i32 11
  store i32 %call12, i32* %c13, align 4
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call14 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %29)
  store i32 %call14, i32* %a, align 4
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %a15 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %30, i32 0, i32 12
  store i32 %call14, i32* %a15, align 4
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call16 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %31)
  store i32 %call16, i32* %s, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %s17 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %32, i32 0, i32 13
  store i32 %call16, i32* %s17, align 4
  %33 = load i32, i32* %c, align 4
  %34 = load i32, i32* %a, align 4
  %add = add nsw i32 %33, %34
  %35 = load i32, i32* %s, align 4
  %add18 = add nsw i32 %add, %35
  store i32 %add18, i32* %l, align 4
  %36 = load i32, i32* %l, align 4
  %cmp = icmp ne i32 %36, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %37 = load i32, i32* %l, align 4
  %conv = sext i32 %37 to i64
  %mul = mul i64 %conv, 8
  %conv19 = trunc i64 %mul to i32
  %call20 = call i8* @memory_Malloc(i32 %conv19)
  %38 = bitcast i8* %call20 to %struct.LITERAL_HELP**
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %39, i32 0, i32 10
  store %struct.LITERAL_HELP** %38, %struct.LITERAL_HELP*** %literals, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %40 = load i32, i32* %i, align 4
  %41 = load i32, i32* %l, align 4
  %cmp21 = icmp slt i32 %40, %41
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %43 = load i32, i32* %i, align 4
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %45 = load i32, i32* %i, align 4
  %call23 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %44, i32 %45)
  %call24 = call %struct.LITERAL_HELP* @clause_LiteralCopy(%struct.LITERAL_HELP* %call23)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %42, i32 %43, %struct.LITERAL_HELP* %call24)
  %46 = load i32, i32* %i, align 4
  %idxprom = sext i32 %46 to i64
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals25 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %47, i32 0, i32 10
  %48 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals25, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %48, i64 %idxprom
  %49 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_LiteralSetOwningClause(%struct.LITERAL_HELP* %49, %struct.CLAUSE_HELP* %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %52
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
define internal void @clause_InitSplitData(%struct.CLAUSE_HELP* %C) #1 {
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
define internal i32 @clause_Depth(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 2
  %1 = load i32, i32* %depth, align 4
  ret i32 %1
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

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
define internal i32 @clause_Origin(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  %1 = load i32, i32* %origin, align 4
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

; Function Attrs: nounwind uwtable
define i32 @clause_LiteralMaxVar(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %Bottom = alloca i32, align 4
  %MaxSym = alloca i32, align 4
  %Help = alloca i32, align 4
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  %call1 = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call1, i32* %MaxSym, align 4
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  store %struct.term* %call2, %struct.term** %Term, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %1 = load %struct.term*, %struct.term** %Term, align 8
  %call3 = call i32 @term_IsComplex(%struct.term* %1)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %2 = load %struct.term*, %struct.term** %Term, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %3 = bitcast %struct.LIST_HELP* %call4 to i8*
  call void @stack_Push(i8* %3)
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %4 = load %struct.term*, %struct.term** %Term, align 8
  %call5 = call i32 @term_IsVariable(%struct.term* %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %5 = load i32, i32* %MaxSym, align 4
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %6)
  store i32 %call8, i32* %Help, align 4
  %cmp = icmp slt i32 %5, %call8
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %7 = load i32, i32* %Help, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  %8 = load i32, i32* %MaxSym, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* %MaxSym, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %9 = load i32, i32* %Bottom, align 4
  %call10 = call i32 @stack_Empty(i32 %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call12 = call i8* @stack_Top()
  %10 = bitcast i8* %call12 to %struct.LIST_HELP*
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %11 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ]
  br i1 %11, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call15 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %12 = load i32, i32* %Bottom, align 4
  %call16 = call i32 @stack_Empty(i32 %12)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %while.end
  %call19 = call i8* @stack_Top()
  %13 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %14, %struct.term** %Term, align 8
  %call21 = call i8* @stack_Top()
  %15 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  %16 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @stack_RplacTop(i8* %16)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %17 = load i32, i32* %Bottom, align 4
  %call24 = call i32 @stack_Empty(i32 %17)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %18 = load i32, i32* %MaxSym, align 4
  ret i32 %18
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_GetInitialStandardVarCounter() #1 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @clause_AtomMaxVar(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Bottom = alloca i32, align 4
  %VarSym = alloca i32, align 4
  %Help = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Bottom, align 4
  %call1 = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call1, i32* %VarSym, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  %2 = bitcast %struct.LIST_HELP* %call3 to i8*
  call void @stack_Push(i8* %2)
  br label %if.end.8

if.else:                                          ; preds = %do.body
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %4 = load i32, i32* %VarSym, align 4
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  store i32 %call7, i32* %Help, align 4
  %cmp = icmp slt i32 %4, %call7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.6
  %6 = load i32, i32* %Help, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.6
  %7 = load i32, i32* %VarSym, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %7, %cond.false ]
  store i32 %cond, i32* %VarSym, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.8
  %8 = load i32, i32* %Bottom, align 4
  %call9 = call i32 @stack_Empty(i32 %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call11 = call i8* @stack_Top()
  %9 = bitcast i8* %call11 to %struct.LIST_HELP*
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %10 = phi i1 [ false, %while.cond ], [ %tobool13, %land.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call14 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %11 = load i32, i32* %Bottom, align 4
  %call15 = call i32 @stack_Empty(i32 %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.22, label %if.then.17

if.then.17:                                       ; preds = %while.end
  %call18 = call i8* @stack_Top()
  %12 = bitcast i8* %call18 to %struct.LIST_HELP*
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %13, %struct.term** %Term.addr, align 8
  %call20 = call i8* @stack_Top()
  %14 = bitcast i8* %call20 to %struct.LIST_HELP*
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  %15 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @stack_RplacTop(i8* %15)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.22
  %16 = load i32, i32* %Bottom, align 4
  %call23 = call i32 @stack_Empty(i32 %16)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %VarSym, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define void @clause_SetMaxLitFlags(%struct.CLAUSE_HELP* %Clause, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %fa = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %CompareLit = alloca %struct.LITERAL_HELP*, align 8
  %Result = alloca i32, align 4
  %Twin = alloca i32, align 4
  %HelpRes = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %fa, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_RemoveFlag(%struct.CLAUSE_HELP* %2, i32 2)
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  call void @clause_LiteralFlagReset(%struct.LITERAL_HELP* %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @clause_STAMPID, align 4
  %call4 = call i32 @term_StampOverflow(i32 %8)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call5 = call i32 @clause_FirstLitIndex()
  store i32 %call5, i32* %i, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.11, %if.then
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp7 = icmp slt i32 %9, %10
  br i1 %cmp7, label %for.body.8, label %for.end.13

for.body.8:                                       ; preds = %for.cond.6
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call9 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %11, i32 %12)
  %call10 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %call9)
  call void @term_ResetTermStamp(%struct.term* %call10)
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.8
  %13 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %13, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.6

for.end.13:                                       ; preds = %for.cond.6
  br label %if.end

if.end:                                           ; preds = %for.end.13, %for.end
  call void @term_StartStamp()
  %14 = load i32, i32* %fa, align 4
  store i32 %14, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.58, %if.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n, align 4
  %cmp15 = icmp slt i32 %15, %16
  br i1 %cmp15, label %for.body.16, label %for.end.60

for.body.16:                                      ; preds = %for.cond.14
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call17 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.LITERAL_HELP* %call17, %struct.LITERAL_HELP** %ActLit, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call18 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %19)
  %call19 = call i32 @term_HasTermStamp(%struct.term* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.57, label %if.then.21

if.then.21:                                       ; preds = %for.body.16
  store i32 1, i32* %Result, align 4
  store i32 0, i32* %Twin, align 4
  %20 = load i32, i32* %fa, align 4
  store i32 %20, i32* %j, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.48, %if.then.21
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %n, align 4
  %cmp23 = icmp slt i32 %21, %22
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.22
  %23 = load i32, i32* %Result, align 4
  %tobool24 = icmp ne i32 %23, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.22
  %24 = phi i1 [ false, %for.cond.22 ], [ %tobool24, %land.rhs ]
  br i1 %24, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %land.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %j, align 4
  %cmp26 = icmp ne i32 %25, %26
  br i1 %cmp26, label %if.then.27, label %if.end.47

if.then.27:                                       ; preds = %for.body.25
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %28 = load i32, i32* %j, align 4
  %call28 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %27, i32 %28)
  store %struct.LITERAL_HELP* %call28, %struct.LITERAL_HELP** %CompareLit, align 8
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call29 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %29)
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call30 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %30)
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CompareLit, align 8
  %call31 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %31)
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CompareLit, align 8
  %call32 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %32)
  %33 = load i32*, i32** %FlagStore.addr, align 8
  %34 = load i32*, i32** %Precedence.addr, align 8
  %call33 = call i32 @ord_LiteralCompare(%struct.term* %call29, i32 %call30, %struct.term* %call31, i32 %call32, i32 0, i32* %33, i32* %34)
  store i32 %call33, i32* %HelpRes, align 4
  %35 = load i32, i32* %HelpRes, align 4
  %call34 = call i32 @ord_IsEqual(i32 %35)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.27
  store i32 1, i32* %Twin, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.27
  %36 = load i32, i32* %HelpRes, align 4
  %call38 = call i32 @ord_IsSmallerThan(i32 %36)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store i32 0, i32* %Result, align 4
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.40, %if.end.37
  %37 = load i32, i32* %HelpRes, align 4
  %call42 = call i32 @ord_IsGreaterThan(i32 %37)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %38 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %CompareLit, align 8
  %call45 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %38)
  call void @term_SetTermStamp(%struct.term* %call45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.body.25
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %39 = load i32, i32* %j, align 4
  %inc49 = add nsw i32 %39, 1
  store i32 %inc49, i32* %j, align 4
  br label %for.cond.22

for.end.50:                                       ; preds = %land.end
  %40 = load i32, i32* %Result, align 4
  %tobool51 = icmp ne i32 %40, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %for.end.50
  %41 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  call void @clause_LiteralSetFlag(%struct.LITERAL_HELP* %41, i32 1)
  %42 = load i32, i32* %Twin, align 4
  %tobool53 = icmp ne i32 %42, 0
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %if.then.52
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  call void @clause_LiteralSetFlag(%struct.LITERAL_HELP* %43, i32 2)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.54, %if.then.52
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.end.50
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.body.16
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %44 = load i32, i32* %i, align 4
  %inc59 = add nsw i32 %44, 1
  store i32 %inc59, i32* %i, align 4
  br label %for.cond.14

for.end.60:                                       ; preds = %for.cond.14
  call void @term_StopStamp()
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
define internal void @clause_LiteralFlagReset(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 0
  store i32 0, i32* %maxLit, align 4
  ret void
}

declare i32 @term_StampOverflow(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_ResetTermStamp(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %stamp = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 3
  store i32 0, i32* %stamp, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StartStamp() #1 {
entry:
  %0 = load i32, i32* @term_STAMP, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @term_STAMP, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_HasTermStamp(%struct.term* %T) #1 {
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

declare i32 @ord_LiteralCompare(%struct.term*, i32, %struct.term*, i32, i32, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_IsEqual(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 2, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_IsGreaterThan(i32 %Res) #1 {
entry:
  %Res.addr = alloca i32, align 4
  store i32 %Res, i32* %Res.addr, align 4
  %0 = load i32, i32* %Res.addr, align 4
  %cmp = icmp eq i32 3, %0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_SetTermStamp(%struct.term* %T) #1 {
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
define internal void @clause_LiteralSetFlag(%struct.LITERAL_HELP* %L, i32 %Flag) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %Flag.addr = alloca i32, align 4
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store i32 %Flag, i32* %Flag.addr, align 4
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %maxLit = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %maxLit, align 4
  %2 = load i32, i32* %Flag.addr, align 4
  %or = or i32 %1, %2
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %maxLit1 = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %3, i32 0, i32 0
  store i32 %or, i32* %maxLit1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_StopStamp() #1 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Help = alloca i32, align 4
  %MaxSym = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @symbol_GetInitialStandardVarCounter()
  store i32 %call1, i32* %MaxSym, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @clause_LiteralMaxVar(%struct.LITERAL_HELP* %call2)
  store i32 %call3, i32* %Help, align 4
  %5 = load i32, i32* %Help, align 4
  %6 = load i32, i32* %MaxSym, align 4
  %cmp4 = icmp sgt i32 %5, %6
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %Help, align 4
  store i32 %7, i32* %MaxSym, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %MaxSym, align 4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %Clause, i32 %MinVar) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %MinVar.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %MinVar, i32* %MinVar.addr, align 4
  %0 = load i32, i32* %MinVar.addr, align 4
  %call = call i32 @symbol_GetInitialStandardVarCounter()
  %cmp = icmp ne i32 %0, %call
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %n, align 4
  %2 = load i32, i32* %MinVar.addr, align 4
  call void @term_StartMaxRenaming(i32 %2)
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %5, i32 %6)
  %call5 = call %struct.term* @term_Rename(%struct.term* %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

declare void @term_StartMaxRenaming(i32) #2

declare %struct.term* @term_Rename(%struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_Normalize(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  call void @term_StartMinRenaming()
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call %struct.term* @term_Rename(%struct.term* %call2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @term_StartMinRenaming() #2

; Function Attrs: nounwind uwtable
define void @clause_SubstApply(%struct.subst* %Subst, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %7)
  %call4 = call %struct.term* @subst_Apply(%struct.subst* %5, %struct.term* %call3)
  call void @clause_LiteralSetAtom(%struct.LITERAL_HELP* %call2, %struct.term* %call4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.term* @subst_Apply(%struct.subst*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_ReplaceVariable(%struct.CLAUSE_HELP* %Clause, i32 %Var, %struct.term* %Term) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Var.addr = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %li = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %li, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %li, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load i32, i32* %Var.addr, align 4
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_ReplaceVariable(%struct.term* %call2, i32 %5, %struct.term* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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

declare void @term_ReplaceVariable(%struct.term*, i32, %struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_UpdateMaxVar(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %1)
  call void @clause_SetMaxVar(%struct.CLAUSE_HELP* %0, i32 %call)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetMaxVar(%struct.CLAUSE_HELP* %Clause, i32 %Variable) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Variable.addr = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load i32, i32* %Variable.addr, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 9
  store i32 %0, i32* %maxVar, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_OrientEqualities(%struct.CLAUSE_HELP* %Clause, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %EqLit = alloca %struct.LITERAL_HELP*, align 8
  %HelpRes = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %length, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %EqLit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  %call3 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  %call5 = call %struct.term* @term_FirstArgument(%struct.term* %call4)
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  %call6 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %7)
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %call6)
  %8 = load i32*, i32** %FlagStore.addr, align 8
  %9 = load i32*, i32** %Precedence.addr, align 8
  %call8 = call i32 @ord_Compare(%struct.term* %call5, %struct.term* %call7, i32* %8, i32* %9)
  store i32 %call8, i32* %HelpRes, align 4
  %10 = load i32, i32* %HelpRes, align 4
  switch i32 %10, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  %call9 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  call void @term_EqualitySwap(%struct.term* %call9)
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  call void @clause_LiteralSetOrientedEquality(%struct.LITERAL_HELP* %12)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  call void @clause_LiteralSetOrientedEquality(%struct.LITERAL_HELP* %13)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  call void @clause_LiteralSetNoOrientedEquality(%struct.LITERAL_HELP* %14)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb
  br label %if.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %EqLit, align 8
  call void @clause_LiteralSetNoOrientedEquality(%struct.LITERAL_HELP* %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %sw.epilog
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralSetOrientedEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 2
  store i32 1, i32* %oriented, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralSetNoOrientedEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %oriented = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %0, i32 0, i32 2
  store i32 0, i32* %oriented, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_InsertFlatIntoIndex(%struct.CLAUSE_HELP* %Clause, %struct.st* %Index) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  store %struct.term* %call3, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %8 = bitcast %struct.LITERAL_HELP* %7 to i8*
  %call4 = call %struct.LIST_HELP* @list_List(i8* %8)
  call void @term_RplacSupertermList(%struct.term* %6, %struct.LIST_HELP* %call4)
  %9 = load %struct.st*, %struct.st** %Index.addr, align 8
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %11 = bitcast %struct.term* %10 to i8*
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call %struct.binding* @cont_LeftContext()
  call void @st_EntryCreate(%struct.st* %9, i8* %11, %struct.term* %12, %struct.binding* %call5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @st_EntryCreate(%struct.st*, i8*, %struct.term*, %struct.binding*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteFlatFromIndex(%struct.CLAUSE_HELP* %Clause, %struct.st* %Index) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  store %struct.term* %call3, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call4 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  call void @list_Delete(%struct.LIST_HELP* %call4)
  %7 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacSupertermList(%struct.term* %7, %struct.LIST_HELP* %call5)
  %8 = load %struct.st*, %struct.st** %Index.addr, align 8
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %10 = bitcast %struct.term* %9 to i8*
  %11 = load %struct.term*, %struct.term** %Atom, align 8
  %call6 = call %struct.binding* @cont_LeftContext()
  %call7 = call i32 @st_EntryDelete(%struct.st* %8, i8* %10, %struct.term* %11, %struct.binding* %call6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %13)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_SupertermList(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %termlist = bitcast %union.anon* %super to %struct.LIST_HELP**
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  ret %struct.LIST_HELP* %1
}

declare i32 @st_EntryDelete(%struct.st*, i8*, %struct.term*, %struct.binding*) #2

; Function Attrs: nounwind uwtable
define void @clause_Delete(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  call void @clause_LiteralDelete(%struct.LITERAL_HELP* %call1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FreeLitArray(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %7)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %8)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 4
  %10 = load i64*, i64** %splitfield, align 8
  %cmp4 = icmp ne i64* %10, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield5 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 4
  %12 = load i64*, i64** %splitfield5, align 8
  %13 = bitcast i64* %12 to i8*
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 5
  %15 = load i32, i32* %splitfield_length, align 4
  %conv = zext i32 %15 to i64
  %mul = mul i64 8, %conv
  %conv6 = trunc i64 %mul to i32
  call void @memory_Free(i8* %13, i32 %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Free(%struct.CLAUSE_HELP* %16)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteClauseListFlatFromIndex(%struct.LIST_HELP* %Clauses, %struct.st* %Index) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
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
  %4 = load %struct.st*, %struct.st** %Index.addr, align 8
  call void @clause_DeleteFlatFromIndex(%struct.CLAUSE_HELP* %3, %struct.st* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %6)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_MoveBestLiteralToFront(%struct.LIST_HELP* %Literals, %struct.subst* %Subst, i32 %MaxVar, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)* %Better) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %MaxVar.addr = alloca i32, align 4
  %Better.addr = alloca i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)*, align 8
  %Map = alloca i32*, align 8
  %MapSize = alloca i32, align 4
  %BestSize = alloca i32, align 4
  %Size = alloca i32, align 4
  %Best = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %h = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32 %MaxVar, i32* %MaxVar.addr, align 4
  store i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)* %Better, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)** %Better.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %1)
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32* null, i32** %Map, align 8
  store i32 0, i32* %MapSize, align 4
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call4 = call i32 @subst_Empty(%struct.subst* %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.10, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %4 = load i32, i32* %MaxVar.addr, align 4
  %call7 = call i32 @symbol_VarIndex(i32 %4)
  %add = add nsw i32 %call7, 1
  store i32 %add, i32* %MapSize, align 4
  %5 = load i32, i32* %MapSize, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 4, %conv
  %conv8 = trunc i64 %mul to i32
  %call9 = call i8* @memory_Malloc(i32 %conv8)
  %6 = bitcast i8* %call9 to i32*
  store i32* %6, i32** %Map, align 8
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %8 = load i32*, i32** %Map, align 8
  %9 = load i32, i32* %MapSize, align 4
  %sub = sub i32 %9, 1
  call void @clause_VarToSizeMap(%struct.subst* %7, i32* %8, i32 %sub)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.6, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Best, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Best, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call11 to %struct.LITERAL_HELP*
  %call12 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %12)
  %13 = load i32*, i32** %Map, align 8
  %call13 = call i32 @clause_ComputeTermSize(%struct.term* %call12, i32* %13)
  store i32 %call13, i32* %BestSize, align 4
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call17 to %struct.LITERAL_HELP*
  %call18 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %17)
  %18 = load i32*, i32** %Map, align 8
  %call19 = call i32 @clause_ComputeTermSize(%struct.term* %call18, i32* %18)
  store i32 %call19, i32* %Size, align 4
  %19 = load i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)*, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)** %Better.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call20 to %struct.LITERAL_HELP*
  %22 = load i32, i32* %Size, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Best, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call21 to %struct.LITERAL_HELP*
  %25 = load i32, i32* %BestSize, align 4
  %call22 = call i32 %19(%struct.LITERAL_HELP* %21, i32 %22, %struct.LITERAL_HELP* %24, i32 %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %for.body
  %26 = load i32, i32* %Size, align 4
  store i32 %26, i32* %BestSize, align 4
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %Best, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Best, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %cmp = icmp ne %struct.LIST_HELP* %29, %30
  br i1 %cmp, label %if.then.28, label %if.end.31

if.then.28:                                       ; preds = %for.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call29 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %32, %struct.LITERAL_HELP** %h, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Best, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %34)
  call void @list_Rplaca(%struct.LIST_HELP* %33, i8* %call30)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Best, align 8
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %h, align 8
  %37 = bitcast %struct.LITERAL_HELP* %36 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %35, i8* %37)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.28, %for.end
  %38 = load i32*, i32** %Map, align 8
  %cmp32 = icmp ne i32* %38, null
  br i1 %cmp32, label %if.then.34, label %if.end.38

if.then.34:                                       ; preds = %if.end.31
  %39 = load i32*, i32** %Map, align 8
  %40 = bitcast i32* %39 to i8*
  %41 = load i32, i32* %MapSize, align 4
  %conv35 = zext i32 %41 to i64
  %mul36 = mul i64 4, %conv35
  %conv37 = trunc i64 %mul36 to i32
  call void @memory_Free(i8* %40, i32 %conv37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.34, %if.end.31
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  store %struct.LIST_HELP* %42, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.38, %if.then
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %43
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subst_Empty(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  %cmp = icmp eq %struct.subst* %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_VarIndex(i32 %ActSymbol) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal void @clause_VarToSizeMap(%struct.subst* %Subst, i32* %Map, i32 %MaxIndex) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %Map.addr = alloca i32*, align 8
  %MaxIndex.addr = alloca i32, align 4
  %Scan = alloca i32*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32* %Map, i32** %Map.addr, align 8
  store i32 %MaxIndex, i32* %MaxIndex.addr, align 4
  %0 = load i32*, i32** %Map.addr, align 8
  %1 = load i32, i32* %MaxIndex.addr, align 4
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds i32, i32* %0, i64 %idx.ext
  store i32* %add.ptr, i32** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32*, i32** %Scan, align 8
  %3 = load i32*, i32** %Map.addr, align 8
  %cmp = icmp uge i32* %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32*, i32** %Scan, align 8
  store i32 1, i32* %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32*, i32** %Scan, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %5, i32 -1
  store i32* %incdec.ptr, i32** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.6, %for.end
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call i32 @subst_Empty(%struct.subst* %6)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.2, label %for.end.8

for.body.2:                                       ; preds = %for.cond.1
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call3 = call %struct.term* @subst_Cod(%struct.subst* %7)
  %call4 = call i32 @term_ComputeSize(%struct.term* %call3)
  %8 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call i32 @subst_Dom(%struct.subst* %8)
  %idxprom = sext i32 %call5 to i64
  %9 = load i32*, i32** %Map.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  store i32 %call4, i32* %arrayidx, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.body.2
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call7 = call %struct.subst* @subst_Next(%struct.subst* %10)
  store %struct.subst* %call7, %struct.subst** %Subst.addr, align 8
  br label %for.cond.1

for.end.8:                                        ; preds = %for.cond.1
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_ComputeTermSize(%struct.term* %Term, i32* %VarMap) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %VarMap.addr = alloca i32*, align 8
  %Stack = alloca i32, align 4
  %Size = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %VarMap, i32** %VarMap.addr, align 8
  store i32 0, i32* %Size, align 4
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Stack, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32*, i32** %VarMap.addr, align 8
  %cmp = icmp ne i32* %0, null
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %do.body
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @symbol_IsVariable(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %call4 = call i32 @symbol_VarIndex(i32 %call3)
  %idxprom = sext i32 %call4 to i64
  %3 = load i32*, i32** %VarMap.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %Size, align 4
  %add = add i32 %5, %4
  store i32 %add, i32* %Size, align 4
  br label %if.end.9

if.else:                                          ; preds = %land.lhs.true, %do.body
  %6 = load i32, i32* %Size, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %Size, align 4
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsComplex(%struct.term* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.else
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %9 = bitcast %struct.LIST_HELP* %call8 to i8*
  call void @stack_Push(i8* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.9
  %10 = load i32, i32* %Stack, align 4
  %call10 = call i32 @stack_Empty(i32 %10)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %call12 = call i8* @stack_Top()
  %11 = bitcast i8* %call12 to %struct.LIST_HELP*
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool14, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %call15 = call i32 @stack_Pop()
  br label %while.cond

while.end:                                        ; preds = %land.end
  %13 = load i32, i32* %Stack, align 4
  %call16 = call i32 @stack_Empty(i32 %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.23, label %if.then.18

if.then.18:                                       ; preds = %while.end
  %call19 = call i8* @stack_Top()
  %14 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %15, %struct.term** %Term.addr, align 8
  %call21 = call i8* @stack_Top()
  %16 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call22 to i8*
  call void @stack_RplacTop(i8* %17)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %while.end
  br label %do.cond

do.cond:                                          ; preds = %if.end.23
  %18 = load i32, i32* %Stack, align 4
  %call24 = call i32 @stack_Empty(i32 %18)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %Size, align 4
  ret i32 %19
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

; Function Attrs: nounwind uwtable
define void @clause_LiteralPrint(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  call void @term_PrintPrefix(%struct.term* %call)
  ret void
}

declare void @term_PrintPrefix(%struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_LiteralListPrint(%struct.LIST_HELP* %LitList) #0 {
entry:
  %LitList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %LitList, %struct.LIST_HELP** %LitList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call1 = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LITERAL_HELP*
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %LitList.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call5 = call i32 @putchar(i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
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

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define void @clause_LiteralPrintUnsigned(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  call void @term_PrintPrefix(%struct.term* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @clause_LiteralPrintSigned(%struct.LITERAL_HELP* %Literal) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  call void @term_PrintPrefix(%struct.term* %call)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_LiteralFPrint(%struct._IO_FILE* %File, %struct.LITERAL_HELP* %Lit) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Lit.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LITERAL_HELP* %Lit, %struct.LITERAL_HELP** %Lit.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  call void @term_FPrintPrefix(%struct._IO_FILE* %0, %struct.term* %call)
  ret void
}

declare void @term_FPrintPrefix(%struct._IO_FILE*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_GetLiteralSubSetList(%struct.CLAUSE_HELP* %Clause, i32 %StartIndex, i32 %EndIndex, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %StartIndex.addr = alloca i32, align 4
  %EndIndex.addr = alloca i32, align 4
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %StartIndex, i32* %StartIndex.addr, align 4
  store i32 %EndIndex, i32* %EndIndex.addr, align 4
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load i32, i32* %StartIndex.addr, align 4
  store i32 %0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %EndIndex.addr, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = bitcast %struct.LITERAL_HELP* %call1 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call2 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %8
}

; Function Attrs: nounwind uwtable
define void @clause_ReplaceLiteralSubSet(%struct.CLAUSE_HELP* %Clause, i32 %StartIndex, i32 %EndIndex, %struct.LIST_HELP* %Replacement, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %StartIndex.addr = alloca i32, align 4
  %EndIndex.addr = alloca i32, align 4
  %Replacement.addr = alloca %struct.LIST_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %StartIndex, i32* %StartIndex.addr, align 4
  store i32 %EndIndex, i32* %EndIndex.addr, align 4
  store %struct.LIST_HELP* %Replacement, %struct.LIST_HELP** %Replacement.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* %StartIndex.addr, align 4
  store i32 %0, i32* %i, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Replacement.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %EndIndex.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call to %struct.LITERAL_HELP*
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %4, i32 %5, %struct.LITERAL_HELP* %7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FixLiteralOrder(%struct.CLAUSE_HELP* %Clause, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  %3 = load i32*, i32** %FlagStore.addr, align 8
  %4 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_FixLiteralSubsetOrder(%struct.CLAUSE_HELP* %0, i32 %call, i32 %call1, i32* %3, i32* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  %8 = load i32*, i32** %FlagStore.addr, align 8
  %9 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_FixLiteralSubsetOrder(%struct.CLAUSE_HELP* %5, i32 %call2, i32 %call3, i32* %8, i32* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %12)
  %13 = load i32*, i32** %FlagStore.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_FixLiteralSubsetOrder(%struct.CLAUSE_HELP* %10, i32 %call4, i32 %call5, i32* %13, i32* %14)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Normalize(%struct.CLAUSE_HELP* %15)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_FixLiteralSubsetOrder(%struct.CLAUSE_HELP* %Clause, i32 %StartIndex, i32 %EndIndex, i32* %FlagStore, i32* %Precedence) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %StartIndex.addr = alloca i32, align 4
  %EndIndex.addr = alloca i32, align 4
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %literals = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %StartIndex, i32* %StartIndex.addr, align 4
  store i32 %EndIndex, i32* %EndIndex.addr, align 4
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %StartIndex.addr, align 4
  %2 = load i32, i32* %EndIndex.addr, align 4
  %3 = load i32*, i32** %FlagStore.addr, align 8
  %4 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @clause_GetLiteralSubSetList(%struct.CLAUSE_HELP* %0, i32 %1, i32 %2, i32* %3, i32* %4)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %literals, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call1 = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %5, i32 (i8*, i8*)* bitcast (i32 (%struct.LITERAL_HELP*, %struct.LITERAL_HELP*)* @clause_LiteralsCompare to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %literals, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %StartIndex.addr, align 4
  %8 = load i32, i32* %EndIndex.addr, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %10 = load i32*, i32** %FlagStore.addr, align 8
  %11 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReplaceLiteralSubSet(%struct.CLAUSE_HELP* %6, i32 %7, i32 %8, %struct.LIST_HELP* %9, i32* %10, i32* %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  call void @list_Delete(%struct.LIST_HELP* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_CountSymbols(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca %struct.LITERAL_HELP*, align 8
  %t = alloca %struct.term*, align 8
  %S = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp sle i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %l, align 8
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %l, align 8
  %call3 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %l, align 8
  %call4 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %5)
  store i32 %call4, i32* %S, align 4
  %6 = load i32, i32* %S, align 4
  %7 = load i32, i32* %S, align 4
  %call5 = call i64 @symbol_GetCount(i32 %7)
  %add = add i64 %call5, 1
  call void @symbol_SetCount(i32 %6, i64 %add)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call6 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.term* %call6, %struct.term** %t, align 8
  %10 = load %struct.term*, %struct.term** %t, align 8
  call void @term_CountSymbols(%struct.term* %10)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @fol_IsEquality(%struct.term* %call)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

declare void @symbol_SetCount(i32, i64) #2

declare i64 @symbol_GetCount(i32) #2

declare void @term_CountSymbols(%struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_ListOfPredicates(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %preds = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %preds, align 8
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
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %l, align 8
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %l, align 8
  %call4 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %4)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %l, align 8
  %call5 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %5)
  %conv = sext i32 %call5 to i64
  %6 = inttoptr i64 %conv to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %preds, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %preds, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %preds, align 8
  ret %struct.LIST_HELP* %9
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_ListOfConstants(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %consts = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %consts, align 8
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
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call3, %struct.term** %t, align 8
  %4 = load %struct.term*, %struct.term** %t, align 8
  %call4 = call %struct.LIST_HELP* @term_ListOfConstants(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %consts, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %consts, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %consts, align 8
  ret %struct.LIST_HELP* %7
}

declare %struct.LIST_HELP* @term_ListOfConstants(%struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_ListOfVariables(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %vars = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %vars, align 8
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
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call3, %struct.term** %t, align 8
  %4 = load %struct.term*, %struct.term** %t, align 8
  %call4 = call %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %vars, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  ret %struct.LIST_HELP* %7
}

declare %struct.LIST_HELP* @term_ListOfVariables(%struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_ListOfFunctions(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %funs = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %funs, align 8
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
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call3, %struct.term** %t, align 8
  %4 = load %struct.term*, %struct.term** %t, align 8
  %call4 = call %struct.LIST_HELP* @term_ListOfFunctions(%struct.term* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %funs, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %funs, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %funs, align 8
  ret %struct.LIST_HELP* %7
}

declare %struct.LIST_HELP* @term_ListOfFunctions(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_CompareAbstract(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %functions = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 10, i32* %functions, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %functions, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [10 x i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)*], [10 x i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)*]* @clause_CompareAbstract.clause_compare_functions, i32 0, i64 %idxprom
  %3 = load i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)*, i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)** %arrayidx, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call = call i32 %3(%struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP* %5)
  store i32 %call, i32* %result, align 4
  %6 = load i32, i32* %result, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %result, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByWeight(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lweight = alloca i32, align 4
  %rweight = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call i32 @clause_Weight(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %lweight, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %rweight, align 4
  %2 = load i32, i32* %lweight, align 4
  %3 = load i32, i32* %rweight, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %result, align 4
  br label %if.end.5

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %lweight, align 4
  %5 = load i32, i32* %rweight, align 4
  %cmp2 = icmp ugt i32 %4, %5
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %result, align 4
  br label %if.end

if.else.4:                                        ; preds = %if.else
  store i32 0, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByDepth(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call i32 @clause_Depth(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %1)
  %cmp = icmp ult i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call2 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call3 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %3)
  %cmp4 = icmp ugt i32 %call2, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByMaxVar(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %call, %call1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call2 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call3 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %3)
  %cmp4 = icmp sgt i32 %call2, %call3
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.6

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByClausePartSize(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lsize = alloca i32, align 4
  %rsize = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %lsize, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %rsize, align 4
  %2 = load i32, i32* %lsize, align 4
  %3 = load i32, i32* %rsize, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %lsize, align 4
  %5 = load i32, i32* %rsize, align 4
  %cmp2 = icmp sgt i32 %4, %5
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.4

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call5 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %6)
  store i32 %call5, i32* %lsize, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call6 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %7)
  store i32 %call6, i32* %rsize, align 4
  %8 = load i32, i32* %lsize, align 4
  %9 = load i32, i32* %rsize, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.4
  store i32 -1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %if.end.4
  %10 = load i32, i32* %lsize, align 4
  %11 = load i32, i32* %rsize, align 4
  %cmp10 = icmp sgt i32 %10, %11
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else.9
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.else.9
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call14 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %12)
  store i32 %call14, i32* %lsize, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call15 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %13)
  store i32 %call15, i32* %rsize, align 4
  %14 = load i32, i32* %lsize, align 4
  %15 = load i32, i32* %rsize, align 4
  %cmp16 = icmp slt i32 %14, %15
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.else.18:                                       ; preds = %if.end.13
  %16 = load i32, i32* %lsize, align 4
  %17 = load i32, i32* %rsize, align 4
  %cmp19 = icmp sgt i32 %16, %17
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.else.18
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %if.else.18
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.20, %if.then.17, %if.then.11, %if.then.8, %if.then.3, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByLiterals(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %firstlitleft = alloca i32, align 4
  %lastlitleft = alloca i32, align 4
  %firstlitright = alloca i32, align 4
  %lastlitright = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca i32, align 4
  %lterm = alloca %struct.term*, align 8
  %rterm = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %firstlitleft, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call1 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lastlitleft, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %firstlitright, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call3 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call3, i32* %lastlitright, align 4
  %2 = load i32, i32* %lastlitleft, align 4
  store i32 %2, i32* %i, align 4
  %3 = load i32, i32* %lastlitright, align 4
  store i32 %3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %firstlitleft, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %firstlitright, align 4
  %cmp4 = icmp sge i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call5 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.term* %call5, %struct.term** %lterm, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %12 = load i32, i32* %j, align 4
  %call6 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %11, i32 %12)
  store %struct.term* %call6, %struct.term** %rterm, align 8
  %13 = load %struct.term*, %struct.term** %lterm, align 8
  %14 = load %struct.term*, %struct.term** %rterm, align 8
  %call7 = call i32 @term_CompareAbstract(%struct.term* %13, %struct.term* %14)
  store i32 %call7, i32* %result, align 4
  %15 = load i32, i32* %result, align 4
  %cmp8 = icmp ne i32 %15, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %dec9 = add nsw i32 %17, -1
  store i32 %dec9, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %land.end
  %18 = load i32, i32* %result, align 4
  %cmp10 = icmp eq i32 %18, 0
  br i1 %cmp10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %for.end
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %cmp12 = icmp sgt i32 %19, %20
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.11
  store i32 1, i32* %result, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then.11
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %21, %22
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else
  store i32 -1, i32* %result, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.13
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.end
  %23 = load i32, i32* %result, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareBySymbolOccurences(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %retval = alloca i32, align 4
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %firstlitleft = alloca i32, align 4
  %lastlitleft = alloca i32, align 4
  %firstlitright = alloca i32, align 4
  %lastlitright = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %result = alloca i32, align 4
  %lterm = alloca %struct.term*, align 8
  %rterm = alloca %struct.term*, align 8
  %llit = alloca %struct.LITERAL_HELP*, align 8
  %rlit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  store i32 0, i32* %result, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %firstlitleft, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call1 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lastlitleft, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %firstlitright, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call3 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call3, i32* %lastlitright, align 4
  %2 = load i32, i32* %lastlitleft, align 4
  store i32 %2, i32* %i, align 4
  %3 = load i32, i32* %lastlitright, align 4
  store i32 %3, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %firstlitleft, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %firstlitright, align 4
  %cmp4 = icmp sge i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp4, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.LITERAL_HELP* %call5, %struct.LITERAL_HELP** %llit, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %12 = load i32, i32* %j, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %11, i32 %12)
  store %struct.LITERAL_HELP* %call6, %struct.LITERAL_HELP** %rlit, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %llit, align 8
  %call7 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %13)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end.25

if.then:                                          ; preds = %for.body
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %rlit, align 8
  %call8 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.24

if.then.10:                                       ; preds = %if.then
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %llit, align 8
  %call11 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %15)
  %call12 = call i64 @symbol_GetCount(i32 %call11)
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %rlit, align 8
  %call13 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %16)
  %call14 = call i64 @symbol_GetCount(i32 %call13)
  %cmp15 = icmp ult i64 %call12, %call14
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.10
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.10
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %llit, align 8
  %call17 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %17)
  %call18 = call i64 @symbol_GetCount(i32 %call17)
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %rlit, align 8
  %call19 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %18)
  %call20 = call i64 @symbol_GetCount(i32 %call19)
  %cmp21 = icmp ugt i64 %call18, %call20
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %for.body
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %20 = load i32, i32* %i, align 4
  %call26 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %19, i32 %20)
  store %struct.term* %call26, %struct.term** %lterm, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %22 = load i32, i32* %j, align 4
  %call27 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %21, i32 %22)
  store %struct.term* %call27, %struct.term** %rterm, align 8
  %23 = load %struct.term*, %struct.term** %lterm, align 8
  %24 = load %struct.term*, %struct.term** %rterm, align 8
  %call28 = call i32 @term_CompareBySymbolOccurences(%struct.term* %23, %struct.term* %24)
  store i32 %call28, i32* %result, align 4
  %25 = load i32, i32* %result, align 4
  %cmp29 = icmp ne i32 %25, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end.25
  br label %for.end

if.end.31:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %26 = load i32, i32* %i, align 4
  %dec = add nsw i32 %26, -1
  store i32 %dec, i32* %i, align 4
  %27 = load i32, i32* %j, align 4
  %dec32 = add nsw i32 %27, -1
  store i32 %dec32, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %land.end
  %28 = load i32, i32* %result, align 4
  store i32 %28, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.22, %if.then.16
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByPredicateDistribution(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lpreds = alloca %struct.LIST_HELP*, align 8
  %rpreds = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ListOfPredicates(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lpreds, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ListOfPredicates(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %rpreds, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lpreds, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rpreds, align 8
  %call2 = call i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3)
  store i32 %call2, i32* %result, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lpreds, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rpreds, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByConstantDistribution(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lconsts = alloca %struct.LIST_HELP*, align 8
  %rconsts = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ListOfConstants(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lconsts, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ListOfConstants(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %rconsts, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lconsts, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rconsts, align 8
  %call2 = call i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3)
  store i32 %call2, i32* %result, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lconsts, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rconsts, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByFunctionDistribution(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lfuns = alloca %struct.LIST_HELP*, align 8
  %rfuns = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ListOfFunctions(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lfuns, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ListOfFunctions(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %rfuns, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lfuns, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rfuns, align 8
  %call2 = call i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3)
  store i32 %call2, i32* %result, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lfuns, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rfuns, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_CompareByVariableDistribution(%struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP* %Right) #0 {
entry:
  %Left.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Right.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lvars = alloca %struct.LIST_HELP*, align 8
  %rvars = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Left, %struct.CLAUSE_HELP** %Left.addr, align 8
  store %struct.CLAUSE_HELP* %Right, %struct.CLAUSE_HELP** %Right.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Left.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ListOfVariables(%struct.CLAUSE_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %lvars, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Right.addr, align 8
  %call1 = call %struct.LIST_HELP* @clause_ListOfVariables(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %rvars, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lvars, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rvars, align 8
  %call2 = call i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3)
  store i32 %call2, i32* %result, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %lvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %rvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define void @clause_Init() #0 {
entry:
  %i = alloca i32, align 4
  call void @clause_SetCounter(i32 1)
  %call = call i32 @term_GetStampID()
  store i32 %call, i32* @clause_STAMPID, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %0, 20
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.LIST_HELP*], [21 x %struct.LIST_HELP*]* @clause_SORT, i32 0, i64 %idxprom
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetCounter(i32 %Value) #1 {
entry:
  %Value.addr = alloca i32, align 4
  store i32 %Value, i32* %Value.addr, align 4
  %0 = load i32, i32* %Value.addr, align 4
  store i32 %0, i32* @clause_CLAUSECOUNTER, align 4
  ret void
}

declare i32 @term_GetStampID() #2

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_CreateBody(i32 %ClauseLength) #0 {
entry:
  %ClauseLength.addr = alloca i32, align 4
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  store i32 %ClauseLength, i32* %ClauseLength.addr, align 4
  %call = call i8* @memory_Malloc(i32 80)
  %0 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_IncreaseCounter()
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %call1, i32* %clausenumber, align 4
  %call2 = call i32 @symbol_GetInitialStandardVarCounter()
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %maxVar = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 9
  store i32 %call2, i32* %maxVar, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 8
  store i32 0, i32* %flags, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 6
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %parentCls, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 7
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %parentLits, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %c = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 11
  store i32 0, i32* %c, align 4
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %a = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %10, i32 0, i32 12
  store i32 0, i32* %a, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %s = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 13
  store i32 0, i32* %s, align 4
  %12 = load i32, i32* %ClauseLength.addr, align 4
  %cmp = icmp ne i32 %12, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %13 = load i32, i32* %ClauseLength.addr, align 4
  %conv = sext i32 %13 to i64
  %mul = mul i64 %conv, 8
  %conv5 = trunc i64 %mul to i32
  %call6 = call i8* @memory_Malloc(i32 %conv5)
  %14 = bitcast i8* %call6 to %struct.LITERAL_HELP**
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 10
  store %struct.LITERAL_HELP** %14, %struct.LITERAL_HELP*** %literals, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_SetFromInput(%struct.CLAUSE_HELP* %16)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_IncreaseCounter() #1 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromInput(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 16, i32* %origin, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %Constraint, %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP* %Succedent, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Constraint.addr = alloca %struct.LIST_HELP*, align 8
  %Antecedent.addr = alloca %struct.LIST_HELP*, align 8
  %Succedent.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.LIST_HELP* %Constraint, %struct.LIST_HELP** %Constraint.addr, align 8
  store %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP** %Antecedent.addr, align 8
  store %struct.LIST_HELP* %Succedent, %struct.LIST_HELP** %Succedent.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i8* @memory_Malloc(i32 80)
  %0 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_IncreaseCounter()
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %call1, i32* %clausenumber, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 8
  store i32 0, i32* %flags, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %5)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 6
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %parentCls, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 7
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %parentLits, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call4 = call i32 @list_Length(%struct.LIST_HELP* %8)
  store i32 %call4, i32* %c, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %c5 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 11
  store i32 %call4, i32* %c5, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call6 = call i32 @list_Length(%struct.LIST_HELP* %10)
  store i32 %call6, i32* %a, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %a7 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 12
  store i32 %call6, i32* %a7, align 4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call8 = call i32 @list_Length(%struct.LIST_HELP* %12)
  store i32 %call8, i32* %s, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %s9 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %13, i32 0, i32 13
  store i32 %call8, i32* %s9, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call10 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %14)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %a, align 4
  %add = add nsw i32 %15, %16
  %17 = load i32, i32* %s, align 4
  %add11 = add nsw i32 %add, %17
  %conv = sext i32 %add11 to i64
  %mul = mul i64 %conv, 8
  %conv12 = trunc i64 %mul to i32
  %call13 = call i8* @memory_Malloc(i32 %conv12)
  %18 = bitcast i8* %call13 to %struct.LITERAL_HELP**
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %19, i32 0, i32 10
  store %struct.LITERAL_HELP** %18, %struct.LITERAL_HELP*** %literals, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call i32 @fol_Not()
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call16 to %struct.term*
  %24 = bitcast %struct.term* %23 to i8*
  %call17 = call %struct.LIST_HELP* @list_List(i8* %24)
  %call18 = call %struct.term* @term_Create(i32 %call15, %struct.LIST_HELP* %call17)
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call19 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call18, %struct.CLAUSE_HELP* %25)
  %26 = load i32, i32* %i, align 4
  %idxprom = sext i32 %26 to i64
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %27, i32 0, i32 10
  %28 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals20, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %28, i64 %idxprom
  store %struct.LITERAL_HELP* %call19, %struct.LITERAL_HELP** %arrayidx, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Constraint.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %c, align 4
  %32 = load i32, i32* %a, align 4
  %add22 = add nsw i32 %32, %31
  store i32 %add22, i32* %a, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %for.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %a, align 4
  %cmp24 = icmp slt i32 %33, %34
  br i1 %cmp24, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.23
  %call27 = call i32 @fol_Not()
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call28 to %struct.term*
  %37 = bitcast %struct.term* %36 to i8*
  %call29 = call %struct.LIST_HELP* @list_List(i8* %37)
  %call30 = call %struct.term* @term_Create(i32 %call27, %struct.LIST_HELP* %call29)
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call31 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call30, %struct.CLAUSE_HELP* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %39 to i64
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals33 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %40, i32 0, i32 10
  %41 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals33, align 8
  %arrayidx34 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %41, i64 %idxprom32
  store %struct.LITERAL_HELP* %call31, %struct.LITERAL_HELP** %arrayidx34, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Antecedent.addr, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.26
  %43 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %43, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  %44 = load i32, i32* %a, align 4
  %45 = load i32, i32* %s, align 4
  %add39 = add nsw i32 %45, %44
  store i32 %add39, i32* %s, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %for.end.38
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %s, align 4
  %cmp41 = icmp slt i32 %46, %47
  br i1 %cmp41, label %for.body.43, label %for.end.52

for.body.43:                                      ; preds = %for.cond.40
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %48)
  %49 = bitcast i8* %call44 to %struct.term*
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call45 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %49, %struct.CLAUSE_HELP* %50)
  %51 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %51 to i64
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals47 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %52, i32 0, i32 10
  %53 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals47, align 8
  %arrayidx48 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %53, i64 %idxprom46
  store %struct.LITERAL_HELP* %call45, %struct.LITERAL_HELP** %arrayidx48, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Succedent.addr, align 8
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.43
  %55 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %55, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %57 = load i32*, i32** %Flags.addr, align 8
  %58 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %56, i32* %57, i32* %58)
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_SetFromInput(%struct.CLAUSE_HELP* %59)
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %60
}

declare i32 @list_Length(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #1 {
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

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_CreateCrude(%struct.LIST_HELP* %Constraint, %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP* %Succedent, i32 %Con) #0 {
entry:
  %Constraint.addr = alloca %struct.LIST_HELP*, align 8
  %Antecedent.addr = alloca %struct.LIST_HELP*, align 8
  %Succedent.addr = alloca %struct.LIST_HELP*, align 8
  %Con.addr = alloca i32, align 4
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.LIST_HELP* %Constraint, %struct.LIST_HELP** %Constraint.addr, align 8
  store %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP** %Antecedent.addr, align 8
  store %struct.LIST_HELP* %Succedent, %struct.LIST_HELP** %Succedent.addr, align 8
  store i32 %Con, i32* %Con.addr, align 4
  %call = call i8* @memory_Malloc(i32 80)
  %0 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_IncreaseCounter()
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %call1, i32* %clausenumber, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 8
  store i32 0, i32* %flags, align 4
  %3 = load i32, i32* %Con.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %4, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %7)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %8, i32 0, i32 6
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %parentCls, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 7
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %parentLits, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call4 = call i32 @list_Length(%struct.LIST_HELP* %10)
  store i32 %call4, i32* %c, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %c5 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 11
  store i32 %call4, i32* %c5, align 4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call6 = call i32 @list_Length(%struct.LIST_HELP* %12)
  store i32 %call6, i32* %a, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %a7 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %13, i32 0, i32 12
  store i32 %call6, i32* %a7, align 4
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call8 = call i32 @list_Length(%struct.LIST_HELP* %14)
  store i32 %call8, i32* %s, align 4
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %s9 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 13
  store i32 %call8, i32* %s9, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call10 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %16)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.16, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %17 = load i32, i32* %c, align 4
  %18 = load i32, i32* %a, align 4
  %add = add nsw i32 %17, %18
  %19 = load i32, i32* %s, align 4
  %add13 = add nsw i32 %add, %19
  %conv = sext i32 %add13 to i64
  %mul = mul i64 %conv, 8
  %conv14 = trunc i64 %mul to i32
  %call15 = call i8* @memory_Malloc(i32 %conv14)
  %20 = bitcast i8* %call15 to %struct.LITERAL_HELP**
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %21, i32 0, i32 10
  store %struct.LITERAL_HELP** %20, %struct.LITERAL_HELP*** %literals, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %22, %23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call18 to %struct.term*
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call19 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %25, %struct.CLAUSE_HELP* %26)
  %27 = load i32, i32* %i, align 4
  %idxprom = sext i32 %27 to i64
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %28, i32 0, i32 10
  %29 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals20, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %29, i64 %idxprom
  store %struct.LITERAL_HELP* %call19, %struct.LITERAL_HELP** %arrayidx, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Constraint.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %c, align 4
  %33 = load i32, i32* %a, align 4
  %add22 = add nsw i32 %33, %32
  store i32 %add22, i32* %a, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %a, align 4
  %cmp24 = icmp slt i32 %34, %35
  br i1 %cmp24, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.23
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call27 to %struct.term*
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call28 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %37, %struct.CLAUSE_HELP* %38)
  %39 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %39 to i64
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals30 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %40, i32 0, i32 10
  %41 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals30, align 8
  %arrayidx31 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %41, i64 %idxprom29
  store %struct.LITERAL_HELP* %call28, %struct.LITERAL_HELP** %arrayidx31, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Antecedent.addr, align 8
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.26
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  %44 = load i32, i32* %a, align 4
  %45 = load i32, i32* %s, align 4
  %add36 = add nsw i32 %45, %44
  store i32 %add36, i32* %s, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.47, %for.end.35
  %46 = load i32, i32* %i, align 4
  %47 = load i32, i32* %s, align 4
  %cmp38 = icmp slt i32 %46, %47
  br i1 %cmp38, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.37
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %48)
  %49 = bitcast i8* %call41 to %struct.term*
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call42 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %49, %struct.CLAUSE_HELP* %50)
  %51 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %51 to i64
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals44 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %52, i32 0, i32 10
  %53 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals44, align 8
  %arrayidx45 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %53, i64 %idxprom43
  store %struct.LITERAL_HELP* %call42, %struct.LITERAL_HELP** %arrayidx45, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %Succedent.addr, align 8
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.40
  %55 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %55, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.37

for.end.49:                                       ; preds = %for.cond.37
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_SetFromInput(%struct.CLAUSE_HELP* %56)
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %57
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
define %struct.CLAUSE_HELP* @clause_CreateUnnormalized(%struct.LIST_HELP* %Constraint, %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP* %Succedent) #0 {
entry:
  %Constraint.addr = alloca %struct.LIST_HELP*, align 8
  %Antecedent.addr = alloca %struct.LIST_HELP*, align 8
  %Succedent.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.LIST_HELP* %Constraint, %struct.LIST_HELP** %Constraint.addr, align 8
  store %struct.LIST_HELP* %Antecedent, %struct.LIST_HELP** %Antecedent.addr, align 8
  store %struct.LIST_HELP* %Succedent, %struct.LIST_HELP** %Succedent.addr, align 8
  %call = call i8* @memory_Malloc(i32 80)
  %0 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %0, %struct.CLAUSE_HELP** %Result, align 8
  %call1 = call i32 @clause_IncreaseCounter()
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %clausenumber = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %1, i32 0, i32 0
  store i32 %call1, i32* %clausenumber, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 8
  store i32 0, i32* %flags, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %depth = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %3, i32 0, i32 2
  store i32 0, i32* %depth, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %4, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_InitSplitData(%struct.CLAUSE_HELP* %5)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %6, i32 0, i32 6
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %parentCls, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %parentLits = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 7
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %parentLits, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call4 = call i32 @list_Length(%struct.LIST_HELP* %8)
  store i32 %call4, i32* %c, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %c5 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %9, i32 0, i32 11
  store i32 %call4, i32* %c5, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call6 = call i32 @list_Length(%struct.LIST_HELP* %10)
  store i32 %call6, i32* %a, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %a7 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %11, i32 0, i32 12
  store i32 %call6, i32* %a7, align 4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call8 = call i32 @list_Length(%struct.LIST_HELP* %12)
  store i32 %call8, i32* %s, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %s9 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %13, i32 0, i32 13
  store i32 %call8, i32* %s9, align 4
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call10 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %14)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %15 = load i32, i32* %c, align 4
  %16 = load i32, i32* %a, align 4
  %add = add nsw i32 %15, %16
  %17 = load i32, i32* %s, align 4
  %add11 = add nsw i32 %add, %17
  %conv = sext i32 %add11 to i64
  %mul = mul i64 %conv, 8
  %conv12 = trunc i64 %mul to i32
  %call13 = call i8* @memory_Malloc(i32 %conv12)
  %18 = bitcast i8* %call13 to %struct.LITERAL_HELP**
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %19, i32 0, i32 10
  store %struct.LITERAL_HELP** %18, %struct.LITERAL_HELP*** %literals, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %20, %21
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call i32 @fol_Not()
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %call17 = call %struct.LIST_HELP* @list_List(i8* %call16)
  %call18 = call %struct.term* @term_Create(i32 %call15, %struct.LIST_HELP* %call17)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call19 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call18, %struct.CLAUSE_HELP* %23)
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals20 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %25, i32 0, i32 10
  %26 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals20, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %26, i64 %idxprom
  store %struct.LITERAL_HELP* %call19, %struct.LITERAL_HELP** %arrayidx, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint.addr, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Constraint.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %i, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %c, align 4
  %30 = load i32, i32* %a, align 4
  %add22 = add nsw i32 %30, %29
  store i32 %add22, i32* %a, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.36, %for.end
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %a, align 4
  %cmp24 = icmp slt i32 %31, %32
  br i1 %cmp24, label %for.body.26, label %for.end.38

for.body.26:                                      ; preds = %for.cond.23
  %call27 = call i32 @fol_Not()
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %call29 = call %struct.LIST_HELP* @list_List(i8* %call28)
  %call30 = call %struct.term* @term_Create(i32 %call27, %struct.LIST_HELP* %call29)
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call31 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call30, %struct.CLAUSE_HELP* %34)
  %35 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %35 to i64
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals33 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %36, i32 0, i32 10
  %37 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals33, align 8
  %arrayidx34 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %37, i64 %idxprom32
  store %struct.LITERAL_HELP* %call31, %struct.LITERAL_HELP** %arrayidx34, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent.addr, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Antecedent.addr, align 8
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.26
  %39 = load i32, i32* %i, align 4
  %inc37 = add nsw i32 %39, 1
  store i32 %inc37, i32* %i, align 4
  br label %for.cond.23

for.end.38:                                       ; preds = %for.cond.23
  %40 = load i32, i32* %a, align 4
  %41 = load i32, i32* %s, align 4
  %add39 = add nsw i32 %41, %40
  store i32 %add39, i32* %s, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %for.end.38
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %s, align 4
  %cmp41 = icmp slt i32 %42, %43
  br i1 %cmp41, label %for.body.43, label %for.end.52

for.body.43:                                      ; preds = %for.cond.40
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call44 to %struct.term*
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %call45 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %45, %struct.CLAUSE_HELP* %46)
  %47 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %47 to i64
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %literals47 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %48, i32 0, i32 10
  %49 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals47, align 8
  %arrayidx48 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %49, i64 %idxprom46
  store %struct.LITERAL_HELP* %call45, %struct.LITERAL_HELP** %arrayidx48, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent.addr, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Succedent.addr, align 8
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.43
  %51 = load i32, i32* %i, align 4
  %inc51 = add nsw i32 %51, 1
  store i32 %inc51, i32* %i, align 4
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_UpdateMaxVar(%struct.CLAUSE_HELP* %52)
  br label %if.end

if.end:                                           ; preds = %for.end.52, %entry
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %53
}

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP* %LitList, i32 %Sorts, i32 %Conclause, i32 %Ordering, i32* %Flags, i32* %Precedence) #0 {
entry:
  %LitList.addr = alloca %struct.LIST_HELP*, align 8
  %Sorts.addr = alloca i32, align 4
  %Conclause.addr = alloca i32, align 4
  %Ordering.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.CLAUSE_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct.LIST_HELP* %LitList, %struct.LIST_HELP** %LitList.addr, align 8
  store i32 %Sorts, i32* %Sorts.addr, align 4
  store i32 %Conclause, i32* %Conclause.addr, align 4
  store i32 %Ordering, i32* %Ordering.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Antecedent, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Succedent, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Constraint, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call4 to %struct.term*
  %call5 = call i32 @term_TopSymbol(%struct.term* %2)
  %call6 = call i32 @fol_Not()
  %cmp = icmp eq i32 %call5, %call6
  br i1 %cmp, label %if.then, label %if.else.22

if.then:                                          ; preds = %while.body
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call7 to %struct.term*
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  store %struct.term* %call8, %struct.term** %Atom, align 8
  %5 = load i32, i32* %Sorts.addr, align 4
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %6)
  %call11 = call i32 @symbol_IsBaseSort(i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true.13, label %if.else

land.lhs.true.13:                                 ; preds = %land.lhs.true
  %7 = load %struct.term*, %struct.term** %Atom, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call15 = call i32 @term_IsVariable(%struct.term* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true.13
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %call18, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Constraint, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.13, %land.lhs.true, %if.then
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %call20, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Antecedent, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.25

if.else.22:                                       ; preds = %while.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call24 = call %struct.LIST_HELP* @list_Cons(i8* %call23, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Succedent, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList.addr, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %LitList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call27 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Constraint, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call28 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Antecedent, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call29 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Succedent, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %21 = load i32, i32* %Conclause.addr, align 4
  %call30 = call %struct.CLAUSE_HELP* @clause_CreateCrude(%struct.LIST_HELP* %18, %struct.LIST_HELP* %19, %struct.LIST_HELP* %20, i32 %21)
  store %struct.CLAUSE_HELP* %call30, %struct.CLAUSE_HELP** %Result, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %24)
  %25 = load i32, i32* %Ordering.addr, align 4
  %tobool31 = icmp ne i32 %25, 0
  br i1 %tobool31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %while.end
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  %27 = load i32*, i32** %Flags.addr, align 8
  %28 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %26, i32* %27, i32* %28)
  br label %if.end.34

if.else.33:                                       ; preds = %while.end
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_Normalize(%struct.CLAUSE_HELP* %29)
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  call void @clause_UpdateMaxVar(%struct.CLAUSE_HELP* %30)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result, align 8
  ret %struct.CLAUSE_HELP* %31
}

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define void @clause_SetSortConstraint(%struct.CLAUSE_HELP* %Clause, i32 %Strong, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Strong.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Help = alloca %struct.LITERAL_HELP*, align 8
  %ActAtom = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %NewConLits = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Strong, i32* %Strong.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %i, align 4
  store i32 0, i32* %NewConLits, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  %cmp = icmp sle i32 %2, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %k, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %ActLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %ActAtom, align 8
  %7 = load %struct.term*, %struct.term** %ActAtom, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %7)
  %call6 = call i32 @symbol_IsBaseSort(i32 %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body
  %8 = load i32, i32* %Strong.addr, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = load %struct.term*, %struct.term** %ActAtom, align 8
  %call8 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call9 = call i32 @term_IsVariable(%struct.term* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end.15

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load i32, i32* %k, align 4
  %cmp11 = icmp ne i32 %inc, %11
  br i1 %cmp11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %13 = load i32, i32* %i, align 4
  %call13 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %12, i32 %13)
  store %struct.LITERAL_HELP* %call13, %struct.LITERAL_HELP** %Help, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %14, i32 %15, %struct.LITERAL_HELP* %16)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load i32, i32* %k, align 4
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Help, align 8
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %17, i32 %18, %struct.LITERAL_HELP* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %20 = load i32, i32* %NewConLits, align 4
  %inc14 = add nsw i32 %20, 1
  store i32 %inc14, i32* %NewConLits, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %lor.lhs.false, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %21 = load i32, i32* %k, align 4
  %inc16 = add nsw i32 %21, 1
  store i32 %inc16, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call17 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %23)
  %24 = load i32, i32* %NewConLits, align 4
  %add = add nsw i32 %call17, %24
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %22, i32 %add)
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call18 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %26)
  %27 = load i32, i32* %NewConLits, align 4
  %sub = sub nsw i32 %call18, %27
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %25, i32 %sub)
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %29 = load i32*, i32** %Flags.addr, align 8
  %30 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReInit(%struct.CLAUSE_HELP* %28, i32* %29, i32* %30)
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
define internal void @clause_FreeLitArray(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Length = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %Length, align 4
  %1 = load i32, i32* %Length, align 4
  %cmp = icmp ugt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %2, i32 0, i32 10
  %3 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %4 = bitcast %struct.LITERAL_HELP** %3 to i8*
  %5 = load i32, i32* %Length, align 4
  %conv = zext i32 %5 to i64
  %mul = mul i64 8, %conv
  %conv1 = trunc i64 %mul to i32
  call void @memory_Free(i8* %4, i32 %conv1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_Free(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  call void @memory_Free(i8* %1, i32 80)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %litnum = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %litnum, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %litnum, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @clause_LiteralInsertIntoSharing(%struct.LITERAL_HELP* %call1, %struct.SHARED_INDEX_NODE* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @clause_LiteralDeleteFromSharing(%struct.LITERAL_HELP* %call1, %struct.SHARED_INDEX_NODE* %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FreeLitArray(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %8)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %9)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %10, i32 0, i32 4
  %11 = load i64*, i64** %splitfield, align 8
  %cmp4 = icmp ne i64* %11, null
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield5 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %12, i32 0, i32 4
  %13 = load i64*, i64** %splitfield5, align 8
  %14 = bitcast i64* %13 to i8*
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %15, i32 0, i32 5
  %16 = load i32, i32* %splitfield_length, align 4
  %conv = zext i32 %16 to i64
  %mul = mul i64 8, %conv
  %conv6 = trunc i64 %mul to i32
  call void @memory_Free(i8* %14, i32 %conv6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Free(%struct.CLAUSE_HELP* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_MakeUnshared(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %SharedAtom = alloca %struct.term*, align 8
  %AtomCopy = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %LastAnte = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %LastAnte, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %length, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %LastAnte, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %ActLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %SharedAtom, align 8
  %7 = load %struct.term*, %struct.term** %SharedAtom, align 8
  %call5 = call %struct.term* @term_Copy(%struct.term* %7)
  store %struct.term* %call5, %struct.term** %AtomCopy, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %9 = bitcast %struct.LITERAL_HELP* %8 to i8*
  %10 = load %struct.term*, %struct.term** %SharedAtom, align 8
  %11 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @sharing_Delete(i8* %9, %struct.term* %10, %struct.SHARED_INDEX_NODE* %11)
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %13 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @clause_LiteralSetNegAtom(%struct.LITERAL_HELP* %12, %struct.term* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.12, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %length, align 4
  %cmp7 = icmp slt i32 %15, %16
  br i1 %cmp7, label %for.body.8, label %for.end.14

for.body.8:                                       ; preds = %for.cond.6
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call9 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.LITERAL_HELP* %call9, %struct.LITERAL_HELP** %ActLit, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call10 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %19)
  store %struct.term* %call10, %struct.term** %SharedAtom, align 8
  %20 = load %struct.term*, %struct.term** %SharedAtom, align 8
  %call11 = call %struct.term* @term_Copy(%struct.term* %20)
  store %struct.term* %call11, %struct.term** %AtomCopy, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %22 = bitcast %struct.LITERAL_HELP* %21 to i8*
  %23 = load %struct.term*, %struct.term** %SharedAtom, align 8
  %24 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @sharing_Delete(i8* %22, %struct.term* %23, %struct.SHARED_INDEX_NODE* %24)
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %26 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @clause_LiteralSetPosAtom(%struct.LITERAL_HELP* %25, %struct.term* %26)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.8
  %27 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %27, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.6

for.end.14:                                       ; preds = %for.cond.6
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralSetNegAtom(%struct.LITERAL_HELP* %L, %struct.term* %A) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %A.addr = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store %struct.term* %A, %struct.term** %A.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call)
  %1 = load %struct.term*, %struct.term** %A.addr, align 8
  %2 = bitcast %struct.term* %1 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call1, i8* %2)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_LiteralSetPosAtom(%struct.LITERAL_HELP* %L, %struct.term* %A) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %A.addr = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  store %struct.term* %A, %struct.term** %A.addr, align 8
  %0 = load %struct.term*, %struct.term** %A.addr, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %atomWithSign = getelementptr inbounds %struct.LITERAL_HELP, %struct.LITERAL_HELP* %1, i32 0, i32 4
  store %struct.term* %0, %struct.term** %atomWithSign, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_MoveSharedClause(%struct.CLAUSE_HELP* %Clause, %struct.SHARED_INDEX_NODE* %Source, %struct.SHARED_INDEX_NODE* %Destination, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Source.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Destination.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Copy = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Source, %struct.SHARED_INDEX_NODE** %Source.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Destination, %struct.SHARED_INDEX_NODE** %Destination.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %length, align 4
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  store %struct.term* %call3, %struct.term** %Atom, align 8
  %6 = load %struct.term*, %struct.term** %Atom, align 8
  %call4 = call %struct.term* @term_Copy(%struct.term* %6)
  store %struct.term* %call4, %struct.term** %Copy, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %9 = bitcast %struct.LITERAL_HELP* %8 to i8*
  %10 = load %struct.term*, %struct.term** %Copy, align 8
  %11 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Destination.addr, align 8
  %call5 = call %struct.term* @sharing_Insert(i8* %9, %struct.term* %10, %struct.SHARED_INDEX_NODE* %11)
  call void @clause_LiteralSetAtom(%struct.LITERAL_HELP* %7, %struct.term* %call5)
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %13 = bitcast %struct.LITERAL_HELP* %12 to i8*
  %14 = load %struct.term*, %struct.term** %Atom, align 8
  %15 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Source.addr, align 8
  call void @sharing_Delete(i8* %13, %struct.term* %14, %struct.SHARED_INDEX_NODE* %15)
  %16 = load %struct.term*, %struct.term** %Copy, align 8
  call void @term_Delete(%struct.term* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteSharedLiteral(%struct.CLAUSE_HELP* %Clause, i32 %Indice, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indice.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Indice, i32* %Indice.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  call void @clause_MakeUnshared(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %Indice.addr, align 4
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %2, i32 %3, i32* %4, i32* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %8 = load i32*, i32** %Flags.addr, align 8
  %9 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_InsertIntoSharing(%struct.CLAUSE_HELP* %6, %struct.SHARED_INDEX_NODE* %7, i32* %8, i32* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %Clause, i32 %Indice, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indice.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Indice, i32* %Indice.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %Indice.addr, align 4
  call void @clause_DeleteLiteralNN(%struct.CLAUSE_HELP* %0, i32 %1)
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32*, i32** %Flags.addr, align 8
  %4 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReInit(%struct.CLAUSE_HELP* %2, i32* %3, i32* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteClauseList(%struct.LIST_HELP* %ClauseList) #0 {
entry:
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
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
  %call2 = call i32 @clause_Exists(%struct.CLAUSE_HELP* %3)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %7)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_Exists(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteSharedClauseList(%struct.LIST_HELP* %ClauseList, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
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
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  %6 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %3, %struct.SHARED_INDEX_NODE* %4, i32* %5, i32* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_DeleteAllIndexedClauses(%struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %DelList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %NewVar = alloca %struct.term*, align 8
  %NewVarSymbol = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.term* @term_CreateStandardVariable()
  store %struct.term* %call, %struct.term** %NewVar, align 8
  %0 = load %struct.term*, %struct.term** %NewVar, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call1, i32* %NewVarSymbol, align 4
  %call2 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call3 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %1)
  %2 = load %struct.term*, %struct.term** %NewVar, align 8
  %call4 = call %struct.LIST_HELP* @st_GetInstance(%struct.binding* %call2, %struct.st* %call3, %struct.term* %2)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %TermList, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.23, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.term*
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call7 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %5, %struct.SHARED_INDEX_NODE* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %DelList, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DelList, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot10 = xor i1 %tobool9, true
  br i1 %lnot10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call11 to %struct.LITERAL_HELP*
  %call12 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %11)
  %12 = bitcast %struct.CLAUSE_HELP* %call12 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %9, i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DelList, align 8
  %call14 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %DelList, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DelList, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.21, %for.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.23

for.body.19:                                      ; preds = %for.cond.15
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call20 to %struct.CLAUSE_HELP*
  %19 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %20 = load i32*, i32** %Flags.addr, align 8
  %21 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteFromSharing(%struct.CLAUSE_HELP* %18, %struct.SHARED_INDEX_NODE* %19, i32* %20, i32* %21)
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.19
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.15

for.end.23:                                       ; preds = %for.cond.15
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  call void @list_Delete(%struct.LIST_HELP* %23)
  %call24 = call %struct.binding* @cont_LeftContext()
  %24 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call25 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %24)
  %25 = load %struct.term*, %struct.term** %NewVar, align 8
  %call26 = call %struct.LIST_HELP* @st_GetInstance(%struct.binding* %call24, %struct.st* %call25, %struct.term* %25)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %TermList, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DelList, align 8
  call void @list_Delete(%struct.LIST_HELP* %26)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %27 = load %struct.term*, %struct.term** %NewVar, align 8
  call void @term_Delete(%struct.term* %27)
  %28 = load i32, i32* %NewVarSymbol, align 4
  call void @symbol_Delete(i32 %28)
  ret void
}

declare %struct.term* @term_CreateStandardVariable() #2

declare %struct.LIST_HELP* @st_GetInstance(%struct.binding*, %struct.st*, %struct.term*) #2

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

declare %struct.LIST_HELP* @sharing_GetDataList(%struct.term*, %struct.SHARED_INDEX_NODE*) #2

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

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

declare void @symbol_Delete(i32) #2

; Function Attrs: nounwind uwtable
define void @clause_PrintAllIndexedClauses(%struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %ClList = alloca %struct.LIST_HELP*, align 8
  %PrintList = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %NewVar = alloca %struct.term*, align 8
  %NewVarSymbol = alloca i32, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call = call %struct.term* @term_CreateStandardVariable()
  store %struct.term* %call, %struct.term** %NewVar, align 8
  %0 = load %struct.term*, %struct.term** %NewVar, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call1, i32* %NewVarSymbol, align 4
  %call2 = call %struct.binding* @cont_LeftContext()
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call3 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %1)
  %2 = load %struct.term*, %struct.term** %NewVar, align 8
  %call4 = call %struct.LIST_HELP* @st_GetInstance(%struct.binding* %call2, %struct.st* %call3, %struct.term* %2)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %TermList, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %PrintList, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.term*
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call8 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %5, %struct.SHARED_INDEX_NODE* %6)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %ClList, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call12 to %struct.LITERAL_HELP*
  %call13 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %11)
  %12 = bitcast %struct.CLAUSE_HELP* %call13 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %9, i8* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PrintList, align 8
  %call15 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %14, %struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %PrintList, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %Scan, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %TermList, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Free(%struct.LIST_HELP* %18)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PrintList, align 8
  call void @clause_ListPrint(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %PrintList, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  %21 = load %struct.term*, %struct.term** %NewVar, align 8
  call void @term_Delete(%struct.term* %21)
  %22 = load i32, i32* %NewVarSymbol, align 4
  call void @symbol_Delete(i32 %22)
  ret void
}

declare %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define void @clause_ListPrint(%struct.LIST_HELP* %ClauseList) #0 {
entry:
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %ClauseList, %struct.LIST_HELP** %ClauseList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call1 = call i8* @list_First(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ClauseList.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call5 = call i32 @putchar(i32 10)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_AllIndexedClauses(%struct.SHARED_INDEX_NODE* %ShIndex) #0 {
entry:
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %clauselist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call = call %struct.LIST_HELP* @sharing_GetAllSuperTerms(%struct.SHARED_INDEX_NODE* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %clauselist, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %cmp = icmp ne %struct.LIST_HELP* %2, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LITERAL_HELP*
  %call3 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %5)
  %6 = bitcast %struct.CLAUSE_HELP* %call3 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call5 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %clauselist, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  ret %struct.LIST_HELP* %9
}

declare %struct.LIST_HELP* @sharing_GetAllSuperTerms(%struct.SHARED_INDEX_NODE*) #2

; Function Attrs: nounwind uwtable
define void @clause_DeleteLiteralNN(%struct.CLAUSE_HELP* %Clause, i32 %Indice) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indice.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %length = alloca i32, align 4
  %shift = alloca i32, align 4
  %Literals = alloca %struct.LITERAL_HELP**, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Indice, i32* %Indice.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %lc, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %la, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %length, align 4
  %3 = load i32, i32* %length, align 4
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %length, align 4
  %sub = sub nsw i32 %4, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 8, %conv
  %conv3 = trunc i64 %mul to i32
  %call4 = call i8* @memory_Malloc(i32 %conv3)
  %5 = bitcast i8* %call4 to %struct.LITERAL_HELP**
  store %struct.LITERAL_HELP** %5, %struct.LITERAL_HELP*** %Literals, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.LITERAL_HELP** null, %struct.LITERAL_HELP*** %Literals, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  store i32 0, i32* %shift, align 4
  %6 = load i32, i32* %length, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, i32* %length, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %length, align 4
  %cmp5 = icmp slt i32 %7, %8
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %Indice.addr, align 4
  %cmp7 = icmp eq i32 %9, %10
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %for.body
  store i32 1, i32* %shift, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %shift, align 4
  %add = add nsw i32 %11, %12
  %idxprom = sext i32 %add to i64
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %13, i32 0, i32 10
  %14 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %literals, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %14, i64 %idxprom
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %arrayidx, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %Literals, align 8
  %arrayidx12 = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %17, i64 %idxprom11
  store %struct.LITERAL_HELP* %15, %struct.LITERAL_HELP** %arrayidx12, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %18 = load i32, i32* %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load i32, i32* %Indice.addr, align 4
  %call13 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  call void @clause_LiteralDelete(%struct.LITERAL_HELP* %call13)
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FreeLitArray(%struct.CLAUSE_HELP* %21)
  %22 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %Literals, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals14 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %23, i32 0, i32 10
  store %struct.LITERAL_HELP** %22, %struct.LITERAL_HELP*** %literals14, align 8
  %24 = load i32, i32* %Indice.addr, align 4
  %25 = load i32, i32* %lc, align 4
  %cmp15 = icmp sle i32 %24, %25
  br i1 %cmp15, label %if.then.17, label %if.else.20

if.then.17:                                       ; preds = %for.end
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call18 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %27)
  %sub19 = sub nsw i32 %call18, 1
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %26, i32 %sub19)
  br label %if.end.30

if.else.20:                                       ; preds = %for.end
  %28 = load i32, i32* %Indice.addr, align 4
  %29 = load i32, i32* %la, align 4
  %cmp21 = icmp sle i32 %28, %29
  br i1 %cmp21, label %if.then.23, label %if.else.26

if.then.23:                                       ; preds = %if.else.20
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call24 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %31)
  %sub25 = sub nsw i32 %call24, 1
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %30, i32 %sub25)
  br label %if.end.29

if.else.26:                                       ; preds = %if.else.20
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call27 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %33)
  %sub28 = sub nsw i32 %call27, 1
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %32, i32 %sub28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.17
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %weight = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %34, i32 0, i32 1
  store i32 -1, i32* %weight, align 4
  ret void
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

; Function Attrs: nounwind uwtable
define void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Indices, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Indices.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewLits = alloca %struct.LITERAL_HELP**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nc = alloca i32, align 4
  %na = alloca i32, align 4
  %ns = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %olength = alloca i32, align 4
  %nlength = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Indices, %struct.LIST_HELP** %Indices.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %nc, align 4
  store i32 0, i32* %na, align 4
  store i32 0, i32* %ns, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %lc, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %la, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %olength, align 4
  %3 = load i32, i32* %olength, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indices.addr, align 8
  %call3 = call i32 @list_Length(%struct.LIST_HELP* %4)
  %sub = sub i32 %3, %call3
  store i32 %sub, i32* %nlength, align 4
  %5 = load i32, i32* %nlength, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %nlength, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 8, %conv
  %conv4 = trunc i64 %mul to i32
  %call5 = call i8* @memory_Malloc(i32 %conv4)
  %7 = bitcast i8* %call5 to %struct.LITERAL_HELP**
  store %struct.LITERAL_HELP** %7, %struct.LITERAL_HELP*** %NewLits, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store %struct.LITERAL_HELP** null, %struct.LITERAL_HELP*** %NewLits, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call i32 @clause_FirstLitIndex()
  store i32 %call6, i32* %i, align 4
  %call7 = call i32 @clause_FirstLitIndex()
  store i32 %call7, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %olength, align 4
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Indices.addr, align 8
  %11 = load i32, i32* %i, align 4
  %conv10 = sext i32 %11 to i64
  %12 = inttoptr i64 %conv10 to i8*
  %call11 = call i32 @list_PointerMember(%struct.LIST_HELP* %10, i8* %12)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %for.body
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %i, align 4
  %call13 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %13, i32 %14)
  call void @clause_LiteralDelete(%struct.LITERAL_HELP* %call13)
  br label %if.end.29

if.else.14:                                       ; preds = %for.body
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  %17 = load i32, i32* %j, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %j, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %NewLits, align 8
  %arrayidx = getelementptr inbounds %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %18, i64 %idxprom
  store %struct.LITERAL_HELP* %call15, %struct.LITERAL_HELP** %arrayidx, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %lc, align 4
  %cmp16 = icmp sle i32 %19, %20
  br i1 %cmp16, label %if.then.18, label %if.else.20

if.then.18:                                       ; preds = %if.else.14
  %21 = load i32, i32* %nc, align 4
  %inc19 = add nsw i32 %21, 1
  store i32 %inc19, i32* %nc, align 4
  br label %if.end.28

if.else.20:                                       ; preds = %if.else.14
  %22 = load i32, i32* %i, align 4
  %23 = load i32, i32* %la, align 4
  %cmp21 = icmp sle i32 %22, %23
  br i1 %cmp21, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else.20
  %24 = load i32, i32* %na, align 4
  %inc24 = add nsw i32 %24, 1
  store i32 %inc24, i32* %na, align 4
  br label %if.end.27

if.else.25:                                       ; preds = %if.else.20
  %25 = load i32, i32* %ns, align 4
  %inc26 = add nsw i32 %25, 1
  store i32 %inc26, i32* %ns, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %26 = load i32, i32* %i, align 4
  %inc30 = add nsw i32 %26, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FreeLitArray(%struct.CLAUSE_HELP* %27)
  %28 = load %struct.LITERAL_HELP**, %struct.LITERAL_HELP*** %NewLits, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %literals = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %29, i32 0, i32 10
  store %struct.LITERAL_HELP** %28, %struct.LITERAL_HELP*** %literals, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %31 = load i32, i32* %nc, align 4
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %30, i32 %31)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %33 = load i32, i32* %na, align 4
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %32, i32 %33)
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %35 = load i32, i32* %ns, align 4
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %34, i32 %35)
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %37 = load i32*, i32** %Flags.addr, align 8
  %38 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_ReInit(%struct.CLAUSE_HELP* %36, i32* %37, i32* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @clause_IsHornClause(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp sle i32 %call, 1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %4, i32 %5)
  %call3 = call i32 @term_AllArgsAreVar(%struct.term* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @term_AllArgsAreVar(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %CVars = alloca %struct.LIST_HELP*, align 8
  %LitVars = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CVars, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %c, align 4
  %1 = load i32, i32* %c, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %c, align 4
  %cmp5 = icmp slt i32 %3, %4
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call6 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  %call7 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CVars, align 8
  %call8 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %CVars, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %c, align 4
  %cmp9 = icmp eq i32 %9, %10
  br i1 %cmp9, label %if.then.10, label %if.end.27

if.then.10:                                       ; preds = %for.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call11 = call i32 @clause_Length(%struct.CLAUSE_HELP* %11)
  store i32 %call11, i32* %c, align 4
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %LitVars, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.19, %if.then.10
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %c, align 4
  %cmp14 = icmp slt i32 %12, %13
  br i1 %cmp14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.13
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitVars, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call16 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  %call17 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call16)
  %call18 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %14, %struct.LIST_HELP* %call17)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %LitVars, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.15
  %17 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CVars, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitVars, align 8
  %call22 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %CVars, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.end.21
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %20)
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.end.21
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %21)
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %for.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %22)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.25, %if.then.3, %if.then
  %23 = load i32, i32* %retval
  ret i32 %23
}

declare %struct.LIST_HELP* @term_VariableSymbols(%struct.term*) #2

declare %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_HasSelectedLiteral(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %negs = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %negs, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %negs, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call3 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %call2, i32 4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

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

; Function Attrs: nounwind uwtable
define i32 @clause_IsDeclarationClause(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %length, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %length, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %Lit, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call4 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.11

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call6 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %8)
  %call7 = call i32 @term_TopSymbol(%struct.term* %call6)
  %call8 = call i32 @symbol_IsBaseSort(i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %0, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i32 @clause_IsSortTheoryClause(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %1)
  %cmp2 = icmp sgt i32 %call1, 1
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %2)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %call5)
  store %struct.LITERAL_HELP* %call6, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call7 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %5)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  %call9 = call i32 @symbol_IsBaseSort(i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @clause_IsPotentialSortTheoryClause(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp ne i32 %call, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @clause_FirstLitIndex()
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  %cmp3 = icmp slt i32 %1, %call2
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call4, %struct.LITERAL_HELP** %Lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call5 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %5)
  %call6 = call i32 @term_TopSymbol(%struct.term* %call5)
  %call7 = call i32 @symbol_IsBaseSort(i32 %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %for.body
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call8 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %call8)
  %call10 = call i32 @term_IsVariable(%struct.term* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call14 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %9)
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %call14)
  store %struct.LITERAL_HELP* %call15, %struct.LITERAL_HELP** %Lit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call16 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %10)
  %call17 = call i32 @term_TopSymbol(%struct.term* %call16)
  %call18 = call i32 @symbol_IsBaseSort(i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

if.end.21:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.12, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %nc = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %nc, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %nc, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call1 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %3, i32 %4)
  %call2 = call i32 @term_AllArgsAreVar(%struct.term* %call1)
  %tobool = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %tobool, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %nc, align 4
  %cmp3 = icmp eq i32 %7, %8
  %conv = zext i1 %cmp3 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @clause_HasSortInSuccedent(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %l = alloca i32, align 4
  %result = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %result, align 4
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
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, i32* %result, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %Lit, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %8)
  %call4 = call i32 @term_TopSymbol(%struct.term* %call3)
  %call5 = call i32 @symbol_Arity(i32 %call4)
  %cmp6 = icmp eq i32 %call5, 1
  %conv = zext i1 %cmp6 to i32
  store i32 %conv, i32* %result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %10 = load i32, i32* %result, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define i32 @clause_LitsHaveCommonVar(%struct.LITERAL_HELP* %Lit1, %struct.LITERAL_HELP* %Lit2) #0 {
entry:
  %Lit1.addr = alloca %struct.LITERAL_HELP*, align 8
  %Lit2.addr = alloca %struct.LITERAL_HELP*, align 8
  %Vars1 = alloca %struct.LIST_HELP*, align 8
  %Vars2 = alloca %struct.LIST_HELP*, align 8
  %Result = alloca i32, align 4
  store %struct.LITERAL_HELP* %Lit1, %struct.LITERAL_HELP** %Lit1.addr, align 8
  store %struct.LITERAL_HELP* %Lit2, %struct.LITERAL_HELP** %Lit2.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit1.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Vars1, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit2.addr, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %1)
  %call3 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Vars2, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars1, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars2, align 8
  %call4 = call i32 @list_HasIntersection(%struct.LIST_HELP* %2, %struct.LIST_HELP* %3)
  store i32 %call4, i32* %Result, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars1, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars2, align 8
  call void @list_Delete(%struct.LIST_HELP* %5)
  %6 = load i32, i32* %Result, align 4
  ret i32 %6
}

declare i32 @list_HasIntersection(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define void @clause_Print(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Origin = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Exists(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %if.end.70

if.else:                                          ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %2)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %call2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_Origin(%struct.CLAUSE_HELP* %3)
  store i32 %call4, i32* %Origin, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %call5)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_PrintOrigin(%struct.CLAUSE_HELP* %5)
  %6 = load i32, i32* %Origin, align 4
  %cmp = icmp eq i32 %6, 16
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  br label %if.end

if.else.8:                                        ; preds = %if.else
  %call9 = call i32 @putchar(i32 58)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_PrintParentClauses(%struct.CLAUSE_HELP* %7)
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  %call10 = call i32 @putchar(i32 93)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call11 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %8)
  store i32 %call11, i32* %c, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call12 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %9)
  store i32 %call12, i32* %a, align 4
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %10)
  store i32 %call13, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %c, align 4
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call i32 @putchar(i32 32)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %i, align 4
  %call16 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %13, i32 %14)
  store %struct.LITERAL_HELP* %call16, %struct.LITERAL_HELP** %Lit, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_LiteralPrintUnsigned(%struct.LITERAL_HELP* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %17)
  %18 = load i32, i32* %c, align 4
  %19 = load i32, i32* %a, align 4
  %add = add nsw i32 %19, %18
  store i32 %add, i32* %a, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.42, %for.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %a, align 4
  %cmp19 = icmp slt i32 %20, %21
  br i1 %cmp19, label %for.body.20, label %for.end.44

for.body.20:                                      ; preds = %for.cond.18
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  store %struct.LITERAL_HELP* %call21, %struct.LITERAL_HELP** %Lit, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_LiteralPrintUnsigned(%struct.LITERAL_HELP* %24)
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call22 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.31

if.then.24:                                       ; preds = %for.body.20
  %call25 = call i32 @putchar(i32 42)
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call26 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %26)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.24
  %call29 = call i32 @putchar(i32 42)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.24
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.body.20
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call32 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %27, i32 4)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %if.end.31
  %call35 = call i32 @putchar(i32 43)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end.31
  %28 = load i32, i32* %i, align 4
  %add37 = add nsw i32 %28, 1
  %29 = load i32, i32* %a, align 4
  %cmp38 = icmp slt i32 %add37, %29
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end.36
  %call40 = call i32 @putchar(i32 32)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  br label %for.inc.42

for.inc.42:                                       ; preds = %if.end.41
  %30 = load i32, i32* %i, align 4
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, i32* %i, align 4
  br label %for.cond.18

for.end.44:                                       ; preds = %for.cond.18
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %31)
  %32 = load i32, i32* %a, align 4
  %33 = load i32, i32* %s, align 4
  %add46 = add nsw i32 %33, %32
  store i32 %add46, i32* %s, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.66, %for.end.44
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %s, align 4
  %cmp48 = icmp slt i32 %34, %35
  br i1 %cmp48, label %for.body.49, label %for.end.68

for.body.49:                                      ; preds = %for.cond.47
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %37 = load i32, i32* %i, align 4
  %call50 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %36, i32 %37)
  store %struct.LITERAL_HELP* %call50, %struct.LITERAL_HELP** %Lit, align 8
  %38 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_LiteralPrintUnsigned(%struct.LITERAL_HELP* %38)
  %39 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call51 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %39)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.60

if.then.53:                                       ; preds = %for.body.49
  %call54 = call i32 @putchar(i32 42)
  %40 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call55 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %40)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.59

if.then.57:                                       ; preds = %if.then.53
  %call58 = call i32 @putchar(i32 42)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.57, %if.then.53
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %for.body.49
  %41 = load i32, i32* %i, align 4
  %add61 = add nsw i32 %41, 1
  %42 = load i32, i32* %s, align 4
  %cmp62 = icmp slt i32 %add61, %42
  br i1 %cmp62, label %if.then.63, label %if.end.65

if.then.63:                                       ; preds = %if.end.60
  %call64 = call i32 @putchar(i32 32)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.63, %if.end.60
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %43 = load i32, i32* %i, align 4
  %inc67 = add nsw i32 %43, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.47

for.end.68:                                       ; preds = %for.cond.47
  %call69 = call i32 @putchar(i32 46)
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.68, %if.then
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @clause_PrintOrigin(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FPrintOrigin(%struct._IO_FILE* %0, %struct.CLAUSE_HELP* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PrintParentClauses(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan2, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = ptrtoint i8* %call4 to i32
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = ptrtoint i8* %call5 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %4, i32 %6)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Scan1, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = ptrtoint i8* %call11 to i32
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = ptrtoint i8* %call12 to i32
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %11, i32 %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Scan1, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PrintMaxLitsOnly(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %c, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %a, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call5)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %10 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  %call7 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %call6, i32 2)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load i32, i32* %i, align 4
  %call10 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %11, i32 %12)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call10)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %13)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load i32, i32* %c, align 4
  %17 = load i32, i32* %a, align 4
  %add = add nsw i32 %17, %16
  store i32 %add, i32* %a, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.30, %for.end
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %a, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body.16, label %for.end.32

for.body.16:                                      ; preds = %for.cond.14
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %21 = load i32, i32* %i, align 4
  %call17 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %20, i32 %21)
  %call18 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %for.body.16
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call21)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %for.body.16
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %i, align 4
  %call23 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %24, i32 %25)
  %call24 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %call23, i32 2)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.end.22
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %27 = load i32, i32* %i, align 4
  %call27 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %26, i32 %27)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %if.end.22
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %29 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.14

for.end.32:                                       ; preds = %for.cond.14
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %30)
  %31 = load i32, i32* %a, align 4
  %32 = load i32, i32* %s, align 4
  %add34 = add nsw i32 %32, %31
  store i32 %add34, i32* %s, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.51, %for.end.32
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %s, align 4
  %cmp36 = icmp slt i32 %33, %34
  br i1 %cmp36, label %for.body.37, label %for.end.53

for.body.37:                                      ; preds = %for.cond.35
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %36 = load i32, i32* %i, align 4
  %call38 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %35, i32 %36)
  %call39 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.body.37
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %38 = load i32, i32* %i, align 4
  %call42 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %37, i32 %38)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %for.body.37
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call44 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %39, i32 %40)
  %call45 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %call44, i32 2)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.end.43
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %42 = load i32, i32* %i, align 4
  %call48 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %41, i32 %42)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call48)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %43)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.47, %if.end.43
  br label %for.inc.51

for.inc.51:                                       ; preds = %if.end.50
  %44 = load i32, i32* %i, align 4
  %inc52 = add nsw i32 %44, 1
  store i32 %inc52, i32* %i, align 4
  br label %for.cond.35

for.end.53:                                       ; preds = %for.cond.35
  %call54 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

declare i32 @puts(i8*) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrint(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %c, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %a, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %6, i32 %7)
  call void @term_FPrint(%struct._IO_FILE* %5, %struct.term* %call3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* %a, align 4
  %add = add nsw i32 %11, %10
  store i32 %add, i32* %a, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.9, %for.end
  %12 = load i32, i32* %i, align 4
  %13 = load i32, i32* %a, align 4
  %cmp6 = icmp slt i32 %12, %13
  br i1 %cmp6, label %for.body.7, label %for.end.11

for.body.7:                                       ; preds = %for.cond.5
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i, align 4
  %call8 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  call void @term_FPrint(%struct._IO_FILE* %14, %struct.term* %call8)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.7
  %17 = load i32, i32* %i, align 4
  %inc10 = add nsw i32 %17, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond.5

for.end.11:                                       ; preds = %for.cond.5
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load i32, i32* %a, align 4
  %20 = load i32, i32* %s, align 4
  %add13 = add nsw i32 %20, %19
  store i32 %add13, i32* %s, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.18, %for.end.11
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* %s, align 4
  %cmp15 = icmp slt i32 %21, %22
  br i1 %cmp15, label %for.body.16, label %for.end.20

for.body.16:                                      ; preds = %for.cond.14
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %i, align 4
  %call17 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %24, i32 %25)
  call void @term_FPrint(%struct._IO_FILE* %23, %struct.term* %call17)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.16
  %26 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %26, 1
  store i32 %inc19, i32* %i, align 4
  br label %for.cond.14

for.end.20:                                       ; preds = %for.cond.14
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call21 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %27)
  ret void
}

declare void @term_FPrint(%struct._IO_FILE*, %struct.term*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_GetOriginFromString(i8* %RuleName) #0 {
entry:
  %retval = alloca i32, align 4
  %RuleName.addr = alloca i8*, align 8
  store i8* %RuleName, i8** %RuleName.addr, align 8
  %0 = load i8*, i8** %RuleName.addr, align 8
  %call = call i32 @string_Equal(i8* %0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %RuleName.addr, align 8
  %call1 = call i32 @string_Equal(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %RuleName.addr, align 8
  %call5 = call i32 @string_Equal(i8* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 2, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else.4
  %3 = load i8*, i8** %RuleName.addr, align 8
  %call9 = call i32 @string_Equal(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 3, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %RuleName.addr, align 8
  %call13 = call i32 @string_Equal(i8* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0))
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 4, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.else.12
  %5 = load i8*, i8** %RuleName.addr, align 8
  %call17 = call i32 @string_Equal(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0))
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 5, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.16
  %6 = load i8*, i8** %RuleName.addr, align 8
  %call21 = call i32 @string_Equal(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0))
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 8, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.else.20
  %7 = load i8*, i8** %RuleName.addr, align 8
  %call25 = call i32 @string_Equal(i8* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  store i32 6, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.24
  %8 = load i8*, i8** %RuleName.addr, align 8
  %call29 = call i32 @string_Equal(i8* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0))
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  store i32 7, i32* %retval
  br label %return

if.else.32:                                       ; preds = %if.else.28
  %9 = load i8*, i8** %RuleName.addr, align 8
  %call33 = call i32 @string_Equal(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0))
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 9, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.32
  %10 = load i8*, i8** %RuleName.addr, align 8
  %call37 = call i32 @string_Equal(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0))
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.36
  store i32 13, i32* %retval
  br label %return

if.else.40:                                       ; preds = %if.else.36
  %11 = load i8*, i8** %RuleName.addr, align 8
  %call41 = call i32 @string_Equal(i8* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0))
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else.40
  store i32 10, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.40
  %12 = load i8*, i8** %RuleName.addr, align 8
  %call45 = call i32 @string_Equal(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0))
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.else.44
  store i32 11, i32* %retval
  br label %return

if.else.48:                                       ; preds = %if.else.44
  %13 = load i8*, i8** %RuleName.addr, align 8
  %call49 = call i32 @string_Equal(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0))
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %if.else.48
  store i32 12, i32* %retval
  br label %return

if.else.52:                                       ; preds = %if.else.48
  %14 = load i8*, i8** %RuleName.addr, align 8
  %call53 = call i32 @string_Equal(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0))
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %if.else.52
  store i32 14, i32* %retval
  br label %return

if.else.56:                                       ; preds = %if.else.52
  %15 = load i8*, i8** %RuleName.addr, align 8
  %call57 = call i32 @string_Equal(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0))
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %if.else.56
  store i32 15, i32* %retval
  br label %return

if.else.60:                                       ; preds = %if.else.56
  %16 = load i8*, i8** %RuleName.addr, align 8
  %call61 = call i32 @string_Equal(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0))
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %if.else.60
  store i32 16, i32* %retval
  br label %return

if.else.64:                                       ; preds = %if.else.60
  %17 = load i8*, i8** %RuleName.addr, align 8
  %call65 = call i32 @string_Equal(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0))
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.else.68

if.then.67:                                       ; preds = %if.else.64
  store i32 21, i32* %retval
  br label %return

if.else.68:                                       ; preds = %if.else.64
  %18 = load i8*, i8** %RuleName.addr, align 8
  %call69 = call i32 @string_Equal(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0))
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %if.else.68
  store i32 22, i32* %retval
  br label %return

if.else.72:                                       ; preds = %if.else.68
  %19 = load i8*, i8** %RuleName.addr, align 8
  %call73 = call i32 @string_Equal(i8* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %tobool74 = icmp ne i32 %call73, 0
  br i1 %tobool74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %if.else.72
  store i32 17, i32* %retval
  br label %return

if.else.76:                                       ; preds = %if.else.72
  %20 = load i8*, i8** %RuleName.addr, align 8
  %call77 = call i32 @string_Equal(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %if.else.76
  store i32 18, i32* %retval
  br label %return

if.else.80:                                       ; preds = %if.else.76
  %21 = load i8*, i8** %RuleName.addr, align 8
  %call81 = call i32 @string_Equal(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0))
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.else.80
  store i32 19, i32* %retval
  br label %return

if.else.84:                                       ; preds = %if.else.80
  %22 = load i8*, i8** %RuleName.addr, align 8
  %call85 = call i32 @string_Equal(i8* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0))
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %if.else.84
  store i32 20, i32* %retval
  br label %return

if.else.88:                                       ; preds = %if.else.84
  %23 = load i8*, i8** %RuleName.addr, align 8
  %call89 = call i32 @string_Equal(i8* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0))
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.else.92

if.then.91:                                       ; preds = %if.else.88
  store i32 23, i32* %retval
  br label %return

if.else.92:                                       ; preds = %if.else.88
  %24 = load i8*, i8** %RuleName.addr, align 8
  %call93 = call i32 @string_Equal(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0))
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.else.92
  store i32 24, i32* %retval
  br label %return

if.else.96:                                       ; preds = %if.else.92
  %25 = load i8*, i8** %RuleName.addr, align 8
  %call97 = call i32 @string_Equal(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0))
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %if.else.96
  store i32 25, i32* %retval
  br label %return

if.else.100:                                      ; preds = %if.else.96
  %26 = load i8*, i8** %RuleName.addr, align 8
  %call101 = call i32 @string_Equal(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0))
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.else.104

if.then.103:                                      ; preds = %if.else.100
  store i32 26, i32* %retval
  br label %return

if.else.104:                                      ; preds = %if.else.100
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call105 = call i32 @fflush(%struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.37, i32 0, i32 0), i32 3811)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.38, i32 0, i32 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call107 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %29)
  call void @misc_DumpCore()
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.104, %if.then.103, %if.then.99, %if.then.95, %if.then.91, %if.then.87, %if.then.83, %if.then.79, %if.then.75, %if.then.71, %if.then.67, %if.then.63, %if.then.59, %if.then.55, %if.then.51, %if.then.47, %if.then.43, %if.then.39, %if.then.35, %if.then.31, %if.then.27, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @string_Equal(i8* %S1, i8* %S2) #1 {
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

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.83, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #8
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FPrintOrigin(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Origin(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %Result, align 4
  %1 = load i32, i32* %Result, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.10
    i32 8, label %sw.bb.12
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.16
    i32 9, label %sw.bb.18
    i32 13, label %sw.bb.20
    i32 10, label %sw.bb.22
    i32 11, label %sw.bb.24
    i32 12, label %sw.bb.26
    i32 14, label %sw.bb.28
    i32 15, label %sw.bb.30
    i32 16, label %sw.bb.32
    i32 21, label %sw.bb.34
    i32 22, label %sw.bb.36
    i32 17, label %sw.bb.38
    i32 18, label %sw.bb.40
    i32 19, label %sw.bb.42
    i32 20, label %sw.bb.44
    i32 23, label %sw.bb.46
    i32 24, label %sw.bb.48
    i32 25, label %sw.bb.50
    i32 26, label %sw.bb.52
    i32 27, label %sw.bb.54
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), %struct._IO_FILE* %3)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %4)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %5)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %6)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %7)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call13 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %8)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %9)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %10)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %11)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %12)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call23 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %13)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %16)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %17)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %sw.epilog

sw.bb.34:                                         ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call35 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %entry
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %20)
  br label %sw.epilog

sw.bb.38:                                         ; preds = %entry
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %21)
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %22)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %entry
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), %struct._IO_FILE* %23)
  br label %sw.epilog

sw.bb.44:                                         ; preds = %entry
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %sw.epilog

sw.bb.48:                                         ; preds = %entry
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), %struct._IO_FILE* %26)
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call51 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), %struct._IO_FILE* %28)
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call55 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call56 = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.37, i32 0, i32 0), i32 3859)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.41, i32 0, i32 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %32)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.48, %sw.bb.46, %sw.bb.44, %sw.bb.42, %sw.bb.40, %sw.bb.38, %sw.bb.36, %sw.bb.34, %sw.bb.32, %sw.bb.30, %sw.bb.28, %sw.bb.26, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %sw.bb.16, %sw.bb.14, %sw.bb.12, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PrintVerbose(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %c, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %a, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %s, align 4
  %3 = load i32, i32* %c, align 4
  %4 = load i32, i32* %a, align 4
  %5 = load i32, i32* %s, align 4
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.42, i32 0, i32 0), i32 %3, i32 %4, i32 %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %6)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0), i32 %call4)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %7)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i32 0, i32 0), i32 %call6)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call8 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %8, i32 1)
  %tobool = icmp ne i32 %call8, 0
  %cond = select i1 %tobool, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %9, i32 2)
  %tobool10 = icmp ne i32 %call9, 0
  %cond11 = select i1 %tobool10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i32 0, i32 0)
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8* %cond, i8* %cond11)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %10)
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

; Function Attrs: nounwind uwtable
define %struct.CLAUSE_HELP* @clause_GetNumberedCl(i32 %number, %struct.LIST_HELP* %ClList) #0 {
entry:
  %retval = alloca %struct.CLAUSE_HELP*, align 8
  %number.addr = alloca i32, align 4
  %ClList.addr = alloca %struct.LIST_HELP*, align 8
  store i32 %number, i32* %number.addr, align 4
  store %struct.LIST_HELP* %ClList, %struct.LIST_HELP** %ClList.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %2)
  %3 = load i32, i32* %number.addr, align 4
  %cmp = icmp ne i32 %call2, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %ClList.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList.addr, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.else

if.then:                                          ; preds = %while.end
  store %struct.CLAUSE_HELP* null, %struct.CLAUSE_HELP** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClList.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %8, %struct.CLAUSE_HELP** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %retval
  ret %struct.CLAUSE_HELP* %9
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_NumberSort(%struct.LIST_HELP* %List) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP* %0, i32 (i8*, i8*)* bitcast (i32 (%struct.CLAUSE_HELP*, %struct.CLAUSE_HELP*)* @clause_NumberLower to i32 (i8*, i8*)*))
  ret %struct.LIST_HELP* %call
}

declare %struct.LIST_HELP* @list_Sort(%struct.LIST_HELP*, i32 (i8*, i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_NumberLower(%struct.CLAUSE_HELP* %A, %struct.CLAUSE_HELP* %B) #1 {
entry:
  %A.addr = alloca %struct.CLAUSE_HELP*, align 8
  %B.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %A, %struct.CLAUSE_HELP** %A.addr, align 8
  store %struct.CLAUSE_HELP* %B, %struct.CLAUSE_HELP** %B.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %A.addr, align 8
  %call = call i32 @clause_Number(%struct.CLAUSE_HELP* %0)
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %B.addr, align 8
  %call1 = call i32 @clause_Number(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @clause_NumberDelete(%struct.LIST_HELP* %List, i32 %Number) #0 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Number.addr = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 %Number, i32* %Number.addr, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %3)
  %4 = load i32, i32* %Number.addr, align 4
  %cmp = icmp eq i32 %call2, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Scan2, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan1, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %call5 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %7, i8* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %List.addr, align 8
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  ret %struct.LIST_HELP* %10
}

declare %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @clause_NumberOfMaxAntecedentLits(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 0, i32* %Result, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ule i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call3 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %Result, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %Result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @clause_SelectLiteral(%struct.CLAUSE_HELP* %Clause, i32* %Flags) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %1, i32 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.24, label %land.lhs.true.3

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %2)
  %cmp = icmp sgt i32 %call4, 0
  br i1 %cmp, label %land.lhs.true.5, label %if.end.24

land.lhs.true.5:                                  ; preds = %land.lhs.true.3
  %3 = load i32*, i32** %Flags.addr, align 8
  %call6 = call i32 @flag_GetFlagValue(i32* %3, i32 38)
  %cmp7 = icmp eq i32 %call6, 2
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %4 = load i32*, i32** %Flags.addr, align 8
  %call8 = call i32 @flag_GetFlagValue(i32* %4, i32 38)
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %land.lhs.true.10, label %if.end.24

land.lhs.true.10:                                 ; preds = %lor.lhs.false
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call11 = call i32 @clause_NumberOfMaxLits(%struct.CLAUSE_HELP* %5)
  %cmp12 = icmp ugt i32 %call11, 1
  br i1 %cmp12, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true.10, %land.lhs.true.5
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %6)
  store i32 %call13, i32* %n, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call14 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call14, i32* %i, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %i, align 4
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.LITERAL_HELP* %call15, %struct.LITERAL_HELP** %Lit, align 8
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n, align 4
  %cmp16 = icmp ule i32 %11, %12
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call17 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %13)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %15 = load i32, i32* %i, align 4
  %call18 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %14, i32 %15)
  %call19 = call i32 @clause_LiteralWeight(%struct.LITERAL_HELP* %call18)
  %cmp20 = icmp ult i32 %call17, %call19
  br i1 %cmp20, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %for.body
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %17 = load i32, i32* %i, align 4
  %call22 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %16, i32 %17)
  store %struct.LITERAL_HELP* %call22, %struct.LITERAL_HELP** %Lit, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %i, align 4
  %inc23 = add i32 %18, 1
  store i32 %inc23, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_LiteralSetFlag(%struct.LITERAL_HELP* %19, i32 4)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %20, i32 2)
  br label %if.end.24

if.end.24:                                        ; preds = %for.end, %land.lhs.true.10, %lor.lhs.false, %land.lhs.true.3, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @clause_NumberOfMaxLits(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 0, i32* %Result, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp ult i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %call3 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %Result, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %Result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, i32* %i, align 4
  %inc4 = add i32 %7, 1
  store i32 %inc4, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %Result, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @clause_SetSpecialFlags(%struct.CLAUSE_HELP* %Clause, i32 %SortDecreasing, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %SortDecreasing.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %SortDecreasing, i32* %SortDecreasing.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load i32, i32* %SortDecreasing.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call i32 @clause_IsSortTheoryClause(%struct.CLAUSE_HELP* %1, i32* %2, i32* %3)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %4, i32 %call3)
  %call5 = call i32 @term_TopSymbol(%struct.term* %call4)
  %call6 = call i32 @symbol_HasProperty(i32 %call5, i32 32)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %6, i32 32)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_HasProperty(i32 %ActSymbol, i32 %Property) #1 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  %props = getelementptr inbounds %struct.signature, %struct.signature* %call1, i32 0, i32 4
  %1 = load i32, i32* %props, align 4
  %2 = load i32, i32* %Property.addr, align 4
  %and = and i32 %1, %2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @clause_ContainsPotPredDef(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence, i32* %Index, %struct.LIST_HELP** %Pair) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Index.addr = alloca i32*, align 8
  %Pair.addr = alloca %struct.LIST_HELP**, align 8
  %i = alloca i32, align 4
  %lit = alloca %struct.LITERAL_HELP*, align 8
  %atom = alloca %struct.term*, align 8
  %pair = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %ok = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  %j42 = alloca i32, align 4
  %predvars = alloca %struct.LIST_HELP*, align 8
  %vars = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32* %Index, i32** %Index.addr, align 8
  store %struct.LIST_HELP** %Pair, %struct.LIST_HELP*** %Pair.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp ult i32 %1, %call1
  br i1 %cmp, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %lit, align 8
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %lit, align 8
  %call3 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %5)
  store %struct.term* %call3, %struct.term** %atom, align 8
  %6 = load %struct.term*, %struct.term** %atom, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %6)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.110

if.then:                                          ; preds = %for.body
  store i32 1, i32* %ok, align 4
  %call6 = call %struct.LIST_HELP* @list_Nil()
  %7 = bitcast %struct.LIST_HELP* %call6 to i8*
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %8 = bitcast %struct.LIST_HELP* %call7 to i8*
  %call8 = call %struct.LIST_HELP* @list_PairCreate(i8* %7, i8* %8)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %pair, align 8
  %9 = load %struct.term*, %struct.term** %atom, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %l, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %for.cond.10
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call14 to %struct.term*
  %call15 = call i32 @term_IsStandardVariable(%struct.term* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %for.body.13
  store i32 0, i32* %ok, align 4
  br label %for.end

if.end:                                           ; preds = %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %l, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.17, %for.cond.10
  %14 = load i32, i32* %ok, align 4
  %tobool19 = icmp ne i32 %14, 0
  br i1 %tobool19, label %if.then.20, label %if.end.39

if.then.20:                                       ; preds = %for.end
  store i32 0, i32* %count, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.33, %if.then.20
  %15 = load i32, i32* %j, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call22 = call i32 @clause_Length(%struct.CLAUSE_HELP* %16)
  %cmp23 = icmp ult i32 %15, %call22
  br i1 %cmp23, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.21
  %17 = load i32, i32* %count, align 4
  %cmp24 = icmp ult i32 %17, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.21
  %18 = phi i1 [ false, %for.cond.21 ], [ %cmp24, %land.rhs ]
  br i1 %18, label %for.body.25, label %for.end.35

for.body.25:                                      ; preds = %land.end
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load i32, i32* %j, align 4
  %call26 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %19, i32 %20)
  store %struct.term* %call26, %struct.term** %t, align 8
  %21 = load %struct.term*, %struct.term** %t, align 8
  %call27 = call i32 @term_TopSymbol(%struct.term* %21)
  %22 = load %struct.term*, %struct.term** %atom, align 8
  %call28 = call i32 @term_TopSymbol(%struct.term* %22)
  %call29 = call i32 @symbol_Equal(i32 %call27, i32 %call28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %for.body.25
  %23 = load i32, i32* %count, align 4
  %inc = add i32 %23, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %for.body.25
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %24 = load i32, i32* %j, align 4
  %inc34 = add i32 %24, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.21

for.end.35:                                       ; preds = %land.end
  %25 = load i32, i32* %count, align 4
  %cmp36 = icmp ugt i32 %25, 1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.end.35
  store i32 0, i32* %ok, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %for.end.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.end
  %26 = load i32, i32* %ok, align 4
  %tobool40 = icmp ne i32 %26, 0
  br i1 %tobool40, label %if.then.41, label %if.end.104

if.then.41:                                       ; preds = %if.end.39
  %27 = load %struct.term*, %struct.term** %atom, align 8
  %call43 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %27)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %predvars, align 8
  store i32 0, i32* %j42, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.69, %if.then.41
  %28 = load i32, i32* %j42, align 4
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call45 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %29)
  %cmp46 = icmp ult i32 %28, %call45
  br i1 %cmp46, label %land.rhs.47, label %land.end.49

land.rhs.47:                                      ; preds = %for.cond.44
  %30 = load i32, i32* %ok, align 4
  %tobool48 = icmp ne i32 %30, 0
  br label %land.end.49

land.end.49:                                      ; preds = %land.rhs.47, %for.cond.44
  %31 = phi i1 [ false, %for.cond.44 ], [ %tobool48, %land.rhs.47 ]
  br i1 %31, label %for.body.50, label %for.end.71

for.body.50:                                      ; preds = %land.end.49
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %34 = load i32, i32* %j42, align 4
  %call51 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %33, i32 %34)
  %35 = bitcast %struct.term* %call51 to i8*
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call52 = call i8* @list_PairFirst(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call52 to %struct.LIST_HELP*
  %call53 = call %struct.LIST_HELP* @list_Cons(i8* %35, %struct.LIST_HELP* %37)
  %38 = bitcast %struct.LIST_HELP* %call53 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %32, i8* %38)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %j42, align 4
  %call54 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %39, i32 %40)
  %call55 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %call54)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %vars, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  store %struct.LIST_HELP* %41, %struct.LIST_HELP** %l, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.66, %for.body.50
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %42)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot59 = xor i1 %tobool58, true
  br i1 %lnot59, label %for.body.60, label %for.end.68

for.body.60:                                      ; preds = %for.cond.56
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predvars, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call61 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call61 to %struct.term*
  %call62 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %43, %struct.term* %45)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.65, label %if.then.64

if.then.64:                                       ; preds = %for.body.60
  store i32 0, i32* %ok, align 4
  br label %for.end.68

if.end.65:                                        ; preds = %for.body.60
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call67 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %l, align 8
  br label %for.cond.56

for.end.68:                                       ; preds = %if.then.64, %for.cond.56
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %47)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.end.68
  %48 = load i32, i32* %j42, align 4
  %inc70 = add i32 %48, 1
  store i32 %inc70, i32* %j42, align 4
  br label %for.cond.44

for.end.71:                                       ; preds = %land.end.49
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call72 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %49)
  store i32 %call72, i32* %j42, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.101, %for.end.71
  %50 = load i32, i32* %j42, align 4
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call74 = call i32 @clause_Length(%struct.CLAUSE_HELP* %51)
  %cmp75 = icmp ult i32 %50, %call74
  br i1 %cmp75, label %land.rhs.76, label %land.end.78

land.rhs.76:                                      ; preds = %for.cond.73
  %52 = load i32, i32* %ok, align 4
  %tobool77 = icmp ne i32 %52, 0
  br label %land.end.78

land.end.78:                                      ; preds = %land.rhs.76, %for.cond.73
  %53 = phi i1 [ false, %for.cond.73 ], [ %tobool77, %land.rhs.76 ]
  br i1 %53, label %for.body.79, label %for.end.103

for.body.79:                                      ; preds = %land.end.78
  %54 = load i32, i32* %j42, align 4
  %55 = load i32, i32* %i, align 4
  %cmp80 = icmp ne i32 %54, %55
  br i1 %cmp80, label %if.then.81, label %if.end.100

if.then.81:                                       ; preds = %for.body.79
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %58 = load i32, i32* %j42, align 4
  %call82 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %57, i32 %58)
  %59 = bitcast %struct.term* %call82 to i8*
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call83 = call i8* @list_PairSecond(%struct.LIST_HELP* %60)
  %61 = bitcast i8* %call83 to %struct.LIST_HELP*
  %call84 = call %struct.LIST_HELP* @list_Cons(i8* %59, %struct.LIST_HELP* %61)
  call void @list_Rplacd(%struct.LIST_HELP* %56, %struct.LIST_HELP* %call84)
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %63 = load i32, i32* %j42, align 4
  %call85 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %62, i32 %63)
  %call86 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %call85)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %vars, align 8
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  store %struct.LIST_HELP* %64, %struct.LIST_HELP** %l, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.97, %if.then.81
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call88 = call i32 @list_Empty(%struct.LIST_HELP* %65)
  %tobool89 = icmp ne i32 %call88, 0
  %lnot90 = xor i1 %tobool89, true
  br i1 %lnot90, label %for.body.91, label %for.end.99

for.body.91:                                      ; preds = %for.cond.87
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predvars, align 8
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call92 = call i8* @list_Car(%struct.LIST_HELP* %67)
  %68 = bitcast i8* %call92 to %struct.term*
  %call93 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %66, %struct.term* %68)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %for.body.91
  store i32 0, i32* %ok, align 4
  br label %for.end.99

if.end.96:                                        ; preds = %for.body.91
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call98 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %69)
  store %struct.LIST_HELP* %call98, %struct.LIST_HELP** %l, align 8
  br label %for.cond.87

for.end.99:                                       ; preds = %if.then.95, %for.cond.87
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %70)
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.body.79
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %71 = load i32, i32* %j42, align 4
  %inc102 = add i32 %71, 1
  store i32 %inc102, i32* %j42, align 4
  br label %for.cond.73

for.end.103:                                      ; preds = %land.end.78
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %72)
  br label %if.end.104

if.end.104:                                       ; preds = %for.end.103, %if.end.39
  %73 = load i32, i32* %ok, align 4
  %tobool105 = icmp ne i32 %73, 0
  br i1 %tobool105, label %if.then.106, label %if.else

if.then.106:                                      ; preds = %if.end.104
  %74 = load i32, i32* %i, align 4
  %75 = load i32*, i32** %Index.addr, align 8
  store i32 %74, i32* %75, align 4
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %77 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Pair.addr, align 8
  store %struct.LIST_HELP* %76, %struct.LIST_HELP** %77, align 8
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.104
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call107 = call i8* @list_PairFirst(%struct.LIST_HELP* %78)
  %79 = bitcast i8* %call107 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %79)
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call108 = call i8* @list_PairSecond(%struct.LIST_HELP* %80)
  %81 = bitcast i8* %call108 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %81)
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %82)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %for.body
  br label %for.inc.111

for.inc.111:                                      ; preds = %if.end.110
  %83 = load i32, i32* %i, align 4
  %inc112 = add i32 %83, 1
  store i32 %inc112, i32* %i, align 4
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.113, %if.then.106
  %84 = load i32, i32* %retval
  ret i32 %84
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsStandardVariable(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsStandardVariable(i32 %call)
  ret i32 %call1
}

declare %struct.LIST_HELP* @fol_FreeVariables(%struct.term*) #2

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
define internal i32 @term_ListContainsTerm(%struct.LIST_HELP* %List, %struct.term* %Term) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = bitcast %struct.term* %1 to i8*
  %call = call i32 @list_Member(%struct.LIST_HELP* %0, i8* %2, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  ret i32 %call
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

; Function Attrs: nounwind uwtable
define i32 @clause_IsPartOfDefinition(%struct.CLAUSE_HELP* %Clause, %struct.term* %Predicate, i32* %Index, %struct.LIST_HELP* %Pair) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Predicate.addr = alloca %struct.term*, align 8
  %Index.addr = alloca i32*, align 8
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  %predindex = alloca i32, align 4
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %Predicate, %struct.term** %Predicate.addr, align 8
  store i32* %Index, i32** %Index.addr, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  store i32 1, i32* %ok, align 4
  %call = call i32 @clause_FirstLitIndex()
  store i32 %call, i32* %predindex, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %predindex, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  %cmp = icmp ult i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %predindex, align 4
  %call2 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %3, i32 %4)
  %call3 = call i32 @term_Equal(%struct.term* %2, %struct.term* %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, i32* %predindex, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %predindex, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %6 = load i32, i32* %predindex, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  %cmp5 = icmp eq i32 %6, %call4
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %8 = load i32, i32* %predindex, align 4
  %9 = load i32*, i32** %Index.addr, align 8
  store i32 %8, i32* %9, align 4
  %call8 = call i32 @clause_FirstLitIndex()
  store i32 %call8, i32* %i, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.23, %if.end.7
  %10 = load i32, i32* %i, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call10 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %11)
  %cmp11 = icmp ult i32 %10, %call10
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %12 = load i32, i32* %ok, align 4
  %tobool12 = icmp ne i32 %12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %13 = phi i1 [ false, %for.cond.9 ], [ %tobool12, %land.rhs ]
  br i1 %13, label %for.body.13, label %for.end.25

for.body.13:                                      ; preds = %land.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %predindex, align 4
  %cmp14 = icmp ne i32 %14, %15
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %for.body.13
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call16 = call i8* @list_PairSecond(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call16 to %struct.LIST_HELP*
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %19 = load i32, i32* %i, align 4
  %call17 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %18, i32 %19)
  %call18 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %17, %struct.term* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.15
  store i32 0, i32* %ok, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %if.then.15
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %for.body.13
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %20 = load i32, i32* %i, align 4
  %inc24 = add i32 %20, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.9

for.end.25:                                       ; preds = %land.end
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call26 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %21)
  store i32 %call26, i32* %i, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.40, %for.end.25
  %22 = load i32, i32* %i, align 4
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call28 = call i32 @clause_Length(%struct.CLAUSE_HELP* %23)
  %cmp29 = icmp ult i32 %22, %call28
  br i1 %cmp29, label %land.rhs.30, label %land.end.32

land.rhs.30:                                      ; preds = %for.cond.27
  %24 = load i32, i32* %ok, align 4
  %tobool31 = icmp ne i32 %24, 0
  br label %land.end.32

land.end.32:                                      ; preds = %land.rhs.30, %for.cond.27
  %25 = phi i1 [ false, %for.cond.27 ], [ %tobool31, %land.rhs.30 ]
  br i1 %25, label %for.body.33, label %for.end.42

for.body.33:                                      ; preds = %land.end.32
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call34 = call i8* @list_PairFirst(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call34 to %struct.LIST_HELP*
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %29 = load i32, i32* %i, align 4
  %call35 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %28, i32 %29)
  %call36 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %27, %struct.term* %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.39, label %if.then.38

if.then.38:                                       ; preds = %for.body.33
  store i32 0, i32* %ok, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %for.body.33
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %30 = load i32, i32* %i, align 4
  %inc41 = add i32 %30, 1
  store i32 %inc41, i32* %i, align 4
  br label %for.cond.27

for.end.42:                                       ; preds = %land.end.32
  %31 = load i32, i32* %ok, align 4
  %tobool43 = icmp ne i32 %31, 0
  br i1 %tobool43, label %if.else, label %if.then.44

if.then.44:                                       ; preds = %for.end.42
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %for.end.42
  store i32 0, i32* %i, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.55, %if.else
  %32 = load i32, i32* %i, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call46 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %33)
  %cmp47 = icmp ult i32 %32, %call46
  br i1 %cmp47, label %for.body.48, label %for.end.57

for.body.48:                                      ; preds = %for.cond.45
  %34 = load i32, i32* %i, align 4
  %35 = load i32, i32* %predindex, align 4
  %cmp49 = icmp ne i32 %34, %35
  br i1 %cmp49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %for.body.48
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call51 = call i8* @list_PairSecond(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call51 to %struct.LIST_HELP*
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %i, align 4
  %call52 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %39, i32 %40)
  %41 = bitcast %struct.term* %call52 to i8*
  %call53 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %38, i8* %41, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  call void @list_Rplacd(%struct.LIST_HELP* %36, %struct.LIST_HELP* %call53)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %for.body.48
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %42 = load i32, i32* %i, align 4
  %inc56 = add i32 %42, 1
  store i32 %inc56, i32* %i, align 4
  br label %for.cond.45

for.end.57:                                       ; preds = %for.cond.45
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call58 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %43)
  store i32 %call58, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.66, %for.end.57
  %44 = load i32, i32* %i, align 4
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call60 = call i32 @clause_Length(%struct.CLAUSE_HELP* %45)
  %cmp61 = icmp ult i32 %44, %call60
  br i1 %cmp61, label %for.body.62, label %for.end.68

for.body.62:                                      ; preds = %for.cond.59
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call63 = call i8* @list_PairFirst(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call63 to %struct.LIST_HELP*
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %50 = load i32, i32* %i, align 4
  %call64 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %49, i32 %50)
  %51 = bitcast %struct.term* %call64 to i8*
  %call65 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %48, i8* %51, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  %52 = bitcast %struct.LIST_HELP* %call65 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %46, i8* %52)
  br label %for.inc.66

for.inc.66:                                       ; preds = %for.body.62
  %53 = load i32, i32* %i, align 4
  %inc67 = add i32 %53, 1
  store i32 %inc67, i32* %i, align 4
  br label %for.cond.59

for.end.68:                                       ; preds = %for.cond.59
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.68, %if.then.44, %if.then.6
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrintRule(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %Literal = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %antecedent = alloca %struct.LIST_HELP*, align 8
  %succedent = alloca %struct.LIST_HELP*, align 8
  %constraints = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %constraints, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %antecedent, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %succedent, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i, align 4
  %call4 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %3, i32 %4)
  store %struct.term* %call4, %struct.term** %Literal, align 8
  %5 = load %struct.term*, %struct.term** %Literal, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  %call6 = call i32 @fol_Not()
  %call7 = call i32 @symbol_Equal(i32 %call5, i32 %call6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.else.20

if.then:                                          ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %Literal, align 8
  %call8 = call %struct.term* @fol_Atom(%struct.term* %6)
  %call9 = call i32 @term_TopSymbol(%struct.term* %call8)
  %call10 = call i32 @symbol_Arity(i32 %call9)
  %cmp11 = icmp eq i32 %call10, 1
  br i1 %cmp11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %7 = load %struct.term*, %struct.term** %Literal, align 8
  %call12 = call %struct.term* @fol_Atom(%struct.term* %7)
  %call13 = call %struct.term* @term_FirstArgument(%struct.term* %call12)
  %call14 = call i32 @term_TopSymbol(%struct.term* %call13)
  %call15 = call i32 @symbol_IsVariable(i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %land.lhs.true
  %8 = load %struct.term*, %struct.term** %Literal, align 8
  %9 = bitcast %struct.term* %8 to i8*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraints, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %constraints, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %11 = load %struct.term*, %struct.term** %Literal, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %antecedent, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.22

if.else.20:                                       ; preds = %for.body
  %14 = load %struct.term*, %struct.term** %Literal, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %succedent, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.20, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraints, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.30, %for.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %for.body.26, label %for.end.32

for.body.26:                                      ; preds = %for.cond.23
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call27 to %struct.term*
  %call28 = call %struct.term* @fol_Atom(%struct.term* %22)
  call void @term_FPrint(%struct._IO_FILE* %20, %struct.term* %call28)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call29 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %23)
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.26
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.23

for.end.32:                                       ; preds = %for.cond.23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  store %struct.LIST_HELP* %26, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.48, %for.end.32
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool36 = icmp ne i32 %call35, 0
  %lnot37 = xor i1 %tobool36, true
  br i1 %lnot37, label %for.body.38, label %for.end.50

for.body.38:                                      ; preds = %for.cond.34
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call40 to %struct.term*
  %call41 = call %struct.term* @fol_Atom(%struct.term* %31)
  call void @term_FPrint(%struct._IO_FILE* %29, %struct.term* %call41)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %call42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %for.body.38
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call46 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %33)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %for.body.38
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.34

for.end.50:                                       ; preds = %for.cond.34
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call51 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0), %struct._IO_FILE* %35)
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  store %struct.LIST_HELP* %36, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %for.end.50
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br i1 %lnot55, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %for.cond.52
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call57 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call58 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call58 to %struct.term*
  call void @term_FPrint(%struct._IO_FILE* %39, %struct.term* %41)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call60 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call62 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %44)
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraints, align 8
  call void @list_Delete(%struct.LIST_HELP* %46)
  ret void
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

; Function Attrs: nounwind uwtable
define void @clause_FPrintOtter(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %clause) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %clause, %struct.CLAUSE_HELP** %clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load i32, i32* %n, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), %struct._IO_FILE* %2)
  br label %if.end.30

if.else:                                          ; preds = %entry
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %3, %4
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %Lit, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %7)
  store %struct.term* %call4, %struct.term** %Atom, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call5 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %for.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %9)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %for.body
  %10 = load %struct.term*, %struct.term** %Atom, align 8
  %call8 = call i32 @fol_IsEquality(%struct.term* %10)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.24

if.then.10:                                       ; preds = %if.end
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call11 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.then.10
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.then.10
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load %struct.term*, %struct.term** %Atom, align 8
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %14)
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %13, %struct.term* %call16)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), %struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call18 = call %struct.term* @term_SecondArgument(%struct.term* %17)
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %16, %struct.term* %call18)
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call19 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call22 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.15
  br label %if.end.25

if.else.24:                                       ; preds = %if.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_FPrintOtterPrefix(%struct._IO_FILE* %20, %struct.term* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.end.23
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %23, 2
  %cmp26 = icmp sle i32 %22, %sub
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %if.then
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0), %struct._IO_FILE* %26)
  ret void
}

declare void @term_FPrintOtterPrefix(%struct._IO_FILE*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrintCnfDFG(%struct._IO_FILE* %File, i32 %OnlyProductive, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Conjectures, i32* %Flags, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %OnlyProductive.addr = alloca i32, align 4
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %OnlyProductive, i32* %OnlyProductive.addr, align 4
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Conjectures, %struct.LIST_HELP** %Conjectures.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  %tobool = icmp ne %struct.LIST_HELP* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP** %Clause, align 8
  %6 = load i32, i32* %OnlyProductive.addr, align 4
  %tobool4 = icmp ne i32 %6, 0
  br i1 %tobool4, label %lor.lhs.false, label %if.then.9

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call7 = call i32 @clause_HasSelectedLiteral(%struct.CLAUSE_HELP* %8, i32* %9, i32* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true, %for.body
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_FPrintDFG(%struct._IO_FILE* %11, %struct.CLAUSE_HELP* %12, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %14)
  br label %if.end.12

if.end.12:                                        ; preds = %for.end, %entry
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  %tobool13 = icmp ne %struct.LIST_HELP* %15, null
  br i1 %tobool13, label %if.then.14, label %if.end.35

if.then.14:                                       ; preds = %if.end.12
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.31, %if.then.14
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot19 = xor i1 %tobool18, true
  br i1 %lnot19, label %for.body.20, label %for.end.33

for.body.20:                                      ; preds = %for.cond.16
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call21 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %20, %struct.CLAUSE_HELP** %Clause, align 8
  %21 = load i32, i32* %OnlyProductive.addr, align 4
  %tobool22 = icmp ne i32 %21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then.29

lor.lhs.false.23:                                 ; preds = %for.body.20
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call24 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %22)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.30

land.lhs.true.26:                                 ; preds = %lor.lhs.false.23
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %24 = load i32*, i32** %Flags.addr, align 8
  %25 = load i32*, i32** %Precedence.addr, align 8
  %call27 = call i32 @clause_HasSelectedLiteral(%struct.CLAUSE_HELP* %23, i32* %24, i32* %25)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %land.lhs.true.26, %for.body.20
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_FPrintDFG(%struct._IO_FILE* %26, %struct.CLAUSE_HELP* %27, i32 0)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.26, %lor.lhs.false.23
  br label %for.inc.31

for.inc.31:                                       ; preds = %if.end.30
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.16

for.end.33:                                       ; preds = %for.cond.16
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call34 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.33, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FPrintDFG(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause, i32 %Justif) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Justif.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Iter = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Justif, i32* %Justif.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), %struct._IO_FILE* %1)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Variables, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call3)
  %call5 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %4, %struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Variables, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.23, label %if.then

if.then:                                          ; preds = %for.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fol_All()
  call void @symbol_FPrint(%struct._IO_FILE* %9, i32 %call7)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = ptrtoint i8* %call13 to i32
  call void @symbol_FPrint(%struct._IO_FILE* %13, i32 %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %for.body.12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %for.body.12
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.21, %for.end
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call24 = call i32 @fol_Or()
  call void @symbol_FPrint(%struct._IO_FILE* %20, i32 %call24)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call25 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %21)
  store i32 0, i32* %j, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %if.end.23
  %22 = load i32, i32* %j, align 4
  %23 = load i32, i32* %n, align 4
  %cmp27 = icmp slt i32 %22, %23
  br i1 %cmp27, label %for.body.28, label %for.end.37

for.body.28:                                      ; preds = %for.cond.26
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %j, align 4
  %call29 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %24, i32 %25)
  store %struct.LITERAL_HELP* %call29, %struct.LITERAL_HELP** %Lit, align 8
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call30 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %26)
  store %struct.term* %call30, %struct.term** %Atom, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %28 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_FPrintPrefix(%struct._IO_FILE* %27, %struct.term* %28)
  %29 = load i32, i32* %j, align 4
  %add = add nsw i32 %29, 1
  %30 = load i32, i32* %n, align 4
  %cmp31 = icmp slt i32 %add, %30
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %for.body.28
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %31)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %for.body.28
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %32 = load i32, i32* %j, align 4
  %inc36 = add nsw i32 %32, 1
  store i32 %inc36, i32* %j, align 4
  br label %for.cond.26

for.end.37:                                       ; preds = %for.cond.26
  %33 = load i32, i32* %n, align 4
  %cmp38 = icmp eq i32 %33, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %for.end.37
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call40 = call i32 @fol_False()
  call void @symbol_FPrint(%struct._IO_FILE* %34, i32 %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %for.end.37
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.46, label %if.then.44

if.then.44:                                       ; preds = %if.end.41
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  call void @list_Delete(%struct.LIST_HELP* %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call45 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %37)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.end.41
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call47 = call i32 @clause_Number(%struct.CLAUSE_HELP* %39)
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 %call47)
  %40 = load i32, i32* %Justif.addr, align 4
  %tobool49 = icmp ne i32 %40, 0
  br i1 %tobool49, label %if.then.50, label %if.end.73

if.then.50:                                       ; preds = %if.end.46
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call51 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FPrintOrigin(%struct._IO_FILE* %42, %struct.CLAUSE_HELP* %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %44)
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call53 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %45)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.54

for.cond.54:                                      ; preds = %for.inc.67, %if.then.50
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call55 = call i32 @list_Empty(%struct.LIST_HELP* %46)
  %tobool56 = icmp ne i32 %call55, 0
  %lnot57 = xor i1 %tobool56, true
  br i1 %lnot57, label %for.body.58, label %for.end.69

for.body.58:                                      ; preds = %for.cond.54
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call59 = call i8* @list_Car(%struct.LIST_HELP* %48)
  %49 = ptrtoint i8* %call59 to i32
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %49)
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  %call62 = call i32 @list_Empty(%struct.LIST_HELP* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.end.66, label %if.then.64

if.then.64:                                       ; preds = %for.body.58
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call65 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %51)
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.64, %for.body.58
  br label %for.inc.67

for.inc.67:                                       ; preds = %if.end.66
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call68 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.54

for.end.69:                                       ; preds = %for.cond.54
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call70 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call71 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %55)
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %call71)
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.69, %if.end.46
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call74 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %56)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FPrintCnfDFGProblem(%struct._IO_FILE* %File, i8* %Name, i8* %Author, i8* %Status, i8* %Description, %struct.LIST_HELP* %Clauses) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Name.addr = alloca i8*, align 8
  %Author.addr = alloca i8*, align 8
  %Status.addr = alloca i8*, align 8
  %Description.addr = alloca i8*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i8* %Name, i8** %Name.addr, align 8
  store i8* %Author, i8** %Author.addr, align 8
  store i8* %Status, i8** %Status.addr, align 8
  store i8* %Description, i8** %Description.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load i8*, i8** %Name.addr, align 8
  %3 = load i8*, i8** %Author.addr, align 8
  %4 = load i8*, i8** %Status.addr, align 8
  %5 = load i8*, i8** %Description.addr, align 8
  call void @clause_FPrintDescription(%struct._IO_FILE* %1, i8* %2, i8* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  call void @fol_FPrintDFGSignature(%struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call4 = call i32 @fputs(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  %call7 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %14, i32 8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call9 to %struct.CLAUSE_HELP*
  call void @clause_FPrintDFG(%struct._IO_FILE* %15, %struct.CLAUSE_HELP* %17, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %19)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.58, i32 0, i32 0), %struct._IO_FILE* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.24, %for.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end.26

for.body.17:                                      ; preds = %for.cond.13
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call18 to %struct.CLAUSE_HELP*
  %call19 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %24, i32 8)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %for.body.17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call22 to %struct.CLAUSE_HELP*
  call void @clause_FPrintDFG(%struct._IO_FILE* %25, %struct.CLAUSE_HELP* %27, i32 0)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %for.body.17
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end.23
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.13

for.end.26:                                       ; preds = %for.cond.13
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), %struct._IO_FILE* %30)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @clause_FPrintDescription(%struct._IO_FILE* %File, i8* %Name, i8* %Author, i8* %Status, i8* %Description) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Name.addr = alloca i8*, align 8
  %Author.addr = alloca i8*, align 8
  %Status.addr = alloca i8*, align 8
  %Description.addr = alloca i8*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i8* %Name, i8** %Name.addr, align 8
  store i8* %Author, i8** %Author.addr, align 8
  store i8* %Status, i8** %Status.addr, align 8
  store i8* %Description, i8** %Description.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.84, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load i8*, i8** %Name.addr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i8* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %4 = load i8*, i8** %Author.addr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.86, i32 0, i32 0), i8* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %6 = load i8*, i8** %Status.addr, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.87, i32 0, i32 0), i8* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load i8*, i8** %Description.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.89, i32 0, i32 0), %struct._IO_FILE* %9)
  ret void
}

declare void @fol_FPrintDFGSignature(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrintCnfFormulasDFGProblem(%struct._IO_FILE* %File, i32 %OnlyProductive, i8* %Name, i8* %Author, i8* %Status, i8* %Description, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Conjectures, i32* %Flags, i32* %Precedence) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %OnlyProductive.addr = alloca i32, align 4
  %Name.addr = alloca i8*, align 8
  %Author.addr = alloca i8*, align 8
  %Status.addr = alloca i8*, align 8
  %Description.addr = alloca i8*, align 8
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store i32 %OnlyProductive, i32* %OnlyProductive.addr, align 4
  store i8* %Name, i8** %Name.addr, align 8
  store i8* %Author, i8** %Author.addr, align 8
  store i8* %Status, i8** %Status.addr, align 8
  store i8* %Description, i8** %Description.addr, align 8
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Conjectures, %struct.LIST_HELP** %Conjectures.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.59, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load i8*, i8** %Name.addr, align 8
  %3 = load i8*, i8** %Author.addr, align 8
  %4 = load i8*, i8** %Status.addr, align 8
  %5 = load i8*, i8** %Description.addr, align 8
  call void @clause_FPrintDescription(%struct._IO_FILE* %1, i8* %2, i8* %3, i8* %4, i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.62, i32 0, i32 0), %struct._IO_FILE* %6)
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  call void @fol_FPrintDFGSignature(%struct._IO_FILE* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  %tobool = icmp ne %struct.LIST_HELP* %9, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.63, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %14, %struct.CLAUSE_HELP** %Clause, align 8
  %15 = load i32, i32* %OnlyProductive.addr, align 4
  %tobool7 = icmp ne i32 %15, 0
  br i1 %tobool7, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %for.body
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call8 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %16)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %18 = load i32*, i32** %Flags.addr, align 8
  %19 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call i32 @clause_HasSelectedLiteral(%struct.CLAUSE_HELP* %17, i32* %18, i32* %19)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true, %for.body
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_FPrintFormulaDFG(%struct._IO_FILE* %20, %struct.CLAUSE_HELP* %21, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %land.lhs.true, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call14 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %23)
  br label %if.end.15

if.end.15:                                        ; preds = %for.end, %entry
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  %tobool16 = icmp ne %struct.LIST_HELP* %24, null
  br i1 %tobool16, label %if.then.17, label %if.end.38

if.then.17:                                       ; preds = %if.end.15
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.64, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  store %struct.LIST_HELP* %26, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.34, %if.then.17
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  br i1 %lnot22, label %for.body.23, label %for.end.36

for.body.23:                                      ; preds = %for.cond.19
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call24 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %29, %struct.CLAUSE_HELP** %Clause, align 8
  %30 = load i32, i32* %OnlyProductive.addr, align 4
  %tobool25 = icmp ne i32 %30, 0
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.32

lor.lhs.false.26:                                 ; preds = %for.body.23
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call27 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %31)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %lor.lhs.false.26
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %33 = load i32*, i32** %Flags.addr, align 8
  %34 = load i32*, i32** %Precedence.addr, align 8
  %call30 = call i32 @clause_HasSelectedLiteral(%struct.CLAUSE_HELP* %32, i32* %33, i32* %34)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %land.lhs.true.29, %for.body.23
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_FPrintFormulaDFG(%struct._IO_FILE* %35, %struct.CLAUSE_HELP* %36, i32 0)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.29, %lor.lhs.false.26
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.19

for.end.36:                                       ; preds = %for.cond.19
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %38)
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.36, %if.end.15
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.65, i32 0, i32 0), %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %41 = load i32*, i32** %Precedence.addr, align 8
  call void @fol_FPrintPrecedence(%struct._IO_FILE* %40, i32* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call40 = call i32 @fputs(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.66, i32 0, i32 0), %struct._IO_FILE* %42)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FPrintFormulaDFG(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause, i32 %Justif) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Justif.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Iter = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Justif, i32* %Justif.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), %struct._IO_FILE* %1)
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Variables, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32, i32* %j, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call3)
  %call5 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %4, %struct.LIST_HELP* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Variables, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %j, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.end.23, label %if.then

if.then:                                          ; preds = %for.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call7 = call i32 @fol_All()
  call void @symbol_FPrint(%struct._IO_FILE* %9, i32 %call7)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.19, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body.12, label %for.end.21

for.body.12:                                      ; preds = %for.cond.9
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = ptrtoint i8* %call13 to i32
  call void @symbol_FPrint(%struct._IO_FILE* %13, i32 %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end, label %if.then.17

if.then.17:                                       ; preds = %for.body.12
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %17)
  br label %if.end

if.end:                                           ; preds = %if.then.17, %for.body.12
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.9

for.end.21:                                       ; preds = %for.cond.9
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %if.end.23

if.end.23:                                        ; preds = %for.end.21, %for.end
  %20 = load i32, i32* %n, align 4
  %cmp24 = icmp sgt i32 %20, 1
  br i1 %cmp24, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.23
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call26 = call i32 @fol_Or()
  call void @symbol_FPrint(%struct._IO_FILE* %21, i32 %call26)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %22)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.25, %if.end.23
  store i32 0, i32* %j, align 4
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.38, %if.end.28
  %23 = load i32, i32* %j, align 4
  %24 = load i32, i32* %n, align 4
  %cmp30 = icmp slt i32 %23, %24
  br i1 %cmp30, label %for.body.31, label %for.end.40

for.body.31:                                      ; preds = %for.cond.29
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load i32, i32* %j, align 4
  %call32 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %25, i32 %26)
  store %struct.LITERAL_HELP* %call32, %struct.LITERAL_HELP** %Lit, align 8
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call33 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %27)
  store %struct.term* %call33, %struct.term** %Atom, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %29 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_FPrintPrefix(%struct._IO_FILE* %28, %struct.term* %29)
  %30 = load i32, i32* %j, align 4
  %add = add nsw i32 %30, 1
  %31 = load i32, i32* %n, align 4
  %cmp34 = icmp slt i32 %add, %31
  br i1 %cmp34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body.31
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call36 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %32)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.body.31
  br label %for.inc.38

for.inc.38:                                       ; preds = %if.end.37
  %33 = load i32, i32* %j, align 4
  %inc39 = add nsw i32 %33, 1
  store i32 %inc39, i32* %j, align 4
  br label %for.cond.29

for.end.40:                                       ; preds = %for.cond.29
  %34 = load i32, i32* %n, align 4
  %cmp41 = icmp eq i32 %34, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.end.40
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call43 = call i32 @fol_False()
  call void @symbol_FPrint(%struct._IO_FILE* %35, i32 %call43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.end.40
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call45 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.44
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  call void @list_Delete(%struct.LIST_HELP* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call48 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.44
  %39 = load i32, i32* %n, align 4
  %cmp50 = icmp sgt i32 %39, 1
  br i1 %cmp50, label %if.then.51, label %if.else

if.then.51:                                       ; preds = %if.end.49
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call52 = call i32 @clause_Number(%struct.CLAUSE_HELP* %41)
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 %call52)
  br label %if.end.56

if.else:                                          ; preds = %if.end.49
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call54 = call i32 @clause_Number(%struct.CLAUSE_HELP* %43)
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %call54)
  br label %if.end.56

if.end.56:                                        ; preds = %if.else, %if.then.51
  %44 = load i32, i32* %Justif.addr, align 4
  %tobool57 = icmp ne i32 %44, 0
  br i1 %tobool57, label %if.then.58, label %if.end.81

if.then.58:                                       ; preds = %if.end.56
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call59 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FPrintOrigin(%struct._IO_FILE* %46, %struct.CLAUSE_HELP* %47)
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call60 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %48)
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call61 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %49)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.75, %if.then.58
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %50)
  %tobool64 = icmp ne i32 %call63, 0
  %lnot65 = xor i1 %tobool64, true
  br i1 %lnot65, label %for.body.66, label %for.end.77

for.body.66:                                      ; preds = %for.cond.62
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call67 = call i8* @list_Car(%struct.LIST_HELP* %52)
  %53 = ptrtoint i8* %call67 to i32
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %53)
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  %call70 = call i32 @list_Empty(%struct.LIST_HELP* %call69)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.end.74, label %if.then.72

if.then.72:                                       ; preds = %for.body.66
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call73 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %55)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %for.body.66
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.62

for.end.77:                                       ; preds = %for.cond.62
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call78 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call79 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %59)
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.79, i32 0, i32 0), i32 %call79)
  br label %if.end.81

if.end.81:                                        ; preds = %for.end.77, %if.end.56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call82 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %60)
  ret void
}

declare void @fol_FPrintPrecedence(%struct._IO_FILE*, i32*) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrintCnfOtter(%struct._IO_FILE* %File, %struct.LIST_HELP* %Clauses, i32* %Flags) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %Equality = alloca i32, align 4
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32 0, i32* %Equality, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %2 = load i32, i32* %Equality, align 4
  %tobool1 = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool1, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %3 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %3, label %for.body, label %for.end.13

for.body:                                         ; preds = %land.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP** %Clause, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call3 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %6)
  store i32 %call3, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %7 = load i32, i32* %i, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call5 = call i32 @clause_Length(%struct.CLAUSE_HELP* %8)
  %cmp = icmp slt i32 %7, %call5
  br i1 %cmp, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %10 = load i32, i32* %i, align 4
  %call7 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %9, i32 %10)
  %call8 = call i32 @fol_IsEquality(%struct.term* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.6
  store i32 1, i32* %Equality, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call10 = call i32 @clause_Length(%struct.CLAUSE_HELP* %11)
  store i32 %call10, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.6
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.13:                                       ; preds = %land.end
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %15 = load i32, i32* %Equality, align 4
  %16 = load i32*, i32** %Flags.addr, align 8
  %call14 = call i32 @flag_GetFlagValue(i32* %16, i32 95)
  call void @fol_FPrintOtterOptions(%struct._IO_FILE* %14, i32 %15, i32 %call14)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %tobool15 = icmp ne %struct.LIST_HELP* %17, null
  br i1 %tobool15, label %if.then.16, label %if.end.32

if.then.16:                                       ; preds = %for.end.13
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), %struct._IO_FILE* %18)
  %19 = load i32, i32* %Equality, align 4
  %tobool18 = icmp ne i32 %19, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.then.16
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), %struct._IO_FILE* %20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.then.16
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.28, %if.end.21
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot25 = xor i1 %tobool24, true
  br i1 %lnot25, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.22
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call27 to %struct.CLAUSE_HELP*
  call void @clause_FPrintOtter(%struct._IO_FILE* %23, %struct.CLAUSE_HELP* %25)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.22

for.end.30:                                       ; preds = %for.cond.22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i32 0, i32 0), %struct._IO_FILE* %27)
  br label %if.end.32

if.end.32:                                        ; preds = %for.end.30, %for.end.13
  ret void
}

declare void @fol_FPrintOtterOptions(%struct._IO_FILE*, i32, i32) #2

; Function Attrs: nounwind uwtable
define void @clause_FPrintCnfDFGDerivables(%struct._IO_FILE* %File, %struct.LIST_HELP* %Clauses, i32 %Type) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Type.addr = alloca i32, align 4
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store i32 %Type, i32* %Type.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %tobool = icmp ne %struct.LIST_HELP* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %2, %struct.CLAUSE_HELP** %Clause, align 8
  %3 = load i32, i32* %Type.addr, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call2 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %4, i32 8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %5 = load i32, i32* %Type.addr, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end, label %land.lhs.true.5

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call6 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %6, i32 8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5, %land.lhs.true
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  call void @clause_FPrintDFG(%struct._IO_FILE* %7, %struct.CLAUSE_HELP* %8, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %lor.lhs.false
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Clauses.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_FPrintDFGStep(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause, i32 %Justif) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Justif.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Iter = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %Justif, i32* %Justif.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %3)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.70, i32 0, i32 0), i32 %call2)
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Variables, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %j, align 4
  %5 = load i32, i32* %n, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %8 = load i32, i32* %j, align 4
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %7, i32 %8)
  %call6 = call %struct.LIST_HELP* @term_VariableSymbols(%struct.term* %call5)
  %call7 = call %struct.LIST_HELP* @list_NPointerUnion(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Variables, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %j, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool = icmp ne i32 %call8, 0
  br i1 %tobool, label %if.end.25, label %if.then

if.then:                                          ; preds = %for.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call9 = call i32 @fol_All()
  call void @symbol_FPrint(%struct._IO_FILE* %11, i32 %call9)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.71, i32 0, i32 0), %struct._IO_FILE* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.21, %if.then
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br i1 %lnot, label %for.body.14, label %for.end.23

for.body.14:                                      ; preds = %for.cond.11
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = ptrtoint i8* %call15 to i32
  call void @symbol_FPrint(%struct._IO_FILE* %15, i32 %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %for.body.14
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %19)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %for.body.14
  br label %for.inc.21

for.inc.21:                                       ; preds = %if.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.11

for.end.23:                                       ; preds = %for.cond.11
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0), %struct._IO_FILE* %21)
  br label %if.end.25

if.end.25:                                        ; preds = %for.end.23, %for.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call26 = call i32 @fol_Or()
  call void @symbol_FPrint(%struct._IO_FILE* %22, i32 %call26)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call27 = call i32 @_IO_putc(i32 40, %struct._IO_FILE* %23)
  store i32 0, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.37, %if.end.25
  %24 = load i32, i32* %j, align 4
  %25 = load i32, i32* %n, align 4
  %cmp29 = icmp slt i32 %24, %25
  br i1 %cmp29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.28
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %27 = load i32, i32* %j, align 4
  %call31 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %26, i32 %27)
  store %struct.LITERAL_HELP* %call31, %struct.LITERAL_HELP** %Lit, align 8
  %28 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call32 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %28)
  store %struct.term* %call32, %struct.term** %Atom, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %30 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_FPrintPrefix(%struct._IO_FILE* %29, %struct.term* %30)
  %31 = load i32, i32* %j, align 4
  %add = add nsw i32 %31, 1
  %32 = load i32, i32* %n, align 4
  %cmp33 = icmp slt i32 %add, %32
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.body.30
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call35 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %33)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %for.body.30
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %34 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %34, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.28

for.end.39:                                       ; preds = %for.cond.28
  %35 = load i32, i32* %n, align 4
  %cmp40 = icmp eq i32 %35, 0
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.end.39
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call42 = call i32 @fol_False()
  call void @symbol_FPrint(%struct._IO_FILE* %36, i32 %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %for.end.39
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.48, label %if.then.46

if.then.46:                                       ; preds = %if.end.43
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  call void @list_Delete(%struct.LIST_HELP* %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call47 = call i32 @_IO_putc(i32 41, %struct._IO_FILE* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %if.end.43
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.73, i32 0, i32 0), %struct._IO_FILE* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FPrintOrigin(%struct._IO_FILE* %41, %struct.CLAUSE_HELP* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call50 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.74, i32 0, i32 0), %struct._IO_FILE* %43)
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call51 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %44)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.65, %if.end.48
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br i1 %lnot55, label %for.body.56, label %for.end.67

for.body.56:                                      ; preds = %for.cond.52
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %47)
  %48 = ptrtoint i8* %call57 to i32
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %49)
  %call60 = call i32 @list_Empty(%struct.LIST_HELP* %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.end.64, label %if.then.62

if.then.62:                                       ; preds = %for.body.56
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call63 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %50)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.62, %for.body.56
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Iter, align 8
  %call66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %Iter, align 8
  br label %for.cond.52

for.end.67:                                       ; preds = %for.cond.52
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call68 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call69 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %54)
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.75, i32 0, i32 0), i32 %call69)
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.76, i32 0, i32 0), %struct._IO_FILE* %55)
  ret void
}

declare void @symbol_FPrint(%struct._IO_FILE*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #1 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #1 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #1 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define void @clause_Check(%struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Exists(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call i32 @clause_IsClause(%struct.CLAUSE_HELP* %1, i32* %2, i32* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call4 = call i32 @fflush(%struct._IO_FILE* %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.37, i32 0, i32 0), i32 4774)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.81, i32 0, i32 0))
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %6)
  call void @misc_DumpCore()
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call8 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %7)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %Copy, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %8, i32* %9, i32* %10)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call10 = call i32 @clause_Weight(%struct.CLAUSE_HELP* %12)
  %cmp = icmp ne i32 %call9, %call10
  br i1 %cmp, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call11 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %13)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call12 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %14)
  %cmp13 = icmp ne i32 %call11, %call12
  br i1 %cmp13, label %if.then.14, label %if.end.18

if.then.14:                                       ; preds = %lor.lhs.false, %if.end.7
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.37, i32 0, i32 0), i32 4783)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.82, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call17 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.39, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @misc_DumpCore()
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.14, %lor.lhs.false
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %18)
  br label %return

return:                                           ; preds = %if.end.18, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsFPrintParentClauses(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause, i32 %ParentPts) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ParentPts.addr = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %length = alloca i32, align 4
  %ParentNum = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %ParentPts, i32* %ParentPts.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.45, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Scan2, align 8
  %3 = load i32, i32* %ParentPts.addr, align 4
  %tobool4 = icmp ne i32 %3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  %call7 = call i32 @clause_Number(%struct.CLAUSE_HELP* %5)
  store i32 %call7, i32* %ParentNum, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = ptrtoint i8* %call8 to i32
  store i32 %7, i32* %ParentNum, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %9 = load i32, i32* %ParentNum, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = ptrtoint i8* %call9 to i32
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %9, i32 %11)
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.44, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call i32 @list_Length(%struct.LIST_HELP* %13)
  %sub = sub i32 %call15, 2
  store i32 %sub, i32* %length, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call16 = call i32 @_IO_putc(i32 44, %struct._IO_FILE* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan1, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan2, align 8
  %17 = load i32, i32* %ParentPts.addr, align 4
  %tobool19 = icmp ne i32 %17, 0
  br i1 %tobool19, label %if.then.20, label %if.else.23

if.then.20:                                       ; preds = %if.then.14
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call21 to %struct.CLAUSE_HELP*
  %call22 = call i32 @clause_Number(%struct.CLAUSE_HELP* %19)
  store i32 %call22, i32* %ParentNum, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.then.14
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = ptrtoint i8* %call24 to i32
  store i32 %21, i32* %ParentNum, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.20
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %23 = load i32, i32* %ParentNum, align 4
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = ptrtoint i8* %call26 to i32
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i32 %23, i32 %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Scan1, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.25
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot = xor i1 %tobool31, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32, i32* %length, align 4
  %sub32 = sub nsw i32 %29, 2
  store i32 %sub32, i32* %length, align 4
  %30 = load i32, i32* %ParentPts.addr, align 4
  %tobool33 = icmp ne i32 %30, 0
  br i1 %tobool33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %for.body
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call35 to %struct.CLAUSE_HELP*
  %call36 = call i32 @clause_Number(%struct.CLAUSE_HELP* %32)
  store i32 %call36, i32* %ParentNum, align 4
  br label %if.end.39

if.else.37:                                       ; preds = %for.body
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = ptrtoint i8* %call38 to i32
  store i32 %34, i32* %ParentNum, align 4
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.37, %if.then.34
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %36 = load i32, i32* %ParentNum, align 4
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = ptrtoint i8* %call40 to i32
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 %36, i32 %38)
  br label %for.inc

for.inc:                                          ; preds = %if.end.39
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan1, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.44

if.end.44:                                        ; preds = %for.end, %if.end
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsLiteralFPrintUnsigned(%struct._IO_FILE* %File, %struct.LITERAL_HELP* %Literal) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %1)
  call void @term_FPrintPrefix(%struct._IO_FILE* %0, %struct.term* %call)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsFPrintGen(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause, i32 %ParentPts) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ParentPts.addr = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %ParentPts, i32* %ParentPts.addr, align 4
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Exists(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %1)
  br label %if.end.74

if.else:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Number(%struct.CLAUSE_HELP* %3)
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %call2)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %5)
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %call4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_FPrintOrigin(%struct._IO_FILE* %6, %struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %8)
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %if.else
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call10 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load i32, i32* %ParentPts.addr, align 4
  call void @clause_PParentsFPrintParentClauses(%struct._IO_FILE* %10, %struct.CLAUSE_HELP* %11, i32 %12)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.else
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call11 = call i32 @_IO_putc(i32 93, %struct._IO_FILE* %13)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call12 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %14)
  store i32 %call12, i32* %c, align 4
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %15)
  store i32 %call13, i32* %a, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call14 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %16)
  store i32 %call14, i32* %s, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %c, align 4
  %cmp = icmp slt i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load i32, i32* %i, align 4
  %call15 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  store %struct.LITERAL_HELP* %call15, %struct.LITERAL_HELP** %Lit, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_PParentsLiteralFPrintUnsigned(%struct._IO_FILE* %21, %struct.LITERAL_HELP* %22)
  %23 = load i32, i32* %i, align 4
  %add = add nsw i32 %23, 1
  %24 = load i32, i32* %c, align 4
  %cmp16 = icmp slt i32 %add, %24
  br i1 %cmp16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %for.body
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call18 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %25)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %26 = load i32, i32* %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load i32, i32* %c, align 4
  %29 = load i32, i32* %a, align 4
  %add21 = add nsw i32 %29, %28
  store i32 %add21, i32* %a, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.46, %for.end
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* %a, align 4
  %cmp23 = icmp slt i32 %30, %31
  br i1 %cmp23, label %for.body.24, label %for.end.48

for.body.24:                                      ; preds = %for.cond.22
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %33 = load i32, i32* %i, align 4
  %call25 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %32, i32 %33)
  store %struct.LITERAL_HELP* %call25, %struct.LITERAL_HELP** %Lit, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %35 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_PParentsLiteralFPrintUnsigned(%struct._IO_FILE* %34, %struct.LITERAL_HELP* %35)
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call26 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %36)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.35

if.then.28:                                       ; preds = %for.body.24
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call29 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %37)
  %38 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call30 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %38)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.28
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call33 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %39)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.28
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %for.body.24
  %40 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call36 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %40, i32 4)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call39 = call i32 @_IO_putc(i32 43, %struct._IO_FILE* %41)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.35
  %42 = load i32, i32* %i, align 4
  %add41 = add nsw i32 %42, 1
  %43 = load i32, i32* %a, align 4
  %cmp42 = icmp slt i32 %add41, %43
  br i1 %cmp42, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %if.end.40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call44 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.40
  br label %for.inc.46

for.inc.46:                                       ; preds = %if.end.45
  %45 = load i32, i32* %i, align 4
  %inc47 = add nsw i32 %45, 1
  store i32 %inc47, i32* %i, align 4
  br label %for.cond.22

for.end.48:                                       ; preds = %for.cond.22
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %46)
  %47 = load i32, i32* %a, align 4
  %48 = load i32, i32* %s, align 4
  %add50 = add nsw i32 %48, %47
  store i32 %add50, i32* %s, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.70, %for.end.48
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %s, align 4
  %cmp52 = icmp slt i32 %49, %50
  br i1 %cmp52, label %for.body.53, label %for.end.72

for.body.53:                                      ; preds = %for.cond.51
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %52 = load i32, i32* %i, align 4
  %call54 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %51, i32 %52)
  store %struct.LITERAL_HELP* %call54, %struct.LITERAL_HELP** %Lit, align 8
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %54 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  call void @clause_PParentsLiteralFPrintUnsigned(%struct._IO_FILE* %53, %struct.LITERAL_HELP* %54)
  %55 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call55 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %55)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.64

if.then.57:                                       ; preds = %for.body.53
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call58 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %56)
  %57 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call59 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %57)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.57
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call62 = call i32 @_IO_putc(i32 42, %struct._IO_FILE* %58)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.57
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %for.body.53
  %59 = load i32, i32* %i, align 4
  %add65 = add nsw i32 %59, 1
  %60 = load i32, i32* %s, align 4
  %cmp66 = icmp slt i32 %add65, %60
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.end.64
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call68 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %61)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.end.64
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %62 = load i32, i32* %i, align 4
  %inc71 = add nsw i32 %62, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.51

for.end.72:                                       ; preds = %for.cond.51
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call73 = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %63)
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.72, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsFPrint(%struct._IO_FILE* %File, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_PParentsFPrintGen(%struct._IO_FILE* %0, %struct.CLAUSE_HELP* %1, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsListFPrint(%struct._IO_FILE* %File, %struct.LIST_HELP* %L) #0 {
entry:
  %File.addr = alloca %struct._IO_FILE*, align 8
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct._IO_FILE* %File, %struct._IO_FILE** %File.addr, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CLAUSE_HELP*
  call void @clause_PParentsFPrint(%struct._IO_FILE* %1, %struct.CLAUSE_HELP* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %File.addr, align 8
  %call2 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %L.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsPrint(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_PParentsFPrint(%struct._IO_FILE* %0, %struct.CLAUSE_HELP* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @clause_PParentsListPrint(%struct.LIST_HELP* %L) #0 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @clause_PParentsListFPrint(%struct._IO_FILE* %0, %struct.LIST_HELP* %1)
  ret void
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
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
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @subst_Cod(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %codomain = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %codomain, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subst_Dom(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %dom = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 1
  %1 = load i32, i32* %dom, align 4
  ret i32 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Next(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %next = getelementptr inbounds %struct.subst, %struct.subst* %0, i32 0, i32 0
  %1 = load %struct.subst*, %struct.subst** %next, align 8
  ret %struct.subst* %1
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
define internal i32 @clause_LiteralsCompare(%struct.LITERAL_HELP* %Left, %struct.LITERAL_HELP* %Right) #1 {
entry:
  %Left.addr = alloca %struct.LITERAL_HELP*, align 8
  %Right.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %Left, %struct.LITERAL_HELP** %Left.addr, align 8
  store %struct.LITERAL_HELP* %Right, %struct.LITERAL_HELP** %Right.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Left.addr, align 8
  %call = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %0)
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Right.addr, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %1)
  %call2 = call i32 @term_CompareAbstractLEQ(%struct.term* %call, %struct.term* %call1)
  ret i32 %call2
}

declare i32 @term_CompareAbstractLEQ(%struct.term*, %struct.term*) #2

declare i32 @term_CompareAbstract(%struct.term*, %struct.term*) #2

declare i32 @term_CompareBySymbolOccurences(%struct.term*, %struct.term*) #2

declare i32 @list_CompareMultisetsByElementDistribution(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

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

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noreturn nounwind
declare void @abort() #5

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsStandardVariable(i32 %S) #1 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_IsVariable(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %cmp = icmp sle i32 %1, 2000
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Member(%struct.LIST_HELP* %List, i8* %Element, i32 (i8*, i8*)* %Test) #1 {
entry:
  %retval = alloca i32, align 4
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Element.addr = alloca i8*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i8* %Element, i8** %Element.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %2 = load i8*, i8** %Element.addr, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %call2 = call i32 %1(i8* %2, i8* %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %List.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
