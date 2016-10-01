; ModuleID = './MultiSource.Applications.SPASS/10.defs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.DEF_HELP = type { %struct.term*, %struct.term*, %struct.term*, %struct.LIST_HELP*, i8*, i32, i32 }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }

@.str = private unnamed_addr constant [24 x i8] c"\0ANew definition found :\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"\0AFound definitions :\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A---\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\0A\0AAtom: \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"\0AExpansion: \0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"\0AParent clauses: \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%d.%d \00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0ADerived from conjecture clauses.\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"\0ANot derived from conjecture clauses.\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\0ALabel: \00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\0AGuard:\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Nothing.\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"\0AAttributes: \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c" Equality \00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c" No Multiple Occurrences \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c" None \00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"\0ANew clauses after applying definitions : \0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\0A\0ANew terms after applying definitions : \0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"\0AApplied definition for\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"\0ANew formula:\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@fol_ALL = external global i32, align 4
@fol_EXIST = external global i32, align 4
@fol_AND = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_NOT = external global i32, align 4
@fol_IMPLIED = external global i32, align 4
@fol_VARLIST = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8

; Function Attrs: nounwind uwtable
define %struct.DEF_HELP* @def_CreateFromClauses(%struct.term* %ExpTerm, %struct.term* %PredTerm, %struct.LIST_HELP* %Clauses, %struct.LIST_HELP* %Lits, i32 %Con) #0 {
entry:
  %ExpTerm.addr = alloca %struct.term*, align 8
  %PredTerm.addr = alloca %struct.term*, align 8
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Lits.addr = alloca %struct.LIST_HELP*, align 8
  %Con.addr = alloca i32, align 4
  %result = alloca %struct.DEF_HELP*, align 8
  store %struct.term* %ExpTerm, %struct.term** %ExpTerm.addr, align 8
  store %struct.term* %PredTerm, %struct.term** %PredTerm.addr, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %Lits, %struct.LIST_HELP** %Lits.addr, align 8
  store i32 %Con, i32* %Con.addr, align 4
  %call = call i8* @memory_Malloc(i32 48)
  %0 = bitcast i8* %call to %struct.DEF_HELP*
  store %struct.DEF_HELP* %0, %struct.DEF_HELP** %result, align 8
  %1 = load %struct.term*, %struct.term** %ExpTerm.addr, align 8
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %expansion = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %2, i32 0, i32 0
  store %struct.term* %1, %struct.term** %expansion, align 8
  %3 = load %struct.term*, %struct.term** %PredTerm.addr, align 8
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %predicate = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %4, i32 0, i32 1
  store %struct.term* %3, %struct.term** %predicate, align 8
  %5 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %toprove = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %5, i32 0, i32 2
  store %struct.term* null, %struct.term** %toprove, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  %7 = bitcast %struct.LIST_HELP* %6 to i8*
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %9 = bitcast %struct.LIST_HELP* %8 to i8*
  %call1 = call %struct.LIST_HELP* @list_PairCreate(i8* %7, i8* %9)
  %10 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %10, i32 0, i32 3
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %parentclauses, align 8
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %label = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %11, i32 0, i32 4
  store i8* null, i8** %label, align 8
  %12 = load i32, i32* %Con.addr, align 4
  %13 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %conjecture = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %13, i32 0, i32 5
  store i32 %12, i32* %conjecture, align 4
  %14 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  ret %struct.DEF_HELP* %14
}

declare i8* @memory_Malloc(i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_PairCreate(i8* %P1, i8* %P2) #2 {
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

; Function Attrs: nounwind uwtable
define %struct.DEF_HELP* @def_CreateFromTerm(%struct.term* %ExpTerm, %struct.term* %PredTerm, %struct.term* %ToProve, i8* %Label) #0 {
entry:
  %ExpTerm.addr = alloca %struct.term*, align 8
  %PredTerm.addr = alloca %struct.term*, align 8
  %ToProve.addr = alloca %struct.term*, align 8
  %Label.addr = alloca i8*, align 8
  %result = alloca %struct.DEF_HELP*, align 8
  store %struct.term* %ExpTerm, %struct.term** %ExpTerm.addr, align 8
  store %struct.term* %PredTerm, %struct.term** %PredTerm.addr, align 8
  store %struct.term* %ToProve, %struct.term** %ToProve.addr, align 8
  store i8* %Label, i8** %Label.addr, align 8
  %call = call i8* @memory_Malloc(i32 48)
  %0 = bitcast i8* %call to %struct.DEF_HELP*
  store %struct.DEF_HELP* %0, %struct.DEF_HELP** %result, align 8
  %1 = load %struct.term*, %struct.term** %ExpTerm.addr, align 8
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %expansion = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %2, i32 0, i32 0
  store %struct.term* %1, %struct.term** %expansion, align 8
  %3 = load %struct.term*, %struct.term** %PredTerm.addr, align 8
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %predicate = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %4, i32 0, i32 1
  store %struct.term* %3, %struct.term** %predicate, align 8
  %5 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %toprove = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %6, i32 0, i32 2
  store %struct.term* %5, %struct.term** %toprove, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %7 = bitcast %struct.LIST_HELP* %call1 to i8*
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %8 = bitcast %struct.LIST_HELP* %call2 to i8*
  %call3 = call %struct.LIST_HELP* @list_PairCreate(i8* %7, i8* %8)
  %9 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %9, i32 0, i32 3
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %parentclauses, align 8
  %10 = load i8*, i8** %Label.addr, align 8
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %label = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %11, i32 0, i32 4
  store i8* %10, i8** %label, align 8
  %12 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  %conjecture = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %12, i32 0, i32 5
  store i32 0, i32* %conjecture, align 4
  %13 = load %struct.DEF_HELP*, %struct.DEF_HELP** %result, align 8
  ret %struct.DEF_HELP* %13
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #2 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: nounwind uwtable
define void @def_Delete(%struct.DEF_HELP* %D) #0 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call = call %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  call void @def_DeleteFromClauses(%struct.DEF_HELP* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  call void @def_DeleteFromTerm(%struct.DEF_HELP* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
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
define internal %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentclauses, align 8
  %call = call i8* @list_PairFirst(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.LIST_HELP*
  ret %struct.LIST_HELP* %2
}

; Function Attrs: nounwind uwtable
define internal void @def_DeleteFromClauses(%struct.DEF_HELP* %D) #0 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call = call %struct.term* @def_Expansion(%struct.DEF_HELP* %0)
  call void @term_Delete(%struct.term* %call)
  %1 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call1 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %1)
  call void @term_Delete(%struct.term* %call1)
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call2 = call %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %2)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %3 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call3 = call %struct.LIST_HELP* @def_ClauseLitsList(%struct.DEF_HELP* %3)
  call void @list_Delete(%struct.LIST_HELP* %call3)
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %4, i32 0, i32 3
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentclauses, align 8
  call void @list_PairFree(%struct.LIST_HELP* %5)
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %7 = bitcast %struct.DEF_HELP* %6 to i8*
  call void @memory_Free(i8* %7, i32 48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @def_DeleteFromTerm(%struct.DEF_HELP* %D) #0 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call = call %struct.term* @def_Expansion(%struct.DEF_HELP* %0)
  call void @term_Delete(%struct.term* %call)
  %1 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call1 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %1)
  call void @term_Delete(%struct.term* %call1)
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call2 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %2)
  %cmp = icmp ne %struct.term* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call3 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %3)
  call void @term_Delete(%struct.term* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %4, i32 0, i32 3
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentclauses, align 8
  call void @list_PairFree(%struct.LIST_HELP* %5)
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %7 = bitcast %struct.DEF_HELP* %6 to i8*
  call void @memory_Free(i8* %7, i32 48)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @def_PredicateOccurrences(%struct.term* %Term, i32 %P) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %P.addr = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %count = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %P, i32* %P.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %1)
  %2 = load i32, i32* %P.addr, align 4
  %call3 = call i32 @def_PredicateOccurrences(%struct.term* %call2, i32 %2)
  store i32 %call3, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  %call5 = call i32 @fol_IsJunctor(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %4)
  %call8 = call i32 @fol_Not()
  %call9 = call i32 @symbol_Equal(i32 %call7, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.20

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %count, align 4
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call15 to %struct.term*
  %9 = load i32, i32* %P.addr, align 4
  %call16 = call i32 @def_PredicateOccurrences(%struct.term* %8, i32 %9)
  %10 = load i32, i32* %count, align 4
  %add = add nsw i32 %10, %call16
  store i32 %add, i32* %count, align 4
  %11 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %for.body
  %12 = load i32, i32* %count, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.18:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %count, align 4
  store i32 %14, i32* %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %15)
  %16 = load i32, i32* %P.addr, align 4
  %call22 = call i32 @symbol_Equal(i32 %call21, i32 %16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.20
  store i32 1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %for.end, %if.then.17, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsQuantifier(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* @fol_ALL, align 4
  %1 = load i32, i32* %S.addr, align 4
  %call = call i32 @symbol_Equal(i32 %0, i32 %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* @fol_EXIST, align 4
  %3 = load i32, i32* %S.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %2, i32 %3)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

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
define internal i32 @fol_IsJunctor(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %call = call i32 @fol_IsQuantifier(i32 %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %S.addr, align 4
  %2 = load i32, i32* @fol_AND, align 4
  %call1 = call i32 @symbol_Equal(i32 %1, i32 %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %S.addr, align 4
  %4 = load i32, i32* @fol_OR, align 4
  %call4 = call i32 @symbol_Equal(i32 %3, i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %5 = load i32, i32* %S.addr, align 4
  %6 = load i32, i32* @fol_NOT, align 4
  %call7 = call i32 @symbol_Equal(i32 %5, i32 %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %7 = load i32, i32* %S.addr, align 4
  %8 = load i32, i32* @fol_IMPLIED, align 4
  %call10 = call i32 @symbol_Equal(i32 %7, i32 %8)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.end, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %9 = load i32, i32* %S.addr, align 4
  %10 = load i32, i32* @fol_VARLIST, align 4
  %call13 = call i32 @symbol_Equal(i32 %9, i32 %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %lor.end, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %11 = load i32, i32* %S.addr, align 4
  %12 = load i32, i32* @fol_IMPLIES, align 4
  %call16 = call i32 @symbol_Equal(i32 %11, i32 %12)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.15
  %13 = load i32, i32* %S.addr, align 4
  %14 = load i32, i32* @fol_EQUIV, align 4
  %call18 = call i32 @symbol_Equal(i32 %13, i32 %14)
  %tobool19 = icmp ne i32 %call18, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %lor.lhs.false, %entry
  %15 = phi i1 [ true, %lor.lhs.false.15 ], [ true, %lor.lhs.false.12 ], [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.3 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %tobool19, %lor.rhs ]
  %lor.ext = zext i1 %15 to i32
  ret i32 %lor.ext
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #2 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
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
define %struct.LIST_HELP* @def_ExtractDefsFromTerm(%struct.term* %Term, i8* %Label) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Label.addr = alloca i8*, align 8
  %andterm = alloca %struct.term*, align 8
  %found = alloca i32, align 4
  %pol = alloca i32, align 4
  %univars = alloca %struct.LIST_HELP*, align 8
  %termlist = alloca %struct.LIST_HELP*, align 8
  %defslist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %newterm = alloca %struct.term*, align 8
  %cand = alloca %struct.term*, align 8
  %foundpred = alloca %struct.term*, align 8
  %toprove = alloca %struct.term*, align 8
  %def = alloca %struct.DEF_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i8* %Label, i8** %Label.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %andterm, align 8
  store i32 0, i32* %found, align 4
  store i32 1, i32* %pol, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %univars, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.22, %entry
  %1 = load i32, i32* %found, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.term*, %struct.term** %andterm, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  %call2 = call i32 @fol_All()
  %call3 = call i32 @symbol_Equal(i32 %call1, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, i32* %pol, align 4
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %while.body
  %4 = load %struct.term*, %struct.term** %andterm, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %4)
  %call6 = call i32 @fol_Exist()
  %call7 = call i32 @symbol_Equal(i32 %call5, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %if.else

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %pol, align 4
  %cmp10 = icmp eq i32 %5, -1
  br i1 %cmp10, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.9, %land.lhs.true
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %univars, align 8
  %7 = load %struct.term*, %struct.term** %andterm, align 8
  %call11 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %7)
  %call12 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call11)
  %call13 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %univars, align 8
  %8 = load %struct.term*, %struct.term** %andterm, align 8
  %call14 = call %struct.term* @term_SecondArgument(%struct.term* %8)
  store %struct.term* %call14, %struct.term** %andterm, align 8
  br label %if.end.22

if.else:                                          ; preds = %land.lhs.true.9, %lor.lhs.false
  %9 = load %struct.term*, %struct.term** %andterm, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %9)
  %call16 = call i32 @fol_Not()
  %call17 = call i32 @symbol_Equal(i32 %call15, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %10 = load i32, i32* %pol, align 4
  %sub = sub nsw i32 0, %10
  store i32 %sub, i32* %pol, align 4
  %11 = load %struct.term*, %struct.term** %andterm, align 8
  %call20 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  store %struct.term* %call20, %struct.term** %andterm, align 8
  br label %if.end

if.else.21:                                       ; preds = %if.else
  store i32 1, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.21, %if.then.19
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call23 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %termlist, align 8
  %12 = load %struct.term*, %struct.term** %andterm, align 8
  %call24 = call i32 @term_TopSymbol(%struct.term* %12)
  %call25 = call i32 @fol_And()
  %call26 = call i32 @symbol_Equal(i32 %call24, i32 %call25)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %lor.lhs.false.30

land.lhs.true.28:                                 ; preds = %while.end
  %13 = load i32, i32* %pol, align 4
  %cmp29 = icmp eq i32 %13, 1
  br i1 %cmp29, label %if.then.37, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %land.lhs.true.28, %while.end
  %14 = load %struct.term*, %struct.term** %andterm, align 8
  %call31 = call i32 @term_TopSymbol(%struct.term* %14)
  %call32 = call i32 @fol_Or()
  %call33 = call i32 @symbol_Equal(i32 %call31, i32 %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %land.lhs.true.35, label %if.else.53

land.lhs.true.35:                                 ; preds = %lor.lhs.false.30
  %15 = load i32, i32* %pol, align 4
  %cmp36 = icmp eq i32 %15, -1
  br i1 %cmp36, label %if.then.37, label %if.else.53

if.then.37:                                       ; preds = %land.lhs.true.35, %land.lhs.true.28
  %16 = load %struct.term*, %struct.term** %andterm, align 8
  %call38 = call %struct.term* @term_Copy(%struct.term* %16)
  %17 = load %struct.term*, %struct.term** %andterm, align 8
  %call39 = call i32 @term_TopSymbol(%struct.term* %17)
  %call40 = call %struct.term* @cnf_Flatten(%struct.term* %call38, i32 %call39)
  store %struct.term* %call40, %struct.term** %andterm, align 8
  %18 = load %struct.term*, %struct.term** %andterm, align 8
  %call41 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.37
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call42 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool43 = icmp ne i32 %call42, 0
  %lnot44 = xor i1 %tobool43, true
  br i1 %lnot44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call45 = call i32 @fol_All()
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %univars, align 8
  %call46 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %call48 = call %struct.LIST_HELP* @list_List(i8* %call47)
  %call49 = call %struct.term* @fol_CreateQuantifierAddFather(i32 %call45, %struct.LIST_HELP* %call46, %struct.LIST_HELP* %call48)
  store %struct.term* %call49, %struct.term** %newterm, align 8
  %22 = load %struct.term*, %struct.term** %newterm, align 8
  %23 = bitcast %struct.term* %22 to i8*
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call50 = call %struct.LIST_HELP* @list_Cons(i8* %23, %struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %termlist, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.term*, %struct.term** %andterm, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %26)
  call void @list_Delete(%struct.LIST_HELP* %call52)
  %27 = load %struct.term*, %struct.term** %andterm, align 8
  call void @term_Free(%struct.term* %27)
  br label %if.end.56

if.else.53:                                       ; preds = %land.lhs.true.35, %lor.lhs.false.30
  %28 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call54 = call %struct.term* @term_Copy(%struct.term* %28)
  %29 = bitcast %struct.term* %call54 to i8*
  %call55 = call %struct.LIST_HELP* @list_List(i8* %29)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %termlist, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.53, %for.end
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %univars, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  %call57 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %defslist, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  store %struct.LIST_HELP* %31, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.88, %if.end.56
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call59 = call i32 @list_Empty(%struct.LIST_HELP* %32)
  %tobool60 = icmp ne i32 %call59, 0
  %lnot61 = xor i1 %tobool60, true
  br i1 %lnot61, label %for.body.62, label %for.end.90

for.body.62:                                      ; preds = %for.cond.58
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call63 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call63 to %struct.term*
  store %struct.term* %34, %struct.term** %cand, align 8
  %35 = load %struct.term*, %struct.term** %cand, align 8
  call void @term_AddFatherLinks(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %cand, align 8
  %call64 = call i32 @cnf_ContainsDefinition(%struct.term* %36, %struct.term** %foundpred)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.87

if.then.66:                                       ; preds = %for.body.62
  %37 = load %struct.term*, %struct.term** %cand, align 8
  %38 = load %struct.term*, %struct.term** %foundpred, align 8
  %call67 = call %struct.term* @cnf_DefConvert(%struct.term* %37, %struct.term* %38, %struct.term** %toprove)
  store %struct.term* %call67, %struct.term** %cand, align 8
  %39 = load %struct.term*, %struct.term** %foundpred, align 8
  %call68 = call %struct.term* @term_Superterm(%struct.term* %39)
  %call69 = call %struct.term* @term_SecondArgument(%struct.term* %call68)
  %call70 = call %struct.term* @term_Copy(%struct.term* %call69)
  %40 = load %struct.term*, %struct.term** %foundpred, align 8
  %call71 = call %struct.term* @term_Copy(%struct.term* %40)
  %41 = load %struct.term*, %struct.term** %toprove, align 8
  %42 = load i8*, i8** %Label.addr, align 8
  %call72 = call %struct.DEF_HELP* @def_CreateFromTerm(%struct.term* %call70, %struct.term* %call71, %struct.term* %41, i8* %42)
  store %struct.DEF_HELP* %call72, %struct.DEF_HELP** %def, align 8
  %43 = load %struct.term*, %struct.term** %cand, align 8
  %44 = load %struct.term*, %struct.term** %foundpred, align 8
  %call73 = call i32 @term_TopSymbol(%struct.term* %44)
  %call74 = call i32 @def_PredicateOccurrences(%struct.term* %43, i32 %call73)
  %cmp75 = icmp sgt i32 %call74, 1
  br i1 %cmp75, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %if.then.66
  %45 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  call void @def_RemoveAttribute(%struct.DEF_HELP* %45, i32 1)
  br label %if.end.78

if.else.77:                                       ; preds = %if.then.66
  %46 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  call void @def_AddAttribute(%struct.DEF_HELP* %46, i32 1)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.77, %if.then.76
  %47 = load %struct.term*, %struct.term** %foundpred, align 8
  %call79 = call i32 @term_TopSymbol(%struct.term* %47)
  %call80 = call i32 @fol_Equality()
  %call81 = call i32 @symbol_Equal(i32 %call79, i32 %call80)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %if.end.78
  %48 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  call void @def_AddAttribute(%struct.DEF_HELP* %48, i32 2)
  br label %if.end.85

if.else.84:                                       ; preds = %if.end.78
  %49 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  call void @def_RemoveAttribute(%struct.DEF_HELP* %49, i32 2)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.84, %if.then.83
  %50 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  %51 = bitcast %struct.DEF_HELP* %50 to i8*
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  %call86 = call %struct.LIST_HELP* @list_Cons(i8* %51, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %defslist, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.85, %for.body.62
  %53 = load %struct.term*, %struct.term** %cand, align 8
  call void @term_Delete(%struct.term* %53)
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call89 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.58

for.end.90:                                       ; preds = %for.cond.58
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %55)
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  ret %struct.LIST_HELP* %56
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #2 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Exist() #2 {
entry:
  %0 = load i32, i32* @fol_EXIST, align 4
  ret i32 %0
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

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call)
  ret %struct.LIST_HELP* %call1
}

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
define internal i32 @fol_And() #2 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #2 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

declare %struct.term* @cnf_Flatten(%struct.term*, i32) #1

declare %struct.term* @term_Copy(%struct.term*) #1

declare %struct.term* @fol_CreateQuantifierAddFather(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
}

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
define internal void @term_Free(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

declare void @term_AddFatherLinks(%struct.term*) #1

declare i32 @cnf_ContainsDefinition(%struct.term*, %struct.term**) #1

declare %struct.term* @cnf_DefConvert(%struct.term*, %struct.term*, %struct.term**) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Superterm(%struct.term* %T) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 1
  %term = bitcast %union.anon* %super to %struct.term**
  %1 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @def_RemoveAttribute(%struct.DEF_HELP* %D, i32 %Attribute) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  %Attribute.addr = alloca i32, align 4
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  store i32 %Attribute, i32* %Attribute.addr, align 4
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 6
  %1 = load i32, i32* %attributes, align 4
  %2 = load i32, i32* %Attribute.addr, align 4
  %and = and i32 %1, %2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes1 = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %3, i32 0, i32 6
  %4 = load i32, i32* %attributes1, align 4
  %5 = load i32, i32* %Attribute.addr, align 4
  %sub = sub i32 %4, %5
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes2 = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %6, i32 0, i32 6
  store i32 %sub, i32* %attributes2, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @def_AddAttribute(%struct.DEF_HELP* %D, i32 %Attribute) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  %Attribute.addr = alloca i32, align 4
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  store i32 %Attribute, i32* %Attribute.addr, align 4
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 6
  %1 = load i32, i32* %attributes, align 4
  %2 = load i32, i32* %Attribute.addr, align 4
  %or = or i32 %1, %2
  %3 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes1 = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %3, i32 0, i32 6
  store i32 %or, i32* %attributes1, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #2 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

declare void @term_Delete(%struct.term*) #1

; Function Attrs: nounwind uwtable
define void @def_ExtractDefsFromClauselist(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Clauselist) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clauselist.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %defslist = alloca %struct.LIST_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  %index = alloca i32, align 4
  %pair = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %compl = alloca %struct.LIST_HELP*, align 8
  %compllits = alloca %struct.LIST_HELP*, align 8
  %done = alloca i32, align 4
  %predindex = alloca i32, align 4
  %l2 = alloca %struct.LIST_HELP*, align 8
  %clausenumbers = alloca %struct.LIST_HELP*, align 8
  %args = alloca %struct.LIST_HELP*, align 8
  %def = alloca %struct.DEF_HELP*, align 8
  %i = alloca i32, align 4
  %defterm = alloca %struct.term*, align 8
  %predterm = alloca %struct.term*, align 8
  %con = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Clauselist, %struct.LIST_HELP** %Clauselist.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %defslist, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %FlagStore, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %5, %struct.CLAUSE_HELP** %Clause, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %7 = load i32*, i32** %FlagStore, align 8
  %8 = load i32*, i32** %Precedence, align 8
  %call5 = call i32 @clause_ContainsPotPredDef(%struct.CLAUSE_HELP* %6, i32* %7, i32* %8, i32* %index, %struct.LIST_HELP** %pair)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.89

if.then:                                          ; preds = %for.body
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %compllits, align 8
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %compl, align 8
  store i32 0, i32* %done, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %l, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %if.then
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.8
  %11 = load i32, i32* %done, align 4
  %tobool11 = icmp ne i32 %11, 0
  %lnot12 = xor i1 %tobool11, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.8
  %12 = phi i1 [ false, %for.cond.8 ], [ %lnot12, %land.rhs ]
  br i1 %12, label %for.body.13, label %for.end

for.body.13:                                      ; preds = %land.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %16 = load i32, i32* %index, align 4
  %call15 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %15, i32 %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call16 = call i32 @clause_IsPartOfDefinition(%struct.CLAUSE_HELP* %14, %struct.term* %call15, i32* %predindex, %struct.LIST_HELP* %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.29

if.then.18:                                       ; preds = %for.body.13
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compl, align 8
  %call20 = call %struct.LIST_HELP* @list_Cons(i8* %call19, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %compl, align 8
  %20 = load i32, i32* %predindex, align 4
  %conv = sext i32 %20 to i64
  %21 = inttoptr i64 %conv to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compllits, align 8
  %call21 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %compllits, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call22 = call i8* @list_PairFirst(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call22 to %struct.LIST_HELP*
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.18
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call25 = call i8* @list_PairSecond(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call25 to %struct.LIST_HELP*
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end

if.then.28:                                       ; preds = %land.lhs.true
  store i32 1, i32* %done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.28, %land.lhs.true, %if.then.18
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %for.body.13
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %l, align 8
  br label %for.cond.8

for.end:                                          ; preds = %land.end
  %28 = load i32, i32* %done, align 4
  %tobool31 = icmp ne i32 %28, 0
  br i1 %tobool31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.end
  %call33 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %clausenumbers, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call34 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %29, i32 8)
  store i32 %call34, i32* %con, align 4
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compl, align 8
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %l2, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.49, %if.then.32
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call36 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool37 = icmp ne i32 %call36, 0
  %lnot38 = xor i1 %tobool37, true
  br i1 %lnot38, label %for.body.39, label %for.end.51

for.body.39:                                      ; preds = %for.cond.35
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call40 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call40 to %struct.CLAUSE_HELP*
  %call41 = call i32 @clause_Number(%struct.CLAUSE_HELP* %33)
  %conv42 = sext i32 %call41 to i64
  %34 = inttoptr i64 %conv42 to i8*
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clausenumbers, align 8
  %call43 = call %struct.LIST_HELP* @list_Cons(i8* %34, %struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %clausenumbers, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call44 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call44 to %struct.CLAUSE_HELP*
  %call45 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %37, i32 8)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %for.body.39
  store i32 1, i32* %con, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.47, %for.body.39
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %l2, align 8
  br label %for.cond.35

for.end.51:                                       ; preds = %for.cond.35
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call52 = call i32 @clause_Number(%struct.CLAUSE_HELP* %39)
  %conv53 = sext i32 %call52 to i64
  %40 = inttoptr i64 %conv53 to i8*
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clausenumbers, align 8
  %call54 = call %struct.LIST_HELP* @list_Cons(i8* %40, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %clausenumbers, align 8
  %42 = load i32, i32* %index, align 4
  %conv55 = zext i32 %42 to i64
  %43 = inttoptr i64 %conv55 to i8*
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compllits, align 8
  %call56 = call %struct.LIST_HELP* @list_Cons(i8* %43, %struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %compllits, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %46 = load i32, i32* %index, align 4
  %call57 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %45, i32 %46)
  %call58 = call %struct.term* @term_Copy(%struct.term* %call57)
  store %struct.term* %call58, %struct.term** %predterm, align 8
  %call59 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.71, %for.end.51
  %47 = load i32, i32* %i, align 4
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call61 = call i32 @clause_Length(%struct.CLAUSE_HELP* %48)
  %cmp = icmp ult i32 %47, %call61
  br i1 %cmp, label %for.body.63, label %for.end.72

for.body.63:                                      ; preds = %for.cond.60
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %index, align 4
  %cmp64 = icmp ne i32 %49, %50
  br i1 %cmp64, label %if.then.66, label %if.end.70

if.then.66:                                       ; preds = %for.body.63
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %52 = load i32, i32* %i, align 4
  %call67 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %51, i32 %52)
  %call68 = call %struct.term* @term_Copy(%struct.term* %call67)
  %53 = bitcast %struct.term* %call68 to i8*
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call69 = call %struct.LIST_HELP* @list_Cons(i8* %53, %struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %args, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.66, %for.body.63
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %55 = load i32, i32* %i, align 4
  %inc = add i32 %55, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.60

for.end.72:                                       ; preds = %for.cond.60
  %call73 = call i32 @fol_Or()
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call74 = call %struct.term* @term_CreateAddFather(i32 %call73, %struct.LIST_HELP* %56)
  store %struct.term* %call74, %struct.term** %defterm, align 8
  %call75 = call i32 @fol_Not()
  %57 = load %struct.term*, %struct.term** %defterm, align 8
  %58 = bitcast %struct.term* %57 to i8*
  %call76 = call %struct.LIST_HELP* @list_List(i8* %58)
  %call77 = call %struct.term* @term_Create(i32 %call75, %struct.LIST_HELP* %call76)
  store %struct.term* %call77, %struct.term** %defterm, align 8
  %59 = load %struct.term*, %struct.term** %defterm, align 8
  %call78 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %59)
  store %struct.term* %call78, %struct.term** %defterm, align 8
  %60 = load %struct.term*, %struct.term** %defterm, align 8
  %61 = load %struct.term*, %struct.term** %predterm, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clausenumbers, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compllits, align 8
  %64 = load i32, i32* %con, align 4
  %call79 = call %struct.DEF_HELP* @def_CreateFromClauses(%struct.term* %60, %struct.term* %61, %struct.LIST_HELP* %62, %struct.LIST_HELP* %63, i32 %64)
  store %struct.DEF_HELP* %call79, %struct.DEF_HELP** %def, align 8
  %65 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  %66 = bitcast %struct.DEF_HELP* %65 to i8*
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %66, %struct.LIST_HELP* %67)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %defslist, align 8
  %68 = load i32*, i32** %FlagStore, align 8
  %call81 = call i32 @flag_GetFlagValue(i32* %68, i32 37)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %for.end.72
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call84 = call i32 @fputs(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %69)
  %70 = load %struct.DEF_HELP*, %struct.DEF_HELP** %def, align 8
  call void @def_Print(%struct.DEF_HELP* %70)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %for.end.72
  br label %if.end.88

if.else:                                          ; preds = %for.end
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compllits, align 8
  call void @list_Delete(%struct.LIST_HELP* %71)
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call86 = call i8* @list_PairSecond(%struct.LIST_HELP* %72)
  %73 = bitcast i8* %call86 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %73)
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call87 = call i8* @list_PairFirst(%struct.LIST_HELP* %74)
  %75 = bitcast i8* %call87 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %75)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.end.85
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %compl, align 8
  call void @list_Delete(%struct.LIST_HELP* %76)
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  call void @list_PairFree(%struct.LIST_HELP* %77)
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.body
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call91 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %79 = load i32*, i32** %FlagStore, align 8
  %call93 = call i32 @flag_GetFlagValue(i32* %79, i32 37)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.111

if.then.95:                                       ; preds = %for.end.92
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  %call96 = call i32 @list_Empty(%struct.LIST_HELP* %80)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.110, label %if.then.98

if.then.98:                                       ; preds = %if.then.95
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call99 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %81)
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  store %struct.LIST_HELP* %82, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.107, %if.then.98
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call101 = call i32 @list_Empty(%struct.LIST_HELP* %83)
  %tobool102 = icmp ne i32 %call101, 0
  %lnot103 = xor i1 %tobool102, true
  br i1 %lnot103, label %for.body.104, label %for.end.109

for.body.104:                                     ; preds = %for.cond.100
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call105 = call i8* @list_Car(%struct.LIST_HELP* %84)
  %85 = bitcast i8* %call105 to %struct.DEF_HELP*
  call void @def_Print(%struct.DEF_HELP* %85)
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call106 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %86)
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.104
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call108 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %87)
  store %struct.LIST_HELP* %call108, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.100

for.end.109:                                      ; preds = %for.cond.100
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %if.then.95
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %for.end.92
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  store %struct.LIST_HELP* %88, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.120, %if.end.111
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call113 = call i32 @list_Empty(%struct.LIST_HELP* %89)
  %tobool114 = icmp ne i32 %call113, 0
  %lnot115 = xor i1 %tobool114, true
  br i1 %lnot115, label %for.body.116, label %for.end.122

for.body.116:                                     ; preds = %for.cond.112
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call117 = call i8* @list_Car(%struct.LIST_HELP* %90)
  %91 = bitcast i8* %call117 to %struct.DEF_HELP*
  %call118 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %91)
  %call119 = call i32 @term_TopSymbol(%struct.term* %call118)
  call void @symbol_AddProperty(i32 %call119, i32 128)
  br label %for.inc.120

for.inc.120:                                      ; preds = %for.body.116
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call121 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %92)
  store %struct.LIST_HELP* %call121, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.112

for.end.122:                                      ; preds = %for.cond.112
  %93 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %94 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call123 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %94)
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defslist, align 8
  %call124 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call123, %struct.LIST_HELP* %95)
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %93, %struct.LIST_HELP* %call124)
  ret void
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

declare i32 @clause_ContainsPotPredDef(%struct.CLAUSE_HELP*, i32*, i32*, i32*, %struct.LIST_HELP**) #1

declare i32 @clause_IsPartOfDefinition(%struct.CLAUSE_HELP*, %struct.term*, i32*, %struct.LIST_HELP*) #1

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

declare %struct.term* @term_CreateAddFather(i32, %struct.LIST_HELP*) #1

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #1

declare %struct.term* @cnf_NegationNormalFormula(%struct.term*) #1

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

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @def_Print(%struct.DEF_HELP* %D) #0 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call1 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %1)
  call void @fol_PrettyPrint(%struct.term* %call1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %2)
  %3 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call3 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %3)
  call void @fol_PrettyPrint(%struct.term* %call3)
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call4 = call %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %4)
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else.20, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call6 = call i32 @fputs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %5)
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call7 = call %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %6)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan, align 8
  %7 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call8 = call %struct.LIST_HELP* @def_ClauseLitsList(%struct.DEF_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = ptrtoint i8* %call11 to i32
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = ptrtoint i8* %call12 to i32
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i32 %10, i32 %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %scan, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %conjecture = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %15, i32 0, i32 5
  %16 = load i32, i32* %conjecture, align 4
  %tobool16 = icmp ne i32 %16, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.end
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fputs(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %17)
  br label %if.end

if.else:                                          ; preds = %for.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call19 = call i32 @fputs(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  br label %if.end.31

if.else.20:                                       ; preds = %entry
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call21 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %19)
  %20 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call22 = call i8* @def_Label(%struct.DEF_HELP* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call23 = call i32 @fputs(i8* %call22, %struct._IO_FILE* %21)
  %call24 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %22 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call25 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %22)
  %cmp = icmp ne %struct.term* %call25, null
  br i1 %cmp, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.else.20
  %23 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call27 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %23)
  call void @fol_PrettyPrint(%struct.term* %call27)
  br label %if.end.30

if.else.28:                                       ; preds = %if.else.20
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call29 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._IO_FILE* %24)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call32 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call33 = call i32 @def_HasAttribute(%struct.DEF_HELP* %26, i32 2)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.37, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.31
  %27 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call35 = call i32 @def_HasAttribute(%struct.DEF_HELP* %27, i32 1)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else.48

if.then.37:                                       ; preds = %lor.lhs.false, %if.end.31
  %28 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call38 = call i32 @def_HasAttribute(%struct.DEF_HELP* %28, i32 2)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %if.then.37
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %29)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %if.then.37
  %30 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call43 = call i32 @def_HasAttribute(%struct.DEF_HELP* %30, i32 1)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.end.42
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %31)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.end.42
  br label %if.end.50

if.else.48:                                       ; preds = %lor.lhs.false
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %32)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.48, %if.end.47
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* %L) #2 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_AddProperty(i32 %ActSymbol, i32 %Property) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %1 = load %struct.signature*, %struct.signature** %S, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %1, i32 0, i32 4
  %2 = load i32, i32* %props, align 4
  %3 = load i32, i32* %Property.addr, align 4
  %or = or i32 %2, %3
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %props2 = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 4
  store i32 %or, i32* %props2, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @def_Predicate(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %predicate = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 1
  %1 = load %struct.term*, %struct.term** %predicate, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Definitions) #2 {
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %Prf) #2 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %Def, %struct.term* %Term, i32* %FlagStore, i32* %Precedence, i32* %Complete) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Complete.addr = alloca i32*, align 8
  %newtarget = alloca %struct.term*, align 8
  %oldtarget = alloca %struct.term*, align 8
  %targetpredicate = alloca %struct.term*, align 8
  %totoplevel = alloca %struct.term*, align 8
  %toprove = alloca %struct.term*, align 8
  %targettermvars = alloca %struct.LIST_HELP*, align 8
  %varsfortoplevel = alloca %struct.LIST_HELP*, align 8
  %applicable = alloca i32, align 4
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32* %Complete, i32** %Complete.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %oldtarget, align 8
  %1 = load i32*, i32** %Complete.addr, align 8
  store i32 1, i32* %1, align 4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end.42
  %2 = load %struct.term*, %struct.term** %oldtarget, align 8
  %call = call %struct.term* @term_Copy(%struct.term* %2)
  store %struct.term* %call, %struct.term** %newtarget, align 8
  %3 = load %struct.term*, %struct.term** %newtarget, align 8
  call void @term_AddFatherLinks(%struct.term* %3)
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %varsfortoplevel, align 8
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %targettermvars, align 8
  %4 = load %struct.term*, %struct.term** %newtarget, align 8
  %5 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call2 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %5)
  %call3 = call i32 @term_TopSymbol(%struct.term* %call2)
  %call4 = call i32 @cnf_ContainsPredicate(%struct.term* %4, i32 %call3, %struct.term** %targetpredicate, %struct.term** %totoplevel, %struct.LIST_HELP** %targettermvars, %struct.LIST_HELP** %varsfortoplevel)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else.37

if.then:                                          ; preds = %while.body
  %6 = load i32*, i32** %Complete.addr, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %applicable, align 4
  %7 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call5 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %7)
  %call6 = call %struct.term* @term_Null()
  %call7 = call i32 @term_Equal(%struct.term* %call5, %struct.term* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  store i32 1, i32* %applicable, align 4
  %8 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call10 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %8)
  %9 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call11 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %9)
  %call12 = call %struct.term* @term_Copy(%struct.term* %call11)
  %10 = load %struct.term*, %struct.term** %newtarget, align 8
  %11 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %12 = load i32*, i32** %FlagStore.addr, align 8
  %call13 = call %struct.term* @cnf_ApplyDefinitionOnce(%struct.term* %call10, %struct.term* %call12, %struct.term* %10, %struct.term* %11, i32* %12)
  store %struct.term* %call13, %struct.term** %newtarget, align 8
  %13 = load %struct.term*, %struct.term** %oldtarget, align 8
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp = icmp ne %struct.term* %13, %14
  br i1 %cmp, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.then.9
  %15 = load %struct.term*, %struct.term** %oldtarget, align 8
  call void @term_Delete(%struct.term* %15)
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.then.9
  %16 = load %struct.term*, %struct.term** %newtarget, align 8
  store %struct.term* %16, %struct.term** %oldtarget, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  br label %if.end.36

if.else:                                          ; preds = %if.then
  %19 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call15 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %19)
  %call16 = call %struct.term* @term_Copy(%struct.term* %call15)
  store %struct.term* %call16, %struct.term** %toprove, align 8
  %20 = load %struct.term*, %struct.term** %newtarget, align 8
  %21 = load %struct.term*, %struct.term** %totoplevel, align 8
  %22 = load %struct.term*, %struct.term** %toprove, align 8
  %23 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call17 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %23)
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call17)
  %24 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  %27 = load i32*, i32** %FlagStore.addr, align 8
  %28 = load i32*, i32** %Precedence.addr, align 8
  %call20 = call %struct.term* @cnf_DefTargetConvert(%struct.term* %20, %struct.term* %21, %struct.term* %22, %struct.LIST_HELP* %call18, %struct.LIST_HELP* %call19, %struct.LIST_HELP* %25, %struct.LIST_HELP* %26, i32* %27, i32* %28, i32* %applicable)
  store %struct.term* %call20, %struct.term** %newtarget, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  call void @list_Delete(%struct.LIST_HELP* %30)
  %31 = load i32, i32* %applicable, align 4
  %tobool21 = icmp ne i32 %31, 0
  br i1 %tobool21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.else
  %32 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call23 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %32)
  %33 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call24 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %33)
  %call25 = call %struct.term* @term_Copy(%struct.term* %call24)
  %34 = load %struct.term*, %struct.term** %newtarget, align 8
  %35 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %36 = load i32*, i32** %FlagStore.addr, align 8
  %call26 = call %struct.term* @cnf_ApplyDefinitionOnce(%struct.term* %call23, %struct.term* %call25, %struct.term* %34, %struct.term* %35, i32* %36)
  store %struct.term* %call26, %struct.term** %newtarget, align 8
  %37 = load %struct.term*, %struct.term** %oldtarget, align 8
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp27 = icmp ne %struct.term* %37, %38
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.then.22
  %39 = load %struct.term*, %struct.term** %oldtarget, align 8
  call void @term_Delete(%struct.term* %39)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.28, %if.then.22
  %40 = load %struct.term*, %struct.term** %newtarget, align 8
  store %struct.term* %40, %struct.term** %oldtarget, align 8
  br label %if.end.35

if.else.30:                                       ; preds = %if.else
  %41 = load %struct.term*, %struct.term** %newtarget, align 8
  call void @term_Delete(%struct.term* %41)
  %42 = load %struct.term*, %struct.term** %oldtarget, align 8
  %43 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp31 = icmp eq %struct.term* %42, %43
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %if.else.30
  store %struct.term* null, %struct.term** %retval
  br label %return

if.else.33:                                       ; preds = %if.else.30
  %44 = load %struct.term*, %struct.term** %oldtarget, align 8
  %call34 = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %44)
  store %struct.term* %call34, %struct.term** %oldtarget, align 8
  %45 = load %struct.term*, %struct.term** %oldtarget, align 8
  store %struct.term* %45, %struct.term** %retval
  br label %return

if.end.35:                                        ; preds = %if.end.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  br label %if.end.42

if.else.37:                                       ; preds = %while.body
  %46 = load i32*, i32** %Complete.addr, align 8
  store i32 1, i32* %46, align 4
  %47 = load %struct.term*, %struct.term** %newtarget, align 8
  call void @term_Delete(%struct.term* %47)
  %48 = load %struct.term*, %struct.term** %oldtarget, align 8
  %49 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp38 = icmp eq %struct.term* %48, %49
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %if.else.37
  store %struct.term* null, %struct.term** %retval
  br label %return

if.else.40:                                       ; preds = %if.else.37
  %50 = load %struct.term*, %struct.term** %oldtarget, align 8
  %call41 = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %50)
  store %struct.term* %call41, %struct.term** %oldtarget, align 8
  %51 = load %struct.term*, %struct.term** %oldtarget, align 8
  store %struct.term* %51, %struct.term** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.36
  br label %while.body

return:                                           ; preds = %if.else.40, %if.then.39, %if.else.33, %if.then.32
  %52 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %52
}

declare i32 @cnf_ContainsPredicate(%struct.term*, i32, %struct.term**, %struct.term**, %struct.LIST_HELP**, %struct.LIST_HELP**) #1

declare i32 @term_Equal(%struct.term*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @def_ToProve(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %toprove = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 2
  %1 = load %struct.term*, %struct.term** %toprove, align 8
  ret %struct.term* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #2 {
entry:
  ret %struct.term* null
}

declare %struct.term* @cnf_ApplyDefinitionOnce(%struct.term*, %struct.term*, %struct.term*, %struct.term*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @def_Expansion(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %expansion = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 0
  %1 = load %struct.term*, %struct.term** %expansion, align 8
  ret %struct.term* %1
}

declare %struct.term* @cnf_DefTargetConvert(%struct.term*, %struct.term*, %struct.term*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*, i32*) #1

declare %struct.term* @cnf_ObviousSimplifications(%struct.term*) #1

; Function Attrs: nounwind uwtable
define %struct.term* @def_ApplyDefToTermExhaustive(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %oldterm = alloca %struct.term*, align 8
  %newterm = alloca %struct.term*, align 8
  %done = alloca i32, align 4
  %complete = alloca i32, align 4
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 0, i32* %done, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %oldterm, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call, i32** %FlagStore, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %2)
  store i32* %call1, i32** %Precedence, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %3 = load i32, i32* %done, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 1, i32* %done, align 4
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot5 = xor i1 %tobool4, true
  br i1 %lnot5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call6 to %struct.DEF_HELP*
  %8 = load %struct.term*, %struct.term** %oldterm, align 8
  %9 = load i32*, i32** %FlagStore, align 8
  %10 = load i32*, i32** %Precedence, align 8
  %call7 = call %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %7, %struct.term* %8, i32* %9, i32* %10, i32* %complete)
  store %struct.term* %call7, %struct.term** %newterm, align 8
  %11 = load %struct.term*, %struct.term** %newterm, align 8
  %cmp = icmp ne %struct.term* %11, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %oldterm, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp8 = icmp ne %struct.term* %12, %13
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %14 = load %struct.term*, %struct.term** %oldterm, align 8
  call void @term_Delete(%struct.term* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %if.then
  %15 = load %struct.term*, %struct.term** %newterm, align 8
  store %struct.term* %15, %struct.term** %oldterm, align 8
  store i32 0, i32* %done, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %17 = load %struct.term*, %struct.term** %oldterm, align 8
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %cmp12 = icmp eq %struct.term* %17, %18
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %while.end
  store %struct.term* null, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %while.end
  %19 = load %struct.term*, %struct.term** %oldterm, align 8
  store %struct.term* %19, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.13
  %20 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %20
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_ApplyDefToClauseOnce(%struct.DEF_HELP* %Def, %struct.CLAUSE_HELP* %Clause, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %c = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  %call = call %struct.LIST_HELP* @list_List(i8* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.CLAUSE_HELP*
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call3 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %6)
  %call4 = call i32 @term_TopSymbol(%struct.term* %call3)
  %call5 = call i32 @clause_ContainsSymbol(%struct.CLAUSE_HELP* %5, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.15

if.then:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %10 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call8 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %10)
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call9 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %11)
  %12 = load i32*, i32** %FlagStore.addr, align 8
  %13 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call %struct.LIST_HELP* @cnf_ApplyDefinitionToClause(%struct.CLAUSE_HELP* %9, %struct.term* %call8, %struct.term* %call9, i32* %12, i32* %13)
  %call11 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %7, %struct.LIST_HELP* %call10)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %result, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call12 to %struct.CLAUSE_HELP*
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %15, %16
  br i1 %cmp, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call14 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %18)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %19, i8* null)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call17 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %21, i8* null)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %result, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.26, label %if.then.20

if.then.20:                                       ; preds = %for.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call21 = call i8* @list_First(%struct.LIST_HELP* %23)
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = bitcast %struct.CLAUSE_HELP* %24 to i8*
  %cmp22 = icmp eq i8* %call21, %25
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.20
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call24 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %result, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.end
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %l, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.45, %if.end.26
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot30 = xor i1 %tobool29, true
  br i1 %lnot30, label %for.body.31, label %for.end.47

for.body.31:                                      ; preds = %for.cond.27
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call32 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %30, %struct.CLAUSE_HELP** %c, align 8
  %31 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call33 = call i32 @def_Conjecture(%struct.DEF_HELP* %31)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %for.body.31
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call36 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %33, i32 8)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %for.body.31
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  call void @clause_SetFromDefApplication(%struct.CLAUSE_HELP* %34)
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call38 = call i32 @clause_Number(%struct.CLAUSE_HELP* %36)
  %conv = sext i32 %call38 to i64
  %37 = inttoptr i64 %conv to i8*
  %38 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call39 = call %struct.LIST_HELP* @def_ClauseNumberList(%struct.DEF_HELP* %38)
  %call40 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call39)
  %call41 = call %struct.LIST_HELP* @list_Cons(i8* %37, %struct.LIST_HELP* %call40)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %35, %struct.LIST_HELP* %call41)
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %40 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call42 = call %struct.LIST_HELP* @def_ClauseLitsList(%struct.DEF_HELP* %40)
  %call43 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call42)
  %call44 = call %struct.LIST_HELP* @list_Cons(i8* null, %struct.LIST_HELP* %call43)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %39, %struct.LIST_HELP* %call44)
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.37
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %l, align 8
  br label %for.cond.27

for.end.47:                                       ; preds = %for.cond.27
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %42
}

declare i32 @clause_ContainsSymbol(%struct.CLAUSE_HELP*, i32) #1

declare %struct.LIST_HELP* @cnf_ApplyDefinitionToClause(%struct.CLAUSE_HELP*, %struct.term*, %struct.term*, i32*, i32*) #1

declare void @clause_Delete(%struct.CLAUSE_HELP*) #1

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

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #1

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
define internal i32 @def_Conjecture(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %conjecture = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 5
  %1 = load i32, i32* %conjecture, align 4
  ret i32 %1
}

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

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromDefApplication(%struct.CLAUSE_HELP* %Clause) #2 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 25, i32* %origin, align 4
  ret void
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
define internal %struct.LIST_HELP* @def_ClauseLitsList(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %parentclauses = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentclauses, align 8
  %call = call i8* @list_PairSecond(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.LIST_HELP*
  ret %struct.LIST_HELP* %2
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_ApplyDefToClauseExhaustive(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %newclauses = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %orig = alloca %struct.CLAUSE_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %nextlist = alloca %struct.LIST_HELP*, align 8
  %clauses = alloca %struct.LIST_HELP*, align 8
  %c = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %0)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %orig, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %orig, align 8
  %2 = bitcast %struct.CLAUSE_HELP* %1 to i8*
  %call1 = call %struct.LIST_HELP* @list_List(i8* %2)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %newclauses, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %result, align 8
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %3)
  store i32* %call3, i32** %FlagStore, align 8
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %4)
  store i32* %call4, i32** %Precedence, align 8
  br label %while.cond

while.cond:                                       ; preds = %for.end.38, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauses, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %nextlist, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauses, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot9 = xor i1 %tobool8, true
  br i1 %lnot9, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call10 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP** %c, align 8
  %call11 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %clauses, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call12 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %10)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauses, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call18 to %struct.DEF_HELP*
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %16 = load i32*, i32** %FlagStore, align 8
  %17 = load i32*, i32** %Precedence, align 8
  %call19 = call %struct.LIST_HELP* @def_ApplyDefToClauseOnce(%struct.DEF_HELP* %14, %struct.CLAUSE_HELP* %15, i32* %16, i32* %17)
  %call20 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %clauses, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.17
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauses, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.else.30, label %if.then

if.then:                                          ; preds = %for.end
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp = icmp ne %struct.CLAUSE_HELP* %20, %21
  br i1 %cmp, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %if.then
  %22 = load i32*, i32** %FlagStore, align 8
  %call25 = call i32 @flag_GetFlagValue(i32* %22, i32 9)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %if.then.24
  %23 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %23, %struct.CLAUSE_HELP* %24)
  br label %if.end

if.else:                                          ; preds = %if.then.24
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %25)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.27
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nextlist, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauses, align 8
  %call29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %nextlist, align 8
  br label %if.end.35

if.else.30:                                       ; preds = %for.end
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %cmp31 = icmp ne %struct.CLAUSE_HELP* %28, %29
  br i1 %cmp31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.30
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %c, align 8
  %31 = bitcast %struct.CLAUSE_HELP* %30 to i8*
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call33 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %result, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else.30
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.end.28
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %nextlist, align 8
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %newclauses, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %36
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #1

declare void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #1

declare void @fol_PrettyPrint(%struct.term*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @def_Label(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %label = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 4
  %1 = load i8*, i8** %label, align 8
  ret i8* %1
}

declare i32 @puts(i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @def_HasAttribute(%struct.DEF_HELP* %D, i32 %Attribute) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  %Attribute.addr = alloca i32, align 4
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  store i32 %Attribute, i32* %Attribute.addr, align 4
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %attributes = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %0, i32 0, i32 6
  %1 = load i32, i32* %attributes, align 4
  %2 = load i32, i32* %Attribute.addr, align 4
  %and = and i32 %1, %2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_ApplyDefToClauselist(%struct.PROOFSEARCH_HELP* %Search, %struct.DEF_HELP* %Def, %struct.LIST_HELP* %Clauselist, i32 %Destructive) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %Clauselist.addr = alloca %struct.LIST_HELP*, align 8
  %Destructive.addr = alloca i32, align 4
  %l = alloca %struct.LIST_HELP*, align 8
  %newclauses = alloca %struct.LIST_HELP*, align 8
  %allnew = alloca %struct.LIST_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  store %struct.LIST_HELP* %Clauselist, %struct.LIST_HELP** %Clauselist.addr, align 8
  store i32 %Destructive, i32* %Destructive.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %allnew, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %FlagStore, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call4 to %struct.CLAUSE_HELP*
  %7 = load i32*, i32** %FlagStore, align 8
  %8 = load i32*, i32** %Precedence, align 8
  %call5 = call %struct.LIST_HELP* @def_ApplyDefToClauseOnce(%struct.DEF_HELP* %4, %struct.CLAUSE_HELP* %6, i32* %7, i32* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %newclauses, align 8
  %9 = load i32, i32* %Destructive.addr, align 4
  %tobool6 = icmp ne i32 %9, 0
  br i1 %tobool6, label %land.lhs.true, label %if.end.14

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauses, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.14, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32*, i32** %FlagStore, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %11, i32 9)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.then
  %12 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call12 to %struct.CLAUSE_HELP*
  call void @prfs_InsertDocProofClause(%struct.PROOFSEARCH_HELP* %12, %struct.CLAUSE_HELP* %14)
  br label %if.end

if.else:                                          ; preds = %if.then
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call13 to %struct.CLAUSE_HELP*
  call void @clause_Delete(%struct.CLAUSE_HELP* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %17, i8* null)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %land.lhs.true, %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allnew, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauses, align 8
  %call15 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %18, %struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %allnew, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.14
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %21 = load i32, i32* %Destructive.addr, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  %call19 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %22, i8* null)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Clauselist.addr, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end
  %23 = load i32*, i32** %FlagStore, align 8
  %call21 = call i32 @flag_GetFlagValue(i32* %23, i32 37)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.29

if.then.23:                                       ; preds = %if.end.20
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allnew, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.28, label %if.then.26

if.then.26:                                       ; preds = %if.then.23
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call27 = call i32 @fputs(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i32 0, i32 0), %struct._IO_FILE* %25)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allnew, align 8
  call void @clause_ListPrint(%struct.LIST_HELP* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.20
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allnew, align 8
  %call30 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %27, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Clauselist.addr, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauselist.addr, align 8
  ret %struct.LIST_HELP* %29
}

declare void @clause_ListPrint(%struct.LIST_HELP*) #1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_ApplyDefToTermlist(%struct.DEF_HELP* %Def, %struct.LIST_HELP* %Termlist, i32* %FlagStore, i32* %Precedence, i32* %Complete, i32 %Destructive) #0 {
entry:
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %Termlist.addr = alloca %struct.LIST_HELP*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Complete.addr = alloca i32*, align 8
  %Destructive.addr = alloca i32, align 4
  %l = alloca %struct.LIST_HELP*, align 8
  %newterms = alloca %struct.LIST_HELP*, align 8
  %newterm = alloca %struct.term*, align 8
  %oldterm = alloca %struct.term*, align 8
  %complete = alloca i32, align 4
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  store %struct.LIST_HELP* %Termlist, %struct.LIST_HELP** %Termlist.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32* %Complete, i32** %Complete.addr, align 8
  store i32 %Destructive, i32* %Destructive.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %newterms, align 8
  %0 = load i32*, i32** %Complete.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termlist.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_PairSecond(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.term*
  store %struct.term* %5, %struct.term** %oldterm, align 8
  %6 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %7 = load %struct.term*, %struct.term** %oldterm, align 8
  %8 = load i32*, i32** %FlagStore.addr, align 8
  %9 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %6, %struct.term* %7, i32* %8, i32* %9, i32* %complete)
  store %struct.term* %call4, %struct.term** %newterm, align 8
  %10 = load i32, i32* %complete, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %11 = load i32*, i32** %Complete.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %12 = load %struct.term*, %struct.term** %newterm, align 8
  %cmp = icmp ne %struct.term* %12, null
  br i1 %cmp, label %if.then.6, label %if.end.22

if.then.6:                                        ; preds = %if.end
  %13 = load %struct.term*, %struct.term** %newterm, align 8
  %14 = bitcast %struct.term* %13 to i8*
  %call7 = call %struct.LIST_HELP* @list_PairCreate(i8* null, i8* %14)
  %15 = bitcast %struct.LIST_HELP* %call7 to i8*
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newterms, align 8
  %call8 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %newterms, align 8
  %17 = load i32, i32* %Destructive.addr, align 4
  %tobool9 = icmp ne i32 %17, 0
  br i1 %tobool9, label %if.then.10, label %if.end.21

if.then.10:                                       ; preds = %if.then.6
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call11 to %struct.LIST_HELP*
  %call12 = call i8* @list_PairSecond(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call12 to %struct.term*
  call void @term_Delete(%struct.term* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call13 to %struct.LIST_HELP*
  %call14 = call i8* @list_PairFirst(%struct.LIST_HELP* %22)
  %cmp15 = icmp ne i8* %call14, null
  br i1 %cmp15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.10
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_PairFirst(%struct.LIST_HELP* %24)
  call void @string_StringFree(i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.10
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call20 to %struct.LIST_HELP*
  call void @list_PairFree(%struct.LIST_HELP* %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %27, i8* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.19, %if.then.6
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termlist.addr, align 8
  %call24 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %29, i8* null)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Termlist.addr, align 8
  %30 = load i32*, i32** %FlagStore.addr, align 8
  %call25 = call i32 @flag_GetFlagValue(i32* %30, i32 37)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.44

if.then.27:                                       ; preds = %for.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newterms, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.43, label %if.then.30

if.then.30:                                       ; preds = %if.then.27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call31 = call i32 @fputs(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newterms, align 8
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %l, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.40, %if.then.30
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool34 = icmp ne i32 %call33, 0
  %lnot35 = xor i1 %tobool34, true
  br i1 %lnot35, label %for.body.36, label %for.end.42

for.body.36:                                      ; preds = %for.cond.32
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %35)
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call38 to %struct.LIST_HELP*
  %call39 = call i8* @list_PairSecond(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call39 to %struct.term*
  call void @fol_PrettyPrint(%struct.term* %38)
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.body.36
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call41 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %l, align 8
  br label %for.cond.32

for.end.42:                                       ; preds = %for.cond.32
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %if.then.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %for.end
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termlist.addr, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newterms, align 8
  %call45 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %40, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Termlist.addr, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termlist.addr, align 8
  ret %struct.LIST_HELP* %42
}

declare void @string_StringFree(i8*) #1

; Function Attrs: nounwind uwtable
define void @def_ExtractDefsFromTermlist(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Conj) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Conj.addr = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %deflist = alloca %struct.LIST_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Conj, %struct.LIST_HELP** %Conj.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %deflist, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %FlagStore, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.LIST_HELP*
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call4 to %struct.term*
  call void @fol_NormalizeVars(%struct.term* %5)
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call5 to %struct.LIST_HELP*
  %call6 = call i8* @list_PairSecond(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call6 to %struct.term*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call7 to %struct.LIST_HELP*
  %call8 = call i8* @list_PairFirst(%struct.LIST_HELP* %11)
  %call9 = call %struct.LIST_HELP* @def_ExtractDefsFromTerm(%struct.term* %9, i8* %call8)
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %deflist, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conj.addr, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %l, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.25, %for.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  br i1 %lnot15, label %for.body.16, label %for.end.27

for.body.16:                                      ; preds = %for.cond.12
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_PairSecond(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call18 to %struct.term*
  call void @fol_NormalizeVars(%struct.term* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call19 to %struct.LIST_HELP*
  %call20 = call i8* @list_PairSecond(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call20 to %struct.term*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call21 to %struct.LIST_HELP*
  %call22 = call i8* @list_PairFirst(%struct.LIST_HELP* %23)
  %call23 = call %struct.LIST_HELP* @def_ExtractDefsFromTerm(%struct.term* %21, i8* %call22)
  %call24 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %18, %struct.LIST_HELP* %call23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %deflist, align 8
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.body.16
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %l, align 8
  br label %for.cond.12

for.end.27:                                       ; preds = %for.cond.12
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %l, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.36, %for.end.27
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br i1 %lnot31, label %for.body.32, label %for.end.38

for.body.32:                                      ; preds = %for.cond.28
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call33 to %struct.DEF_HELP*
  %call34 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %28)
  %call35 = call i32 @term_TopSymbol(%struct.term* %call34)
  call void @symbol_AddProperty(i32 %call35, i32 128)
  br label %for.inc.36

for.inc.36:                                       ; preds = %for.body.32
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %l, align 8
  br label %for.cond.28

for.end.38:                                       ; preds = %for.cond.28
  %30 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %31 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call39 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  %call40 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call39, %struct.LIST_HELP* %32)
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %30, %struct.LIST_HELP* %call40)
  %33 = load i32*, i32** %FlagStore, align 8
  %call41 = call i32 @flag_GetFlagValue(i32* %33, i32 37)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then, label %if.end.58

if.then:                                          ; preds = %for.end.38
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %deflist, align 8
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end, label %if.then.45

if.then.45:                                       ; preds = %if.then
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call46 = call i32 @fputs(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %35)
  %36 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call47 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %36)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %l, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.55, %if.then.45
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot51 = xor i1 %tobool50, true
  br i1 %lnot51, label %for.body.52, label %for.end.57

for.body.52:                                      ; preds = %for.cond.48
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call53 to %struct.DEF_HELP*
  call void @def_Print(%struct.DEF_HELP* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call54 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %40)
  br label %for.inc.55

for.inc.55:                                       ; preds = %for.body.52
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %l, align 8
  br label %for.cond.48

for.end.57:                                       ; preds = %for.cond.48
  br label %if.end

if.end:                                           ; preds = %for.end.57, %if.then
  br label %if.end.58

if.end.58:                                        ; preds = %if.end, %for.end.38
  ret void
}

declare void @fol_NormalizeVars(%struct.term*) #1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_FlattenWithOneDefinition(%struct.PROOFSEARCH_HELP* %Search, %struct.DEF_HELP* %Def) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %newdefinitions = alloca %struct.LIST_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %definitions = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %d = alloca %struct.DEF_HELP*, align 8
  %newexpansion = alloca %struct.term*, align 8
  %complete = alloca i32, align 4
  %newdef = alloca %struct.DEF_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %newdefinitions, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %FlagStore, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call3 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %2)
  %cmp = icmp eq %struct.term* %call3, null
  br i1 %cmp, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %definitions, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call6 to %struct.DEF_HELP*
  store %struct.DEF_HELP* %7, %struct.DEF_HELP** %d, align 8
  %8 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %9 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %cmp7 = icmp ne %struct.DEF_HELP* %8, %9
  br i1 %cmp7, label %if.then.8, label %if.end.31

if.then.8:                                        ; preds = %for.body
  %10 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call9 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %10)
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call10 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %11)
  %call11 = call i32 @term_TopSymbol(%struct.term* %call10)
  %call12 = call i32 @term_ContainsSymbol(%struct.term* %call9, i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.30

if.then.14:                                       ; preds = %if.then.8
  %12 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call15 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %12)
  %13 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call16 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %13)
  %call17 = call i32 @term_TopSymbol(%struct.term* %call16)
  %call18 = call i32 @term_ContainsSymbol(%struct.term* %call15, i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end, label %if.then.20

if.then.20:                                       ; preds = %if.then.14
  %14 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %15 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call21 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %15)
  %16 = load i32*, i32** %FlagStore, align 8
  %17 = load i32*, i32** %Precedence, align 8
  %call22 = call %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %14, %struct.term* %call21, i32* %16, i32* %17, i32* %complete)
  store %struct.term* %call22, %struct.term** %newexpansion, align 8
  %18 = load %struct.term*, %struct.term** %newexpansion, align 8
  %19 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call23 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %19)
  %call24 = call %struct.term* @term_Copy(%struct.term* %call23)
  %20 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call25 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %20)
  %call26 = call %struct.term* @term_Copy(%struct.term* %call25)
  %21 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call27 = call i8* @def_Label(%struct.DEF_HELP* %21)
  %call28 = call %struct.DEF_HELP* @def_CreateFromTerm(%struct.term* %18, %struct.term* %call24, %struct.term* %call26, i8* %call27)
  store %struct.DEF_HELP* %call28, %struct.DEF_HELP** %newdef, align 8
  %22 = load %struct.DEF_HELP*, %struct.DEF_HELP** %newdef, align 8
  %23 = bitcast %struct.DEF_HELP* %22 to i8*
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newdefinitions, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %23, %struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %newdefinitions, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.20, %if.then.14
  br label %if.end.30

if.end.30:                                        ; preds = %if.end, %if.then.8
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %entry
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newdefinitions, align 8
  ret %struct.LIST_HELP* %26
}

declare i32 @term_ContainsSymbol(%struct.term*, i32) #1

; Function Attrs: nounwind uwtable
define void @def_FlattenWithOneDefinitionDestructive(%struct.PROOFSEARCH_HELP* %Search, %struct.DEF_HELP* %Def) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %definitions = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %d = alloca %struct.DEF_HELP*, align 8
  %newexpansion = alloca %struct.term*, align 8
  %complete = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %FlagStore, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call2 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %2)
  %cmp = icmp eq %struct.term* %call2, null
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %definitions, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.DEF_HELP*
  store %struct.DEF_HELP* %7, %struct.DEF_HELP** %d, align 8
  %8 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %9 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %cmp6 = icmp ne %struct.DEF_HELP* %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.26

if.then.7:                                        ; preds = %for.body
  %10 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call8 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %10)
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call9 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %11)
  %call10 = call i32 @term_TopSymbol(%struct.term* %call9)
  %call11 = call i32 @term_ContainsSymbol(%struct.term* %call8, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.then.7
  %12 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call14 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %12)
  %13 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call15 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %13)
  %call16 = call i32 @term_TopSymbol(%struct.term* %call15)
  %call17 = call i32 @term_ContainsSymbol(%struct.term* %call14, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %if.then.13
  %14 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %15 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call20 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %15)
  %16 = load i32*, i32** %FlagStore, align 8
  %17 = load i32*, i32** %Precedence, align 8
  %call21 = call %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %14, %struct.term* %call20, i32* %16, i32* %17, i32* %complete)
  store %struct.term* %call21, %struct.term** %newexpansion, align 8
  %18 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call22 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %18)
  call void @term_Delete(%struct.term* %call22)
  %19 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %20 = load %struct.term*, %struct.term** %newexpansion, align 8
  call void @def_RplacExp(%struct.DEF_HELP* %19, %struct.term* %20)
  br label %if.end

if.else:                                          ; preds = %if.then.13
  %21 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call23 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %21)
  %call24 = call i32 @term_TopSymbol(%struct.term* %call23)
  call void @symbol_RemoveProperty(i32 %call24, i32 128)
  %22 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  call void @def_Delete(%struct.DEF_HELP* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %23, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.7
  br label %if.end.27

if.else.26:                                       ; preds = %for.body
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %24, i8* null)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call29 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %26)
  %call30 = call i32 @term_TopSymbol(%struct.term* %call29)
  call void @symbol_RemoveProperty(i32 %call30, i32 128)
  %27 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  call void @def_Delete(%struct.DEF_HELP* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  %call31 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %28, i8* null)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %definitions, align 8
  %29 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %29, %struct.LIST_HELP* %30)
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @def_RplacExp(%struct.DEF_HELP* %D, %struct.term* %E) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  %E.addr = alloca %struct.term*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  store %struct.term* %E, %struct.term** %E.addr, align 8
  %0 = load %struct.term*, %struct.term** %E.addr, align 8
  %1 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %expansion = getelementptr inbounds %struct.DEF_HELP, %struct.DEF_HELP* %1, i32 0, i32 0
  store %struct.term* %0, %struct.term** %expansion, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_RemoveProperty(i32 %ActSymbol, i32 %Property) #2 {
entry:
  %ActSymbol.addr = alloca i32, align 4
  %Property.addr = alloca i32, align 4
  %S = alloca %struct.signature*, align 8
  store i32 %ActSymbol, i32* %ActSymbol.addr, align 4
  store i32 %Property, i32* %Property.addr, align 4
  %0 = load i32, i32* %ActSymbol.addr, align 4
  %call = call i32 @symbol_Index(i32 %0)
  %call1 = call %struct.signature* @symbol_Signature(i32 %call)
  store %struct.signature* %call1, %struct.signature** %S, align 8
  %1 = load %struct.signature*, %struct.signature** %S, align 8
  %props = getelementptr inbounds %struct.signature, %struct.signature* %1, i32 0, i32 4
  %2 = load i32, i32* %props, align 4
  %3 = load i32, i32* %Property.addr, align 4
  %and = and i32 %2, %3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.signature*, %struct.signature** %S, align 8
  %props2 = getelementptr inbounds %struct.signature, %struct.signature* %4, i32 0, i32 4
  %5 = load i32, i32* %props2, align 4
  %6 = load i32, i32* %Property.addr, align 4
  %sub = sub i32 %5, %6
  %7 = load %struct.signature*, %struct.signature** %S, align 8
  %props3 = getelementptr inbounds %struct.signature, %struct.signature* %7, i32 0, i32 4
  store i32 %sub, i32* %props3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @def_FlattenWithOneDefinitionSemiDestructive(%struct.PROOFSEARCH_HELP* %Search, %struct.DEF_HELP* %Def) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Def.addr = alloca %struct.DEF_HELP*, align 8
  %FlagStore = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %definitions = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %d = alloca %struct.DEF_HELP*, align 8
  %newexpansion = alloca %struct.term*, align 8
  %complete = alloca i32, align 4
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.DEF_HELP* %Def, %struct.DEF_HELP** %Def.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %FlagStore, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call2 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %2)
  %cmp = icmp eq %struct.term* %call2, null
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %3)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %definitions, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.DEF_HELP*
  store %struct.DEF_HELP* %7, %struct.DEF_HELP** %d, align 8
  %8 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %9 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %cmp6 = icmp ne %struct.DEF_HELP* %8, %9
  br i1 %cmp6, label %if.then.7, label %if.end.26

if.then.7:                                        ; preds = %for.body
  %10 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call8 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %10)
  %11 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call9 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %11)
  %call10 = call i32 @term_TopSymbol(%struct.term* %call9)
  %call11 = call i32 @term_ContainsSymbol(%struct.term* %call8, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.25

if.then.13:                                       ; preds = %if.then.7
  %12 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %call14 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %12)
  %13 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call15 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %13)
  %call16 = call i32 @term_TopSymbol(%struct.term* %call15)
  %call17 = call i32 @term_ContainsSymbol(%struct.term* %call14, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.else, label %if.then.19

if.then.19:                                       ; preds = %if.then.13
  %14 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def.addr, align 8
  %15 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call20 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %15)
  %16 = load i32*, i32** %FlagStore, align 8
  %17 = load i32*, i32** %Precedence, align 8
  %call21 = call %struct.term* @def_ApplyDefToTermOnce(%struct.DEF_HELP* %14, %struct.term* %call20, i32* %16, i32* %17, i32* %complete)
  store %struct.term* %call21, %struct.term** %newexpansion, align 8
  %18 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call22 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %18)
  call void @term_Delete(%struct.term* %call22)
  %19 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %20 = load %struct.term*, %struct.term** %newexpansion, align 8
  call void @def_RplacExp(%struct.DEF_HELP* %19, %struct.term* %20)
  br label %if.end

if.else:                                          ; preds = %if.then.13
  %21 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call23 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %21)
  %call24 = call i32 @term_TopSymbol(%struct.term* %call23)
  call void @symbol_RemoveProperty(i32 %call24, i32 128)
  %22 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  call void @def_Delete(%struct.DEF_HELP* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %23, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.19
  br label %if.end.25

if.end.25:                                        ; preds = %if.end, %if.then.7
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.28

if.end.28:                                        ; preds = %for.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @def_FlattenDefinitionsDestructive(%struct.PROOFSEARCH_HELP* %Search) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %d = alloca %struct.DEF_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.DEF_HELP*
  store %struct.DEF_HELP* %3, %struct.DEF_HELP** %d, align 8
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %call3 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %4)
  call void @fol_PrettyPrintDFG(%struct.term* %call3)
  %5 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  %cmp = icmp ne %struct.DEF_HELP* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %7 = load %struct.DEF_HELP*, %struct.DEF_HELP** %d, align 8
  call void @def_FlattenWithOneDefinitionSemiDestructive(%struct.PROOFSEARCH_HELP* %6, %struct.DEF_HELP* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %10 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call5 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %10)
  %call6 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call5, i8* null)
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %9, %struct.LIST_HELP* %call6)
  ret void
}

declare void @fol_PrettyPrintDFG(%struct.term*) #1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %Term, %struct.term* %SubTerm, i32 %Polarity) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %SubTerm.addr = alloca %struct.term*, align 8
  %Polarity.addr = alloca i32, align 4
  %SuperTerm = alloca %struct.term*, align 8
  %AddToList = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %NewList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %SubTerm, %struct.term** %SubTerm.addr, align 8
  store i32 %Polarity, i32* %Polarity.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %0)
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %cmp = icmp eq %struct.term* %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call1 = call %struct.term* @term_Superterm(%struct.term* %3)
  store %struct.term* %call1, %struct.term** %SuperTerm, align 8
  %4 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %4)
  store i32 %call2, i32* %Top, align 4
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %NewList, align 8
  %call4 = call %struct.term* @term_Null()
  store %struct.term* %call4, %struct.term** %AddToList, align 8
  %5 = load i32, i32* %Top, align 4
  %call5 = call i32 @fol_Not()
  %call6 = call i32 @symbol_Equal(i32 %5, i32 %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %8 = load i32, i32* %Polarity.addr, align 4
  %mul = mul nsw i32 -1, %8
  %call8 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %6, %struct.term* %7, i32 %mul)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %9 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_Or()
  %call11 = call i32 @symbol_Equal(i32 %9, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.end.9
  %10 = load i32, i32* %Polarity.addr, align 4
  %cmp13 = icmp eq i32 %10, 1
  br i1 %cmp13, label %if.then.14, label %if.end.39

if.then.14:                                       ; preds = %land.lhs.true
  %11 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.14
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call18 to %struct.term*
  %15 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call19 = call i32 @term_HasPointerSubterm(%struct.term* %14, %struct.term* %15)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.28, label %if.then.21

if.then.21:                                       ; preds = %for.body
  %call22 = call i32 @fol_Not()
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call23 to %struct.term*
  %call24 = call %struct.term* @term_Copy(%struct.term* %17)
  %18 = bitcast %struct.term* %call24 to i8*
  %call25 = call %struct.LIST_HELP* @list_List(i8* %18)
  %call26 = call %struct.term* @term_Create(i32 %call22, %struct.LIST_HELP* %call25)
  %19 = bitcast %struct.term* %call26 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %NewList, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.21, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call30 = call i32 @list_Length(%struct.LIST_HELP* %22)
  %cmp31 = icmp eq i32 %call30, 1
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %for.end
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call33 to %struct.term*
  store %struct.term* %24, %struct.term** %AddToList, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  call void @list_Delete(%struct.LIST_HELP* %25)
  br label %if.end.36

if.else:                                          ; preds = %for.end
  %call34 = call i32 @fol_And()
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call35 = call %struct.term* @term_Create(i32 %call34, %struct.LIST_HELP* %26)
  store %struct.term* %call35, %struct.term** %AddToList, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.32
  %27 = load %struct.term*, %struct.term** %AddToList, align 8
  %28 = bitcast %struct.term* %27 to i8*
  %29 = load %struct.term*, %struct.term** %Term.addr, align 8
  %30 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %31 = load i32, i32* %Polarity.addr, align 4
  %call37 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %29, %struct.term* %30, i32 %31)
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %call37)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %retval
  br label %return

if.end.39:                                        ; preds = %land.lhs.true, %if.end.9
  %32 = load i32, i32* %Top, align 4
  %call40 = call i32 @fol_And()
  %call41 = call i32 @symbol_Equal(i32 %32, i32 %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.91

land.lhs.true.43:                                 ; preds = %if.end.39
  %33 = load i32, i32* %Polarity.addr, align 4
  %cmp44 = icmp eq i32 %33, -1
  br i1 %cmp44, label %if.then.45, label %if.end.91

if.then.45:                                       ; preds = %land.lhs.true.43
  %34 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call46 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  %call47 = call i32 @list_Length(%struct.LIST_HELP* %call46)
  %cmp48 = icmp eq i32 %call47, 2
  br i1 %cmp48, label %if.then.49, label %if.else.60

if.then.49:                                       ; preds = %if.then.45
  %35 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call50 = call %struct.term* @term_FirstArgument(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call51 = call i32 @term_HasPointerSubterm(%struct.term* %call50, %struct.term* %36)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.else.56, label %if.then.53

if.then.53:                                       ; preds = %if.then.49
  %37 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call54 = call %struct.term* @term_FirstArgument(%struct.term* %37)
  %call55 = call %struct.term* @term_Copy(%struct.term* %call54)
  store %struct.term* %call55, %struct.term** %AddToList, align 8
  br label %if.end.59

if.else.56:                                       ; preds = %if.then.49
  %38 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call57 = call %struct.term* @term_SecondArgument(%struct.term* %38)
  %call58 = call %struct.term* @term_Copy(%struct.term* %call57)
  store %struct.term* %call58, %struct.term** %AddToList, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.53
  br label %if.end.88

if.else.60:                                       ; preds = %if.then.45
  %39 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %39)
  %call62 = call i32 @list_Length(%struct.LIST_HELP* %call61)
  %cmp63 = icmp ugt i32 %call62, 2
  br i1 %cmp63, label %if.then.64, label %if.else.84

if.then.64:                                       ; preds = %if.else.60
  %40 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call65 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %40)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.79, %if.then.64
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call67 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool68 = icmp ne i32 %call67, 0
  %lnot69 = xor i1 %tobool68, true
  br i1 %lnot69, label %for.body.70, label %for.end.81

for.body.70:                                      ; preds = %for.cond.66
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call71 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call71 to %struct.term*
  %44 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call72 = call i32 @term_HasPointerSubterm(%struct.term* %43, %struct.term* %44)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %for.body.70
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call75 = call i8* @list_Car(%struct.LIST_HELP* %45)
  %46 = bitcast i8* %call75 to %struct.term*
  %call76 = call %struct.term* @term_Copy(%struct.term* %46)
  %47 = bitcast %struct.term* %call76 to i8*
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call77 = call %struct.LIST_HELP* @list_Cons(i8* %47, %struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call77, %struct.LIST_HELP** %NewList, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %for.body.70
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call80 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.66

for.end.81:                                       ; preds = %for.cond.66
  %call82 = call i32 @fol_And()
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewList, align 8
  %call83 = call %struct.term* @term_Create(i32 %call82, %struct.LIST_HELP* %50)
  store %struct.term* %call83, %struct.term** %AddToList, align 8
  br label %if.end.87

if.else.84:                                       ; preds = %if.else.60
  %51 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call85 = call %struct.term* @term_FirstArgument(%struct.term* %51)
  %call86 = call %struct.term* @term_Copy(%struct.term* %call85)
  store %struct.term* %call86, %struct.term** %AddToList, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %for.end.81
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.59
  %52 = load %struct.term*, %struct.term** %AddToList, align 8
  %53 = bitcast %struct.term* %52 to i8*
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  %55 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %56 = load i32, i32* %Polarity.addr, align 4
  %call89 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %54, %struct.term* %55, i32 %56)
  %call90 = call %struct.LIST_HELP* @list_Cons(i8* %53, %struct.LIST_HELP* %call89)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %retval
  br label %return

if.end.91:                                        ; preds = %land.lhs.true.43, %if.end.39
  %57 = load i32, i32* %Top, align 4
  %call92 = call i32 @fol_Implies()
  %call93 = call i32 @symbol_Equal(i32 %57, i32 %call92)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.122

if.then.95:                                       ; preds = %if.end.91
  %58 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call96 = call %struct.term* @term_SecondArgument(%struct.term* %58)
  %59 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call97 = call i32 @term_HasPointerSubterm(%struct.term* %call96, %struct.term* %59)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.106

land.lhs.true.99:                                 ; preds = %if.then.95
  %60 = load i32, i32* %Polarity.addr, align 4
  %cmp100 = icmp eq i32 %60, 1
  br i1 %cmp100, label %if.then.101, label %if.end.106

if.then.101:                                      ; preds = %land.lhs.true.99
  %61 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call102 = call %struct.term* @term_FirstArgument(%struct.term* %61)
  %call103 = call %struct.term* @term_Copy(%struct.term* %call102)
  store %struct.term* %call103, %struct.term** %AddToList, align 8
  %62 = load %struct.term*, %struct.term** %AddToList, align 8
  %63 = bitcast %struct.term* %62 to i8*
  %64 = load %struct.term*, %struct.term** %Term.addr, align 8
  %65 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %66 = load i32, i32* %Polarity.addr, align 4
  %call104 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %64, %struct.term* %65, i32 %66)
  %call105 = call %struct.LIST_HELP* @list_Cons(i8* %63, %struct.LIST_HELP* %call104)
  store %struct.LIST_HELP* %call105, %struct.LIST_HELP** %retval
  br label %return

if.end.106:                                       ; preds = %land.lhs.true.99, %if.then.95
  %67 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call107 = call %struct.term* @term_FirstArgument(%struct.term* %67)
  %68 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call108 = call i32 @term_HasPointerSubterm(%struct.term* %call107, %struct.term* %68)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.121

land.lhs.true.110:                                ; preds = %if.end.106
  %69 = load i32, i32* %Polarity.addr, align 4
  %cmp111 = icmp eq i32 %69, -1
  br i1 %cmp111, label %if.then.112, label %if.end.121

if.then.112:                                      ; preds = %land.lhs.true.110
  %70 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call113 = call %struct.term* @term_SecondArgument(%struct.term* %70)
  %call114 = call %struct.term* @term_Copy(%struct.term* %call113)
  store %struct.term* %call114, %struct.term** %AddToList, align 8
  %call115 = call i32 @fol_Not()
  %71 = load %struct.term*, %struct.term** %AddToList, align 8
  %72 = bitcast %struct.term* %71 to i8*
  %call116 = call %struct.LIST_HELP* @list_List(i8* %72)
  %call117 = call %struct.term* @term_Create(i32 %call115, %struct.LIST_HELP* %call116)
  store %struct.term* %call117, %struct.term** %AddToList, align 8
  %73 = load %struct.term*, %struct.term** %AddToList, align 8
  %74 = bitcast %struct.term* %73 to i8*
  %75 = load %struct.term*, %struct.term** %Term.addr, align 8
  %76 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %77 = load i32, i32* %Polarity.addr, align 4
  %mul118 = mul nsw i32 -1, %77
  %call119 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %75, %struct.term* %76, i32 %mul118)
  %call120 = call %struct.LIST_HELP* @list_Cons(i8* %74, %struct.LIST_HELP* %call119)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %retval
  br label %return

if.end.121:                                       ; preds = %land.lhs.true.110, %if.end.106
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.end.91
  %78 = load i32, i32* %Top, align 4
  %call123 = call i32 @fol_Implied()
  %call124 = call i32 @symbol_Equal(i32 %78, i32 %call123)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.153

if.then.126:                                      ; preds = %if.end.122
  %79 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call127 = call %struct.term* @term_SecondArgument(%struct.term* %79)
  %80 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call128 = call i32 @term_HasPointerSubterm(%struct.term* %call127, %struct.term* %80)
  %tobool129 = icmp ne i32 %call128, 0
  br i1 %tobool129, label %land.lhs.true.130, label %if.end.141

land.lhs.true.130:                                ; preds = %if.then.126
  %81 = load i32, i32* %Polarity.addr, align 4
  %cmp131 = icmp eq i32 %81, -1
  br i1 %cmp131, label %if.then.132, label %if.end.141

if.then.132:                                      ; preds = %land.lhs.true.130
  %82 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call133 = call %struct.term* @term_FirstArgument(%struct.term* %82)
  %call134 = call %struct.term* @term_Copy(%struct.term* %call133)
  store %struct.term* %call134, %struct.term** %AddToList, align 8
  %call135 = call i32 @fol_Not()
  %83 = load %struct.term*, %struct.term** %AddToList, align 8
  %84 = bitcast %struct.term* %83 to i8*
  %call136 = call %struct.LIST_HELP* @list_List(i8* %84)
  %call137 = call %struct.term* @term_Create(i32 %call135, %struct.LIST_HELP* %call136)
  store %struct.term* %call137, %struct.term** %AddToList, align 8
  %85 = load %struct.term*, %struct.term** %AddToList, align 8
  %86 = bitcast %struct.term* %85 to i8*
  %87 = load %struct.term*, %struct.term** %Term.addr, align 8
  %88 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %89 = load i32, i32* %Polarity.addr, align 4
  %mul138 = mul nsw i32 -1, %89
  %call139 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %87, %struct.term* %88, i32 %mul138)
  %call140 = call %struct.LIST_HELP* @list_Cons(i8* %86, %struct.LIST_HELP* %call139)
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %retval
  br label %return

if.end.141:                                       ; preds = %land.lhs.true.130, %if.then.126
  %90 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call142 = call %struct.term* @term_FirstArgument(%struct.term* %90)
  %91 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call143 = call i32 @term_HasPointerSubterm(%struct.term* %call142, %struct.term* %91)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %land.lhs.true.145, label %if.end.152

land.lhs.true.145:                                ; preds = %if.end.141
  %92 = load i32, i32* %Polarity.addr, align 4
  %cmp146 = icmp eq i32 %92, 1
  br i1 %cmp146, label %if.then.147, label %if.end.152

if.then.147:                                      ; preds = %land.lhs.true.145
  %93 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %call148 = call %struct.term* @term_SecondArgument(%struct.term* %93)
  %call149 = call %struct.term* @term_Copy(%struct.term* %call148)
  store %struct.term* %call149, %struct.term** %AddToList, align 8
  %94 = load %struct.term*, %struct.term** %AddToList, align 8
  %95 = bitcast %struct.term* %94 to i8*
  %96 = load %struct.term*, %struct.term** %Term.addr, align 8
  %97 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %98 = load i32, i32* %Polarity.addr, align 4
  %call150 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %96, %struct.term* %97, i32 %98)
  %call151 = call %struct.LIST_HELP* @list_Cons(i8* %95, %struct.LIST_HELP* %call150)
  store %struct.LIST_HELP* %call151, %struct.LIST_HELP** %retval
  br label %return

if.end.152:                                       ; preds = %land.lhs.true.145, %if.end.141
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152, %if.end.122
  %99 = load i32, i32* %Top, align 4
  %call154 = call i32 @fol_IsQuantifier(i32 %99)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %if.end.153
  %100 = load %struct.term*, %struct.term** %Term.addr, align 8
  %101 = load %struct.term*, %struct.term** %SuperTerm, align 8
  %102 = load i32, i32* %Polarity.addr, align 4
  %call157 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %100, %struct.term* %101, i32 %102)
  store %struct.LIST_HELP* %call157, %struct.LIST_HELP** %retval
  br label %return

if.end.158:                                       ; preds = %if.end.153
  %call159 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call159, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.158, %if.then.156, %if.then.147, %if.then.132, %if.then.112, %if.then.101, %if.end.88, %if.end.36, %if.then.7, %if.then
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %103
}

declare i32 @term_HasPointerSubterm(%struct.term*, %struct.term*) #1

declare i32 @list_Length(%struct.LIST_HELP*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #2 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implied() #2 {
entry:
  %0 = load i32, i32* @fol_IMPLIED, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @def_FindProofForGuard(%struct.term* %Term, %struct.term* %Atom, %struct.term* %Guard, i32* %FlagStore, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %Atom.addr = alloca %struct.term*, align 8
  %Guard.addr = alloca %struct.term*, align 8
  %FlagStore.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %LocallyTrue = alloca i32, align 4
  %ToProve = alloca %struct.term*, align 8
  %Conjecture = alloca %struct.term*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  %FreeVars = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.term* %Guard, %struct.term** %Guard.addr, align 8
  store i32* %FlagStore, i32** %FlagStore.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %ArgList, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %FreeVars, align 8
  %call2 = call %struct.term* @term_Null()
  store %struct.term* %call2, %struct.term** %ToProve, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_Copy(%struct.term* %0)
  store %struct.term* %call3, %struct.term** %Conjecture, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %2 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call4 = call %struct.LIST_HELP* @def_GetTermsForProof(%struct.term* %1, %struct.term* %2, i32 1)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %ArgList, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call6 = call i32 @fol_And()
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call7 = call %struct.term* @term_Create(i32 %call6, %struct.LIST_HELP* %4)
  store %struct.term* %call7, %struct.term** %ToProve, align 8
  %5 = load %struct.term*, %struct.term** %ToProve, align 8
  %call8 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %Guard.addr, align 8
  %call9 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %6)
  %call10 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call8, %struct.LIST_HELP* %call9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %FreeVars, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %call11 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %FreeVars, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %8)
  %9 = load %struct.term*, %struct.term** %Guard.addr, align 8
  %call12 = call %struct.term* @term_Copy(%struct.term* %9)
  %10 = bitcast %struct.term* %call12 to i8*
  %call13 = call %struct.LIST_HELP* @list_List(i8* %10)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %ArgList, align 8
  %11 = load %struct.term*, %struct.term** %ToProve, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %ArgList, align 8
  %call15 = call i32 @fol_Implies()
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call16 = call %struct.term* @term_Create(i32 %call15, %struct.LIST_HELP* %14)
  store %struct.term* %call16, %struct.term** %ToProve, align 8
  %call17 = call i32 @fol_All()
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %16 = load %struct.term*, %struct.term** %ToProve, align 8
  %17 = bitcast %struct.term* %16 to i8*
  %call18 = call %struct.LIST_HELP* @list_List(i8* %17)
  %call19 = call %struct.term* @fol_CreateQuantifier(i32 %call17, %struct.LIST_HELP* %15, %struct.LIST_HELP* %call18)
  store %struct.term* %call19, %struct.term** %ToProve, align 8
  %call20 = call %struct.LIST_HELP* @list_Nil()
  %18 = load %struct.term*, %struct.term** %ToProve, align 8
  %19 = load i32*, i32** %FlagStore.addr, align 8
  %20 = load i32*, i32** %Precedence.addr, align 8
  %call21 = call i32 @cnf_HaveProof(%struct.LIST_HELP* %call20, %struct.term* %18, i32* %19, i32* %20)
  store i32 %call21, i32* %LocallyTrue, align 4
  %21 = load %struct.term*, %struct.term** %ToProve, align 8
  call void @term_Delete(%struct.term* %21)
  %22 = load %struct.term*, %struct.term** %Conjecture, align 8
  call void @term_Delete(%struct.term* %22)
  %23 = load i32, i32* %LocallyTrue, align 4
  %tobool22 = icmp ne i32 %23, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.24

if.else:                                          ; preds = %entry
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %24)
  %25 = load %struct.term*, %struct.term** %Conjecture, align 8
  call void @term_Delete(%struct.term* %25)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct.LIST_HELP* @fol_FreeVariables(%struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %0, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_CopyTermsInList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_NMapCar(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret void
}

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #1

declare i32 @cnf_HaveProof(%struct.LIST_HELP*, %struct.term*, i32*, i32*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_DeleteTermList(%struct.LIST_HELP* %List) #2 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @def_ApplyDefinitionToTermList(%struct.LIST_HELP* %Defs, %struct.LIST_HELP* %Terms, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Defs.addr = alloca %struct.LIST_HELP*, align 8
  %Terms.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ActTerm = alloca %struct.term*, align 8
  %DefPredicate = alloca %struct.term*, align 8
  %Expansion = alloca %struct.term*, align 8
  %Target = alloca %struct.term*, align 8
  %TargetList = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Scan3 = alloca %struct.LIST_HELP*, align 8
  %Apply = alloca i32, align 4
  %Applics = alloca i32, align 4
  %Guard = alloca %struct.term*, align 8
  store %struct.LIST_HELP* %Defs, %struct.LIST_HELP** %Defs.addr, align 8
  store %struct.LIST_HELP* %Terms, %struct.LIST_HELP** %Terms.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 1, i32* %Apply, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %TargetList, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call1 = call i32 @flag_GetFlagValue(i32* %0, i32 51)
  store i32 %call1, i32* %Applics, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end.94, %entry
  %1 = load i32, i32* %Apply, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i32, i32* %Applics, align 4
  %cmp = icmp ne i32 %2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %3 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  store i32 0, i32* %Apply, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Defs.addr, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.92, %while.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %land.end.6, label %land.rhs.4

land.rhs.4:                                       ; preds = %for.cond
  %6 = load i32, i32* %Applics, align 4
  %cmp5 = icmp ne i32 %6, 0
  br label %land.end.6

land.end.6:                                       ; preds = %land.rhs.4, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp5, %land.rhs.4 ]
  br i1 %7, label %for.body, label %for.end.94

for.body:                                         ; preds = %land.end.6
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call7 to %struct.DEF_HELP*
  %call8 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %9)
  %call9 = call %struct.term* @term_Copy(%struct.term* %call8)
  store %struct.term* %call9, %struct.term** %DefPredicate, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.89, %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.end.15, label %land.rhs.13

land.rhs.13:                                      ; preds = %for.cond.10
  %12 = load i32, i32* %Applics, align 4
  %cmp14 = icmp ne i32 %12, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.13, %for.cond.10
  %13 = phi i1 [ false, %for.cond.10 ], [ %cmp14, %land.rhs.13 ]
  br i1 %13, label %for.body.16, label %for.end.91

for.body.16:                                      ; preds = %land.end.15
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call17 to %struct.LIST_HELP*
  %call18 = call i8* @list_PairSecond(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call18 to %struct.term*
  store %struct.term* %16, %struct.term** %ActTerm, align 8
  %17 = load %struct.term*, %struct.term** %ActTerm, align 8
  %18 = load %struct.term*, %struct.term** %DefPredicate, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %18)
  %call20 = call %struct.LIST_HELP* @term_FindAllAtoms(%struct.term* %17, i32 %call19)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %TargetList, align 8
  %19 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TargetList, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %Scan3, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %for.body.16
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan3, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.end.26, label %land.rhs.24

land.rhs.24:                                      ; preds = %for.cond.21
  %22 = load i32, i32* %Applics, align 4
  %cmp25 = icmp ne i32 %22, 0
  br label %land.end.26

land.end.26:                                      ; preds = %land.rhs.24, %for.cond.21
  %23 = phi i1 [ false, %for.cond.21 ], [ %cmp25, %land.rhs.24 ]
  br i1 %23, label %for.body.27, label %for.end

for.body.27:                                      ; preds = %land.end.26
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan3, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call28 to %struct.term*
  store %struct.term* %25, %struct.term** %Target, align 8
  call void @cont_StartBinding()
  %call29 = call %struct.binding* @cont_LeftContext()
  %26 = load %struct.term*, %struct.term** %DefPredicate, align 8
  %27 = load %struct.term*, %struct.term** %Target, align 8
  %call30 = call i32 @unify_Match(%struct.binding* %call29, %struct.term* %26, %struct.term* %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then, label %if.end.86

if.then:                                          ; preds = %for.body.27
  %call32 = call i32 @cont_BackTrack()
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call33 to %struct.DEF_HELP*
  %call34 = call %struct.term* @def_Expansion(%struct.DEF_HELP* %29)
  %call35 = call %struct.term* @term_Copy(%struct.term* %call34)
  store %struct.term* %call35, %struct.term** %Expansion, align 8
  %30 = load %struct.term*, %struct.term** %ActTerm, align 8
  %31 = load %struct.term*, %struct.term** %Expansion, align 8
  %call36 = call i32 @term_MaxVar(%struct.term* %31)
  call void @fol_NormalizeVarsStartingAt(%struct.term* %30, i32 %call36)
  %call37 = call %struct.binding* @cont_LeftContext()
  %32 = load %struct.term*, %struct.term** %DefPredicate, align 8
  %33 = load %struct.term*, %struct.term** %Target, align 8
  %call38 = call i32 @unify_Match(%struct.binding* %call37, %struct.term* %32, %struct.term* %33)
  %call39 = call %struct.binding* @cont_LeftContext()
  %34 = load %struct.term*, %struct.term** %Expansion, align 8
  %call40 = call i32 @fol_ApplyContextToTerm(%struct.binding* %call39, %struct.term* %34)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.85

if.then.42:                                       ; preds = %if.then
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call43 to %struct.DEF_HELP*
  %call44 = call i32 @def_HasGuard(%struct.DEF_HELP* %36)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.else, label %if.then.46

if.then.46:                                       ; preds = %if.then.42
  %37 = load i32, i32* %Applics, align 4
  %dec = add nsw i32 %37, -1
  store i32 %dec, i32* %Applics, align 4
  store i32 1, i32* %Apply, align 4
  %38 = load %struct.term*, %struct.term** %Target, align 8
  %39 = load %struct.term*, %struct.term** %Expansion, align 8
  %call47 = call i32 @term_TopSymbol(%struct.term* %39)
  call void @term_RplacTop(%struct.term* %38, i32 %call47)
  %40 = load %struct.term*, %struct.term** %Target, align 8
  %call48 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %40)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call48)
  %41 = load %struct.term*, %struct.term** %Target, align 8
  %42 = load %struct.term*, %struct.term** %Expansion, align 8
  %call49 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %42)
  call void @term_RplacArgumentList(%struct.term* %41, %struct.LIST_HELP* %call49)
  %43 = load %struct.term*, %struct.term** %Expansion, align 8
  %call50 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %43, %struct.LIST_HELP* %call50)
  %44 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %44)
  %45 = load i32*, i32** %Flags.addr, align 8
  %call51 = call i32 @flag_GetFlagValue(i32* %45, i32 37)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end

if.then.53:                                       ; preds = %if.then.46
  %call54 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call55 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call55 to %struct.DEF_HELP*
  %call56 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %47)
  call void @fol_PrettyPrintDFG(%struct.term* %call56)
  %call57 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  %48 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @fol_PrettyPrintDFG(%struct.term* %48)
  br label %if.end

if.end:                                           ; preds = %if.then.53, %if.then.46
  br label %if.end.84

if.else:                                          ; preds = %if.then.42
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call58 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call58 to %struct.DEF_HELP*
  %call59 = call %struct.term* @def_ToProve(%struct.DEF_HELP* %50)
  %call60 = call %struct.term* @term_Copy(%struct.term* %call59)
  store %struct.term* %call60, %struct.term** %Guard, align 8
  %call61 = call %struct.binding* @cont_LeftContext()
  %51 = load %struct.term*, %struct.term** %Guard, align 8
  %call62 = call i32 @fol_ApplyContextToTerm(%struct.binding* %call61, %struct.term* %51)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.83

if.then.64:                                       ; preds = %if.else
  %call65 = call i32 @cont_BackTrack()
  %52 = load %struct.term*, %struct.term** %ActTerm, align 8
  %53 = load %struct.term*, %struct.term** %Target, align 8
  %54 = load %struct.term*, %struct.term** %Guard, align 8
  %55 = load i32*, i32** %Flags.addr, align 8
  %56 = load i32*, i32** %Precedence.addr, align 8
  %call66 = call i32 @def_FindProofForGuard(%struct.term* %52, %struct.term* %53, %struct.term* %54, i32* %55, i32* %56)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.82

if.then.68:                                       ; preds = %if.then.64
  %57 = load i32, i32* %Applics, align 4
  %dec69 = add nsw i32 %57, -1
  store i32 %dec69, i32* %Applics, align 4
  store i32 1, i32* %Apply, align 4
  %58 = load %struct.term*, %struct.term** %Target, align 8
  %59 = load %struct.term*, %struct.term** %Expansion, align 8
  %call70 = call i32 @term_TopSymbol(%struct.term* %59)
  call void @term_RplacTop(%struct.term* %58, i32 %call70)
  %60 = load %struct.term*, %struct.term** %Target, align 8
  %call71 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %60)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call71)
  %61 = load %struct.term*, %struct.term** %Target, align 8
  %62 = load %struct.term*, %struct.term** %Expansion, align 8
  %call72 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %62)
  call void @term_RplacArgumentList(%struct.term* %61, %struct.LIST_HELP* %call72)
  %63 = load %struct.term*, %struct.term** %Expansion, align 8
  %call73 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %63, %struct.LIST_HELP* %call73)
  %64 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %64)
  %65 = load i32*, i32** %Flags.addr, align 8
  %call74 = call i32 @flag_GetFlagValue(i32* %65, i32 37)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %if.then.68
  %call77 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0))
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call78 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call78 to %struct.DEF_HELP*
  %call79 = call %struct.term* @def_Predicate(%struct.DEF_HELP* %67)
  call void @fol_PrettyPrintDFG(%struct.term* %call79)
  %call80 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0))
  %68 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @fol_PrettyPrintDFG(%struct.term* %68)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %if.then.68
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.then.64
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.else
  %69 = load %struct.term*, %struct.term** %Guard, align 8
  call void @term_Delete(%struct.term* %69)
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then
  %70 = load %struct.term*, %struct.term** %Expansion, align 8
  call void @term_Delete(%struct.term* %70)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.body.27
  %call87 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end.86
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan3, align 8
  %call88 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call88, %struct.LIST_HELP** %Scan3, align 8
  br label %for.cond.21

for.end:                                          ; preds = %land.end.26
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TargetList, align 8
  call void @list_Delete(%struct.LIST_HELP* %72)
  br label %for.inc.89

for.inc.89:                                       ; preds = %for.end
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call90 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %73)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.end.91:                                       ; preds = %land.end.15
  %74 = load %struct.term*, %struct.term** %DefPredicate, align 8
  call void @term_Delete(%struct.term* %74)
  br label %for.inc.92

for.inc.92:                                       ; preds = %for.end.91
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call93 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call93, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.94:                                       ; preds = %land.end.6
  br label %while.cond

while.end:                                        ; preds = %land.end
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms.addr, align 8
  ret %struct.LIST_HELP* %76
}

declare %struct.LIST_HELP* @term_FindAllAtoms(%struct.term*, i32) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #2 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_Match(%struct.binding*, %struct.term*, %struct.term*) #1

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

declare void @fol_NormalizeVarsStartingAt(%struct.term*, i32) #1

declare i32 @term_MaxVar(%struct.term*) #1

declare i32 @fol_ApplyContextToTerm(%struct.binding*, %struct.term*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @def_HasGuard(%struct.DEF_HELP* %D) #2 {
entry:
  %D.addr = alloca %struct.DEF_HELP*, align 8
  store %struct.DEF_HELP* %D, %struct.DEF_HELP** %D.addr, align 8
  %0 = load %struct.DEF_HELP*, %struct.DEF_HELP** %D.addr, align 8
  %call = call %struct.term* @def_ToProve(%struct.DEF_HELP* %0)
  %call1 = call %struct.term* @term_Null()
  %cmp = icmp ne %struct.term* %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacTop(%struct.term* %T, i32 %S) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %S.addr = alloca i32, align 4
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store i32 %S, i32* %S.addr, align 4
  %0 = load i32, i32* %S.addr, align 4
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %symbol = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 0
  store i32 %0, i32* %symbol, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacArgumentList(%struct.term* %T, %struct.LIST_HELP* %A) #2 {
entry:
  %T.addr = alloca %struct.term*, align 8
  %A.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  store %struct.LIST_HELP* %A, %struct.LIST_HELP** %A.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %A.addr, align 8
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 2
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %args, align 8
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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #1

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
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #2 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.signature* @symbol_Signature(i32 %Index) #2 {
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
define internal i32 @symbol_Index(i32 %ActSymbol) #2 {
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
define internal void @symbol_CheckIndexInRange(i32 %Index) #2 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_CheckNoVariable(i32 %S) #2 {
entry:
  %S.addr = alloca i32, align 4
  store i32 %S, i32* %S.addr, align 4
  ret void
}

declare %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP*, i32 (i8*, i8*)*) #1

declare void @list_NMapCar(%struct.LIST_HELP*, i8* (i8*)*) #1

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #1

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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
