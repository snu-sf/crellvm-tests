; ModuleID = './MultiSource.Applications.SPASS/9.rules-inf.bc'
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
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.DEF_HELP = type { %struct.term*, %struct.term*, %struct.term*, %struct.LIST_HELP*, i8*, i32, i32 }
%struct.INF_MAPNODE = type { %struct.LITERAL_HELP*, %struct.LITERAL_HELP*, %struct.subst* }

@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [85 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/rules-inf.c\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"\0A In inf_GeneralResolution: Unification failed.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"\0A In inf_UnitResolution: Unification failed.\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"\0A In inf_BoundedDepthUnitResolution: Unification failed.\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22IOFC\22 has invalid value.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22IORE\22 has invalid value.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"\0A Error: Flag \22ISRE\22 has invalid value.\0A\00", align 1
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@cont_BINDINGS = external global i32, align 4
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_STACKPOINTER = external global i32, align 4
@cont_INDEXVARSCANNER = external global i32, align 4
@fol_EQUALITY = external global i32, align 4
@fol_NOT = external global i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@cont_RIGHTCONTEXT = external global %struct.binding*, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@clause_CLAUSECOUNTER = external global i32, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"\0A In inf_HyperResolvents: Unification failed.\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"\0A In inf_BuildHyperResolvent: Map entry not found.\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"\0A In inf_BackwardHyperResolution: Unification failed.\00", align 1

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_EqualityResolution(%struct.CLAUSE_HELP* %GivenClause, i32 %Ordered, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Ordered.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %last = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %mgu = alloca %struct.subst*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %bound = alloca i32, align 4
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store i32 %Ordered, i32* %Ordered.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call5 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call5, i32* %last, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call6 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call6, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.62

for.body:                                         ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.LITERAL_HELP* %call7, %struct.LITERAL_HELP** %ActLit, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call8 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %8)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call10 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %9, i32 4)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.20, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %land.lhs.true
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call13 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %10, i32 2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.59, label %land.lhs.true.15

land.lhs.true.15:                                 ; preds = %lor.lhs.false.12
  %11 = load i32, i32* %Ordered.addr, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.20

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call18 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %12)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.59

if.then.20:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.15, %land.lhs.true
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %14 = load i32, i32* %i, align 4
  %call21 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %13, i32 %14)
  store %struct.term* %call21, %struct.term** %Atom, align 8
  call void @cont_Check()
  %call22 = call %struct.binding* @cont_LeftContext()
  %15 = load %struct.term*, %struct.term** %Atom, align 8
  %call23 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %Atom, align 8
  %call24 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  %call25 = call i32 @unify_UnifyCom(%struct.binding* %call22, %struct.term* %call23, %struct.term* %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.58

if.then.27:                                       ; preds = %if.then.20
  %call28 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call28, %struct.subst** %mgu)
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call29 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %17, i32 4)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.then.27
  %18 = load i32, i32* %Ordered.addr, align 4
  %tobool32 = icmp ne i32 %18, 0
  br i1 %tobool32, label %lor.lhs.false.33, label %if.then.36

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.subst*, %struct.subst** %mgu, align 8
  %22 = load i32*, i32** %Flags.addr, align 8
  %23 = load i32*, i32** %Precedence.addr, align 8
  %call34 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %19, i32 %20, i32 -1, %struct.subst* %21, i32 0, i32* %22, i32* %23)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.57

if.then.36:                                       ; preds = %lor.lhs.false.33, %lor.lhs.false.31, %if.then.27
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call37 = call i32 @clause_Length(%struct.CLAUSE_HELP* %24)
  %sub = sub nsw i32 %call37, 1
  %call38 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %sub)
  store %struct.CLAUSE_HELP* %call38, %struct.CLAUSE_HELP** %NewClause, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call39 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %26)
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %25, i32 %call39)
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call40 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %28)
  %sub41 = sub nsw i32 %call40, 1
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %27, i32 %sub41)
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call42 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %30)
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %29, i32 %call42)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call43 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %31)
  store i32 %call43, i32* %bound, align 4
  %call44 = call i32 @clause_FirstLitIndex()
  store i32 %call44, i32* %k, align 4
  store i32 %call44, i32* %j, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc, %if.then.36
  %32 = load i32, i32* %j, align 4
  %33 = load i32, i32* %bound, align 4
  %cmp46 = icmp sle i32 %32, %33
  br i1 %cmp46, label %for.body.47, label %for.end

for.body.47:                                      ; preds = %for.cond.45
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %i, align 4
  %cmp48 = icmp ne i32 %34, %35
  br i1 %cmp48, label %if.then.49, label %if.end.54

if.then.49:                                       ; preds = %for.body.47
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %37 = load i32, i32* %k, align 4
  %38 = load %struct.subst*, %struct.subst** %mgu, align 8
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %40 = load i32, i32* %j, align 4
  %call50 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %39, i32 %40)
  %call51 = call %struct.term* @term_Copy(%struct.term* %call50)
  %call52 = call %struct.term* @subst_Apply(%struct.subst* %38, %struct.term* %call51)
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call53 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call52, %struct.CLAUSE_HELP* %41)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %36, i32 %37, %struct.LITERAL_HELP* %call53)
  %42 = load i32, i32* %k, align 4
  %inc = add nsw i32 %42, 1
  store i32 %inc, i32* %k, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.49, %for.body.47
  br label %for.inc

for.inc:                                          ; preds = %if.end.54
  %43 = load i32, i32* %j, align 4
  %inc55 = add nsw i32 %43, 1
  store i32 %inc55, i32* %j, align 4
  br label %for.cond.45

for.end:                                          ; preds = %for.cond.45
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %46 = load i32, i32* %i, align 4
  %47 = load i32*, i32** %Flags.addr, align 8
  %48 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromFather(%struct.CLAUSE_HELP* %44, %struct.CLAUSE_HELP* %45, i32 %46, i32* %47, i32* %48)
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromEqualityResolution(%struct.CLAUSE_HELP* %49)
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %51 = bitcast %struct.CLAUSE_HELP* %50 to i8*
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call56 = call %struct.LIST_HELP* @list_Cons(i8* %51, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Result, align 8
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %lor.lhs.false.33
  %53 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %53)
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.20
  call void @cont_Reset()
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %lor.lhs.false.17, %lor.lhs.false.12, %for.body
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %54 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %54, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond

for.end.62:                                       ; preds = %for.cond
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.62, %if.then
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %56
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

declare i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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
define internal i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  ret i32 %call
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
define internal i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @fol_IsEquality(%struct.term* %call)
  ret i32 %call1
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
define internal i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %0, i32 1)
  ret i32 %call
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

declare void @cont_Check() #2

declare i32 @unify_UnifyCom(%struct.binding*, %struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
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

declare void @subst_ExtractUnifierCom(%struct.binding*, %struct.subst**) #2

; Function Attrs: nounwind uwtable
define internal i32 @inf_LitMax(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %j, %struct.subst* %Subst, i32 %Strict, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %Strict.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Max = alloca %struct.term*, align 8
  %LitTerm = alloca %struct.term*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Compare = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32 %Strict, i32* %Strict.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call, %struct.LITERAL_HELP** %Lit, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call1 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %Strict.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %4, i32 2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %6)
  %add = add nsw i32 %call5, %call6
  %cmp = icmp eq i32 %add, 1
  br i1 %cmp, label %if.then.10, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %7 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call8 = call i32 @subst_Empty(%struct.subst* %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %lor.lhs.false.7, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %lor.lhs.false.7
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call12 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %8)
  store i32 %call12, i32* %l, align 4
  %9 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %11 = load i32, i32* %i.addr, align 4
  %call13 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %10, i32 %11)
  %call14 = call %struct.term* @term_Copy(%struct.term* %call13)
  %call15 = call %struct.term* @subst_Apply(%struct.subst* %9, %struct.term* %call14)
  store %struct.term* %call15, %struct.term** %Max, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call16 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %12)
  store i32 %call16, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.11
  %13 = load i32, i32* %k, align 4
  %14 = load i32, i32* %l, align 4
  %cmp17 = icmp sle i32 %13, %14
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %k, align 4
  %16 = load i32, i32* %i.addr, align 4
  %cmp18 = icmp ne i32 %15, %16
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.43

land.lhs.true.19:                                 ; preds = %for.body
  %17 = load i32, i32* %k, align 4
  %18 = load i32, i32* %j.addr, align 4
  %cmp20 = icmp ne i32 %17, %18
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.43

land.lhs.true.21:                                 ; preds = %land.lhs.true.19
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %20 = load i32, i32* %k, align 4
  %call22 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %19, i32 %20)
  %call23 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.43

if.then.25:                                       ; preds = %land.lhs.true.21
  %21 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %k, align 4
  %call26 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %22, i32 %23)
  %call27 = call %struct.term* @term_Copy(%struct.term* %call26)
  %call28 = call %struct.term* @subst_Apply(%struct.subst* %21, %struct.term* %call27)
  store %struct.term* %call28, %struct.term** %LitTerm, align 8
  %24 = load %struct.term*, %struct.term** %Max, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load i32, i32* %i.addr, align 4
  %call29 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %25, i32 %26)
  %call30 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call29)
  %27 = load %struct.term*, %struct.term** %LitTerm, align 8
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %29 = load i32, i32* %k, align 4
  %call31 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %28, i32 %29)
  %call32 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call31)
  %30 = load i32*, i32** %Flags.addr, align 8
  %31 = load i32*, i32** %Precedence.addr, align 8
  %call33 = call i32 @ord_LiteralCompare(%struct.term* %24, i32 %call30, %struct.term* %27, i32 %call32, i32 1, i32* %30, i32* %31)
  store i32 %call33, i32* %Compare, align 4
  %32 = load i32, i32* %Compare, align 4
  %call34 = call i32 @ord_SmallerThan()
  %cmp35 = icmp eq i32 %32, %call34
  br i1 %cmp35, label %if.then.41, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.25
  %33 = load i32, i32* %Strict.addr, align 4
  %tobool37 = icmp ne i32 %33, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.end.42

land.lhs.true.38:                                 ; preds = %lor.lhs.false.36
  %34 = load i32, i32* %Compare, align 4
  %call39 = call i32 @ord_Equal()
  %cmp40 = icmp eq i32 %34, %call39
  br i1 %cmp40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38, %if.then.25
  %35 = load %struct.term*, %struct.term** %Max, align 8
  call void @term_Delete(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %LitTerm, align 8
  call void @term_Delete(%struct.term* %36)
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.38, %lor.lhs.false.36
  %37 = load %struct.term*, %struct.term** %LitTerm, align 8
  call void @term_Delete(%struct.term* %37)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %land.lhs.true.21, %land.lhs.true.19, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %38 = load i32, i32* %k, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.term*, %struct.term** %Max, align 8
  call void @term_Delete(%struct.term* %39)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.41, %if.then.10, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct.CLAUSE_HELP* @clause_CreateBody(i32) #2

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
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
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

declare %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term*, %struct.CLAUSE_HELP*) #2

declare %struct.term* @subst_Apply(%struct.subst*, %struct.term*) #2

declare %struct.term* @term_Copy(%struct.term*) #2

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
define internal void @clause_SetDataFromFather(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Father, i32 %i, i32* %Flags, i32* %Precedence) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Father.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Father, %struct.CLAUSE_HELP** %Father.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %0, i32* %1, i32* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  call void @clause_SetSplitDataFromFather(%struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP* %4)
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call = call i32 @clause_Depth(%struct.CLAUSE_HELP* %6)
  %add = add i32 %call, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %5, i32 %add)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call1 = call i32 @clause_Number(%struct.CLAUSE_HELP* %8)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %7, i32 %call1)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %10 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromEqualityResolution(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 3, i32* %origin, align 4
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

declare void @subst_Delete(%struct.subst*) #2

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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_EqualityFactoring(%struct.CLAUSE_HELP* %GivenClause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %last = alloca i32, align 4
  %mgu = alloca %struct.subst*, align 8
  %Atom = alloca %struct.term*, align 8
  %Left = alloca %struct.term*, align 8
  %Right = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerLeft = alloca %struct.term*, align 8
  %PartnerRight = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %1, i32 2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call4 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Result, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call8 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call8, i32* %last, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call9 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.88

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call10 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call10, %struct.LITERAL_HELP** %ActLit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call11 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %9)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.85

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call13 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %10)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.85

if.then.15:                                       ; preds = %land.lhs.true
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call16 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  store %struct.term* %call16, %struct.term** %Atom, align 8
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  store %struct.term* %call17, %struct.term** %Left, align 8
  %13 = load %struct.term*, %struct.term** %Atom, align 8
  %call18 = call %struct.term* @term_SecondArgument(%struct.term* %13)
  store %struct.term* %call18, %struct.term** %Right, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call19 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %14)
  store i32 %call19, i32* %j, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.then.15
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %last, align 4
  %cmp21 = icmp sle i32 %15, %16
  br i1 %cmp21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.20
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call23 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.LITERAL_HELP* %call23, %struct.LITERAL_HELP** %PartnerLit, align 8
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %j, align 4
  %cmp24 = icmp ne i32 %19, %20
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.84

land.lhs.true.25:                                 ; preds = %for.body.22
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call26 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %21)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.84

if.then.28:                                       ; preds = %land.lhs.true.25
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call29 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %22)
  store %struct.term* %call29, %struct.term** %PartnerAtom, align 8
  %23 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call30 = call %struct.term* @term_FirstArgument(%struct.term* %23)
  store %struct.term* %call30, %struct.term** %PartnerLeft, align 8
  %24 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call31 = call %struct.term* @term_SecondArgument(%struct.term* %24)
  store %struct.term* %call31, %struct.term** %PartnerRight, align 8
  call void @cont_Check()
  %call32 = call %struct.binding* @cont_LeftContext()
  %25 = load %struct.term*, %struct.term** %Left, align 8
  %26 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %call33 = call i32 @unify_UnifyCom(%struct.binding* %call32, %struct.term* %25, %struct.term* %26)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.43

if.then.35:                                       ; preds = %if.then.28
  %call36 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call36, %struct.subst** %mgu)
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.term*, %struct.term** %Left, align 8
  %30 = load %struct.term*, %struct.term** %Right, align 8
  %31 = load %struct.subst*, %struct.subst** %mgu, align 8
  %32 = load i32*, i32** %Flags.addr, align 8
  %33 = load i32*, i32** %Precedence.addr, align 8
  %call37 = call i32 @inf_EqualityFactoringApplicable(%struct.CLAUSE_HELP* %27, i32 %28, %struct.term* %29, %struct.term* %30, %struct.subst* %31, i32* %32, i32* %33)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.35
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %35 = load %struct.term*, %struct.term** %Right, align 8
  %36 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %39 = load %struct.subst*, %struct.subst** %mgu, align 8
  %40 = load i32*, i32** %Flags.addr, align 8
  %41 = load i32*, i32** %Precedence.addr, align 8
  %call40 = call %struct.CLAUSE_HELP* @inf_ApplyEqualityFactoring(%struct.CLAUSE_HELP* %34, %struct.term* %35, %struct.term* %36, i32 %37, i32 %38, %struct.subst* %39, i32* %40, i32* %41)
  %42 = bitcast %struct.CLAUSE_HELP* %call40 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call41 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %Result, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.35
  %44 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %44)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.28
  call void @cont_Reset()
  call void @cont_Check()
  %call44 = call %struct.binding* @cont_LeftContext()
  %45 = load %struct.term*, %struct.term** %Left, align 8
  %46 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call45 = call i32 @unify_UnifyCom(%struct.binding* %call44, %struct.term* %45, %struct.term* %46)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %if.end.43
  %call48 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call48, %struct.subst** %mgu)
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %48 = load i32, i32* %i, align 4
  %49 = load %struct.term*, %struct.term** %Left, align 8
  %50 = load %struct.term*, %struct.term** %Right, align 8
  %51 = load %struct.subst*, %struct.subst** %mgu, align 8
  %52 = load i32*, i32** %Flags.addr, align 8
  %53 = load i32*, i32** %Precedence.addr, align 8
  %call49 = call i32 @inf_EqualityFactoringApplicable(%struct.CLAUSE_HELP* %47, i32 %48, %struct.term* %49, %struct.term* %50, %struct.subst* %51, i32* %52, i32* %53)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.47
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %55 = load %struct.term*, %struct.term** %Right, align 8
  %56 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load i32, i32* %j, align 4
  %59 = load %struct.subst*, %struct.subst** %mgu, align 8
  %60 = load i32*, i32** %Flags.addr, align 8
  %61 = load i32*, i32** %Precedence.addr, align 8
  %call52 = call %struct.CLAUSE_HELP* @inf_ApplyEqualityFactoring(%struct.CLAUSE_HELP* %54, %struct.term* %55, %struct.term* %56, i32 %57, i32 %58, %struct.subst* %59, i32* %60, i32* %61)
  %62 = bitcast %struct.CLAUSE_HELP* %call52 to i8*
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call53 = call %struct.LIST_HELP* @list_Cons(i8* %62, %struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Result, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.47
  %64 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %64)
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.43
  call void @cont_Reset()
  %65 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call56 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %65)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.83, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  call void @cont_Check()
  %call59 = call %struct.binding* @cont_LeftContext()
  %66 = load %struct.term*, %struct.term** %Right, align 8
  %67 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %call60 = call i32 @unify_UnifyCom(%struct.binding* %call59, %struct.term* %66, %struct.term* %67)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.70

if.then.62:                                       ; preds = %if.then.58
  %call63 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call63, %struct.subst** %mgu)
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %69 = load i32, i32* %i, align 4
  %70 = load %struct.term*, %struct.term** %Right, align 8
  %71 = load %struct.term*, %struct.term** %Left, align 8
  %72 = load %struct.subst*, %struct.subst** %mgu, align 8
  %73 = load i32*, i32** %Flags.addr, align 8
  %74 = load i32*, i32** %Precedence.addr, align 8
  %call64 = call i32 @inf_EqualityFactoringApplicable(%struct.CLAUSE_HELP* %68, i32 %69, %struct.term* %70, %struct.term* %71, %struct.subst* %72, i32* %73, i32* %74)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.69

if.then.66:                                       ; preds = %if.then.62
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %76 = load %struct.term*, %struct.term** %Left, align 8
  %77 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %j, align 4
  %80 = load %struct.subst*, %struct.subst** %mgu, align 8
  %81 = load i32*, i32** %Flags.addr, align 8
  %82 = load i32*, i32** %Precedence.addr, align 8
  %call67 = call %struct.CLAUSE_HELP* @inf_ApplyEqualityFactoring(%struct.CLAUSE_HELP* %75, %struct.term* %76, %struct.term* %77, i32 %78, i32 %79, %struct.subst* %80, i32* %81, i32* %82)
  %83 = bitcast %struct.CLAUSE_HELP* %call67 to i8*
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call68 = call %struct.LIST_HELP* @list_Cons(i8* %83, %struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %Result, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.66, %if.then.62
  %85 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %85)
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.then.58
  call void @cont_Reset()
  call void @cont_Check()
  %call71 = call %struct.binding* @cont_LeftContext()
  %86 = load %struct.term*, %struct.term** %Right, align 8
  %87 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call72 = call i32 @unify_UnifyCom(%struct.binding* %call71, %struct.term* %86, %struct.term* %87)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.82

if.then.74:                                       ; preds = %if.end.70
  %call75 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call75, %struct.subst** %mgu)
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %89 = load i32, i32* %i, align 4
  %90 = load %struct.term*, %struct.term** %Right, align 8
  %91 = load %struct.term*, %struct.term** %Left, align 8
  %92 = load %struct.subst*, %struct.subst** %mgu, align 8
  %93 = load i32*, i32** %Flags.addr, align 8
  %94 = load i32*, i32** %Precedence.addr, align 8
  %call76 = call i32 @inf_EqualityFactoringApplicable(%struct.CLAUSE_HELP* %88, i32 %89, %struct.term* %90, %struct.term* %91, %struct.subst* %92, i32* %93, i32* %94)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.then.74
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %96 = load %struct.term*, %struct.term** %Left, align 8
  %97 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %j, align 4
  %100 = load %struct.subst*, %struct.subst** %mgu, align 8
  %101 = load i32*, i32** %Flags.addr, align 8
  %102 = load i32*, i32** %Precedence.addr, align 8
  %call79 = call %struct.CLAUSE_HELP* @inf_ApplyEqualityFactoring(%struct.CLAUSE_HELP* %95, %struct.term* %96, %struct.term* %97, i32 %98, i32 %99, %struct.subst* %100, i32* %101, i32* %102)
  %103 = bitcast %struct.CLAUSE_HELP* %call79 to i8*
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %103, %struct.LIST_HELP* %104)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %Result, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.then.74
  %105 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %105)
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.70
  call void @cont_Reset()
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.55
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.25, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.84
  %106 = load i32, i32* %j, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %if.end.85

if.end.85:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %107 = load i32, i32* %i, align 4
  %inc87 = add nsw i32 %107, 1
  store i32 %inc87, i32* %i, align 4
  br label %for.cond

for.end.88:                                       ; preds = %for.cond
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %108, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.88, %if.then
  %109 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %109
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
define internal i32 @inf_EqualityFactoringApplicable(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.term* %Left, %struct.term* %Right, %struct.subst* %Subst, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Help = alloca i32, align 4
  %NLeft = alloca %struct.term*, align 8
  %NRight = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  %call1 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.11, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %3 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call2 = call %struct.term* @term_Copy(%struct.term* %3)
  %call3 = call %struct.term* @subst_Apply(%struct.subst* %2, %struct.term* %call2)
  store %struct.term* %call3, %struct.term** %NLeft, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %5 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call4 = call %struct.term* @term_Copy(%struct.term* %5)
  %call5 = call %struct.term* @subst_Apply(%struct.subst* %4, %struct.term* %call4)
  store %struct.term* %call5, %struct.term** %NRight, align 8
  %6 = load %struct.term*, %struct.term** %NLeft, align 8
  %7 = load %struct.term*, %struct.term** %NRight, align 8
  %8 = load i32*, i32** %Flags.addr, align 8
  %9 = load i32*, i32** %Precedence.addr, align 8
  %call6 = call i32 @ord_Compare(%struct.term* %6, %struct.term* %7, i32* %8, i32* %9)
  store i32 %call6, i32* %Help, align 4
  %call7 = call i32 @ord_SmallerThan()
  %cmp = icmp eq i32 %call6, %call7
  br i1 %cmp, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %10 = load i32, i32* %Help, align 4
  %call8 = call i32 @ord_Equal()
  %cmp9 = icmp eq i32 %10, %call8
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  %11 = load %struct.term*, %struct.term** %NLeft, align 8
  call void @term_Delete(%struct.term* %11)
  %12 = load %struct.term*, %struct.term** %NRight, align 8
  call void @term_Delete(%struct.term* %12)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %13 = load %struct.term*, %struct.term** %NLeft, align 8
  call void @term_Delete(%struct.term* %13)
  %14 = load %struct.term*, %struct.term** %NRight, align 8
  call void @term_Delete(%struct.term* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.end, %entry
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i.addr, align 4
  %17 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %18 = load i32*, i32** %Flags.addr, align 8
  %19 = load i32*, i32** %Precedence.addr, align 8
  %call12 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %15, i32 %16, i32 -1, %struct.subst* %17, i32 0, i32* %18, i32* %19)
  store i32 %call12, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_ApplyEqualityFactoring(%struct.CLAUSE_HELP* %Clause, %struct.term* %Left, %struct.term* %Right, i32 %i, i32 %j, %struct.subst* %Subst, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %k = alloca i32, align 4
  %c = alloca i32, align 4
  %a = alloca i32, align 4
  %s = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_Length(%struct.CLAUSE_HELP* %0)
  %call1 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %call)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %NewClause, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %c, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %3)
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %2, i32 %call3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %a, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %6)
  %add = add nsw i32 %call5, 1
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %5, i32 %add)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call6, i32* %s, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call7 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %9)
  %sub = sub nsw i32 %call7, 1
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %8, i32 %sub)
  %call8 = call i32 @clause_FirstLitIndex()
  store i32 %call8, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %k, align 4
  %11 = load i32, i32* %c, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %13 = load i32, i32* %k, align 4
  %14 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %k, align 4
  %call9 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %15, i32 %16)
  %call10 = call %struct.term* @term_Copy(%struct.term* %call9)
  %call11 = call %struct.term* @subst_Apply(%struct.subst* %14, %struct.term* %call10)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call12 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call11, %struct.CLAUSE_HELP* %17)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %12, i32 %13, %struct.LITERAL_HELP* %call12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.20, %for.end
  %19 = load i32, i32* %k, align 4
  %20 = load i32, i32* %a, align 4
  %cmp14 = icmp sle i32 %19, %20
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.13
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %22 = load i32, i32* %k, align 4
  %23 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %k, align 4
  %call16 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %24, i32 %25)
  %call17 = call %struct.term* @term_Copy(%struct.term* %call16)
  %call18 = call %struct.term* @subst_Apply(%struct.subst* %23, %struct.term* %call17)
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call19 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call18, %struct.CLAUSE_HELP* %26)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %21, i32 %22, %struct.LITERAL_HELP* %call19)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %27 = load i32, i32* %k, align 4
  %inc21 = add nsw i32 %27, 1
  store i32 %inc21, i32* %k, align 4
  br label %for.cond.13

for.end.22:                                       ; preds = %for.cond.13
  %call23 = call i32 @fol_Equality()
  %28 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call24 = call %struct.term* @term_Copy(%struct.term* %28)
  %29 = bitcast %struct.term* %call24 to i8*
  %30 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call25 = call %struct.term* @term_Copy(%struct.term* %30)
  %31 = bitcast %struct.term* %call25 to i8*
  %call26 = call %struct.LIST_HELP* @list_List(i8* %31)
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %29, %struct.LIST_HELP* %call26)
  %call28 = call %struct.term* @term_Create(i32 %call23, %struct.LIST_HELP* %call27)
  store %struct.term* %call28, %struct.term** %Atom, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %33 = load i32, i32* %k, align 4
  %call29 = call i32 @fol_Not()
  %34 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %35 = load %struct.term*, %struct.term** %Atom, align 8
  %call30 = call %struct.term* @subst_Apply(%struct.subst* %34, %struct.term* %35)
  %36 = bitcast %struct.term* %call30 to i8*
  %call31 = call %struct.LIST_HELP* @list_List(i8* %36)
  %call32 = call %struct.term* @term_Create(i32 %call29, %struct.LIST_HELP* %call31)
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call33 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call32, %struct.CLAUSE_HELP* %37)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %32, i32 %33, %struct.LITERAL_HELP* %call33)
  store i32 1, i32* %a, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.43, %for.end.22
  %38 = load i32, i32* %k, align 4
  %39 = load i32, i32* %s, align 4
  %cmp35 = icmp sle i32 %38, %39
  br i1 %cmp35, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.34
  %40 = load i32, i32* %k, align 4
  %41 = load i32, i32* %i.addr, align 4
  %cmp37 = icmp eq i32 %40, %41
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.36
  store i32 0, i32* %a, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.36
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %43 = load i32, i32* %k, align 4
  %44 = load i32, i32* %a, align 4
  %add38 = add nsw i32 %43, %44
  %45 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %47 = load i32, i32* %k, align 4
  %call39 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %46, i32 %47)
  %call40 = call %struct.term* @term_Copy(%struct.term* %call39)
  %call41 = call %struct.term* @subst_Apply(%struct.subst* %45, %struct.term* %call40)
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call42 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call41, %struct.CLAUSE_HELP* %48)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %42, i32 %add38, %struct.LITERAL_HELP* %call42)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end
  %49 = load i32, i32* %k, align 4
  %inc44 = add nsw i32 %49, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.34

for.end.45:                                       ; preds = %for.cond.34
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call46 = call i32 @clause_Number(%struct.CLAUSE_HELP* %51)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %50, i32 %call46)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %53 = load i32, i32* %j.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %52, i32 %53)
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %56 = load i32, i32* %i.addr, align 4
  %57 = load i32*, i32** %Flags.addr, align 8
  %58 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromFather(%struct.CLAUSE_HELP* %54, %struct.CLAUSE_HELP* %55, i32 %56, i32* %57, i32* %58)
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromEqualityFactoring(%struct.CLAUSE_HELP* %59)
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %60
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_GenSuperpositionRight(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call4 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Result, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call8 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %3)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %Copy, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call9 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call9, i32* %n, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call10 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %9 = load i32, i32* %i, align 4
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %ActLit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call12 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %10)
  store %struct.term* %call12, %struct.term** %Atom, align 8
  %11 = load i32, i32* %MaxPara.addr, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %lor.lhs.false.14, label %if.then.17

lor.lhs.false.14:                                 ; preds = %for.body
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call15 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %12, i32 2)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.46

if.then.17:                                       ; preds = %lor.lhs.false.14, %for.body
  %13 = load %struct.term*, %struct.term** %Atom, align 8
  %call18 = call i32 @fol_IsEquality(%struct.term* %13)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end.39

land.lhs.true:                                    ; preds = %if.then.17
  %14 = load i32, i32* %Unit.addr, align 4
  %tobool20 = icmp ne i32 %14, 0
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.24

lor.lhs.false.21:                                 ; preds = %land.lhs.true
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call22 = call i32 @clause_Length(%struct.CLAUSE_HELP* %15)
  %cmp23 = icmp eq i32 %call22, 1
  br i1 %cmp23, label %if.then.24, label %if.end.39

if.then.24:                                       ; preds = %lor.lhs.false.21, %land.lhs.true
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %call26 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %21 = load i32, i32* %OrdPara.addr, align 4
  %22 = load i32, i32* %MaxPara.addr, align 4
  %23 = load i32*, i32** %Flags.addr, align 8
  %24 = load i32*, i32** %Precedence.addr, align 8
  %call27 = call %struct.LIST_HELP* @inf_GenLitSPRight(%struct.CLAUSE_HELP* %16, %struct.term* %call25, %struct.term* %call26, i32 %19, %struct.SHARED_INDEX_NODE* %20, i32 %21, i32 %22, i32* %23, i32* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call28 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call27, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %Result, align 8
  %26 = load i32, i32* %OrdPara.addr, align 4
  %tobool29 = icmp ne i32 %26, 0
  br i1 %tobool29, label %lor.lhs.false.30, label %if.then.33

lor.lhs.false.30:                                 ; preds = %if.then.24
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call31 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %27)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.end.38, label %if.then.33

if.then.33:                                       ; preds = %lor.lhs.false.30, %if.then.24
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %29 = load %struct.term*, %struct.term** %Atom, align 8
  %call34 = call %struct.term* @term_SecondArgument(%struct.term* %29)
  %30 = load %struct.term*, %struct.term** %Atom, align 8
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %33 = load i32, i32* %OrdPara.addr, align 4
  %34 = load i32, i32* %MaxPara.addr, align 4
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  %call36 = call %struct.LIST_HELP* @inf_GenLitSPRight(%struct.CLAUSE_HELP* %28, %struct.term* %call34, %struct.term* %call35, i32 %31, %struct.SHARED_INDEX_NODE* %32, i32 %33, i32 %34, i32* %35, i32* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call37 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call36, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %Result, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %lor.lhs.false.30
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %lor.lhs.false.21, %if.then.17
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call40 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %38, i32 32)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %if.end.39
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %40 = load i32, i32* %i, align 4
  %41 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %42 = load i32, i32* %OrdPara.addr, align 4
  %43 = load i32, i32* %MaxPara.addr, align 4
  %44 = load i32, i32* %Unit.addr, align 4
  %45 = load i32*, i32** %Flags.addr, align 8
  %46 = load i32*, i32** %Precedence.addr, align 8
  %call43 = call %struct.LIST_HELP* @inf_GenSPRightToGiven(%struct.CLAUSE_HELP* %39, i32 %40, %struct.SHARED_INDEX_NODE* %41, i32 %42, i32 %43, i32 %44, i32* %45, i32* %46)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call44 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call43, %struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %Result, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %lor.lhs.false.14
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %48 = load i32, i32* %i, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %49)
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %50, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %51
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #2

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
define internal %struct.LIST_HELP* @inf_GenLitSPRight(%struct.CLAUSE_HELP* %Clause, %struct.term* %Left, %struct.term* %Right, i32 %i, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %i.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Terms = alloca %struct.LIST_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %pli = alloca i32, align 4
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %NewLeft = alloca %struct.term*, align 8
  %NewRight = alloca %struct.term*, align 8
  %PartnerMaxVar = alloca i32, align 4
  %SupAtom = alloca %struct.term*, align 8
  %NewPartnerLeft = alloca %struct.term*, align 8
  %NewPartnerRight = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call2 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  %call3 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call4 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call1, %struct.st* %call2, %struct.binding* %call3, %struct.term* %1)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Terms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.103, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call6 = call i8* @list_First(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %4, %struct.term** %Term, align 8
  %5 = load %struct.term*, %struct.term** %Term, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.102, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %6)
  %call10 = call i32 @symbol_IsPredicate(i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.102, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call12 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %7, %struct.SHARED_INDEX_NODE* %8)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call18 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %11, %struct.LITERAL_HELP** %PartnerLit, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call19 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %12)
  store %struct.term* %call19, %struct.term** %PartnerAtom, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call20 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %13)
  store i32 %call20, i32* %pli, align 4
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call21 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %14)
  store %struct.CLAUSE_HELP* %call21, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call22 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %15, i32 2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.100, label %land.lhs.true.24

land.lhs.true.24:                                 ; preds = %for.body.17
  %16 = load i32, i32* %MaxPara.addr, align 4
  %tobool25 = icmp ne i32 %16, 0
  br i1 %tobool25, label %lor.lhs.false, label %land.lhs.true.28

lor.lhs.false:                                    ; preds = %land.lhs.true.24
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call26 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %17, i32 2)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.100

land.lhs.true.28:                                 ; preds = %lor.lhs.false, %land.lhs.true.24
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call29 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %18, i32 32)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.100, label %land.lhs.true.31

land.lhs.true.31:                                 ; preds = %land.lhs.true.28
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call32 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %19)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.100

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call35 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %20)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.end.100

if.then.37:                                       ; preds = %land.lhs.true.34
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call38 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %21)
  store i32 %call38, i32* %PartnerMaxVar, align 4
  %22 = load %struct.term*, %struct.term** %Left.addr, align 8
  store %struct.term* %22, %struct.term** %NewLeft, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %24 = load i32, i32* %PartnerMaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %23, i32 %24)
  call void @cont_Check()
  %call39 = call %struct.binding* @cont_LeftContext()
  %25 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call40 = call %struct.binding* @cont_RightContext()
  %26 = load %struct.term*, %struct.term** %Term, align 8
  %call41 = call i32 @unify_UnifyNoOC(%struct.binding* %call39, %struct.term* %25, %struct.binding* %call40, %struct.term* %26)
  %call42 = call %struct.binding* @cont_LeftContext()
  %call43 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call42, %struct.subst** %Subst, %struct.binding* %call43, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %27 = load i32, i32* %MaxPara.addr, align 4
  %tobool44 = icmp ne i32 %27, 0
  br i1 %tobool44, label %lor.lhs.false.45, label %if.then.48

lor.lhs.false.45:                                 ; preds = %if.then.37
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %29 = load i32, i32* %i.addr, align 4
  %30 = load %struct.subst*, %struct.subst** %Subst, align 8
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %32 = load i32, i32* %pli, align 4
  %33 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %34 = load i32*, i32** %Flags.addr, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call46 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %28, i32 %29, %struct.subst* %30, %struct.CLAUSE_HELP* %31, i32 %32, %struct.subst* %33, i32* %34, i32* %35)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.99

if.then.48:                                       ; preds = %lor.lhs.false.45, %if.then.37
  %36 = load %struct.subst*, %struct.subst** %Subst, align 8
  %37 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call49 = call %struct.term* @term_Copy(%struct.term* %37)
  %call50 = call %struct.term* @subst_Apply(%struct.subst* %36, %struct.term* %call49)
  store %struct.term* %call50, %struct.term** %NewRight, align 8
  %38 = load i32, i32* %OrdPara.addr, align 4
  %tobool51 = icmp ne i32 %38, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end

land.lhs.true.52:                                 ; preds = %if.then.48
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %i.addr, align 4
  %call53 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %39, i32 %40)
  %call54 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call53)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.end, label %if.then.56

if.then.56:                                       ; preds = %land.lhs.true.52
  %41 = load %struct.subst*, %struct.subst** %Subst, align 8
  %42 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call57 = call %struct.term* @term_Copy(%struct.term* %42)
  %call58 = call %struct.term* @subst_Apply(%struct.subst* %41, %struct.term* %call57)
  store %struct.term* %call58, %struct.term** %NewLeft, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.56, %land.lhs.true.52, %if.then.48
  %43 = load i32, i32* %OrdPara.addr, align 4
  %tobool59 = icmp ne i32 %43, 0
  br i1 %tobool59, label %lor.lhs.false.60, label %if.then.65

lor.lhs.false.60:                                 ; preds = %if.end
  %44 = load %struct.term*, %struct.term** %NewLeft, align 8
  %45 = load %struct.term*, %struct.term** %Left.addr, align 8
  %cmp = icmp eq %struct.term* %44, %45
  br i1 %cmp, label %if.then.65, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %lor.lhs.false.60
  %46 = load %struct.term*, %struct.term** %NewLeft, align 8
  %47 = load %struct.term*, %struct.term** %NewRight, align 8
  %48 = load i32*, i32** %Flags.addr, align 8
  %49 = load i32*, i32** %Precedence.addr, align 8
  %call62 = call i32 @ord_Compare(%struct.term* %46, %struct.term* %47, i32* %48, i32* %49)
  %call63 = call i32 @ord_SmallerThan()
  %cmp64 = icmp ne i32 %call62, %call63
  br i1 %cmp64, label %if.then.65, label %if.end.95

if.then.65:                                       ; preds = %lor.lhs.false.61, %lor.lhs.false.60, %if.end
  %50 = load i32, i32* %MaxPara.addr, align 4
  %tobool66 = icmp ne i32 %50, 0
  br i1 %tobool66, label %lor.lhs.false.67, label %if.then.70

lor.lhs.false.67:                                 ; preds = %if.then.65
  %51 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call68 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %51)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %lor.lhs.false.67, %if.then.65
  %52 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %53 = load %struct.term*, %struct.term** %Term, align 8
  %54 = load %struct.term*, %struct.term** %NewRight, align 8
  %55 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call71 = call %struct.term* @inf_AllTermsRplac(%struct.term* %52, %struct.term* %53, %struct.term* %54, %struct.subst* %55)
  store %struct.term* %call71, %struct.term** %SupAtom, align 8
  br label %if.end.89

if.else:                                          ; preds = %lor.lhs.false.67
  %56 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call72 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %56)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %if.else
  %57 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %58 = load %struct.term*, %struct.term** %Term, align 8
  %59 = load %struct.term*, %struct.term** %NewRight, align 8
  %60 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call75 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %57, %struct.term* %58, %struct.term* %59, %struct.subst* %60)
  store %struct.term* %call75, %struct.term** %SupAtom, align 8
  br label %if.end.88

if.else.76:                                       ; preds = %if.else
  %61 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %62 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call77 = call %struct.term* @term_FirstArgument(%struct.term* %62)
  %call78 = call %struct.term* @term_Copy(%struct.term* %call77)
  %call79 = call %struct.term* @subst_Apply(%struct.subst* %61, %struct.term* %call78)
  store %struct.term* %call79, %struct.term** %NewPartnerLeft, align 8
  %63 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %64 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call80 = call %struct.term* @term_SecondArgument(%struct.term* %64)
  %call81 = call %struct.term* @term_Copy(%struct.term* %call80)
  %call82 = call %struct.term* @subst_Apply(%struct.subst* %63, %struct.term* %call81)
  store %struct.term* %call82, %struct.term** %NewPartnerRight, align 8
  %65 = load %struct.term*, %struct.term** %NewPartnerLeft, align 8
  %66 = load %struct.term*, %struct.term** %NewPartnerRight, align 8
  %67 = load i32*, i32** %Flags.addr, align 8
  %68 = load i32*, i32** %Precedence.addr, align 8
  %call83 = call i32 @ord_Compare(%struct.term* %65, %struct.term* %66, i32* %67, i32* %68)
  switch i32 %call83, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.85
  ]

sw.bb:                                            ; preds = %if.else.76
  %69 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %70 = load %struct.term*, %struct.term** %Term, align 8
  %71 = load %struct.term*, %struct.term** %NewRight, align 8
  %72 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call84 = call %struct.term* @inf_AllTermsRightRplac(%struct.term* %69, %struct.term* %70, %struct.term* %71, %struct.subst* %72)
  store %struct.term* %call84, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.bb.85:                                         ; preds = %if.else.76
  %73 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %74 = load %struct.term*, %struct.term** %Term, align 8
  %75 = load %struct.term*, %struct.term** %NewRight, align 8
  %76 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call86 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %73, %struct.term* %74, %struct.term* %75, %struct.subst* %76)
  store %struct.term* %call86, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.76
  %77 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %78 = load %struct.term*, %struct.term** %Term, align 8
  %79 = load %struct.term*, %struct.term** %NewRight, align 8
  %80 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call87 = call %struct.term* @inf_AllTermsRplac(%struct.term* %77, %struct.term* %78, %struct.term* %79, %struct.subst* %80)
  store %struct.term* %call87, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.85, %sw.bb
  %81 = load %struct.term*, %struct.term** %NewPartnerLeft, align 8
  call void @term_Delete(%struct.term* %81)
  %82 = load %struct.term*, %struct.term** %NewPartnerRight, align 8
  call void @term_Delete(%struct.term* %82)
  br label %if.end.88

if.end.88:                                        ; preds = %sw.epilog, %if.then.74
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.70
  %83 = load %struct.term*, %struct.term** %SupAtom, align 8
  %cmp90 = icmp ne %struct.term* %83, null
  br i1 %cmp90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %if.end.89
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %85 = load i32, i32* %i.addr, align 4
  %86 = load %struct.subst*, %struct.subst** %Subst, align 8
  %87 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %88 = load i32, i32* %pli, align 4
  %89 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %90 = load %struct.term*, %struct.term** %SupAtom, align 8
  %91 = load i32, i32* %OrdPara.addr, align 4
  %92 = load i32, i32* %MaxPara.addr, align 4
  %93 = load i32*, i32** %Flags.addr, align 8
  %94 = load i32*, i32** %Precedence.addr, align 8
  %call92 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %84, i32 %85, %struct.subst* %86, %struct.CLAUSE_HELP* %87, i32 %88, %struct.subst* %89, %struct.term* %90, i32 1, i32 %91, i32 %92, i32* %93, i32* %94)
  %95 = bitcast %struct.CLAUSE_HELP* %call92 to i8*
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call93 = call %struct.LIST_HELP* @list_Cons(i8* %95, %struct.LIST_HELP* %96)
  store %struct.LIST_HELP* %call93, %struct.LIST_HELP** %Result, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %if.end.89
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %lor.lhs.false.61
  %97 = load %struct.term*, %struct.term** %NewLeft, align 8
  %98 = load %struct.term*, %struct.term** %Left.addr, align 8
  %cmp96 = icmp ne %struct.term* %97, %98
  br i1 %cmp96, label %if.then.97, label %if.end.98

if.then.97:                                       ; preds = %if.end.95
  %99 = load %struct.term*, %struct.term** %NewLeft, align 8
  call void @term_Delete(%struct.term* %99)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.97, %if.end.95
  %100 = load %struct.term*, %struct.term** %NewRight, align 8
  call void @term_Delete(%struct.term* %100)
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %lor.lhs.false.45
  %101 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %101)
  %102 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %102)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.34, %land.lhs.true.31, %land.lhs.true.28, %lor.lhs.false, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call101 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %103)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call104 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %104)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %Terms, align 8
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %105
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPRightToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call1)
  store %struct.term* %call2, %struct.term** %Atom, align 8
  %2 = load %struct.term*, %struct.term** %Atom, align 8
  %call3 = call i32 @fol_IsEquality(%struct.term* %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %6 = load i32, i32* %OrdPara.addr, align 4
  %7 = load i32, i32* %MaxPara.addr, align 4
  %8 = load i32, i32* %Unit.addr, align 4
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call %struct.LIST_HELP* @inf_GenSPRightEqToGiven(%struct.CLAUSE_HELP* %3, i32 %4, i32 1, %struct.SHARED_INDEX_NODE* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Result, align 8
  %12 = load i32, i32* %MaxPara.addr, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.then
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %i.addr, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %13, i32 %14)
  %call8 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i.addr, align 4
  %17 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %18 = load i32, i32* %OrdPara.addr, align 4
  %19 = load i32, i32* %MaxPara.addr, align 4
  %20 = load i32, i32* %Unit.addr, align 4
  %21 = load i32*, i32** %Flags.addr, align 8
  %22 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call %struct.LIST_HELP* @inf_GenSPRightEqToGiven(%struct.CLAUSE_HELP* %15, i32 %16, i32 0, %struct.SHARED_INDEX_NODE* %17, i32 %18, i32 %19, i32 %20, i32* %21, i32* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call12 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call11, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %lor.lhs.false
  br label %if.end.15

if.else:                                          ; preds = %entry
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %i.addr, align 4
  %26 = load %struct.term*, %struct.term** %Atom, align 8
  %27 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %28 = load i32, i32* %OrdPara.addr, align 4
  %29 = load i32, i32* %MaxPara.addr, align 4
  %30 = load i32, i32* %Unit.addr, align 4
  %31 = load i32*, i32** %Flags.addr, align 8
  %32 = load i32*, i32** %Precedence.addr, align 8
  %call13 = call %struct.LIST_HELP* @inf_GenSPRightLitToGiven(%struct.CLAUSE_HELP* %24, i32 %25, %struct.term* %26, %struct.SHARED_INDEX_NODE* %27, i32 %28, i32 %29, i32 %30, i32* %31, i32* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call13, %struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Result, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %34
}

declare void @clause_Delete(%struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_MergingParamodulation(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %copy = alloca %struct.CLAUSE_HELP*, align 8
  %last = alloca i32, align 4
  %i = alloca i32, align 4
  %actLit = alloca %struct.LITERAL_HELP*, align 8
  %atom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call4 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  %call6 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %result, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call8 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %3)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %copy, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call9 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call9, i32* %last, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %call10 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %9 = load i32, i32* %i, align 4
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %actLit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call12 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %10)
  store %struct.term* %call12, %struct.term** %atom, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call13 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %11, i32 2)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %atom, align 8
  %call15 = call i32 @fol_IsEquality(%struct.term* %12)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.30

if.then.17:                                       ; preds = %land.lhs.true
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %14 = load i32, i32* %i, align 4
  %15 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %16 = load i32*, i32** %Flags.addr, align 8
  %17 = load i32*, i32** %Precedence.addr, align 8
  %call18 = call %struct.LIST_HELP* @inf_LitMParamod(%struct.CLAUSE_HELP* %13, i32 %14, i32 0, %struct.SHARED_INDEX_NODE* %15, i32* %16, i32* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call19 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call18, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %result, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %22 = load i32*, i32** %Flags.addr, align 8
  %23 = load i32*, i32** %Precedence.addr, align 8
  %call20 = call %struct.LIST_HELP* @inf_MParamodLitToGiven(%struct.CLAUSE_HELP* %19, i32 %20, i32 0, %struct.SHARED_INDEX_NODE* %21, i32* %22, i32* %23)
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call21 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call20, %struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %result, align 8
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call22 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.29, label %if.then.24

if.then.24:                                       ; preds = %if.then.17
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %27 = load i32, i32* %i, align 4
  %28 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %29 = load i32*, i32** %Flags.addr, align 8
  %30 = load i32*, i32** %Precedence.addr, align 8
  %call25 = call %struct.LIST_HELP* @inf_LitMParamod(%struct.CLAUSE_HELP* %26, i32 %27, i32 1, %struct.SHARED_INDEX_NODE* %28, i32* %29, i32* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call26 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call25, %struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %result, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  %33 = load i32, i32* %i, align 4
  %34 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  %call27 = call %struct.LIST_HELP* @inf_MParamodLitToGiven(%struct.CLAUSE_HELP* %32, i32 %33, i32 1, %struct.SHARED_INDEX_NODE* %34, i32* %35, i32* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call28 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call27, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %result, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.24, %if.then.17
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %copy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %39)
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %40, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %41
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_LitMParamod(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %Turn, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Turn.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %literals = alloca %struct.LIST_HELP*, align 8
  %actLit = alloca %struct.LITERAL_HELP*, align 8
  %s = alloca %struct.term*, align 8
  %t = alloca %struct.term*, align 8
  %help = alloca %struct.term*, align 8
  %s2 = alloca %struct.term*, align 8
  %partnerLit = alloca %struct.LITERAL_HELP*, align 8
  %partnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %partnerAtom = alloca %struct.term*, align 8
  %pli = alloca i32, align 4
  %partnerLeft = alloca %struct.term*, align 8
  %partnerRight = alloca %struct.term*, align 8
  %inPartnerRight = alloca i32, align 4
  %newPLeft = alloca %struct.term*, align 8
  %newPRight = alloca %struct.term*, align 8
  %tau = alloca %struct.subst*, align 8
  %partnerMaxVar = alloca i32, align 4
  %ordResult = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %Turn, i32* %Turn.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call, %struct.LITERAL_HELP** %actLit, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call1 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %2)
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %call1)
  store %struct.term* %call2, %struct.term** %s, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call3 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %3)
  %call4 = call %struct.term* @term_SecondArgument(%struct.term* %call3)
  store %struct.term* %call4, %struct.term** %t, align 8
  %4 = load i32, i32* %Turn.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %s, align 8
  store %struct.term* %5, %struct.term** %help, align 8
  %6 = load %struct.term*, %struct.term** %t, align 8
  store %struct.term* %6, %struct.term** %s, align 8
  %7 = load %struct.term*, %struct.term** %help, align 8
  store %struct.term* %7, %struct.term** %t, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %result, align 8
  %call6 = call %struct.binding* @cont_LeftContext()
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call7 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %8)
  %call8 = call %struct.binding* @cont_RightContext()
  %9 = load %struct.term*, %struct.term** %s, align 8
  %call9 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call6, %struct.st* %call7, %struct.binding* %call8, %struct.term* %9)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %if.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call12 to %struct.term*
  store %struct.term* %12, %struct.term** %s2, align 8
  %13 = load %struct.term*, %struct.term** %s2, align 8
  %call13 = call i32 @term_IsVariable(%struct.term* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.89, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %14 = load %struct.term*, %struct.term** %s2, align 8
  %call15 = call i32 @term_IsAtom(%struct.term* %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.89, label %if.then.17

if.then.17:                                       ; preds = %land.lhs.true
  %15 = load %struct.term*, %struct.term** %s2, align 8
  %16 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call18 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %15, %struct.SHARED_INDEX_NODE* %16)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %literals, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.17
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  br i1 %lnot22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.19
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call24 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %19, %struct.LITERAL_HELP** %partnerLit, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call25 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %20)
  store %struct.CLAUSE_HELP* %call25, %struct.CLAUSE_HELP** %partnerClause, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call26 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %21)
  store %struct.term* %call26, %struct.term** %partnerAtom, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call27 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %22)
  store i32 %call27, i32* %pli, align 4
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call28 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %23, i32 2)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.87, label %land.lhs.true.30

land.lhs.true.30:                                 ; preds = %for.body.23
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call31 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %24, i32 2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.87

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call34 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %25)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.87

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call37 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %26)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.87

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call40 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %27)
  %cmp = icmp sgt i32 %call40, 1
  br i1 %cmp, label %land.lhs.true.41, label %if.end.87

land.lhs.true.41:                                 ; preds = %land.lhs.true.39
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call42 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %28)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.87

if.then.44:                                       ; preds = %land.lhs.true.41
  %29 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call45 = call %struct.term* @term_FirstArgument(%struct.term* %29)
  store %struct.term* %call45, %struct.term** %partnerLeft, align 8
  %30 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call46 = call %struct.term* @term_SecondArgument(%struct.term* %30)
  store %struct.term* %call46, %struct.term** %partnerRight, align 8
  %31 = load %struct.term*, %struct.term** %partnerRight, align 8
  %32 = load %struct.term*, %struct.term** %s2, align 8
  %call47 = call i32 @term_HasPointerSubterm(%struct.term* %31, %struct.term* %32)
  store i32 %call47, i32* %inPartnerRight, align 4
  %33 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call48 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %33)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %lor.lhs.false, label %if.then.51

lor.lhs.false:                                    ; preds = %if.then.44
  %34 = load i32, i32* %inPartnerRight, align 4
  %tobool50 = icmp ne i32 %34, 0
  br i1 %tobool50, label %if.then.51, label %if.end.86

if.then.51:                                       ; preds = %lor.lhs.false, %if.then.44
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call52 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %35)
  store i32 %call52, i32* %partnerMaxVar, align 4
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %37 = load i32, i32* %partnerMaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %36, i32 %37)
  call void @cont_Check()
  %call53 = call %struct.binding* @cont_LeftContext()
  %38 = load %struct.term*, %struct.term** %s, align 8
  %call54 = call %struct.binding* @cont_RightContext()
  %39 = load %struct.term*, %struct.term** %s2, align 8
  %call55 = call i32 @unify_UnifyNoOC(%struct.binding* %call53, %struct.term* %38, %struct.binding* %call54, %struct.term* %39)
  %call56 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call56, %struct.subst** %tau)
  call void @cont_Reset()
  %40 = load %struct.subst*, %struct.subst** %tau, align 8
  %41 = load %struct.term*, %struct.term** %partnerLeft, align 8
  %call57 = call %struct.term* @term_Copy(%struct.term* %41)
  %call58 = call %struct.term* @subst_Apply(%struct.subst* %40, %struct.term* %call57)
  store %struct.term* %call58, %struct.term** %newPLeft, align 8
  %42 = load %struct.subst*, %struct.subst** %tau, align 8
  %43 = load %struct.term*, %struct.term** %partnerRight, align 8
  %call59 = call %struct.term* @term_Copy(%struct.term* %43)
  %call60 = call %struct.term* @subst_Apply(%struct.subst* %42, %struct.term* %call59)
  store %struct.term* %call60, %struct.term** %newPRight, align 8
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call61 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %44)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.else

if.then.63:                                       ; preds = %if.then.51
  %call64 = call i32 @ord_GreaterThan()
  store i32 %call64, i32* %ordResult, align 4
  br label %if.end.66

if.else:                                          ; preds = %if.then.51
  %45 = load %struct.term*, %struct.term** %newPLeft, align 8
  %46 = load %struct.term*, %struct.term** %newPRight, align 8
  %47 = load i32*, i32** %Flags.addr, align 8
  %48 = load i32*, i32** %Precedence.addr, align 8
  %call65 = call i32 @ord_Compare(%struct.term* %45, %struct.term* %46, i32* %47, i32* %48)
  store i32 %call65, i32* %ordResult, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else, %if.then.63
  %49 = load i32, i32* %inPartnerRight, align 4
  %tobool67 = icmp ne i32 %49, 0
  br i1 %tobool67, label %land.lhs.true.68, label %if.end.74

land.lhs.true.68:                                 ; preds = %if.end.66
  %50 = load i32, i32* %ordResult, align 4
  %call69 = call i32 @ord_IsGreaterThan(i32 %50)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %land.lhs.true.68
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %53 = load i32, i32* %i.addr, align 4
  %54 = load i32, i32* %pli, align 4
  %55 = load %struct.term*, %struct.term** %s, align 8
  %56 = load %struct.term*, %struct.term** %t, align 8
  %57 = load %struct.term*, %struct.term** %s2, align 8
  %58 = load %struct.term*, %struct.term** %partnerRight, align 8
  %59 = load %struct.term*, %struct.term** %newPLeft, align 8
  %60 = load %struct.subst*, %struct.subst** %tau, align 8
  %61 = load i32*, i32** %Flags.addr, align 8
  %62 = load i32*, i32** %Precedence.addr, align 8
  %call72 = call %struct.LIST_HELP* @inf_Lit2MParamod(%struct.CLAUSE_HELP* %51, %struct.CLAUSE_HELP* %52, i32 %53, i32 %54, %struct.term* %55, %struct.term* %56, %struct.term* %57, %struct.term* %58, %struct.term* %59, %struct.subst* %60, i32* %61, i32* %62)
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call73 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call72, %struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %result, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %land.lhs.true.68, %if.end.66
  %64 = load i32, i32* %ordResult, align 4
  %call75 = call i32 @ord_IsSmallerThan(i32 %64)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.85

land.lhs.true.77:                                 ; preds = %if.end.74
  %65 = load i32, i32* %inPartnerRight, align 4
  %tobool78 = icmp ne i32 %65, 0
  br i1 %tobool78, label %lor.lhs.false.79, label %if.then.82

lor.lhs.false.79:                                 ; preds = %land.lhs.true.77
  %66 = load %struct.term*, %struct.term** %partnerLeft, align 8
  %67 = load %struct.term*, %struct.term** %s2, align 8
  %call80 = call i32 @term_HasPointerSubterm(%struct.term* %66, %struct.term* %67)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.then.82, label %if.end.85

if.then.82:                                       ; preds = %lor.lhs.false.79, %land.lhs.true.77
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %70 = load i32, i32* %i.addr, align 4
  %71 = load i32, i32* %pli, align 4
  %72 = load %struct.term*, %struct.term** %s, align 8
  %73 = load %struct.term*, %struct.term** %t, align 8
  %74 = load %struct.term*, %struct.term** %s2, align 8
  %75 = load %struct.term*, %struct.term** %partnerLeft, align 8
  %76 = load %struct.term*, %struct.term** %newPRight, align 8
  %77 = load %struct.subst*, %struct.subst** %tau, align 8
  %78 = load i32*, i32** %Flags.addr, align 8
  %79 = load i32*, i32** %Precedence.addr, align 8
  %call83 = call %struct.LIST_HELP* @inf_Lit2MParamod(%struct.CLAUSE_HELP* %68, %struct.CLAUSE_HELP* %69, i32 %70, i32 %71, %struct.term* %72, %struct.term* %73, %struct.term* %74, %struct.term* %75, %struct.term* %76, %struct.subst* %77, i32* %78, i32* %79)
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call84 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call83, %struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call84, %struct.LIST_HELP** %result, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.82, %lor.lhs.false.79, %if.end.74
  %81 = load %struct.term*, %struct.term** %newPLeft, align 8
  call void @term_Delete(%struct.term* %81)
  %82 = load %struct.term*, %struct.term** %newPRight, align 8
  call void @term_Delete(%struct.term* %82)
  %83 = load %struct.subst*, %struct.subst** %tau, align 8
  call void @subst_Delete(%struct.subst* %83)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %lor.lhs.false
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true.41, %land.lhs.true.39, %land.lhs.true.36, %land.lhs.true.33, %land.lhs.true.30, %for.body.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call88 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call88, %struct.LIST_HELP** %literals, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call91 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %86
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_MParamodLitToGiven(%struct.CLAUSE_HELP* %Clause, i32 %j, i32 %Turn, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %j.addr = alloca i32, align 4
  %Turn.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %superterms = alloca %struct.LIST_HELP*, align 8
  %literals = alloca %struct.LIST_HELP*, align 8
  %actLit = alloca %struct.LITERAL_HELP*, align 8
  %u = alloca %struct.term*, align 8
  %v = alloca %struct.term*, align 8
  %bottom = alloca i32, align 4
  %help = alloca %struct.term*, align 8
  %s2 = alloca %struct.term*, align 8
  %s = alloca %struct.term*, align 8
  %partnerAtom = alloca %struct.term*, align 8
  %partnerLit = alloca %struct.LITERAL_HELP*, align 8
  %partnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %partnerMaxVar = alloca i32, align 4
  %tau = alloca %struct.subst*, align 8
  %u_tau = alloca %struct.term*, align 8
  %v_tau = alloca %struct.term*, align 8
  %checkPassed = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store i32 %Turn, i32* %Turn.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %0)
  %cmp = icmp slt i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32, i32* %j.addr, align 4
  %call2 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %1, i32 %2)
  store %struct.LITERAL_HELP* %call2, %struct.LITERAL_HELP** %actLit, align 8
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call3 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %3)
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %call3)
  store %struct.term* %call4, %struct.term** %u, align 8
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call5 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %4)
  %call6 = call %struct.term* @term_SecondArgument(%struct.term* %call5)
  store %struct.term* %call6, %struct.term** %v, align 8
  %5 = load i32, i32* %Turn.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %6 = load %struct.term*, %struct.term** %u, align 8
  store %struct.term* %6, %struct.term** %help, align 8
  %7 = load %struct.term*, %struct.term** %v, align 8
  store %struct.term* %7, %struct.term** %u, align 8
  %8 = load %struct.term*, %struct.term** %help, align 8
  store %struct.term* %8, %struct.term** %v, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end
  %call9 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %result, align 8
  %call10 = call i32 @stack_Bottom()
  store i32 %call10, i32* %bottom, align 4
  %9 = load %struct.term*, %struct.term** %v, align 8
  call void @sharing_PushReverseOnStack(%struct.term* %9)
  br label %while.cond

while.cond:                                       ; preds = %for.end.108, %if.end.8
  %10 = load i32, i32* %bottom, align 4
  %call11 = call i32 @stack_Empty(i32 %10)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot = xor i1 %tobool12, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call13 = call i8* @stack_PopResult()
  %11 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %11, %struct.term** %s2, align 8
  %call14 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call15 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %12)
  %call16 = call %struct.binding* @cont_RightContext()
  %13 = load %struct.term*, %struct.term** %s2, align 8
  %call17 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call14, %struct.st* %call15, %struct.binding* %call16, %struct.term* %13)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %while.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %16, %struct.term** %s, align 8
  %17 = load %struct.term*, %struct.term** %s, align 8
  %call22 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %17)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %superterms, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.103, %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superterms, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %for.body.27, label %for.end.105

for.body.27:                                      ; preds = %for.cond.23
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superterms, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call28 to %struct.term*
  store %struct.term* %20, %struct.term** %partnerAtom, align 8
  %21 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call29 = call i32 @fol_IsEquality(%struct.term* %21)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.102

if.then.31:                                       ; preds = %for.body.27
  %22 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call32 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %22)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %literals, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.then.31
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.33
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call38 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %25, %struct.LITERAL_HELP** %partnerLit, align 8
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call39 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %26)
  store %struct.CLAUSE_HELP* %call39, %struct.CLAUSE_HELP** %partnerClause, align 8
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call40 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %27)
  store i32 %call40, i32* %i, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call41 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %28, i32 2)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.100, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.37
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call43 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %29, i32 2)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.100

land.lhs.true.45:                                 ; preds = %land.lhs.true
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call46 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %30)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %land.lhs.true.48, label %if.end.100

land.lhs.true.48:                                 ; preds = %land.lhs.true.45
  %31 = load %struct.term*, %struct.term** %s, align 8
  %32 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %32)
  %cmp50 = icmp eq %struct.term* %31, %call49
  br i1 %cmp50, label %land.lhs.true.53, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.48
  %33 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit, align 8
  %call51 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %33)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.100, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %lor.lhs.false, %land.lhs.true.48
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call54 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %34)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.100

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call57 = call i32 @clause_Number(%struct.CLAUSE_HELP* %35)
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call58 = call i32 @clause_Number(%struct.CLAUSE_HELP* %36)
  %cmp59 = icmp ne i32 %call57, %call58
  br i1 %cmp59, label %if.then.60, label %if.end.100

if.then.60:                                       ; preds = %land.lhs.true.56
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %call61 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %37)
  store i32 %call61, i32* %partnerMaxVar, align 4
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %39 = load i32, i32* %partnerMaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %38, i32 %39)
  call void @cont_Check()
  %call62 = call %struct.binding* @cont_LeftContext()
  %40 = load %struct.term*, %struct.term** %s, align 8
  %call63 = call %struct.binding* @cont_RightContext()
  %41 = load %struct.term*, %struct.term** %s2, align 8
  %call64 = call i32 @unify_UnifyNoOC(%struct.binding* %call62, %struct.term* %40, %struct.binding* %call63, %struct.term* %41)
  %call65 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call65, %struct.subst** %tau)
  call void @cont_Reset()
  store %struct.term* null, %struct.term** %v_tau, align 8
  store %struct.term* null, %struct.term** %u_tau, align 8
  store i32 1, i32* %checkPassed, align 4
  %42 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call66 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %42)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.78, label %if.then.68

if.then.68:                                       ; preds = %if.then.60
  %43 = load %struct.subst*, %struct.subst** %tau, align 8
  %44 = load %struct.term*, %struct.term** %u, align 8
  %call69 = call %struct.term* @term_Copy(%struct.term* %44)
  %call70 = call %struct.term* @subst_Apply(%struct.subst* %43, %struct.term* %call69)
  store %struct.term* %call70, %struct.term** %u_tau, align 8
  %45 = load %struct.subst*, %struct.subst** %tau, align 8
  %46 = load %struct.term*, %struct.term** %v, align 8
  %call71 = call %struct.term* @term_Copy(%struct.term* %46)
  %call72 = call %struct.term* @subst_Apply(%struct.subst* %45, %struct.term* %call71)
  store %struct.term* %call72, %struct.term** %v_tau, align 8
  %47 = load %struct.term*, %struct.term** %u_tau, align 8
  %48 = load %struct.term*, %struct.term** %v_tau, align 8
  %49 = load i32*, i32** %Flags.addr, align 8
  %50 = load i32*, i32** %Precedence.addr, align 8
  %call73 = call i32 @ord_Compare(%struct.term* %47, %struct.term* %48, i32* %49, i32* %50)
  %call74 = call i32 @ord_GreaterThan()
  %cmp75 = icmp ne i32 %call73, %call74
  br i1 %cmp75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.then.68
  store i32 0, i32* %checkPassed, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.76, %if.then.68
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %if.then.60
  %51 = load i32, i32* %checkPassed, align 4
  %tobool79 = icmp ne i32 %51, 0
  br i1 %tobool79, label %if.then.80, label %if.end.96

if.then.80:                                       ; preds = %if.end.78
  %52 = load %struct.term*, %struct.term** %s, align 8
  %53 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call81 = call %struct.term* @term_FirstArgument(%struct.term* %53)
  %cmp82 = icmp eq %struct.term* %52, %call81
  br i1 %cmp82, label %if.then.83, label %if.else

if.then.83:                                       ; preds = %if.then.80
  %54 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call84 = call %struct.term* @term_SecondArgument(%struct.term* %54)
  store %struct.term* %call84, %struct.term** %t, align 8
  br label %if.end.86

if.else:                                          ; preds = %if.then.80
  %55 = load %struct.term*, %struct.term** %partnerAtom, align 8
  %call85 = call %struct.term* @term_FirstArgument(%struct.term* %55)
  store %struct.term* %call85, %struct.term** %t, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else, %if.then.83
  %56 = load %struct.term*, %struct.term** %u_tau, align 8
  %cmp87 = icmp eq %struct.term* %56, null
  br i1 %cmp87, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %if.end.86
  %57 = load %struct.subst*, %struct.subst** %tau, align 8
  %58 = load %struct.term*, %struct.term** %u, align 8
  %call89 = call %struct.term* @term_Copy(%struct.term* %58)
  %call90 = call %struct.term* @subst_Apply(%struct.subst* %57, %struct.term* %call89)
  store %struct.term* %call90, %struct.term** %u_tau, align 8
  %59 = load %struct.subst*, %struct.subst** %tau, align 8
  %60 = load %struct.term*, %struct.term** %v, align 8
  %call91 = call %struct.term* @term_Copy(%struct.term* %60)
  %call92 = call %struct.term* @subst_Apply(%struct.subst* %59, %struct.term* %call91)
  store %struct.term* %call92, %struct.term** %v_tau, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %if.end.86
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %partnerClause, align 8
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %j.addr, align 4
  %65 = load %struct.term*, %struct.term** %s, align 8
  %66 = load %struct.term*, %struct.term** %t, align 8
  %67 = load %struct.term*, %struct.term** %s2, align 8
  %68 = load %struct.term*, %struct.term** %v, align 8
  %69 = load %struct.term*, %struct.term** %u_tau, align 8
  %70 = load %struct.subst*, %struct.subst** %tau, align 8
  %71 = load i32*, i32** %Flags.addr, align 8
  %72 = load i32*, i32** %Precedence.addr, align 8
  %call94 = call %struct.LIST_HELP* @inf_Lit2MParamod(%struct.CLAUSE_HELP* %61, %struct.CLAUSE_HELP* %62, i32 %63, i32 %64, %struct.term* %65, %struct.term* %66, %struct.term* %67, %struct.term* %68, %struct.term* %69, %struct.subst* %70, i32* %71, i32* %72)
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call95 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call94, %struct.LIST_HELP* %73)
  store %struct.LIST_HELP* %call95, %struct.LIST_HELP** %result, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.93, %if.end.78
  %74 = load %struct.term*, %struct.term** %u_tau, align 8
  %cmp97 = icmp ne %struct.term* %74, null
  br i1 %cmp97, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %if.end.96
  %75 = load %struct.term*, %struct.term** %u_tau, align 8
  call void @term_Delete(%struct.term* %75)
  %76 = load %struct.term*, %struct.term** %v_tau, align 8
  call void @term_Delete(%struct.term* %76)
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %if.end.96
  %77 = load %struct.subst*, %struct.subst** %tau, align 8
  call void @subst_Delete(%struct.subst* %77)
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Normalize(%struct.CLAUSE_HELP* %78)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.56, %land.lhs.true.53, %lor.lhs.false, %land.lhs.true.45, %land.lhs.true, %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %literals, align 8
  %call101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %79)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %literals, align 8
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %for.body.27
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %superterms, align 8
  %call104 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %superterms, align 8
  br label %for.cond.23

for.end.105:                                      ; preds = %for.cond.23
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call107 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %81)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %82, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %83
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_GeneralResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %Ordered, i32 %Equations, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Ordered.addr = alloca i32, align 4
  %Equations.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %GivenCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %TermList = alloca %struct.LIST_HELP*, align 8
  %Swapped = alloca i32, align 4
  %LitList = alloca %struct.LIST_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %j = alloca i32, align 4
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %MaxVar = alloca i32, align 4
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Ordered, i32* %Ordered.addr, align 4
  store i32 %Equations, i32* %Equations.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call3 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %1)
  store %struct.CLAUSE_HELP* %call3, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call4 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %2, i32 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call7 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call7, i32* %n, align 4
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call8 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call8, i32* %n, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call10 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call10, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %if.end.9
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end.136

for.body:                                         ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %9 = load i32, i32* %i, align 4
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %9)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %ActLit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call12 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %10)
  store %struct.term* %call12, %struct.term** %Atom, align 8
  %11 = load i32, i32* %Equations.addr, align 4
  %tobool13 = icmp ne i32 %11, 0
  br i1 %tobool13, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %Atom, align 8
  %call14 = call i32 @fol_IsEquality(%struct.term* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.134, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call16 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %13, i32 4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.26, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %land.lhs.true
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call19 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %14, i32 2)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.134, label %land.lhs.true.21

land.lhs.true.21:                                 ; preds = %lor.lhs.false.18
  %15 = load i32, i32* %Ordered.addr, align 4
  %tobool22 = icmp ne i32 %15, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %land.lhs.true.26

lor.lhs.false.23:                                 ; preds = %land.lhs.true.21
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call24 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.134

land.lhs.true.26:                                 ; preds = %lor.lhs.false.23, %land.lhs.true.21, %land.lhs.true
  %17 = load i32, i32* %Ordered.addr, align 4
  %tobool27 = icmp ne i32 %17, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %if.then.34

lor.lhs.false.28:                                 ; preds = %land.lhs.true.26
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call29 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.34, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.28
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call32 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %19, i32 2)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.134

if.then.34:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.28, %land.lhs.true.26
  store i32 0, i32* %Swapped, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.34, %if.end.133
  %call35 = call %struct.binding* @cont_LeftContext()
  %20 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call36 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %20)
  %call37 = call %struct.binding* @cont_RightContext()
  %21 = load %struct.term*, %struct.term** %Atom, align 8
  %call38 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call35, %struct.st* %call36, %struct.binding* %call37, %struct.term* %21)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.39

for.cond.39:                                      ; preds = %for.inc.124, %while.body
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool41 = icmp ne i32 %call40, 0
  %lnot = xor i1 %tobool41, true
  br i1 %lnot, label %for.body.42, label %for.end.126

for.body.42:                                      ; preds = %for.cond.39
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call43 = call i8* @list_First(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call43 to %struct.term*
  store %struct.term* %24, %struct.term** %PartnerAtom, align 8
  %25 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call44 = call i32 @term_IsVariable(%struct.term* %25)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.123, label %if.then.46

if.then.46:                                       ; preds = %for.body.42
  %26 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call47 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %26)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc, %if.then.46
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot51 = xor i1 %tobool50, true
  br i1 %lnot51, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.48
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call53 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %29, %struct.LITERAL_HELP** %PartnerLit, align 8
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call54 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %30)
  store i32 %call54, i32* %j, align 4
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call55 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %31)
  store %struct.CLAUSE_HELP* %call55, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %33 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call56 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %32, %struct.LITERAL_HELP* %33)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.121

land.lhs.true.58:                                 ; preds = %for.body.52
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call59 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %34)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.121

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %35 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call62 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %35)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %land.lhs.true.67, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %land.lhs.true.61
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call65 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %36)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %land.lhs.true.67, label %if.end.121

land.lhs.true.67:                                 ; preds = %lor.lhs.false.64, %land.lhs.true.61
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call68 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %37, i32 4)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %land.lhs.true.78, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %land.lhs.true.67
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call71 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %38, i32 2)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.121, label %land.lhs.true.73

land.lhs.true.73:                                 ; preds = %lor.lhs.false.70
  %39 = load i32, i32* %Ordered.addr, align 4
  %tobool74 = icmp ne i32 %39, 0
  br i1 %tobool74, label %lor.lhs.false.75, label %land.lhs.true.78

lor.lhs.false.75:                                 ; preds = %land.lhs.true.73
  %40 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call76 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %40)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.121

land.lhs.true.78:                                 ; preds = %lor.lhs.false.75, %land.lhs.true.73, %land.lhs.true.67
  %41 = load i32, i32* %Ordered.addr, align 4
  %tobool79 = icmp ne i32 %41, 0
  br i1 %tobool79, label %lor.lhs.false.80, label %land.lhs.true.86

lor.lhs.false.80:                                 ; preds = %land.lhs.true.78
  %42 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call81 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %42)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %land.lhs.true.86, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.80
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call84 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %43, i32 2)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %land.lhs.true.86, label %if.end.121

land.lhs.true.86:                                 ; preds = %lor.lhs.false.83, %lor.lhs.false.80, %land.lhs.true.78
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call87 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %44)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.93, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.86
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call90 = call i32 @clause_Number(%struct.CLAUSE_HELP* %45)
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call91 = call i32 @clause_Number(%struct.CLAUSE_HELP* %46)
  %cmp92 = icmp ne i32 %call90, %call91
  br i1 %cmp92, label %if.then.93, label %if.end.121

if.then.93:                                       ; preds = %lor.lhs.false.89, %land.lhs.true.86
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call94 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %47)
  store i32 %call94, i32* %MaxVar, align 4
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %49 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %48, i32 %49)
  call void @cont_Check()
  %call95 = call %struct.binding* @cont_LeftContext()
  %50 = load %struct.term*, %struct.term** %Atom, align 8
  %call96 = call %struct.binding* @cont_RightContext()
  %51 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call97 = call i32 @unify_UnifyNoOC(%struct.binding* %call95, %struct.term* %50, %struct.binding* %call96, %struct.term* %51)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.103, label %if.then.99

if.then.99:                                       ; preds = %if.then.93
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call100 = call i32 @fflush(%struct._IO_FILE* %52)
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 2382)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i32 0, i32 0))
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call102 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %54)
  call void @misc_DumpCore()
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.99, %if.then.93
  %call104 = call %struct.binding* @cont_LeftContext()
  %call105 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call104, %struct.subst** %Subst, %struct.binding* %call105, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %55 = load i32, i32* %Ordered.addr, align 4
  %tobool106 = icmp ne i32 %55, 0
  br i1 %tobool106, label %lor.lhs.false.107, label %if.then.110

lor.lhs.false.107:                                ; preds = %if.end.103
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %57 = load i32, i32* %i, align 4
  %58 = load %struct.subst*, %struct.subst** %Subst, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %60 = load i32, i32* %j, align 4
  %61 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %62 = load i32*, i32** %Flags.addr, align 8
  %63 = load i32*, i32** %Precedence.addr, align 8
  %call108 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %56, i32 %57, %struct.subst* %58, %struct.CLAUSE_HELP* %59, i32 %60, %struct.subst* %61, i32* %62, i32* %63)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %if.then.110, label %if.end.120

if.then.110:                                      ; preds = %lor.lhs.false.107, %if.end.103
  %64 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call111 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %64)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.else.116

if.then.113:                                      ; preds = %if.then.110
  %65 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %66 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %67 = load %struct.subst*, %struct.subst** %Subst, align 8
  %68 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %69 = load i32*, i32** %Flags.addr, align 8
  %70 = load i32*, i32** %Precedence.addr, align 8
  %call114 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %65, %struct.LITERAL_HELP* %66, %struct.subst* %67, %struct.subst* %68, i32* %69, i32* %70)
  %71 = bitcast %struct.CLAUSE_HELP* %call114 to i8*
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call115 = call %struct.LIST_HELP* @list_Cons(i8* %71, %struct.LIST_HELP* %72)
  store %struct.LIST_HELP* %call115, %struct.LIST_HELP** %Result, align 8
  br label %if.end.119

if.else.116:                                      ; preds = %if.then.110
  %73 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %74 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %75 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %76 = load %struct.subst*, %struct.subst** %Subst, align 8
  %77 = load i32*, i32** %Flags.addr, align 8
  %78 = load i32*, i32** %Precedence.addr, align 8
  %call117 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %73, %struct.LITERAL_HELP* %74, %struct.subst* %75, %struct.subst* %76, i32* %77, i32* %78)
  %79 = bitcast %struct.CLAUSE_HELP* %call117 to i8*
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call118 = call %struct.LIST_HELP* @list_Cons(i8* %79, %struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call118, %struct.LIST_HELP** %Result, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.113
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %lor.lhs.false.107
  %81 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %81)
  %82 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %82)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %lor.lhs.false.89, %lor.lhs.false.83, %lor.lhs.false.75, %lor.lhs.false.70, %lor.lhs.false.64, %land.lhs.true.58, %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call122 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %83)
  store %struct.LIST_HELP* %call122, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.48

for.end:                                          ; preds = %for.cond.48
  br label %if.end.123

if.end.123:                                       ; preds = %for.end, %for.body.42
  br label %for.inc.124

for.inc.124:                                      ; preds = %if.end.123
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call125 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call125, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.39

for.end.126:                                      ; preds = %for.cond.39
  %85 = load i32, i32* %Swapped, align 4
  %tobool127 = icmp ne i32 %85, 0
  br i1 %tobool127, label %if.else.132, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %for.end.126
  %86 = load %struct.term*, %struct.term** %Atom, align 8
  %call129 = call i32 @fol_IsEquality(%struct.term* %86)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.else.132

if.then.131:                                      ; preds = %land.lhs.true.128
  %87 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_EqualitySwap(%struct.term* %87)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.133

if.else.132:                                      ; preds = %land.lhs.true.128, %for.end.126
  br label %while.end

if.end.133:                                       ; preds = %if.then.131
  br label %while.body

while.end:                                        ; preds = %if.else.132
  br label %if.end.134

if.end.134:                                       ; preds = %while.end, %lor.lhs.false.31, %lor.lhs.false.23, %lor.lhs.false.18, %lor.lhs.false
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %88 = load i32, i32* %i, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.136:                                      ; preds = %for.cond
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %89)
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %90, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.136, %if.then
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %91
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %Literal) #1 {
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
define internal %struct.binding* @cont_RightContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_RIGHTCONTEXT, align 8
  ret %struct.binding* %0
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
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
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

declare void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP*, i32) #2

declare i32 @unify_UnifyNoOC(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %0)
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

; Function Attrs: nounwind uwtable
define internal i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.subst* %Subst, %struct.CLAUSE_HELP* %PartnerClause, i32 %j, %struct.subst* %PartnerSubst, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %PartnerClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %j.addr = alloca i32, align 4
  %PartnerSubst.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.CLAUSE_HELP* %PartnerClause, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %PartnerSubst, %struct.subst** %PartnerSubst.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %5)
  %cmp = icmp sgt i32 %4, %call1
  %conv = zext i1 %cmp to i32
  %6 = load i32*, i32** %Flags.addr, align 8
  %7 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %1, i32 %2, i32 -1, %struct.subst* %3, i32 %conv, i32* %6, i32* %7)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call4 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %8, i32 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.13, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %10 = load i32, i32* %j.addr, align 4
  %11 = load %struct.subst*, %struct.subst** %PartnerSubst.addr, align 8
  %12 = load i32, i32* %j.addr, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call7 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %13)
  %cmp8 = icmp sgt i32 %12, %call7
  %conv9 = zext i1 %cmp8 to i32
  %14 = load i32*, i32** %Flags.addr, align 8
  %15 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %9, i32 %10, i32 -1, %struct.subst* %11, i32 %conv9, i32* %14, i32* %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.6, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %PosLit, %struct.LITERAL_HELP* %NegLit, %struct.subst* %SubstTermS, %struct.subst* %SubstPartnerTermS, i32* %Flags, i32* %Precedence) #0 {
entry:
  %PosLit.addr = alloca %struct.LITERAL_HELP*, align 8
  %NegLit.addr = alloca %struct.LITERAL_HELP*, align 8
  %SubstTermS.addr = alloca %struct.subst*, align 8
  %SubstPartnerTermS.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %GivenClause = alloca %struct.CLAUSE_HELP*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %ls = alloca i32, align 4
  %pi = alloca i32, align 4
  %pls = alloca i32, align 4
  %pla = alloca i32, align 4
  %plc = alloca i32, align 4
  %help = alloca i32, align 4
  %ConNeg = alloca i32, align 4
  %AntNeg = alloca i32, align 4
  store %struct.LITERAL_HELP* %PosLit, %struct.LITERAL_HELP** %PosLit.addr, align 8
  store %struct.LITERAL_HELP* %NegLit, %struct.LITERAL_HELP** %NegLit.addr, align 8
  store %struct.subst* %SubstTermS, %struct.subst** %SubstTermS.addr, align 8
  store %struct.subst* %SubstPartnerTermS, %struct.subst** %SubstPartnerTermS.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NegLit.addr, align 8
  %call = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %0)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PosLit.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %1)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %GivenClause, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call2 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %pls, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call3 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %pla, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call4 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %plc, align 4
  %5 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NegLit.addr, align 8
  %call5 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %5)
  store i32 %call5, i32* %pi, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call6 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %6)
  store i32 %call6, i32* %ls, align 4
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call7 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call7, i32* %la, align 4
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call8 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %8)
  store i32 %call8, i32* %lc, align 4
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PosLit.addr, align 8
  %call9 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %9)
  store i32 %call9, i32* %i, align 4
  %10 = load i32, i32* %pi, align 4
  %11 = load i32, i32* %plc, align 4
  %cmp = icmp sle i32 %10, %11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %ConNeg, align 4
  store i32 0, i32* %AntNeg, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %ConNeg, align 4
  store i32 1, i32* %AntNeg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call10 = call i32 @clause_Length(%struct.CLAUSE_HELP* %12)
  %sub = sub nsw i32 %call10, 1
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call11 = call i32 @clause_Length(%struct.CLAUSE_HELP* %13)
  %add = add nsw i32 %sub, %call11
  %sub12 = sub nsw i32 %add, 1
  %call13 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %sub12)
  store %struct.CLAUSE_HELP* %call13, %struct.CLAUSE_HELP** %NewClause, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call14 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call15 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %16)
  %17 = load i32, i32* %ConNeg, align 4
  %sub16 = sub nsw i32 %call15, %17
  %add17 = add nsw i32 %call14, %sub16
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %14, i32 %add17)
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call18 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call19 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %20)
  %21 = load i32, i32* %AntNeg, align 4
  %sub20 = sub nsw i32 %call19, %21
  %add21 = add nsw i32 %call18, %sub20
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %18, i32 %add21)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call22 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %23)
  %sub23 = sub nsw i32 %call22, 1
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call24 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %24)
  %add25 = add nsw i32 %sub23, %call24
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %22, i32 %add25)
  %call26 = call i32 @clause_FirstLitIndex()
  store i32 %call26, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %25 = load i32, i32* %j, align 4
  %26 = load i32, i32* %lc, align 4
  %cmp27 = icmp sle i32 %25, %26
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %28 = load i32, i32* %j, align 4
  %29 = load %struct.subst*, %struct.subst** %SubstTermS.addr, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %31 = load i32, i32* %j, align 4
  %call28 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %30, i32 %31)
  %call29 = call %struct.term* @term_Copy(%struct.term* %call28)
  %call30 = call %struct.term* @subst_Apply(%struct.subst* %29, %struct.term* %call29)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call31 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call30, %struct.CLAUSE_HELP* %32)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %27, i32 %28, %struct.LITERAL_HELP* %call31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i32, i32* %j, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call32 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %34)
  %35 = load i32, i32* %ConNeg, align 4
  %sub33 = sub nsw i32 %call32, %35
  store i32 %sub33, i32* %help, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.42, %for.end
  %36 = load i32, i32* %j, align 4
  %37 = load i32, i32* %la, align 4
  %cmp35 = icmp sle i32 %36, %37
  br i1 %cmp35, label %for.body.36, label %for.end.44

for.body.36:                                      ; preds = %for.cond.34
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %help, align 4
  %add37 = add nsw i32 %39, %40
  %41 = load %struct.subst*, %struct.subst** %SubstTermS.addr, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %43 = load i32, i32* %j, align 4
  %call38 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %42, i32 %43)
  %call39 = call %struct.term* @term_Copy(%struct.term* %call38)
  %call40 = call %struct.term* @subst_Apply(%struct.subst* %41, %struct.term* %call39)
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call41 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call40, %struct.CLAUSE_HELP* %44)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %38, i32 %add37, %struct.LITERAL_HELP* %call41)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.36
  %45 = load i32, i32* %j, align 4
  %inc43 = add nsw i32 %45, 1
  store i32 %inc43, i32* %j, align 4
  br label %for.cond.34

for.end.44:                                       ; preds = %for.cond.34
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call45 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %46)
  %47 = load i32, i32* %AntNeg, align 4
  %sub46 = sub nsw i32 %call45, %47
  %48 = load i32, i32* %help, align 4
  %add47 = add nsw i32 %48, %sub46
  store i32 %add47, i32* %help, align 4
  br label %for.cond.48

for.cond.48:                                      ; preds = %for.inc.60, %for.end.44
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %ls, align 4
  %cmp49 = icmp sle i32 %49, %50
  br i1 %cmp49, label %for.body.50, label %for.end.62

for.body.50:                                      ; preds = %for.cond.48
  %51 = load i32, i32* %j, align 4
  %52 = load i32, i32* %i, align 4
  %cmp51 = icmp ne i32 %51, %52
  br i1 %cmp51, label %if.then.52, label %if.else.58

if.then.52:                                       ; preds = %for.body.50
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %54 = load i32, i32* %j, align 4
  %55 = load i32, i32* %help, align 4
  %add53 = add nsw i32 %54, %55
  %56 = load %struct.subst*, %struct.subst** %SubstTermS.addr, align 8
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %58 = load i32, i32* %j, align 4
  %call54 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %57, i32 %58)
  %call55 = call %struct.term* @term_Copy(%struct.term* %call54)
  %call56 = call %struct.term* @subst_Apply(%struct.subst* %56, %struct.term* %call55)
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call57 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call56, %struct.CLAUSE_HELP* %59)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %53, i32 %add53, %struct.LITERAL_HELP* %call57)
  br label %if.end.59

if.else.58:                                       ; preds = %for.body.50
  %60 = load i32, i32* %help, align 4
  %dec = add nsw i32 %60, -1
  store i32 %dec, i32* %help, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.52
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %61 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %61, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.48

for.end.62:                                       ; preds = %for.cond.48
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call63 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %62)
  store i32 %call63, i32* %help, align 4
  %call64 = call i32 @clause_FirstLitIndex()
  store i32 %call64, i32* %j, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.78, %for.end.62
  %63 = load i32, i32* %j, align 4
  %64 = load i32, i32* %plc, align 4
  %cmp66 = icmp sle i32 %63, %64
  br i1 %cmp66, label %for.body.67, label %for.end.80

for.body.67:                                      ; preds = %for.cond.65
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %pi, align 4
  %cmp68 = icmp ne i32 %65, %66
  br i1 %cmp68, label %if.then.69, label %if.else.75

if.then.69:                                       ; preds = %for.body.67
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %help, align 4
  %add70 = add nsw i32 %68, %69
  %70 = load %struct.subst*, %struct.subst** %SubstPartnerTermS.addr, align 8
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %72 = load i32, i32* %j, align 4
  %call71 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %71, i32 %72)
  %call72 = call %struct.term* @term_Copy(%struct.term* %call71)
  %call73 = call %struct.term* @subst_Apply(%struct.subst* %70, %struct.term* %call72)
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call74 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call73, %struct.CLAUSE_HELP* %73)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %67, i32 %add70, %struct.LITERAL_HELP* %call74)
  br label %if.end.77

if.else.75:                                       ; preds = %for.body.67
  %74 = load i32, i32* %help, align 4
  %dec76 = add nsw i32 %74, -1
  store i32 %dec76, i32* %help, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.75, %if.then.69
  br label %for.inc.78

for.inc.78:                                       ; preds = %if.end.77
  %75 = load i32, i32* %j, align 4
  %inc79 = add nsw i32 %75, 1
  store i32 %inc79, i32* %j, align 4
  br label %for.cond.65

for.end.80:                                       ; preds = %for.cond.65
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call81 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %76)
  %77 = load i32, i32* %help, align 4
  %add82 = add nsw i32 %77, %call81
  store i32 %add82, i32* %help, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.96, %for.end.80
  %78 = load i32, i32* %j, align 4
  %79 = load i32, i32* %pla, align 4
  %cmp84 = icmp sle i32 %78, %79
  br i1 %cmp84, label %for.body.85, label %for.end.98

for.body.85:                                      ; preds = %for.cond.83
  %80 = load i32, i32* %j, align 4
  %81 = load i32, i32* %pi, align 4
  %cmp86 = icmp ne i32 %80, %81
  br i1 %cmp86, label %if.then.87, label %if.else.93

if.then.87:                                       ; preds = %for.body.85
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %help, align 4
  %add88 = add nsw i32 %83, %84
  %85 = load %struct.subst*, %struct.subst** %SubstPartnerTermS.addr, align 8
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %87 = load i32, i32* %j, align 4
  %call89 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %86, i32 %87)
  %call90 = call %struct.term* @term_Copy(%struct.term* %call89)
  %call91 = call %struct.term* @subst_Apply(%struct.subst* %85, %struct.term* %call90)
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call92 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call91, %struct.CLAUSE_HELP* %88)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %82, i32 %add88, %struct.LITERAL_HELP* %call92)
  br label %if.end.95

if.else.93:                                       ; preds = %for.body.85
  %89 = load i32, i32* %help, align 4
  %dec94 = add nsw i32 %89, -1
  store i32 %dec94, i32* %help, align 4
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.93, %if.then.87
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %90 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %90, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond.83

for.end.98:                                       ; preds = %for.cond.83
  %91 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %call99 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %91)
  %sub100 = sub nsw i32 %call99, 1
  %92 = load i32, i32* %help, align 4
  %add101 = add nsw i32 %92, %sub100
  store i32 %add101, i32* %help, align 4
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.110, %for.end.98
  %93 = load i32, i32* %j, align 4
  %94 = load i32, i32* %pls, align 4
  %cmp103 = icmp sle i32 %93, %94
  br i1 %cmp103, label %for.body.104, label %for.end.112

for.body.104:                                     ; preds = %for.cond.102
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %help, align 4
  %add105 = add nsw i32 %96, %97
  %98 = load %struct.subst*, %struct.subst** %SubstPartnerTermS.addr, align 8
  %99 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %100 = load i32, i32* %j, align 4
  %call106 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %99, i32 %100)
  %call107 = call %struct.term* @term_Copy(%struct.term* %call106)
  %call108 = call %struct.term* @subst_Apply(%struct.subst* %98, %struct.term* %call107)
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call109 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call108, %struct.CLAUSE_HELP* %101)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %95, i32 %add105, %struct.LITERAL_HELP* %call109)
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.104
  %102 = load i32, i32* %j, align 4
  %inc111 = add nsw i32 %102, 1
  store i32 %inc111, i32* %j, align 4
  br label %for.cond.102

for.end.112:                                      ; preds = %for.cond.102
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %105 = load i32, i32* %pi, align 4
  %106 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause, align 8
  %107 = load i32, i32* %i, align 4
  %108 = load i32*, i32** %Flags.addr, align 8
  %109 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromParents(%struct.CLAUSE_HELP* %103, %struct.CLAUSE_HELP* %104, i32 %105, %struct.CLAUSE_HELP* %106, i32 %107, i32* %108, i32* %109)
  %110 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromGeneralResolution(%struct.CLAUSE_HELP* %110)
  %111 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %111
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_UnitResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %Equations, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Equations.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %GivenCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %GivenIsUnit = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %TermList = alloca %struct.LIST_HELP*, align 8
  %Swapped = alloca i32, align 4
  %LitList = alloca %struct.LIST_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %MaxVar = alloca i32, align 4
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %Equations, i32* %Equations.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call3 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %1)
  store %struct.CLAUSE_HELP* %call3, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call4 = call i32 @clause_Length(%struct.CLAUSE_HELP* %2)
  %cmp = icmp eq i32 %call4, 1
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %GivenIsUnit, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call5 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %3, i32 2)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call8 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call8, i32* %n, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call9 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call9, i32* %n, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call11 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %6)
  store i32 %call11, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %if.end.10
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp12 = icmp sle i32 %7, %8
  br i1 %cmp12, label %for.body, label %for.end.105

for.body:                                         ; preds = %for.cond
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %10 = load i32, i32* %i, align 4
  %call14 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.LITERAL_HELP* %call14, %struct.LITERAL_HELP** %ActLit, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call15 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %11)
  store %struct.term* %call15, %struct.term** %Atom, align 8
  %12 = load i32, i32* %Equations.addr, align 4
  %tobool16 = icmp ne i32 %12, 0
  br i1 %tobool16, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load %struct.term*, %struct.term** %Atom, align 8
  %call17 = call i32 @fol_IsEquality(%struct.term* %13)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.103, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call19 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %14, i32 4)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.24, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %land.lhs.true
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call22 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %15, i32 2)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.103, label %if.then.24

if.then.24:                                       ; preds = %lor.lhs.false.21, %land.lhs.true
  store i32 0, i32* %Swapped, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.24, %if.end.102
  %call25 = call %struct.binding* @cont_LeftContext()
  %16 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call26 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %16)
  %call27 = call %struct.binding* @cont_RightContext()
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call28 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call25, %struct.st* %call26, %struct.binding* %call27, %struct.term* %17)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.93, %while.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot = xor i1 %tobool31, true
  br i1 %lnot, label %for.body.32, label %for.end.95

for.body.32:                                      ; preds = %for.cond.29
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call33 = call i8* @list_First(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call33 to %struct.term*
  store %struct.term* %20, %struct.term** %PartnerAtom, align 8
  %21 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call34 = call i32 @term_IsVariable(%struct.term* %21)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.92, label %if.then.36

if.then.36:                                       ; preds = %for.body.32
  %22 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call37 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %22)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc, %if.then.36
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool40 = icmp ne i32 %call39, 0
  %lnot41 = xor i1 %tobool40, true
  br i1 %lnot41, label %for.body.42, label %for.end

for.body.42:                                      ; preds = %for.cond.38
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call43 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %25, %struct.LITERAL_HELP** %PartnerLit, align 8
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call44 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %26)
  store %struct.CLAUSE_HELP* %call44, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %27 = load i32, i32* %GivenIsUnit, align 4
  %tobool45 = icmp ne i32 %27, 0
  br i1 %tobool45, label %land.lhs.true.50, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %for.body.42
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call47 = call i32 @clause_Length(%struct.CLAUSE_HELP* %28)
  %cmp48 = icmp eq i32 %call47, 1
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.90

land.lhs.true.50:                                 ; preds = %lor.lhs.false.46, %for.body.42
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call51 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %29, %struct.LITERAL_HELP* %30)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.90

land.lhs.true.53:                                 ; preds = %land.lhs.true.50
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call54 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %31)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.90

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call57 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %32)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %land.lhs.true.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %land.lhs.true.56
  %33 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call60 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %33)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.90

land.lhs.true.62:                                 ; preds = %lor.lhs.false.59, %land.lhs.true.56
  %34 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call63 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %34, i32 4)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.68, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %land.lhs.true.62
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call66 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %35, i32 2)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.90, label %if.then.68

if.then.68:                                       ; preds = %lor.lhs.false.65, %land.lhs.true.62
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call69 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %36)
  store i32 %call69, i32* %MaxVar, align 4
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %38 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %37, i32 %38)
  call void @cont_Check()
  %call70 = call %struct.binding* @cont_LeftContext()
  %39 = load %struct.term*, %struct.term** %Atom, align 8
  %call71 = call %struct.binding* @cont_RightContext()
  %40 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call72 = call i32 @unify_UnifyNoOC(%struct.binding* %call70, %struct.term* %39, %struct.binding* %call71, %struct.term* %40)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.78, label %if.then.74

if.then.74:                                       ; preds = %if.then.68
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call75 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 2525)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call77 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %43)
  call void @misc_DumpCore()
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %if.then.68
  %call79 = call %struct.binding* @cont_LeftContext()
  %call80 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call79, %struct.subst** %Subst, %struct.binding* %call80, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call81 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %44)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.else.86

if.then.83:                                       ; preds = %if.end.78
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %46 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %47 = load %struct.subst*, %struct.subst** %Subst, align 8
  %48 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %49 = load i32*, i32** %Flags.addr, align 8
  %50 = load i32*, i32** %Precedence.addr, align 8
  %call84 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %45, %struct.LITERAL_HELP* %46, %struct.subst* %47, %struct.subst* %48, i32* %49, i32* %50)
  %51 = bitcast %struct.CLAUSE_HELP* %call84 to i8*
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call85 = call %struct.LIST_HELP* @list_Cons(i8* %51, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %Result, align 8
  br label %if.end.89

if.else.86:                                       ; preds = %if.end.78
  %53 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %54 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %55 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %56 = load %struct.subst*, %struct.subst** %Subst, align 8
  %57 = load i32*, i32** %Flags.addr, align 8
  %58 = load i32*, i32** %Precedence.addr, align 8
  %call87 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %53, %struct.LITERAL_HELP* %54, %struct.subst* %55, %struct.subst* %56, i32* %57, i32* %58)
  %59 = bitcast %struct.CLAUSE_HELP* %call87 to i8*
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call88 = call %struct.LIST_HELP* @list_Cons(i8* %59, %struct.LIST_HELP* %60)
  store %struct.LIST_HELP* %call88, %struct.LIST_HELP** %Result, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.83
  %61 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %61)
  %62 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %62)
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %lor.lhs.false.65, %lor.lhs.false.59, %land.lhs.true.53, %land.lhs.true.50, %lor.lhs.false.46
  br label %for.inc

for.inc:                                          ; preds = %if.end.90
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call91 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.38

for.end:                                          ; preds = %for.cond.38
  br label %if.end.92

if.end.92:                                        ; preds = %for.end, %for.body.32
  br label %for.inc.93

for.inc.93:                                       ; preds = %if.end.92
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call94 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %64)
  store %struct.LIST_HELP* %call94, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.29

for.end.95:                                       ; preds = %for.cond.29
  %65 = load i32, i32* %Swapped, align 4
  %tobool96 = icmp ne i32 %65, 0
  br i1 %tobool96, label %if.else.101, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %for.end.95
  %66 = load %struct.term*, %struct.term** %Atom, align 8
  %call98 = call i32 @fol_IsEquality(%struct.term* %66)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %land.lhs.true.97
  %67 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_EqualitySwap(%struct.term* %67)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.102

if.else.101:                                      ; preds = %land.lhs.true.97, %for.end.95
  br label %while.end

if.end.102:                                       ; preds = %if.then.100
  br label %while.body

while.end:                                        ; preds = %if.else.101
  br label %if.end.103

if.end.103:                                       ; preds = %while.end, %lor.lhs.false.21, %lor.lhs.false
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %68 = load i32, i32* %i, align 4
  %inc = add nsw i32 %68, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.105:                                      ; preds = %for.cond
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %69)
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %70, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.105, %if.then
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %71
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %ConClause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %ConClause.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %GivenCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %depth = alloca i32, align 4
  %TermList = alloca %struct.LIST_HELP*, align 8
  %Swapped = alloca i32, align 4
  %LitList = alloca %struct.LIST_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %MaxVar = alloca i32, align 4
  %maxdepth = alloca i32, align 4
  %Resolvent = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %ConClause, i32* %ConClause.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %0)
  store %struct.CLAUSE_HELP* %call1, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call2 = call i32 @clause_LastLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %n, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call3 = call i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %2)
  store i32 %call3, i32* %depth, align 4
  %call4 = call i32 @clause_FirstLitIndex()
  store i32 %call4, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.81, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %6 = load i32, i32* %i, align 4
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.LITERAL_HELP* %call5, %struct.LITERAL_HELP** %ActLit, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call6 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %7)
  store %struct.term* %call6, %struct.term** %Atom, align 8
  store i32 0, i32* %Swapped, align 4
  br label %while.body

while.body:                                       ; preds = %for.body, %if.end.80
  %call7 = call %struct.binding* @cont_LeftContext()
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call8 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %8)
  %call9 = call %struct.binding* @cont_RightContext()
  %9 = load %struct.term*, %struct.term** %Atom, align 8
  %call10 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call7, %struct.st* %call8, %struct.binding* %call9, %struct.term* %9)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.71, %while.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.13, label %for.end.73

for.body.13:                                      ; preds = %for.cond.11
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call14 = call i8* @list_First(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call14 to %struct.term*
  store %struct.term* %12, %struct.term** %PartnerAtom, align 8
  %13 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call15 = call i32 @term_IsVariable(%struct.term* %13)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.end.70, label %if.then

if.then:                                          ; preds = %for.body.13
  %14 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call17 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call23 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %17, %struct.LITERAL_HELP** %PartnerLit, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call24 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %18)
  store %struct.CLAUSE_HELP* %call24, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call25 = call i32 @clause_LiteralsAreComplementary(%struct.LITERAL_HELP* %19, %struct.LITERAL_HELP* %20)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %for.body.22
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call27 = call i32 @clause_Length(%struct.CLAUSE_HELP* %21)
  %cmp28 = icmp eq i32 %call27, 1
  br i1 %cmp28, label %land.lhs.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call29 = call i32 @clause_Length(%struct.CLAUSE_HELP* %22)
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.68

land.lhs.true.31:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %call32 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %23, i32 8)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %land.lhs.true.31
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call35 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %24, i32 8)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.68

land.lhs.true.37:                                 ; preds = %lor.lhs.false.34, %land.lhs.true.31
  %25 = load i32, i32* %ConClause.addr, align 4
  %tobool38 = icmp ne i32 %25, 0
  br i1 %tobool38, label %lor.lhs.false.39, label %if.then.42

lor.lhs.false.39:                                 ; preds = %land.lhs.true.37
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call40 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %26, i32 8)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.68

if.then.42:                                       ; preds = %lor.lhs.false.39, %land.lhs.true.37
  %27 = load i32, i32* %depth, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call43 = call i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %28)
  %call44 = call i32 @misc_Max(i32 %27, i32 %call43)
  store i32 %call44, i32* %maxdepth, align 4
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call45 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %29)
  store i32 %call45, i32* %MaxVar, align 4
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  %31 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %30, i32 %31)
  call void @cont_Check()
  %call46 = call %struct.binding* @cont_LeftContext()
  %32 = load %struct.term*, %struct.term** %Atom, align 8
  %call47 = call %struct.binding* @cont_RightContext()
  %33 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call48 = call i32 @unify_UnifyNoOC(%struct.binding* %call46, %struct.term* %32, %struct.binding* %call47, %struct.term* %33)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end, label %if.then.50

if.then.50:                                       ; preds = %if.then.42
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call51 = call i32 @fflush(%struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 2645)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i32 0, i32 0))
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call53 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %36)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.then.50, %if.then.42
  %call54 = call %struct.binding* @cont_LeftContext()
  %call55 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call54, %struct.subst** %Subst, %struct.binding* %call55, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call56 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %37)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end
  %38 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %39 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %40 = load %struct.subst*, %struct.subst** %Subst, align 8
  %41 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %42 = load i32*, i32** %Flags.addr, align 8
  %43 = load i32*, i32** %Precedence.addr, align 8
  %call59 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %38, %struct.LITERAL_HELP* %39, %struct.subst* %40, %struct.subst* %41, i32* %42, i32* %43)
  store %struct.CLAUSE_HELP* %call59, %struct.CLAUSE_HELP** %Resolvent, align 8
  br label %if.end.61

if.else:                                          ; preds = %if.end
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %46 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %47 = load %struct.subst*, %struct.subst** %Subst, align 8
  %48 = load i32*, i32** %Flags.addr, align 8
  %49 = load i32*, i32** %Precedence.addr, align 8
  %call60 = call %struct.CLAUSE_HELP* @inf_ApplyGenRes(%struct.LITERAL_HELP* %44, %struct.LITERAL_HELP* %45, %struct.subst* %46, %struct.subst* %47, i32* %48, i32* %49)
  store %struct.CLAUSE_HELP* %call60, %struct.CLAUSE_HELP** %Resolvent, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.else, %if.then.58
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Resolvent, align 8
  %call62 = call i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP* %50)
  %51 = load i32, i32* %maxdepth, align 4
  %cmp63 = icmp ugt i32 %call62, %51
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.end.61
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Resolvent, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %52)
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.61
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Resolvent, align 8
  %54 = bitcast %struct.CLAUSE_HELP* %53 to i8*
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call66 = call %struct.LIST_HELP* @list_Cons(i8* %54, %struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %Result, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.64
  %56 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %56)
  %57 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %57)
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %lor.lhs.false.39, %lor.lhs.false.34, %lor.lhs.false, %for.body.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.68
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitList, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %LitList, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %if.end.70

if.end.70:                                        ; preds = %for.end, %for.body.13
  br label %for.inc.71

for.inc.71:                                       ; preds = %if.end.70
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call72 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond.11

for.end.73:                                       ; preds = %for.cond.11
  %60 = load i32, i32* %Swapped, align 4
  %tobool74 = icmp ne i32 %60, 0
  br i1 %tobool74, label %if.else.79, label %land.lhs.true.75

land.lhs.true.75:                                 ; preds = %for.end.73
  %61 = load %struct.term*, %struct.term** %Atom, align 8
  %call76 = call i32 @fol_IsEquality(%struct.term* %61)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %land.lhs.true.75
  %62 = load %struct.term*, %struct.term** %Atom, align 8
  call void @term_EqualitySwap(%struct.term* %62)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.80

if.else.79:                                       ; preds = %land.lhs.true.75, %for.end.73
  br label %while.end

if.end.80:                                        ; preds = %if.then.78
  br label %while.body

while.end:                                        ; preds = %if.else.79
  br label %for.inc.81

for.inc.81:                                       ; preds = %while.end
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %64)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %65
}

declare i32 @clause_ComputeTermDepth(%struct.CLAUSE_HELP*) #2

declare i32 @misc_Max(i32, i32) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_GeneralFactoring(%struct.CLAUSE_HELP* %GivenClause, i32 %Ordered, i32 %Left, i32 %Equations, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Ordered.addr = alloca i32, align 4
  %Left.addr = alloca i32, align 4
  %Equations.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %last = alloca i32, align 4
  %Atom = alloca %struct.term*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %mgu = alloca %struct.subst*, align 8
  %mgu65 = alloca %struct.subst*, align 8
  %Atom107 = alloca %struct.term*, align 8
  %PartnerAtom108 = alloca %struct.term*, align 8
  %PartnerLit109 = alloca %struct.LITERAL_HELP*, align 8
  %mgu137 = alloca %struct.subst*, align 8
  %mgu166 = alloca %struct.subst*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store i32 %Ordered, i32* %Ordered.addr, align 4
  store i32 %Left, i32* %Left.addr, align 4
  store i32 %Equations, i32* %Equations.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call3, i32* %last, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call4 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %2, i32 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.82, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call7 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %if.then.6
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call8 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %6, i32 %7)
  store %struct.LITERAL_HELP* %call8, %struct.LITERAL_HELP** %ActLit, align 8
  %8 = load i32, i32* %Ordered.addr, align 4
  %tobool9 = icmp ne i32 %8, 0
  br i1 %tobool9, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call10 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %10 = load i32, i32* %Equations.addr, align 4
  %tobool12 = icmp ne i32 %10, 0
  br i1 %tobool12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %land.lhs.true
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call14 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %11)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.78, label %if.then.16

if.then.16:                                       ; preds = %lor.lhs.false.13, %land.lhs.true
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call17 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %12)
  store %struct.term* %call17, %struct.term** %Atom, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call18 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %13)
  store i32 %call18, i32* %j, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %if.then.16
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %last, align 4
  %cmp20 = icmp sle i32 %14, %15
  br i1 %cmp20, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.19
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %j, align 4
  %cmp22 = icmp ne i32 %16, %17
  br i1 %cmp22, label %if.then.23, label %if.end.77

if.then.23:                                       ; preds = %for.body.21
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %19 = load i32, i32* %j, align 4
  %call24 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %18, i32 %19)
  store %struct.LITERAL_HELP* %call24, %struct.LITERAL_HELP** %PartnerLit, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call25 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %20)
  store %struct.term* %call25, %struct.term** %PartnerAtom, align 8
  %21 = load i32, i32* %j, align 4
  %22 = load i32, i32* %i, align 4
  %cmp26 = icmp sgt i32 %21, %22
  br i1 %cmp26, label %land.lhs.true.32, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %if.then.23
  %23 = load i32, i32* %Ordered.addr, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %land.lhs.true.29, label %if.end.76

land.lhs.true.29:                                 ; preds = %lor.lhs.false.27
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call30 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %24)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.76, label %land.lhs.true.32

land.lhs.true.32:                                 ; preds = %land.lhs.true.29, %if.then.23
  %25 = load %struct.term*, %struct.term** %Atom, align 8
  %26 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call33 = call i32 @term_EqualTopSymbols(%struct.term* %25, %struct.term* %26)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.76

if.then.35:                                       ; preds = %land.lhs.true.32
  call void @cont_Check()
  %call36 = call %struct.binding* @cont_LeftContext()
  %27 = load %struct.term*, %struct.term** %Atom, align 8
  %28 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call37 = call i32 @unify_UnifyCom(%struct.binding* %call36, %struct.term* %27, %struct.term* %28)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.49

if.then.39:                                       ; preds = %if.then.35
  %call40 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call40, %struct.subst** %mgu)
  %29 = load i32, i32* %Ordered.addr, align 4
  %tobool41 = icmp ne i32 %29, 0
  br i1 %tobool41, label %lor.lhs.false.42, label %if.then.45

lor.lhs.false.42:                                 ; preds = %if.then.39
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %31 = load i32, i32* %i, align 4
  %32 = load i32, i32* %j, align 4
  %33 = load %struct.subst*, %struct.subst** %mgu, align 8
  %34 = load i32*, i32** %Flags.addr, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call43 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %30, i32 %31, i32 %32, %struct.subst* %33, i32 0, i32* %34, i32* %35)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %lor.lhs.false.42, %if.then.39
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %37 = load i32, i32* %i, align 4
  %38 = load i32, i32* %j, align 4
  %39 = load %struct.subst*, %struct.subst** %mgu, align 8
  %40 = load i32*, i32** %Flags.addr, align 8
  %41 = load i32*, i32** %Precedence.addr, align 8
  %call46 = call %struct.CLAUSE_HELP* @inf_ApplyGeneralFactoring(%struct.CLAUSE_HELP* %36, i32 %37, i32 %38, %struct.subst* %39, i32* %40, i32* %41)
  %42 = bitcast %struct.CLAUSE_HELP* %call46 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call47 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %Result, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %lor.lhs.false.42
  %44 = load %struct.subst*, %struct.subst** %mgu, align 8
  call void @subst_Delete(%struct.subst* %44)
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.35
  call void @cont_Reset()
  %45 = load %struct.term*, %struct.term** %Atom, align 8
  %call50 = call i32 @fol_IsEquality(%struct.term* %45)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %land.lhs.true.52, label %if.end.75

land.lhs.true.52:                                 ; preds = %if.end.49
  %call53 = call %struct.binding* @cont_LeftContext()
  %46 = load %struct.term*, %struct.term** %Atom, align 8
  %call54 = call %struct.term* @term_SecondArgument(%struct.term* %46)
  %47 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call55 = call %struct.term* @term_FirstArgument(%struct.term* %47)
  %call56 = call i32 @unify_UnifyCom(%struct.binding* %call53, %struct.term* %call54, %struct.term* %call55)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.75

land.lhs.true.58:                                 ; preds = %land.lhs.true.52
  %call59 = call %struct.binding* @cont_LeftContext()
  %48 = load %struct.term*, %struct.term** %Atom, align 8
  %call60 = call %struct.term* @term_FirstArgument(%struct.term* %48)
  %49 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call61 = call %struct.term* @term_SecondArgument(%struct.term* %49)
  %call62 = call i32 @unify_UnifyCom(%struct.binding* %call59, %struct.term* %call60, %struct.term* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.75

if.then.64:                                       ; preds = %land.lhs.true.58
  %call66 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call66, %struct.subst** %mgu65)
  %50 = load i32, i32* %Ordered.addr, align 4
  %tobool67 = icmp ne i32 %50, 0
  br i1 %tobool67, label %lor.lhs.false.68, label %if.then.71

lor.lhs.false.68:                                 ; preds = %if.then.64
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %52 = load i32, i32* %i, align 4
  %53 = load i32, i32* %j, align 4
  %54 = load %struct.subst*, %struct.subst** %mgu65, align 8
  %55 = load i32*, i32** %Flags.addr, align 8
  %56 = load i32*, i32** %Precedence.addr, align 8
  %call69 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %51, i32 %52, i32 %53, %struct.subst* %54, i32 0, i32* %55, i32* %56)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.74

if.then.71:                                       ; preds = %lor.lhs.false.68, %if.then.64
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %58 = load i32, i32* %i, align 4
  %59 = load i32, i32* %j, align 4
  %60 = load %struct.subst*, %struct.subst** %mgu65, align 8
  %61 = load i32*, i32** %Flags.addr, align 8
  %62 = load i32*, i32** %Precedence.addr, align 8
  %call72 = call %struct.CLAUSE_HELP* @inf_ApplyGeneralFactoring(%struct.CLAUSE_HELP* %57, i32 %58, i32 %59, %struct.subst* %60, i32* %61, i32* %62)
  %63 = bitcast %struct.CLAUSE_HELP* %call72 to i8*
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call73 = call %struct.LIST_HELP* @list_Cons(i8* %63, %struct.LIST_HELP* %64)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %Result, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.71, %lor.lhs.false.68
  %65 = load %struct.subst*, %struct.subst** %mgu65, align 8
  call void @subst_Delete(%struct.subst* %65)
  br label %if.end.75

if.end.75:                                        ; preds = %if.end.74, %land.lhs.true.58, %land.lhs.true.52, %if.end.49
  call void @cont_Reset()
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %land.lhs.true.32, %land.lhs.true.29, %lor.lhs.false.27
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %for.body.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.77
  %66 = load i32, i32* %j, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %if.end.78

if.end.78:                                        ; preds = %for.end, %lor.lhs.false.13, %lor.lhs.false
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %67 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %67, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  br label %if.end.82

if.end.82:                                        ; preds = %for.end.81, %if.end
  %68 = load i32, i32* %Left.addr, align 4
  %tobool83 = icmp ne i32 %68, 0
  br i1 %tobool83, label %if.then.84, label %if.end.189

if.then.84:                                       ; preds = %if.end.82
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call85 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %69)
  store i32 %call85, i32* %last, align 4
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call86 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %70)
  store i32 %call86, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.186, %if.then.84
  %71 = load i32, i32* %i, align 4
  %72 = load i32, i32* %last, align 4
  %cmp88 = icmp sle i32 %71, %72
  br i1 %cmp88, label %for.body.89, label %for.end.188

for.body.89:                                      ; preds = %for.cond.87
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %74 = load i32, i32* %i, align 4
  %call90 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %73, i32 %74)
  store %struct.LITERAL_HELP* %call90, %struct.LITERAL_HELP** %ActLit, align 8
  %75 = load i32, i32* %Equations.addr, align 4
  %tobool91 = icmp ne i32 %75, 0
  br i1 %tobool91, label %land.lhs.true.95, label %lor.lhs.false.92

lor.lhs.false.92:                                 ; preds = %for.body.89
  %76 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call93 = call i32 @clause_LiteralIsEquality(%struct.LITERAL_HELP* %76)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.end.185, label %land.lhs.true.95

land.lhs.true.95:                                 ; preds = %lor.lhs.false.92, %for.body.89
  %77 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call96 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %77, i32 4)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.then.106, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %land.lhs.true.95
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call99 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %78, i32 2)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.185, label %land.lhs.true.101

land.lhs.true.101:                                ; preds = %lor.lhs.false.98
  %79 = load i32, i32* %Ordered.addr, align 4
  %tobool102 = icmp ne i32 %79, 0
  br i1 %tobool102, label %lor.lhs.false.103, label %if.then.106

lor.lhs.false.103:                                ; preds = %land.lhs.true.101
  %80 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call104 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %80)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.then.106, label %if.end.185

if.then.106:                                      ; preds = %lor.lhs.false.103, %land.lhs.true.101, %land.lhs.true.95
  %81 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call110 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %81)
  store %struct.term* %call110, %struct.term** %Atom107, align 8
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call111 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %82)
  store i32 %call111, i32* %j, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.182, %if.then.106
  %83 = load i32, i32* %j, align 4
  %84 = load i32, i32* %last, align 4
  %cmp113 = icmp sle i32 %83, %84
  br i1 %cmp113, label %for.body.114, label %for.end.184

for.body.114:                                     ; preds = %for.cond.112
  %85 = load i32, i32* %i, align 4
  %86 = load i32, i32* %j, align 4
  %cmp115 = icmp ne i32 %85, %86
  br i1 %cmp115, label %if.then.116, label %if.end.181

if.then.116:                                      ; preds = %for.body.114
  %87 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %88 = load i32, i32* %j, align 4
  %call117 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %87, i32 %88)
  store %struct.LITERAL_HELP* %call117, %struct.LITERAL_HELP** %PartnerLit109, align 8
  %89 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit109, align 8
  %call118 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %89)
  store %struct.term* %call118, %struct.term** %PartnerAtom108, align 8
  %90 = load i32, i32* %j, align 4
  %91 = load i32, i32* %i, align 4
  %cmp119 = icmp sgt i32 %90, %91
  br i1 %cmp119, label %land.lhs.true.128, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %if.then.116
  %92 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call121 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %92, i32 4)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %land.lhs.true.128, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.120
  %93 = load i32, i32* %Ordered.addr, align 4
  %tobool124 = icmp ne i32 %93, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.180

land.lhs.true.125:                                ; preds = %lor.lhs.false.123
  %94 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit109, align 8
  %call126 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %94)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.180, label %land.lhs.true.128

land.lhs.true.128:                                ; preds = %land.lhs.true.125, %lor.lhs.false.120, %if.then.116
  %95 = load %struct.term*, %struct.term** %Atom107, align 8
  %96 = load %struct.term*, %struct.term** %PartnerAtom108, align 8
  %call129 = call i32 @term_EqualTopSymbols(%struct.term* %95, %struct.term* %96)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.180

if.then.131:                                      ; preds = %land.lhs.true.128
  %97 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit109, align 8
  %call132 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %97)
  store %struct.term* %call132, %struct.term** %PartnerAtom108, align 8
  call void @cont_Check()
  %call133 = call %struct.binding* @cont_LeftContext()
  %98 = load %struct.term*, %struct.term** %Atom107, align 8
  %99 = load %struct.term*, %struct.term** %PartnerAtom108, align 8
  %call134 = call i32 @unify_UnifyCom(%struct.binding* %call133, %struct.term* %98, %struct.term* %99)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then.136, label %if.end.150

if.then.136:                                      ; preds = %if.then.131
  %call138 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call138, %struct.subst** %mgu137)
  %100 = load i32, i32* %Ordered.addr, align 4
  %tobool139 = icmp ne i32 %100, 0
  br i1 %tobool139, label %lor.lhs.false.140, label %if.then.146

lor.lhs.false.140:                                ; preds = %if.then.136
  %101 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call141 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %101, i32 4)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.then.146, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.140
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %j, align 4
  %105 = load %struct.subst*, %struct.subst** %mgu137, align 8
  %106 = load i32*, i32** %Flags.addr, align 8
  %107 = load i32*, i32** %Precedence.addr, align 8
  %call144 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %102, i32 %103, i32 %104, %struct.subst* %105, i32 0, i32* %106, i32* %107)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.then.146, label %if.end.149

if.then.146:                                      ; preds = %lor.lhs.false.143, %lor.lhs.false.140, %if.then.136
  %108 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %j, align 4
  %111 = load %struct.subst*, %struct.subst** %mgu137, align 8
  %112 = load i32*, i32** %Flags.addr, align 8
  %113 = load i32*, i32** %Precedence.addr, align 8
  %call147 = call %struct.CLAUSE_HELP* @inf_ApplyGeneralFactoring(%struct.CLAUSE_HELP* %108, i32 %109, i32 %110, %struct.subst* %111, i32* %112, i32* %113)
  %114 = bitcast %struct.CLAUSE_HELP* %call147 to i8*
  %115 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call148 = call %struct.LIST_HELP* @list_Cons(i8* %114, %struct.LIST_HELP* %115)
  store %struct.LIST_HELP* %call148, %struct.LIST_HELP** %Result, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.146, %lor.lhs.false.143
  %116 = load %struct.subst*, %struct.subst** %mgu137, align 8
  call void @subst_Delete(%struct.subst* %116)
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.131
  call void @cont_Reset()
  %117 = load %struct.term*, %struct.term** %Atom107, align 8
  %call151 = call i32 @fol_IsEquality(%struct.term* %117)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %land.lhs.true.153, label %if.end.179

land.lhs.true.153:                                ; preds = %if.end.150
  %call154 = call %struct.binding* @cont_LeftContext()
  %118 = load %struct.term*, %struct.term** %Atom107, align 8
  %call155 = call %struct.term* @term_SecondArgument(%struct.term* %118)
  %119 = load %struct.term*, %struct.term** %PartnerAtom108, align 8
  %call156 = call %struct.term* @term_FirstArgument(%struct.term* %119)
  %call157 = call i32 @unify_UnifyCom(%struct.binding* %call154, %struct.term* %call155, %struct.term* %call156)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %land.lhs.true.159, label %if.end.179

land.lhs.true.159:                                ; preds = %land.lhs.true.153
  %call160 = call %struct.binding* @cont_LeftContext()
  %120 = load %struct.term*, %struct.term** %Atom107, align 8
  %call161 = call %struct.term* @term_FirstArgument(%struct.term* %120)
  %121 = load %struct.term*, %struct.term** %PartnerAtom108, align 8
  %call162 = call %struct.term* @term_SecondArgument(%struct.term* %121)
  %call163 = call i32 @unify_UnifyCom(%struct.binding* %call160, %struct.term* %call161, %struct.term* %call162)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.179

if.then.165:                                      ; preds = %land.lhs.true.159
  %call167 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call167, %struct.subst** %mgu166)
  %122 = load i32, i32* %Ordered.addr, align 4
  %tobool168 = icmp ne i32 %122, 0
  br i1 %tobool168, label %lor.lhs.false.169, label %if.then.175

lor.lhs.false.169:                                ; preds = %if.then.165
  %123 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call170 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %123, i32 4)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.175, label %lor.lhs.false.172

lor.lhs.false.172:                                ; preds = %lor.lhs.false.169
  %124 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %125 = load i32, i32* %i, align 4
  %126 = load i32, i32* %j, align 4
  %127 = load %struct.subst*, %struct.subst** %mgu166, align 8
  %128 = load i32*, i32** %Flags.addr, align 8
  %129 = load i32*, i32** %Precedence.addr, align 8
  %call173 = call i32 @inf_LitMax(%struct.CLAUSE_HELP* %124, i32 %125, i32 %126, %struct.subst* %127, i32 0, i32* %128, i32* %129)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then.175, label %if.end.178

if.then.175:                                      ; preds = %lor.lhs.false.172, %lor.lhs.false.169, %if.then.165
  %130 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %131 = load i32, i32* %i, align 4
  %132 = load i32, i32* %j, align 4
  %133 = load %struct.subst*, %struct.subst** %mgu166, align 8
  %134 = load i32*, i32** %Flags.addr, align 8
  %135 = load i32*, i32** %Precedence.addr, align 8
  %call176 = call %struct.CLAUSE_HELP* @inf_ApplyGeneralFactoring(%struct.CLAUSE_HELP* %130, i32 %131, i32 %132, %struct.subst* %133, i32* %134, i32* %135)
  %136 = bitcast %struct.CLAUSE_HELP* %call176 to i8*
  %137 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call177 = call %struct.LIST_HELP* @list_Cons(i8* %136, %struct.LIST_HELP* %137)
  store %struct.LIST_HELP* %call177, %struct.LIST_HELP** %Result, align 8
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.175, %lor.lhs.false.172
  %138 = load %struct.subst*, %struct.subst** %mgu166, align 8
  call void @subst_Delete(%struct.subst* %138)
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %land.lhs.true.159, %land.lhs.true.153, %if.end.150
  call void @cont_Reset()
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %land.lhs.true.128, %land.lhs.true.125, %lor.lhs.false.123
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %for.body.114
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %139 = load i32, i32* %j, align 4
  %inc183 = add nsw i32 %139, 1
  store i32 %inc183, i32* %j, align 4
  br label %for.cond.112

for.end.184:                                      ; preds = %for.cond.112
  br label %if.end.185

if.end.185:                                       ; preds = %for.end.184, %lor.lhs.false.103, %lor.lhs.false.98, %lor.lhs.false.92
  br label %for.inc.186

for.inc.186:                                      ; preds = %if.end.185
  %140 = load i32, i32* %i, align 4
  %inc187 = add nsw i32 %140, 1
  store i32 %inc187, i32* %i, align 4
  br label %for.cond.87

for.end.188:                                      ; preds = %for.cond.87
  br label %if.end.189

if.end.189:                                       ; preds = %for.end.188, %if.end.82
  call void @cont_Check()
  %141 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %141, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.then
  %142 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %142
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

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_ApplyGeneralFactoring(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %j, %struct.subst* %Subst, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %0)
  store %struct.CLAUSE_HELP* %call, %struct.CLAUSE_HELP** %NewClause, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_ClearFlags(%struct.CLAUSE_HELP* %1)
  %2 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SubstApply(%struct.subst* %2, %struct.CLAUSE_HELP* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %5 = load i32, i32* %i.addr, align 4
  %6 = load i32*, i32** %Flags.addr, align 8
  %7 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiteral(%struct.CLAUSE_HELP* %4, i32 %5, i32* %6, i32* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call1 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %8)
  call void @list_Delete(%struct.LIST_HELP* %call1)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call2 = call %struct.LIST_HELP* @clause_ParentLiterals(%struct.CLAUSE_HELP* %9)
  call void @list_Delete(%struct.LIST_HELP* %call2)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %10, %struct.LIST_HELP* %call3)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %11, %struct.LIST_HELP* %call4)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %j.addr, align 4
  %15 = load i32*, i32** %Flags.addr, align 8
  %16 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromFather(%struct.CLAUSE_HELP* %12, %struct.CLAUSE_HELP* %13, i32 %14, i32* %15, i32* %16)
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromGeneralFactoring(%struct.CLAUSE_HELP* %17)
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_Number(%struct.CLAUSE_HELP* %19)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %18, i32 %call5)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %21 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %20, i32 %21)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_NewNumber(%struct.CLAUSE_HELP* %22)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %23
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_GenSuperpositionLeft(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Copy = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ActLit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call2 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %2)
  store %struct.CLAUSE_HELP* %call2, %struct.CLAUSE_HELP** %Copy, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %n, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call4 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %4, i32 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.36, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* %Unit.addr, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.8

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  %cmp = icmp eq i32 %call7, 1
  br i1 %cmp, label %if.then.8, label %if.end.36

if.then.8:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call9 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %7)
  store i32 %call9, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n, align 4
  %cmp10 = icmp sle i32 %8, %9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %11 = load i32, i32* %i, align 4
  %call11 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %10, i32 %11)
  store %struct.LITERAL_HELP* %call11, %struct.LITERAL_HELP** %ActLit, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call12 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %12)
  store %struct.term* %call12, %struct.term** %Atom, align 8
  %13 = load %struct.term*, %struct.term** %Atom, align 8
  %call13 = call i32 @fol_IsEquality(%struct.term* %13)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.35

land.lhs.true.15:                                 ; preds = %for.body
  %14 = load i32, i32* %MaxPara.addr, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %lor.lhs.false.17, label %if.then.20

lor.lhs.false.17:                                 ; preds = %land.lhs.true.15
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call18 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %15, i32 2)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.35

if.then.20:                                       ; preds = %lor.lhs.false.17, %land.lhs.true.15
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %17 = load %struct.term*, %struct.term** %Atom, align 8
  %call21 = call %struct.term* @term_FirstArgument(%struct.term* %17)
  %18 = load %struct.term*, %struct.term** %Atom, align 8
  %call22 = call %struct.term* @term_SecondArgument(%struct.term* %18)
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %21 = load i32, i32* %OrdPara.addr, align 4
  %22 = load i32, i32* %MaxPara.addr, align 4
  %23 = load i32*, i32** %Flags.addr, align 8
  %24 = load i32*, i32** %Precedence.addr, align 8
  %call23 = call %struct.LIST_HELP* @inf_GenLitSPLeft(%struct.CLAUSE_HELP* %16, %struct.term* %call21, %struct.term* %call22, i32 %19, %struct.SHARED_INDEX_NODE* %20, i32 %21, i32 %22, i32* %23, i32* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call24 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call23, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Result, align 8
  %26 = load i32, i32* %OrdPara.addr, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.29

lor.lhs.false.26:                                 ; preds = %if.then.20
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call27 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %27)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.34, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false.26, %if.then.20
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %29 = load %struct.term*, %struct.term** %Atom, align 8
  %call30 = call %struct.term* @term_SecondArgument(%struct.term* %29)
  %30 = load %struct.term*, %struct.term** %Atom, align 8
  %call31 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %31 = load i32, i32* %i, align 4
  %32 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %33 = load i32, i32* %OrdPara.addr, align 4
  %34 = load i32, i32* %MaxPara.addr, align 4
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  %call32 = call %struct.LIST_HELP* @inf_GenLitSPLeft(%struct.CLAUSE_HELP* %28, %struct.term* %call30, %struct.term* %call31, i32 %31, %struct.SHARED_INDEX_NODE* %32, i32 %33, i32 %34, i32* %35, i32* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call33 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call32, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Result, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %lor.lhs.false.26
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %lor.lhs.false.17, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.35
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %lor.lhs.false, %if.end
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call37 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %39)
  store i32 %call37, i32* %n, align 4
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call38 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %40, i32 32)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.63, label %if.then.40

if.then.40:                                       ; preds = %if.end.36
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call41 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %41)
  store i32 %call41, i32* %i, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.60, %if.then.40
  %42 = load i32, i32* %i, align 4
  %43 = load i32, i32* %n, align 4
  %cmp43 = icmp sle i32 %42, %43
  br i1 %cmp43, label %for.body.44, label %for.end.62

for.body.44:                                      ; preds = %for.cond.42
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %45 = load i32, i32* %i, align 4
  %call45 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %44, i32 %45)
  store %struct.LITERAL_HELP* %call45, %struct.LITERAL_HELP** %ActLit, align 8
  %46 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call46 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %46, i32 4)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.56, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %for.body.44
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %call49 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %47, i32 2)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.59, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %lor.lhs.false.48
  %48 = load i32, i32* %MaxPara.addr, align 4
  %tobool52 = icmp ne i32 %48, 0
  br i1 %tobool52, label %lor.lhs.false.53, label %if.then.56

lor.lhs.false.53:                                 ; preds = %land.lhs.true.51
  %49 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ActLit, align 8
  %call54 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %49)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.59

if.then.56:                                       ; preds = %lor.lhs.false.53, %land.lhs.true.51, %for.body.44
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  %51 = load i32, i32* %i, align 4
  %52 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %53 = load i32, i32* %OrdPara.addr, align 4
  %54 = load i32, i32* %MaxPara.addr, align 4
  %55 = load i32, i32* %Unit.addr, align 4
  %56 = load i32*, i32** %Flags.addr, align 8
  %57 = load i32*, i32** %Precedence.addr, align 8
  %call57 = call %struct.LIST_HELP* @inf_GenSPLeftToGiven(%struct.CLAUSE_HELP* %50, i32 %51, %struct.SHARED_INDEX_NODE* %52, i32 %53, i32 %54, i32 %55, i32* %56, i32* %57)
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call58 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call57, %struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Result, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.56, %lor.lhs.false.53, %lor.lhs.false.48
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %59 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %59, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.42

for.end.62:                                       ; preds = %for.cond.42
  br label %if.end.63

if.end.63:                                        ; preds = %for.end.62, %if.end.36
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Copy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %60)
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %61, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.63, %if.then
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %62
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenLitSPLeft(%struct.CLAUSE_HELP* %Clause, %struct.term* %Left, %struct.term* %Right, i32 %i, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Left.addr = alloca %struct.term*, align 8
  %Right.addr = alloca %struct.term*, align 8
  %i.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Terms = alloca %struct.LIST_HELP*, align 8
  %Lits = alloca %struct.LIST_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %pli = alloca i32, align 4
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %NewLeft = alloca %struct.term*, align 8
  %NewRight = alloca %struct.term*, align 8
  %PartnerMaxVar = alloca i32, align 4
  %SupAtom = alloca %struct.term*, align 8
  %NewPartnerLeft = alloca %struct.term*, align 8
  %NewPartnerRight = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %Left, %struct.term** %Left.addr, align 8
  store %struct.term* %Right, %struct.term** %Right.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call2 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  %call3 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call4 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call1, %struct.st* %call2, %struct.binding* %call3, %struct.term* %1)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Terms, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call6 = call i8* @list_First(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %4, %struct.term** %Term, align 8
  %5 = load %struct.term*, %struct.term** %Term, align 8
  %call7 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.105, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.term*, %struct.term** %Term, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %6)
  %call10 = call i32 @symbol_IsPredicate(i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.105, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %8 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call12 = call %struct.LIST_HELP* @sharing_GetDataList(%struct.term* %7, %struct.SHARED_INDEX_NODE* %8)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.then
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot16 = xor i1 %tobool15, true
  br i1 %lnot16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.13
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call18 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %11, %struct.LITERAL_HELP** %PartnerLit, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call19 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %12)
  store %struct.term* %call19, %struct.term** %PartnerAtom, align 8
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call20 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %13)
  store i32 %call20, i32* %pli, align 4
  %14 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call21 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %14)
  store %struct.CLAUSE_HELP* %call21, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call22 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %15, i32 4)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.17
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call24 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %16, i32 2)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.103, label %land.lhs.true.26

land.lhs.true.26:                                 ; preds = %lor.lhs.false
  %17 = load i32, i32* %MaxPara.addr, align 4
  %tobool27 = icmp ne i32 %17, 0
  br i1 %tobool27, label %lor.lhs.false.28, label %land.lhs.true.31

lor.lhs.false.28:                                 ; preds = %land.lhs.true.26
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call29 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.103

land.lhs.true.31:                                 ; preds = %lor.lhs.false.28, %land.lhs.true.26, %for.body.17
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call32 = call i32 @clause_LiteralIsNegative(%struct.LITERAL_HELP* %19)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.103

land.lhs.true.34:                                 ; preds = %land.lhs.true.31
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call35 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %20, i32 32)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.103, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %land.lhs.true.34
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call38 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %21)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.103

if.then.40:                                       ; preds = %land.lhs.true.37
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call41 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %22)
  store i32 %call41, i32* %PartnerMaxVar, align 4
  %23 = load %struct.term*, %struct.term** %Left.addr, align 8
  store %struct.term* %23, %struct.term** %NewLeft, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %PartnerMaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %24, i32 %25)
  call void @cont_Check()
  %call42 = call %struct.binding* @cont_LeftContext()
  %26 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call43 = call %struct.binding* @cont_RightContext()
  %27 = load %struct.term*, %struct.term** %Term, align 8
  %call44 = call i32 @unify_UnifyNoOC(%struct.binding* %call42, %struct.term* %26, %struct.binding* %call43, %struct.term* %27)
  %call45 = call %struct.binding* @cont_LeftContext()
  %call46 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call45, %struct.subst** %Subst, %struct.binding* %call46, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %28 = load i32, i32* %MaxPara.addr, align 4
  %tobool47 = icmp ne i32 %28, 0
  br i1 %tobool47, label %lor.lhs.false.48, label %if.then.51

lor.lhs.false.48:                                 ; preds = %if.then.40
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %30 = load i32, i32* %i.addr, align 4
  %31 = load %struct.subst*, %struct.subst** %Subst, align 8
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %33 = load i32, i32* %pli, align 4
  %34 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  %call49 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %29, i32 %30, %struct.subst* %31, %struct.CLAUSE_HELP* %32, i32 %33, %struct.subst* %34, i32* %35, i32* %36)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.102

if.then.51:                                       ; preds = %lor.lhs.false.48, %if.then.40
  %37 = load %struct.subst*, %struct.subst** %Subst, align 8
  %38 = load %struct.term*, %struct.term** %Right.addr, align 8
  %call52 = call %struct.term* @term_Copy(%struct.term* %38)
  %call53 = call %struct.term* @subst_Apply(%struct.subst* %37, %struct.term* %call52)
  store %struct.term* %call53, %struct.term** %NewRight, align 8
  %39 = load i32, i32* %OrdPara.addr, align 4
  %tobool54 = icmp ne i32 %39, 0
  br i1 %tobool54, label %land.lhs.true.55, label %if.end

land.lhs.true.55:                                 ; preds = %if.then.51
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %41 = load i32, i32* %i.addr, align 4
  %call56 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %40, i32 %41)
  %call57 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.55
  %42 = load %struct.subst*, %struct.subst** %Subst, align 8
  %43 = load %struct.term*, %struct.term** %Left.addr, align 8
  %call60 = call %struct.term* @term_Copy(%struct.term* %43)
  %call61 = call %struct.term* @subst_Apply(%struct.subst* %42, %struct.term* %call60)
  store %struct.term* %call61, %struct.term** %NewLeft, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.59, %land.lhs.true.55, %if.then.51
  %44 = load i32, i32* %OrdPara.addr, align 4
  %tobool62 = icmp ne i32 %44, 0
  br i1 %tobool62, label %lor.lhs.false.63, label %if.then.68

lor.lhs.false.63:                                 ; preds = %if.end
  %45 = load %struct.term*, %struct.term** %NewLeft, align 8
  %46 = load %struct.term*, %struct.term** %Left.addr, align 8
  %cmp = icmp eq %struct.term* %45, %46
  br i1 %cmp, label %if.then.68, label %lor.lhs.false.64

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.63
  %47 = load %struct.term*, %struct.term** %NewLeft, align 8
  %48 = load %struct.term*, %struct.term** %NewRight, align 8
  %49 = load i32*, i32** %Flags.addr, align 8
  %50 = load i32*, i32** %Precedence.addr, align 8
  %call65 = call i32 @ord_Compare(%struct.term* %47, %struct.term* %48, i32* %49, i32* %50)
  %call66 = call i32 @ord_SmallerThan()
  %cmp67 = icmp ne i32 %call65, %call66
  br i1 %cmp67, label %if.then.68, label %if.end.98

if.then.68:                                       ; preds = %lor.lhs.false.64, %lor.lhs.false.63, %if.end
  %51 = load i32, i32* %MaxPara.addr, align 4
  %tobool69 = icmp ne i32 %51, 0
  br i1 %tobool69, label %lor.lhs.false.70, label %if.then.73

lor.lhs.false.70:                                 ; preds = %if.then.68
  %52 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call71 = call i32 @clause_LiteralIsPredicate(%struct.LITERAL_HELP* %52)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then.73, label %if.else

if.then.73:                                       ; preds = %lor.lhs.false.70, %if.then.68
  %53 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %54 = load %struct.term*, %struct.term** %Term, align 8
  %55 = load %struct.term*, %struct.term** %NewRight, align 8
  %56 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call74 = call %struct.term* @inf_AllTermsRplac(%struct.term* %53, %struct.term* %54, %struct.term* %55, %struct.subst* %56)
  store %struct.term* %call74, %struct.term** %SupAtom, align 8
  br label %if.end.92

if.else:                                          ; preds = %lor.lhs.false.70
  %57 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call75 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %57)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.else.79

if.then.77:                                       ; preds = %if.else
  %58 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %59 = load %struct.term*, %struct.term** %Term, align 8
  %60 = load %struct.term*, %struct.term** %NewRight, align 8
  %61 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call78 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %58, %struct.term* %59, %struct.term* %60, %struct.subst* %61)
  store %struct.term* %call78, %struct.term** %SupAtom, align 8
  br label %if.end.91

if.else.79:                                       ; preds = %if.else
  %62 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %63 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call80 = call %struct.term* @term_FirstArgument(%struct.term* %63)
  %call81 = call %struct.term* @term_Copy(%struct.term* %call80)
  %call82 = call %struct.term* @subst_Apply(%struct.subst* %62, %struct.term* %call81)
  store %struct.term* %call82, %struct.term** %NewPartnerLeft, align 8
  %64 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %65 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call83 = call %struct.term* @term_SecondArgument(%struct.term* %65)
  %call84 = call %struct.term* @term_Copy(%struct.term* %call83)
  %call85 = call %struct.term* @subst_Apply(%struct.subst* %64, %struct.term* %call84)
  store %struct.term* %call85, %struct.term** %NewPartnerRight, align 8
  %66 = load %struct.term*, %struct.term** %NewPartnerLeft, align 8
  %67 = load %struct.term*, %struct.term** %NewPartnerRight, align 8
  %68 = load i32*, i32** %Flags.addr, align 8
  %69 = load i32*, i32** %Precedence.addr, align 8
  %call86 = call i32 @ord_Compare(%struct.term* %66, %struct.term* %67, i32* %68, i32* %69)
  switch i32 %call86, label %sw.default [
    i32 1, label %sw.bb
    i32 3, label %sw.bb.88
  ]

sw.bb:                                            ; preds = %if.else.79
  %70 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %71 = load %struct.term*, %struct.term** %Term, align 8
  %72 = load %struct.term*, %struct.term** %NewRight, align 8
  %73 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call87 = call %struct.term* @inf_AllTermsRightRplac(%struct.term* %70, %struct.term* %71, %struct.term* %72, %struct.subst* %73)
  store %struct.term* %call87, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.bb.88:                                         ; preds = %if.else.79
  %74 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %75 = load %struct.term*, %struct.term** %Term, align 8
  %76 = load %struct.term*, %struct.term** %NewRight, align 8
  %77 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call89 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %74, %struct.term* %75, %struct.term* %76, %struct.subst* %77)
  store %struct.term* %call89, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.79
  %78 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %79 = load %struct.term*, %struct.term** %Term, align 8
  %80 = load %struct.term*, %struct.term** %NewRight, align 8
  %81 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %call90 = call %struct.term* @inf_AllTermsRplac(%struct.term* %78, %struct.term* %79, %struct.term* %80, %struct.subst* %81)
  store %struct.term* %call90, %struct.term** %SupAtom, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.88, %sw.bb
  %82 = load %struct.term*, %struct.term** %NewPartnerLeft, align 8
  call void @term_Delete(%struct.term* %82)
  %83 = load %struct.term*, %struct.term** %NewPartnerRight, align 8
  call void @term_Delete(%struct.term* %83)
  br label %if.end.91

if.end.91:                                        ; preds = %sw.epilog, %if.then.77
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.73
  %84 = load %struct.term*, %struct.term** %SupAtom, align 8
  %cmp93 = icmp ne %struct.term* %84, null
  br i1 %cmp93, label %if.then.94, label %if.end.97

if.then.94:                                       ; preds = %if.end.92
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %86 = load i32, i32* %i.addr, align 4
  %87 = load %struct.subst*, %struct.subst** %Subst, align 8
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %89 = load i32, i32* %pli, align 4
  %90 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %91 = load %struct.term*, %struct.term** %SupAtom, align 8
  %92 = load i32, i32* %OrdPara.addr, align 4
  %93 = load i32, i32* %MaxPara.addr, align 4
  %94 = load i32*, i32** %Flags.addr, align 8
  %95 = load i32*, i32** %Precedence.addr, align 8
  %call95 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %85, i32 %86, %struct.subst* %87, %struct.CLAUSE_HELP* %88, i32 %89, %struct.subst* %90, %struct.term* %91, i32 0, i32 %92, i32 %93, i32* %94, i32* %95)
  %96 = bitcast %struct.CLAUSE_HELP* %call95 to i8*
  %97 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call96 = call %struct.LIST_HELP* @list_Cons(i8* %96, %struct.LIST_HELP* %97)
  store %struct.LIST_HELP* %call96, %struct.LIST_HELP** %Result, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.94, %if.end.92
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %lor.lhs.false.64
  %98 = load %struct.term*, %struct.term** %NewLeft, align 8
  %99 = load %struct.term*, %struct.term** %Left.addr, align 8
  %cmp99 = icmp ne %struct.term* %98, %99
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  %100 = load %struct.term*, %struct.term** %NewLeft, align 8
  call void @term_Delete(%struct.term* %100)
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.100, %if.end.98
  %101 = load %struct.term*, %struct.term** %NewRight, align 8
  call void @term_Delete(%struct.term* %101)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %lor.lhs.false.48
  %102 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %102)
  %103 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %103)
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.37, %land.lhs.true.34, %land.lhs.true.31, %lor.lhs.false.28, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.103
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits, align 8
  %call104 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %104)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %Lits, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %if.end.105

if.end.105:                                       ; preds = %for.end, %land.lhs.true, %for.body
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms, align 8
  %call107 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %105)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %Terms, align 8
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %106
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPLeftToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Atom = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %call1)
  store %struct.term* %call2, %struct.term** %Atom, align 8
  %2 = load %struct.term*, %struct.term** %Atom, align 8
  %call3 = call i32 @fol_IsEquality(%struct.term* %2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %4 = load i32, i32* %i.addr, align 4
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %6 = load i32, i32* %OrdPara.addr, align 4
  %7 = load i32, i32* %MaxPara.addr, align 4
  %8 = load i32, i32* %Unit.addr, align 4
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call %struct.LIST_HELP* @inf_GenSPLeftEqToGiven(%struct.CLAUSE_HELP* %3, i32 %4, i32 1, %struct.SHARED_INDEX_NODE* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Result, align 8
  %12 = load i32, i32* %MaxPara.addr, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %lor.lhs.false, label %if.then.10

lor.lhs.false:                                    ; preds = %if.then
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load i32, i32* %i.addr, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %13, i32 %14)
  %call8 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %lor.lhs.false, %if.then
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %16 = load i32, i32* %i.addr, align 4
  %17 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %18 = load i32, i32* %OrdPara.addr, align 4
  %19 = load i32, i32* %MaxPara.addr, align 4
  %20 = load i32, i32* %Unit.addr, align 4
  %21 = load i32*, i32** %Flags.addr, align 8
  %22 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call %struct.LIST_HELP* @inf_GenSPLeftEqToGiven(%struct.CLAUSE_HELP* %15, i32 %16, i32 0, %struct.SHARED_INDEX_NODE* %17, i32 %18, i32 %19, i32 %20, i32* %21, i32* %22)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call12 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call11, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %lor.lhs.false
  br label %if.end.15

if.else:                                          ; preds = %entry
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %25 = load i32, i32* %i.addr, align 4
  %26 = load %struct.term*, %struct.term** %Atom, align 8
  %27 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %28 = load i32, i32* %OrdPara.addr, align 4
  %29 = load i32, i32* %MaxPara.addr, align 4
  %30 = load i32, i32* %Unit.addr, align 4
  %31 = load i32*, i32** %Flags.addr, align 8
  %32 = load i32*, i32** %Precedence.addr, align 8
  %call13 = call %struct.LIST_HELP* @inf_GenSPLeftLitToGiven(%struct.CLAUSE_HELP* %24, i32 %25, %struct.term* %26, %struct.SHARED_INDEX_NODE* %27, i32 %28, i32 %29, i32 %30, i32* %31, i32* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call14 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call13, %struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Result, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.end
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %34
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_ApplyDefinition(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %Clause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %Defs = alloca %struct.LIST_HELP*, align 8
  %Def = alloca %struct.DEF_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %0)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Defs, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Defs, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Defs, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.DEF_HELP*
  store %struct.DEF_HELP* %3, %struct.DEF_HELP** %Def, align 8
  %4 = load %struct.DEF_HELP*, %struct.DEF_HELP** %Def, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %6 = load i32*, i32** %Flags.addr, align 8
  %7 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call %struct.LIST_HELP* @def_ApplyDefToClauseOnce(%struct.DEF_HELP* %4, %struct.CLAUSE_HELP* %5, i32* %6, i32* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call4, %struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Defs, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Defs, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %10
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

declare %struct.LIST_HELP* @def_ApplyDefToClauseOnce(%struct.DEF_HELP*, %struct.CLAUSE_HELP*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_GeneralHyperResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %Index, i32 %Ordered, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Ordered.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32 %Ordered, i32* %Ordered.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %2 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %3 = load i32, i32* %Ordered.addr, align 4
  %4 = load i32*, i32** %Flags.addr, align 8
  %5 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call %struct.LIST_HELP* @inf_ForwardHyperResolution(%struct.CLAUSE_HELP* %1, %struct.SHARED_INDEX_NODE* %2, i32 %3, i32* %4, i32* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %7 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %8 = load i32, i32* %Ordered.addr, align 4
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call3 = call %struct.LIST_HELP* @inf_BackwardHyperResolution(%struct.CLAUSE_HELP* %6, %struct.SHARED_INDEX_NODE* %7, i32 %8, i32* %9, i32* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call3, %struct.LIST_HELP* %11)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_ForwardHyperResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %Index, i32 %StrictlyMaximal, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %StrictlyMaximal.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %RestLits = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32 %StrictlyMaximal, i32* %StrictlyMaximal.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call3 = call %struct.LIST_HELP* @inf_GetAntecedentLiterals(%struct.CLAUSE_HELP* %1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %RestLits, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call4 = call %struct.subst* @subst_Nil()
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call5 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %4)
  %call6 = call %struct.LIST_HELP* @list_Nil()
  %5 = load i32, i32* %StrictlyMaximal.addr, align 4
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %7 = load i32*, i32** %Flags.addr, align 8
  %8 = load i32*, i32** %Precedence.addr, align 8
  %call7 = call %struct.LIST_HELP* @inf_HyperResolvents(%struct.CLAUSE_HELP* %2, %struct.subst* %call4, %struct.LIST_HELP* %3, i32 %call5, %struct.LIST_HELP* %call6, i32 %5, %struct.SHARED_INDEX_NODE* %6, i32* %7, i32* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Result, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %12
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_BackwardHyperResolution(%struct.CLAUSE_HELP* %Electron, %struct.SHARED_INDEX_NODE* %Index, i32 %StrictlyMaximal, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Electron.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %StrictlyMaximal.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %ElectronCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %ElecLit = alloca %struct.LITERAL_HELP*, align 8
  %ElecAtom = alloca %struct.term*, align 8
  %CandAtoms = alloca %struct.LIST_HELP*, align 8
  %Swapped = alloca i32, align 4
  %CandLits = alloca %struct.LIST_HELP*, align 8
  %NucLit = alloca %struct.LITERAL_HELP*, align 8
  %NucAtom = alloca %struct.term*, align 8
  %Nucleus = alloca %struct.CLAUSE_HELP*, align 8
  %FoundMap = alloca %struct.LIST_HELP*, align 8
  %RestLits = alloca %struct.LIST_HELP*, align 8
  %LeftSubst = alloca %struct.subst*, align 8
  %RightSubst = alloca %struct.subst*, align 8
  %GlobalMaxVar = alloca i32, align 4
  %MaxVar = alloca i32, align 4
  %MapNode = alloca %struct.INF_MAPNODE, align 8
  store %struct.CLAUSE_HELP* %Electron, %struct.CLAUSE_HELP** %Electron.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32 %StrictlyMaximal, i32* %StrictlyMaximal.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Electron.addr, align 8
  %call = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Electron.addr, align 8
  %call1 = call i32 @clause_HasEmptySuccedent(%struct.CLAUSE_HELP* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Electron.addr, align 8
  %call5 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %2)
  store %struct.CLAUSE_HELP* %call5, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  %call6 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call6, i32* %ls, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Electron.addr, align 8
  %call7 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call7, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.75, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end.76

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  %8 = load i32, i32* %i, align 4
  %call8 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call8, %struct.LITERAL_HELP** %ElecLit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ElecLit, align 8
  %call9 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %9)
  store %struct.term* %call9, %struct.term** %ElecAtom, align 8
  %10 = load i32, i32* %StrictlyMaximal.addr, align 4
  %tobool10 = icmp ne i32 %10, 0
  br i1 %tobool10, label %lor.lhs.false.11, label %if.then.14

lor.lhs.false.11:                                 ; preds = %for.body
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ElecLit, align 8
  %call12 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %11, i32 2)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.74

if.then.14:                                       ; preds = %lor.lhs.false.11, %for.body
  store i32 0, i32* %Swapped, align 4
  br label %while.body

while.body:                                       ; preds = %if.then.14, %if.end.73
  %call15 = call %struct.binding* @cont_LeftContext()
  %12 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %call16 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %12)
  %call17 = call %struct.binding* @cont_RightContext()
  %13 = load %struct.term*, %struct.term** %ElecAtom, align 8
  %call18 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call15, %struct.st* %call16, %struct.binding* %call17, %struct.term* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %CandAtoms, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.65, %while.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandAtoms, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body.22, label %for.end.67

for.body.22:                                      ; preds = %for.cond.19
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandAtoms, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call23 to %struct.term*
  %call24 = call i32 @term_IsVariable(%struct.term* %16)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.64, label %if.then.26

if.then.26:                                       ; preds = %for.body.22
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandAtoms, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call27 to %struct.term*
  %call28 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %18)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %CandLits, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc, %if.then.26
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandLits, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %19)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot32 = xor i1 %tobool31, true
  br i1 %lnot32, label %for.body.33, label %for.end

for.body.33:                                      ; preds = %for.cond.29
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandLits, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call34 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %21, %struct.LITERAL_HELP** %NucLit, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucLit, align 8
  %call35 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %22)
  store %struct.term* %call35, %struct.term** %NucAtom, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucLit, align 8
  %call36 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %23)
  store %struct.CLAUSE_HELP* %call36, %struct.CLAUSE_HELP** %Nucleus, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucLit, align 8
  %call37 = call i32 @clause_LiteralIsFromAntecedent(%struct.LITERAL_HELP* %24)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %for.body.33
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus, align 8
  %call39 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %25)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.62

if.then.41:                                       ; preds = %land.lhs.true
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus, align 8
  %call42 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %26)
  store i32 %call42, i32* %GlobalMaxVar, align 4
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  %28 = load i32, i32* %GlobalMaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %27, i32 %28)
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  %call43 = call i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %29)
  store i32 %call43, i32* %MaxVar, align 4
  %30 = load i32, i32* %GlobalMaxVar, align 4
  %31 = load i32, i32* %MaxVar, align 4
  %call44 = call i32 @symbol_GreaterVariable(i32 %30, i32 %31)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.41
  %32 = load i32, i32* %GlobalMaxVar, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.41
  %33 = load i32, i32* %MaxVar, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %33, %cond.false ]
  store i32 %cond, i32* %GlobalMaxVar, align 4
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus, align 8
  %call46 = call %struct.LIST_HELP* @inf_GetAntecedentLiterals(%struct.CLAUSE_HELP* %34)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %RestLits, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucLit, align 8
  %37 = bitcast %struct.LITERAL_HELP* %36 to i8*
  %call47 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %35, i8* %37)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %RestLits, align 8
  call void @cont_Check()
  %call48 = call %struct.binding* @cont_LeftContext()
  %38 = load %struct.term*, %struct.term** %NucAtom, align 8
  %call49 = call %struct.binding* @cont_RightContext()
  %39 = load %struct.term*, %struct.term** %ElecAtom, align 8
  %call50 = call i32 @unify_UnifyNoOC(%struct.binding* %call48, %struct.term* %38, %struct.binding* %call49, %struct.term* %39)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.56, label %if.then.52

if.then.52:                                       ; preds = %cond.end
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call53 = call i32 @fflush(%struct._IO_FILE* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 4001)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call55 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %42)
  call void @misc_DumpCore()
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %cond.end
  %call57 = call %struct.binding* @cont_LeftContext()
  %call58 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call57, %struct.subst** %LeftSubst, %struct.binding* %call58, %struct.subst** %RightSubst)
  call void @cont_Reset()
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucLit, align 8
  %NucleusLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 0
  store %struct.LITERAL_HELP* %43, %struct.LITERAL_HELP** %NucleusLit, align 8
  %44 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ElecLit, align 8
  %ElectronLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 1
  store %struct.LITERAL_HELP* %44, %struct.LITERAL_HELP** %ElectronLit, align 8
  %45 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %ElectronSubst = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 2
  store %struct.subst* %45, %struct.subst** %ElectronSubst, align 8
  %46 = bitcast %struct.INF_MAPNODE* %MapNode to i8*
  %call59 = call %struct.LIST_HELP* @list_List(i8* %46)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %FoundMap, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus, align 8
  %48 = load %struct.subst*, %struct.subst** %LeftSubst, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  %50 = load i32, i32* %GlobalMaxVar, align 4
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap, align 8
  %52 = load i32, i32* %StrictlyMaximal.addr, align 4
  %53 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %54 = load i32*, i32** %Flags.addr, align 8
  %55 = load i32*, i32** %Precedence.addr, align 8
  %call60 = call %struct.LIST_HELP* @inf_HyperResolvents(%struct.CLAUSE_HELP* %47, %struct.subst* %48, %struct.LIST_HELP* %49, i32 %50, %struct.LIST_HELP* %51, i32 %52, %struct.SHARED_INDEX_NODE* %53, i32* %54, i32* %55)
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call61 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call60, %struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Result, align 8
  %57 = load %struct.subst*, %struct.subst** %LeftSubst, align 8
  call void @subst_Delete(%struct.subst* %57)
  %58 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  call void @subst_Delete(%struct.subst* %58)
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %59)
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap, align 8
  call void @list_Free(%struct.LIST_HELP* %60)
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.56, %land.lhs.true, %for.body.33
  br label %for.inc

for.inc:                                          ; preds = %if.end.62
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandLits, align 8
  %call63 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %CandLits, align 8
  br label %for.cond.29

for.end:                                          ; preds = %for.cond.29
  br label %if.end.64

if.end.64:                                        ; preds = %for.end, %for.body.22
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CandAtoms, align 8
  %call66 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %CandAtoms, align 8
  br label %for.cond.19

for.end.67:                                       ; preds = %for.cond.19
  %63 = load i32, i32* %Swapped, align 4
  %tobool68 = icmp ne i32 %63, 0
  br i1 %tobool68, label %if.else, label %land.lhs.true.69

land.lhs.true.69:                                 ; preds = %for.end.67
  %64 = load %struct.term*, %struct.term** %ElecAtom, align 8
  %call70 = call i32 @fol_IsEquality(%struct.term* %64)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %land.lhs.true.69
  %65 = load %struct.term*, %struct.term** %ElecAtom, align 8
  call void @term_EqualitySwap(%struct.term* %65)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.73

if.else:                                          ; preds = %land.lhs.true.69, %for.end.67
  br label %while.end

if.end.73:                                        ; preds = %if.then.72
  br label %while.body

while.end:                                        ; preds = %if.else
  br label %if.end.74

if.end.74:                                        ; preds = %while.end, %lor.lhs.false.11
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %66 = load i32, i32* %i, align 4
  %inc = add nsw i32 %66, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.76:                                       ; preds = %for.cond
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ElectronCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %68, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.76, %if.then
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %69
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_DerivableClauses(%struct.PROOFSEARCH_HELP* %Search, %struct.CLAUSE_HELP* %GivenClause) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ListOfDerivedClauses = alloca %struct.LIST_HELP*, align 8
  %ShIndex = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Dynamic = alloca %struct.SORTTHEORY_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call3 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %2)
  store %struct.SHARED_INDEX_NODE* %call3, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call4 = call %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %3)
  store %struct.SORTTHEORY_HELP* %call4, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %4 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %tobool = icmp ne %struct.SORTTHEORY_HELP* %4, null
  br i1 %tobool, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call5 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %5)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else.24, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call7 = call i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %7 = load i32*, i32** %Flags, align 8
  %call10 = call i32 @flag_GetFlagValue(i32* %7, i32 60)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then.9
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %9 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %call13 = call %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %9)
  %10 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %11 = load i32*, i32** %Flags, align 8
  %12 = load i32*, i32** %Precedence, align 8
  %call14 = call %struct.LIST_HELP* @inf_ForwardSortResolution(%struct.CLAUSE_HELP* %8, %struct.st* %call13, %struct.SORTTHEORY_HELP* %10, i32 0, i32* %11, i32* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call15 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call14, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then.9
  br label %if.end.23

if.else:                                          ; preds = %if.then
  %14 = load i32*, i32** %Flags, align 8
  %call16 = call i32 @flag_GetFlagValue(i32* %14, i32 59)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.22

if.then.18:                                       ; preds = %if.else
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %16 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %call19 = call %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %16)
  %17 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %18 = load i32*, i32** %Flags, align 8
  %19 = load i32*, i32** %Precedence, align 8
  %call20 = call %struct.LIST_HELP* @inf_ForwardEmptySort(%struct.CLAUSE_HELP* %15, %struct.st* %call19, %struct.SORTTHEORY_HELP* %17, i32 0, i32* %18, i32* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call21 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call20, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.18, %if.else
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %if.end
  br label %if.end.163

if.else.24:                                       ; preds = %land.lhs.true, %entry
  %21 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %tobool25 = icmp ne %struct.SORTTHEORY_HELP* %21, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.33

land.lhs.true.26:                                 ; preds = %if.else.24
  %22 = load i32*, i32** %Flags, align 8
  %call27 = call i32 @flag_GetFlagValue(i32* %22, i32 59)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %land.lhs.true.26
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %24 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %call30 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %24)
  %25 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %26 = load i32*, i32** %Flags, align 8
  %27 = load i32*, i32** %Precedence, align 8
  %call31 = call %struct.LIST_HELP* @inf_BackwardEmptySort(%struct.CLAUSE_HELP* %23, %struct.st* %call30, %struct.SORTTHEORY_HELP* %25, i32 0, i32* %26, i32* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call32 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call31, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.else.24
  %29 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %tobool34 = icmp ne %struct.SORTTHEORY_HELP* %29, null
  br i1 %tobool34, label %land.lhs.true.35, label %if.end.42

land.lhs.true.35:                                 ; preds = %if.end.33
  %30 = load i32*, i32** %Flags, align 8
  %call36 = call i32 @flag_GetFlagValue(i32* %30, i32 60)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %land.lhs.true.35
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %32 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %call39 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %32)
  %33 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Dynamic, align 8
  %34 = load i32*, i32** %Flags, align 8
  %35 = load i32*, i32** %Precedence, align 8
  %call40 = call %struct.LIST_HELP* @inf_BackwardSortResolution(%struct.CLAUSE_HELP* %31, %struct.st* %call39, %struct.SORTTHEORY_HELP* %33, i32 0, i32* %34, i32* %35)
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call41 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call40, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %land.lhs.true.35, %if.end.33
  %37 = load i32*, i32** %Flags, align 8
  %call43 = call i32 @flag_GetFlagValue(i32* %37, i32 61)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %if.end.42
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %39 = load i32*, i32** %Flags, align 8
  %40 = load i32*, i32** %Precedence, align 8
  %call46 = call %struct.LIST_HELP* @inf_EqualityResolution(%struct.CLAUSE_HELP* %38, i32 1, i32* %39, i32* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call47 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call46, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %if.end.42
  %42 = load i32*, i32** %Flags, align 8
  %call49 = call i32 @flag_GetFlagValue(i32* %42, i32 62)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.end.48
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %44 = load i32*, i32** %Flags, align 8
  %45 = load i32*, i32** %Precedence, align 8
  %call52 = call %struct.LIST_HELP* @inf_EqualityResolution(%struct.CLAUSE_HELP* %43, i32 0, i32* %44, i32* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call53 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call52, %struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.end.48
  %47 = load i32*, i32** %Flags, align 8
  %call55 = call i32 @flag_GetFlagValue(i32* %47, i32 64)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.54
  %48 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %49 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %50 = load i32*, i32** %Flags, align 8
  %51 = load i32*, i32** %Precedence, align 8
  %call58 = call %struct.LIST_HELP* @inf_MergingParamodulation(%struct.CLAUSE_HELP* %48, %struct.SHARED_INDEX_NODE* %49, i32* %50, i32* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call59 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call58, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.54
  %53 = load i32*, i32** %Flags, align 8
  %call61 = call i32 @flag_GetFlagValue(i32* %53, i32 63)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.66

if.then.63:                                       ; preds = %if.end.60
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %55 = load i32*, i32** %Flags, align 8
  %56 = load i32*, i32** %Precedence, align 8
  %call64 = call %struct.LIST_HELP* @inf_EqualityFactoring(%struct.CLAUSE_HELP* %54, i32* %55, i32* %56)
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call65 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call64, %struct.LIST_HELP* %57)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.63, %if.end.60
  %58 = load i32*, i32** %Flags, align 8
  %call67 = call i32 @flag_GetFlagValue(i32* %58, i32 74)
  switch i32 %call67, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.68
    i32 2, label %sw.bb.71
  ]

sw.bb:                                            ; preds = %if.end.66
  br label %sw.epilog

sw.bb.68:                                         ; preds = %if.end.66
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %60 = load i32*, i32** %Flags, align 8
  %61 = load i32*, i32** %Precedence, align 8
  %call69 = call %struct.LIST_HELP* @inf_GeneralFactoring(%struct.CLAUSE_HELP* %59, i32 1, i32 0, i32 1, i32* %60, i32* %61)
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call70 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call69, %struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog

sw.bb.71:                                         ; preds = %if.end.66
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %64 = load i32*, i32** %Flags, align 8
  %65 = load i32*, i32** %Precedence, align 8
  %call72 = call %struct.LIST_HELP* @inf_GeneralFactoring(%struct.CLAUSE_HELP* %63, i32 1, i32 1, i32 1, i32* %64, i32* %65)
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call73 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call72, %struct.LIST_HELP* %66)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.66
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call74 = call i32 @fflush(%struct._IO_FILE* %67)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i32 0, i32 0))
  call void @misc_Error()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.71, %sw.bb.68, %sw.bb
  %68 = load i32*, i32** %Flags, align 8
  %call75 = call i32 @flag_GetFlagValue(i32* %68, i32 75)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %sw.epilog
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %70 = load i32*, i32** %Flags, align 8
  %71 = load i32*, i32** %Precedence, align 8
  %call78 = call %struct.LIST_HELP* @inf_GeneralFactoring(%struct.CLAUSE_HELP* %69, i32 0, i32 1, i32 1, i32* %70, i32* %71)
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call79 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call78, %struct.LIST_HELP* %72)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %sw.epilog
  %73 = load i32*, i32** %Flags, align 8
  %call81 = call i32 @flag_GetFlagValue(i32* %73, i32 65)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.86

if.then.83:                                       ; preds = %if.end.80
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %75 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %76 = load i32*, i32** %Flags, align 8
  %77 = load i32*, i32** %Precedence, align 8
  %call84 = call %struct.LIST_HELP* @inf_SuperpositionRight(%struct.CLAUSE_HELP* %74, %struct.SHARED_INDEX_NODE* %75, i32* %76, i32* %77)
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call85 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call84, %struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.83, %if.end.80
  %79 = load i32*, i32** %Flags, align 8
  %call87 = call i32 @flag_GetFlagValue(i32* %79, i32 67)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.end.86
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %81 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %82 = load i32*, i32** %Flags, align 8
  %83 = load i32*, i32** %Precedence, align 8
  %call90 = call %struct.LIST_HELP* @inf_Paramodulation(%struct.CLAUSE_HELP* %80, %struct.SHARED_INDEX_NODE* %81, i32* %82, i32* %83)
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call91 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call90, %struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.end.86
  %85 = load i32*, i32** %Flags, align 8
  %call93 = call i32 @flag_GetFlagValue(i32* %85, i32 66)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.98

if.then.95:                                       ; preds = %if.end.92
  %86 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %87 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %88 = load i32*, i32** %Flags, align 8
  %89 = load i32*, i32** %Precedence, align 8
  %call96 = call %struct.LIST_HELP* @inf_OrderedParamodulation(%struct.CLAUSE_HELP* %86, %struct.SHARED_INDEX_NODE* %87, i32* %88, i32* %89)
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call97 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call96, %struct.LIST_HELP* %90)
  store %struct.LIST_HELP* %call97, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.95, %if.end.92
  %91 = load i32*, i32** %Flags, align 8
  %call99 = call i32 @flag_GetFlagValue(i32* %91, i32 68)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.101, label %if.end.104

if.then.101:                                      ; preds = %if.end.98
  %92 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %93 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %94 = load i32*, i32** %Flags, align 8
  %95 = load i32*, i32** %Precedence, align 8
  %call102 = call %struct.LIST_HELP* @inf_SuperpositionLeft(%struct.CLAUSE_HELP* %92, %struct.SHARED_INDEX_NODE* %93, i32* %94, i32* %95)
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call103 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call102, %struct.LIST_HELP* %96)
  store %struct.LIST_HELP* %call103, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.101, %if.end.98
  %97 = load i32*, i32** %Flags, align 8
  %call105 = call i32 @flag_GetFlagValue(i32* %97, i32 69)
  switch i32 %call105, label %sw.default.113 [
    i32 0, label %sw.bb.106
    i32 1, label %sw.bb.107
    i32 2, label %sw.bb.110
  ]

sw.bb.106:                                        ; preds = %if.end.104
  br label %sw.epilog.115

sw.bb.107:                                        ; preds = %if.end.104
  %98 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %99 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %100 = load i32*, i32** %Flags, align 8
  %101 = load i32*, i32** %Precedence, align 8
  %call108 = call %struct.LIST_HELP* @inf_GeneralResolution(%struct.CLAUSE_HELP* %98, %struct.SHARED_INDEX_NODE* %99, i32 1, i32 0, i32* %100, i32* %101)
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call109 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call108, %struct.LIST_HELP* %102)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog.115

sw.bb.110:                                        ; preds = %if.end.104
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %104 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %105 = load i32*, i32** %Flags, align 8
  %106 = load i32*, i32** %Precedence, align 8
  %call111 = call %struct.LIST_HELP* @inf_GeneralResolution(%struct.CLAUSE_HELP* %103, %struct.SHARED_INDEX_NODE* %104, i32 1, i32 1, i32* %105, i32* %106)
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call112 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call111, %struct.LIST_HELP* %107)
  store %struct.LIST_HELP* %call112, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog.115

sw.default.113:                                   ; preds = %if.end.104
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call114 = call i32 @fflush(%struct._IO_FILE* %108)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i32 0, i32 0))
  call void @misc_Error()
  br label %sw.epilog.115

sw.epilog.115:                                    ; preds = %sw.default.113, %sw.bb.110, %sw.bb.107, %sw.bb.106
  %109 = load i32*, i32** %Flags, align 8
  %call116 = call i32 @flag_GetFlagValue(i32* %109, i32 70)
  switch i32 %call116, label %sw.default.124 [
    i32 0, label %sw.bb.117
    i32 1, label %sw.bb.118
    i32 2, label %sw.bb.121
  ]

sw.bb.117:                                        ; preds = %sw.epilog.115
  br label %sw.epilog.126

sw.bb.118:                                        ; preds = %sw.epilog.115
  %110 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %111 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %112 = load i32*, i32** %Flags, align 8
  %113 = load i32*, i32** %Precedence, align 8
  %call119 = call %struct.LIST_HELP* @inf_GeneralResolution(%struct.CLAUSE_HELP* %110, %struct.SHARED_INDEX_NODE* %111, i32 0, i32 0, i32* %112, i32* %113)
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call120 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call119, %struct.LIST_HELP* %114)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog.126

sw.bb.121:                                        ; preds = %sw.epilog.115
  %115 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %116 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %117 = load i32*, i32** %Flags, align 8
  %118 = load i32*, i32** %Precedence, align 8
  %call122 = call %struct.LIST_HELP* @inf_GeneralResolution(%struct.CLAUSE_HELP* %115, %struct.SHARED_INDEX_NODE* %116, i32 0, i32 1, i32* %117, i32* %118)
  %119 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call123 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call122, %struct.LIST_HELP* %119)
  store %struct.LIST_HELP* %call123, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %sw.epilog.126

sw.default.124:                                   ; preds = %sw.epilog.115
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call125 = call i32 @fflush(%struct._IO_FILE* %120)
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i32 0, i32 0))
  call void @misc_Error()
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %sw.default.124, %sw.bb.121, %sw.bb.118, %sw.bb.117
  %121 = load i32*, i32** %Flags, align 8
  %call127 = call i32 @flag_GetFlagValue(i32* %121, i32 76)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.132

if.then.129:                                      ; preds = %sw.epilog.126
  %122 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %123 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %124 = load i32*, i32** %Flags, align 8
  %125 = load i32*, i32** %Precedence, align 8
  %call130 = call %struct.LIST_HELP* @inf_UnitResolution(%struct.CLAUSE_HELP* %122, %struct.SHARED_INDEX_NODE* %123, i32 0, i32* %124, i32* %125)
  %126 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call131 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call130, %struct.LIST_HELP* %126)
  store %struct.LIST_HELP* %call131, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.129, %sw.epilog.126
  %127 = load i32*, i32** %Flags, align 8
  %call133 = call i32 @flag_GetFlagValue(i32* %127, i32 77)
  %tobool134 = icmp ne i32 %call133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.138

if.then.135:                                      ; preds = %if.end.132
  %128 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %129 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %130 = load i32*, i32** %Flags, align 8
  %131 = load i32*, i32** %Precedence, align 8
  %call136 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %128, %struct.SHARED_INDEX_NODE* %129, i32 0, i32* %130, i32* %131)
  %132 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call137 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call136, %struct.LIST_HELP* %132)
  store %struct.LIST_HELP* %call137, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.135, %if.end.132
  %133 = load i32*, i32** %Flags, align 8
  %call139 = call i32 @flag_GetFlagValue(i32* %133, i32 71)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.144

if.then.141:                                      ; preds = %if.end.138
  %134 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %135 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %136 = load i32*, i32** %Flags, align 8
  %137 = load i32*, i32** %Precedence, align 8
  %call142 = call %struct.LIST_HELP* @inf_GeneralHyperResolution(%struct.CLAUSE_HELP* %134, %struct.SHARED_INDEX_NODE* %135, i32 0, i32* %136, i32* %137)
  %138 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call143 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call142, %struct.LIST_HELP* %138)
  store %struct.LIST_HELP* %call143, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.141, %if.end.138
  %139 = load i32*, i32** %Flags, align 8
  %call145 = call i32 @flag_GetFlagValue(i32* %139, i32 72)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.then.147, label %if.end.150

if.then.147:                                      ; preds = %if.end.144
  %140 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %141 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %142 = load i32*, i32** %Flags, align 8
  %143 = load i32*, i32** %Precedence, align 8
  %call148 = call %struct.LIST_HELP* @inf_GeneralHyperResolution(%struct.CLAUSE_HELP* %140, %struct.SHARED_INDEX_NODE* %141, i32 1, i32* %142, i32* %143)
  %144 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call149 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call148, %struct.LIST_HELP* %144)
  store %struct.LIST_HELP* %call149, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.147, %if.end.144
  %145 = load i32*, i32** %Flags, align 8
  %call151 = call i32 @flag_GetFlagValue(i32* %145, i32 73)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.153, label %if.end.156

if.then.153:                                      ; preds = %if.end.150
  %146 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %147 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex, align 8
  %148 = load i32*, i32** %Flags, align 8
  %149 = load i32*, i32** %Precedence, align 8
  %call154 = call %struct.LIST_HELP* @inf_URResolution(%struct.CLAUSE_HELP* %146, %struct.SHARED_INDEX_NODE* %147, i32* %148, i32* %149)
  %150 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call155 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call154, %struct.LIST_HELP* %150)
  store %struct.LIST_HELP* %call155, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.153, %if.end.150
  %151 = load i32*, i32** %Flags, align 8
  %call157 = call i32 @flag_GetFlagValue(i32* %151, i32 78)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.162

if.then.159:                                      ; preds = %if.end.156
  %152 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %153 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %154 = load i32*, i32** %Flags, align 8
  %155 = load i32*, i32** %Precedence, align 8
  %call160 = call %struct.LIST_HELP* @inf_ApplyDefinition(%struct.PROOFSEARCH_HELP* %152, %struct.CLAUSE_HELP* %153, i32* %154, i32* %155)
  %156 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  %call161 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call160, %struct.LIST_HELP* %156)
  store %struct.LIST_HELP* %call161, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  br label %if.end.162

if.end.162:                                       ; preds = %if.then.159, %if.end.156
  br label %if.end.163

if.end.163:                                       ; preds = %if.end.162, %if.end.23
  %157 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ListOfDerivedClauses, align 8
  ret %struct.LIST_HELP* %157
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
define internal %struct.SORTTHEORY_HELP* @prfs_DynamicSortTheory(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dynamic = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 10
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %dynamic, align 8
  ret %struct.SORTTHEORY_HELP* %1
}

declare i32 @clause_HasTermSortConstraintLits(%struct.CLAUSE_HELP*) #2

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

declare %struct.LIST_HELP* @inf_ForwardSortResolution(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @sort_TheoryIndex(%struct.SORTTHEORY_HELP* %Theory) #1 {
entry:
  %Theory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  store %struct.SORTTHEORY_HELP* %Theory, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %0 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %Theory.addr, align 8
  %index = getelementptr inbounds %struct.SORTTHEORY_HELP, %struct.SORTTHEORY_HELP* %0, i32 0, i32 0
  %1 = load %struct.st*, %struct.st** %index, align 8
  ret %struct.st* %1
}

declare %struct.LIST_HELP* @inf_ForwardEmptySort(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #2

declare %struct.LIST_HELP* @inf_BackwardEmptySort(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #2

declare %struct.LIST_HELP* @inf_BackwardSortResolution(%struct.CLAUSE_HELP*, %struct.st*, %struct.SORTTHEORY_HELP*, i32, i32*, i32*) #2

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
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @inf_SuperpositionRight(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #1 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @inf_GenSuperpositionRight(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1, i32 1, i32 1, i32 0, i32* %2, i32* %3)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @inf_Paramodulation(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #1 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @inf_GenSuperpositionLeft(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1, i32 0, i32 0, i32 0, i32* %2, i32* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %6 = load i32*, i32** %Flags.addr, align 8
  %7 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call %struct.LIST_HELP* @inf_GenSuperpositionRight(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %5, i32 0, i32 0, i32 0, i32* %6, i32* %7)
  %call2 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call, %struct.LIST_HELP* %call1)
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @inf_OrderedParamodulation(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #1 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @inf_GenSuperpositionLeft(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1, i32 1, i32 0, i32 0, i32* %2, i32* %3)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %6 = load i32*, i32** %Flags.addr, align 8
  %7 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call %struct.LIST_HELP* @inf_GenSuperpositionRight(%struct.CLAUSE_HELP* %4, %struct.SHARED_INDEX_NODE* %5, i32 1, i32 0, i32 0, i32* %6, i32* %7)
  %call2 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call, %struct.LIST_HELP* %call1)
  ret %struct.LIST_HELP* %call2
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @inf_SuperpositionLeft(%struct.CLAUSE_HELP* %GivenClause, %struct.SHARED_INDEX_NODE* %ShIndex, i32* %Flags, i32* %Precedence) #1 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %2 = load i32*, i32** %Flags.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @inf_GenSuperpositionLeft(%struct.CLAUSE_HELP* %0, %struct.SHARED_INDEX_NODE* %1, i32 1, i32 1, i32 0, i32* %2, i32* %3)
  ret %struct.LIST_HELP* %call
}

declare %struct.LIST_HELP* @inf_URResolution(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32*, i32*) #2

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

declare i32 @ord_LiteralCompare(%struct.term*, i32, %struct.term*, i32, i32, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_SmallerThan() #1 {
entry:
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_Equal() #1 {
entry:
  ret i32 2
}

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

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

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitDataFromFather(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Father) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Father.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Father, %struct.CLAUSE_HELP** %Father.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %1, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call1 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %3)
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %2, i32 %call1)
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %5, i32 0, i32 4
  %6 = load i64*, i64** %splitfield, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %7, i32 0, i32 5
  %8 = load i32, i32* %splitfield_length, align 4
  call void @clause_SetSplitField(%struct.CLAUSE_HELP* %4, i64* %6, i32 %8)
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

declare void @clause_OrientEqualities(%struct.CLAUSE_HELP*, i32*, i32*) #2

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

declare i8* @memory_Malloc(i32) #2

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

declare i32 @ord_Compare(%struct.term*, %struct.term*, i32*, i32*) #2

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

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #1 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
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

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromEqualityFactoring(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 4, i32* %origin, align 4
  ret void
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

declare %struct.LIST_HELP* @sharing_GetDataList(%struct.term*, %struct.SHARED_INDEX_NODE*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.term* @inf_AllTermsRplac(%struct.term* %Term, %struct.term* %TestTerm, %struct.term* %RplacTerm, %struct.subst* %Subst) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %TestTerm.addr = alloca %struct.term*, align 8
  %RplacTerm.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %ActTerm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TestTerm, %struct.term** %TestTerm.addr, align 8
  store %struct.term* %RplacTerm, %struct.term** %RplacTerm.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Copy(%struct.term* %0)
  store %struct.term* %call, %struct.term** %ActTerm, align 8
  %1 = load %struct.term*, %struct.term** %ActTerm, align 8
  %2 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %3 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call1 = call i32 @inf_NAllTermsRplac(%struct.term* %1, %struct.term* %2, %struct.term* %3, %struct.subst* %4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_Delete(%struct.term* %5)
  store %struct.term* null, %struct.term** %ActTerm, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.term*, %struct.term** %ActTerm, align 8
  ret %struct.term* %6
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @inf_AllTermsLeftRplac(%struct.term* %Term, %struct.term* %TestTerm, %struct.term* %RplacTerm, %struct.subst* %Subst) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %TestTerm.addr = alloca %struct.term*, align 8
  %RplacTerm.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TestTerm, %struct.term** %TestTerm.addr, align 8
  store %struct.term* %RplacTerm, %struct.term** %RplacTerm.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %2 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call %struct.term* @inf_AllTermsSideRplacs(%struct.term* %0, %struct.term* %1, %struct.term* %2, %struct.subst* %3, i32 0)
  ret %struct.term* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @inf_AllTermsRightRplac(%struct.term* %Term, %struct.term* %TestTerm, %struct.term* %RplacTerm, %struct.subst* %Subst) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %TestTerm.addr = alloca %struct.term*, align 8
  %RplacTerm.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TestTerm, %struct.term** %TestTerm.addr, align 8
  store %struct.term* %RplacTerm, %struct.term** %RplacTerm.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %2 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call = call %struct.term* @inf_AllTermsSideRplacs(%struct.term* %0, %struct.term* %1, %struct.term* %2, %struct.subst* %3, i32 1)
  ret %struct.term* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %Clause, i32 %ci, %struct.subst* %Subst, %struct.CLAUSE_HELP* %PartnerClause, i32 %pci, %struct.subst* %PartnerSubst, %struct.term* %SupAtom, i32 %Right, i32 %OrdPara, i32 %MaxPara, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %ci.addr = alloca i32, align 4
  %Subst.addr = alloca %struct.subst*, align 8
  %PartnerClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %pci.addr = alloca i32, align 4
  %PartnerSubst.addr = alloca %struct.subst*, align 8
  %SupAtom.addr = alloca %struct.term*, align 8
  %Right.addr = alloca i32, align 4
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %ls = alloca i32, align 4
  %pls = alloca i32, align 4
  %pla = alloca i32, align 4
  %plc = alloca i32, align 4
  %help = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %ci, i32* %ci.addr, align 4
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.CLAUSE_HELP* %PartnerClause, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  store i32 %pci, i32* %pci.addr, align 4
  store %struct.subst* %PartnerSubst, %struct.subst** %PartnerSubst.addr, align 8
  store %struct.term* %SupAtom, %struct.term** %SupAtom.addr, align 8
  store i32 %Right, i32* %Right.addr, align 4
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %pls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %pla, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call2 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %plc, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %ls, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call4 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %la, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %lc, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  %sub = sub nsw i32 %call6, 1
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %7)
  %add = add nsw i32 %sub, %call7
  %call8 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %add)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %NewClause, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call9 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call10 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %10)
  %add11 = add nsw i32 %call9, %call10
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %8, i32 %add11)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call12 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %12)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call13 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %13)
  %add14 = add nsw i32 %call12, %call13
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %11, i32 %add14)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call15 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %15)
  %sub16 = sub nsw i32 %call15, 1
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call17 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %16)
  %add18 = add nsw i32 %sub16, %call17
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %14, i32 %add18)
  %call19 = call i32 @clause_FirstLitIndex()
  store i32 %call19, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %j, align 4
  %18 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %20 = load i32, i32* %j, align 4
  %21 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %j, align 4
  %call20 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %22, i32 %23)
  %call21 = call %struct.term* @term_Copy(%struct.term* %call20)
  %call22 = call %struct.term* @subst_Apply(%struct.subst* %21, %struct.term* %call21)
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call23 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call22, %struct.CLAUSE_HELP* %24)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %19, i32 %20, %struct.LITERAL_HELP* %call23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %j, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call24 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %26)
  store i32 %call24, i32* %help, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.33, %for.end
  %27 = load i32, i32* %j, align 4
  %28 = load i32, i32* %la, align 4
  %cmp26 = icmp sle i32 %27, %28
  br i1 %cmp26, label %for.body.27, label %for.end.35

for.body.27:                                      ; preds = %for.cond.25
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %help, align 4
  %add28 = add nsw i32 %30, %31
  %32 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %34 = load i32, i32* %j, align 4
  %call29 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %33, i32 %34)
  %call30 = call %struct.term* @term_Copy(%struct.term* %call29)
  %call31 = call %struct.term* @subst_Apply(%struct.subst* %32, %struct.term* %call30)
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call32 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call31, %struct.CLAUSE_HELP* %35)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %29, i32 %add28, %struct.LITERAL_HELP* %call32)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.27
  %36 = load i32, i32* %j, align 4
  %inc34 = add nsw i32 %36, 1
  store i32 %inc34, i32* %j, align 4
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call36 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %37)
  %38 = load i32, i32* %help, align 4
  %add37 = add nsw i32 %38, %call36
  store i32 %add37, i32* %help, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.47, %for.end.35
  %39 = load i32, i32* %j, align 4
  %40 = load i32, i32* %ls, align 4
  %cmp39 = icmp sle i32 %39, %40
  br i1 %cmp39, label %for.body.40, label %for.end.49

for.body.40:                                      ; preds = %for.cond.38
  %41 = load i32, i32* %j, align 4
  %42 = load i32, i32* %ci.addr, align 4
  %cmp41 = icmp ne i32 %41, %42
  br i1 %cmp41, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.40
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %44 = load i32, i32* %j, align 4
  %45 = load i32, i32* %help, align 4
  %add42 = add nsw i32 %44, %45
  %46 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %48 = load i32, i32* %j, align 4
  %call43 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %47, i32 %48)
  %call44 = call %struct.term* @term_Copy(%struct.term* %call43)
  %call45 = call %struct.term* @subst_Apply(%struct.subst* %46, %struct.term* %call44)
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call46 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call45, %struct.CLAUSE_HELP* %49)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %43, i32 %add42, %struct.LITERAL_HELP* %call46)
  br label %if.end

if.else:                                          ; preds = %for.body.40
  %50 = load i32, i32* %help, align 4
  %dec = add nsw i32 %50, -1
  store i32 %dec, i32* %help, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end
  %51 = load i32, i32* %j, align 4
  %inc48 = add nsw i32 %51, 1
  store i32 %inc48, i32* %j, align 4
  br label %for.cond.38

for.end.49:                                       ; preds = %for.cond.38
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call50 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %52)
  store i32 %call50, i32* %help, align 4
  %call51 = call i32 @clause_FirstLitIndex()
  store i32 %call51, i32* %j, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.60, %for.end.49
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %plc, align 4
  %cmp53 = icmp sle i32 %53, %54
  br i1 %cmp53, label %for.body.54, label %for.end.62

for.body.54:                                      ; preds = %for.cond.52
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %56 = load i32, i32* %j, align 4
  %57 = load i32, i32* %help, align 4
  %add55 = add nsw i32 %56, %57
  %58 = load %struct.subst*, %struct.subst** %PartnerSubst.addr, align 8
  %59 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %60 = load i32, i32* %j, align 4
  %call56 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %59, i32 %60)
  %call57 = call %struct.term* @term_Copy(%struct.term* %call56)
  %call58 = call %struct.term* @subst_Apply(%struct.subst* %58, %struct.term* %call57)
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call59 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call58, %struct.CLAUSE_HELP* %61)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %55, i32 %add55, %struct.LITERAL_HELP* %call59)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.54
  %62 = load i32, i32* %j, align 4
  %inc61 = add nsw i32 %62, 1
  store i32 %inc61, i32* %j, align 4
  br label %for.cond.52

for.end.62:                                       ; preds = %for.cond.52
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call63 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %63)
  %64 = load i32, i32* %help, align 4
  %add64 = add nsw i32 %64, %call63
  store i32 %add64, i32* %help, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.82, %for.end.62
  %65 = load i32, i32* %j, align 4
  %66 = load i32, i32* %pla, align 4
  %cmp66 = icmp sle i32 %65, %66
  br i1 %cmp66, label %for.body.67, label %for.end.84

for.body.67:                                      ; preds = %for.cond.65
  %67 = load i32, i32* %j, align 4
  %68 = load i32, i32* %pci.addr, align 4
  %cmp68 = icmp ne i32 %67, %68
  br i1 %cmp68, label %if.then.69, label %if.else.75

if.then.69:                                       ; preds = %for.body.67
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %70 = load i32, i32* %j, align 4
  %71 = load i32, i32* %help, align 4
  %add70 = add nsw i32 %70, %71
  %72 = load %struct.subst*, %struct.subst** %PartnerSubst.addr, align 8
  %73 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %74 = load i32, i32* %j, align 4
  %call71 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %73, i32 %74)
  %call72 = call %struct.term* @term_Copy(%struct.term* %call71)
  %call73 = call %struct.term* @subst_Apply(%struct.subst* %72, %struct.term* %call72)
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call74 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call73, %struct.CLAUSE_HELP* %75)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %69, i32 %add70, %struct.LITERAL_HELP* %call74)
  br label %if.end.81

if.else.75:                                       ; preds = %for.body.67
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %77 = load i32, i32* %j, align 4
  %78 = load i32, i32* %help, align 4
  %add76 = add nsw i32 %77, %78
  %call77 = call i32 @fol_Not()
  %79 = load %struct.term*, %struct.term** %SupAtom.addr, align 8
  %80 = bitcast %struct.term* %79 to i8*
  %call78 = call %struct.LIST_HELP* @list_List(i8* %80)
  %call79 = call %struct.term* @term_Create(i32 %call77, %struct.LIST_HELP* %call78)
  %81 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call80 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call79, %struct.CLAUSE_HELP* %81)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %76, i32 %add76, %struct.LITERAL_HELP* %call80)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.75, %if.then.69
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %82 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %82, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.65

for.end.84:                                       ; preds = %for.cond.65
  %83 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call85 = call i32 @clause_Length(%struct.CLAUSE_HELP* %83)
  %sub86 = sub nsw i32 %call85, 1
  store i32 %sub86, i32* %help, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.101, %for.end.84
  %84 = load i32, i32* %j, align 4
  %85 = load i32, i32* %pls, align 4
  %cmp88 = icmp sle i32 %84, %85
  br i1 %cmp88, label %for.body.89, label %for.end.103

for.body.89:                                      ; preds = %for.cond.87
  %86 = load i32, i32* %j, align 4
  %87 = load i32, i32* %pci.addr, align 4
  %cmp90 = icmp ne i32 %86, %87
  br i1 %cmp90, label %if.then.91, label %if.else.97

if.then.91:                                       ; preds = %for.body.89
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %89 = load i32, i32* %j, align 4
  %90 = load i32, i32* %help, align 4
  %add92 = add nsw i32 %89, %90
  %91 = load %struct.subst*, %struct.subst** %PartnerSubst.addr, align 8
  %92 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %93 = load i32, i32* %j, align 4
  %call93 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %92, i32 %93)
  %call94 = call %struct.term* @term_Copy(%struct.term* %call93)
  %call95 = call %struct.term* @subst_Apply(%struct.subst* %91, %struct.term* %call94)
  %94 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call96 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call95, %struct.CLAUSE_HELP* %94)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %88, i32 %add92, %struct.LITERAL_HELP* %call96)
  br label %if.end.100

if.else.97:                                       ; preds = %for.body.89
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %96 = load i32, i32* %j, align 4
  %97 = load i32, i32* %help, align 4
  %add98 = add nsw i32 %96, %97
  %98 = load %struct.term*, %struct.term** %SupAtom.addr, align 8
  %99 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call99 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %98, %struct.CLAUSE_HELP* %99)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %95, i32 %add98, %struct.LITERAL_HELP* %call99)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.91
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %100 = load i32, i32* %j, align 4
  %inc102 = add nsw i32 %100, 1
  store i32 %inc102, i32* %j, align 4
  br label %for.cond.87

for.end.103:                                      ; preds = %for.cond.87
  %101 = load i32, i32* %OrdPara.addr, align 4
  %tobool = icmp ne i32 %101, 0
  br i1 %tobool, label %land.lhs.true, label %if.else.110

land.lhs.true:                                    ; preds = %for.end.103
  %102 = load i32, i32* %MaxPara.addr, align 4
  %tobool104 = icmp ne i32 %102, 0
  br i1 %tobool104, label %if.then.105, label %if.else.110

if.then.105:                                      ; preds = %land.lhs.true
  %103 = load i32, i32* %Right.addr, align 4
  %tobool106 = icmp ne i32 %103, 0
  br i1 %tobool106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %if.then.105
  %104 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromSuperpositionRight(%struct.CLAUSE_HELP* %104)
  br label %if.end.109

if.else.108:                                      ; preds = %if.then.105
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromSuperpositionLeft(%struct.CLAUSE_HELP* %105)
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.108, %if.then.107
  br label %if.end.117

if.else.110:                                      ; preds = %land.lhs.true, %for.end.103
  %106 = load i32, i32* %OrdPara.addr, align 4
  %tobool111 = icmp ne i32 %106, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.else.115

land.lhs.true.112:                                ; preds = %if.else.110
  %107 = load i32, i32* %MaxPara.addr, align 4
  %tobool113 = icmp ne i32 %107, 0
  br i1 %tobool113, label %if.else.115, label %if.then.114

if.then.114:                                      ; preds = %land.lhs.true.112
  %108 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromOrderedParamodulation(%struct.CLAUSE_HELP* %108)
  br label %if.end.116

if.else.115:                                      ; preds = %land.lhs.true.112, %if.else.110
  %109 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromParamodulation(%struct.CLAUSE_HELP* %109)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.115, %if.then.114
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %if.end.109
  %110 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %111 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %112 = load i32, i32* %pci.addr, align 4
  %113 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %114 = load i32, i32* %ci.addr, align 4
  %115 = load i32*, i32** %Flags.addr, align 8
  %116 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromParents(%struct.CLAUSE_HELP* %110, %struct.CLAUSE_HELP* %111, i32 %112, %struct.CLAUSE_HELP* %113, i32 %114, i32* %115, i32* %116)
  %117 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %117
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

; Function Attrs: nounwind uwtable
define internal i32 @inf_NAllTermsRplac(%struct.term* %Term, %struct.term* %TestTerm, %struct.term* %RplacTerm, %struct.subst* %Subst) #0 {
entry:
  %retval = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %TestTerm.addr = alloca %struct.term*, align 8
  %RplacTerm.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %ArgListNode = alloca %struct.LIST_HELP*, align 8
  %Replaced = alloca i32, align 4
  %Bottom = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TestTerm, %struct.term** %TestTerm.addr, align 8
  store %struct.term* %RplacTerm, %struct.term** %RplacTerm.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32 0, i32* %Replaced, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %call = call i32 @term_Equal(%struct.term* %0, %struct.term* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %3)
  call void @term_RplacTop(%struct.term* %2, i32 %call1)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ArgListNode, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %6 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %call4 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call3)
  call void @term_RplacArgumentList(%struct.term* %5, %struct.LIST_HELP* %call4)
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %7)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end
  %9 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @subst_Apply(%struct.subst* %9, %struct.term* %10)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.46, label %if.then.13

if.then.13:                                       ; preds = %if.end.9
  %call14 = call i32 @stack_Bottom()
  store i32 %call14, i32* %Bottom, align 4
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %13 = bitcast %struct.LIST_HELP* %call15 to i8*
  call void @stack_Push(i8* %13)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then.13
  %14 = load i32, i32* %Bottom, align 4
  %call16 = call i32 @stack_Empty(i32 %14)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %while.body, label %while.end.45

while.body:                                       ; preds = %while.cond
  %call18 = call i8* @stack_Top()
  %15 = bitcast i8* %call18 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %ArgListNode, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %17, %struct.term** %Term.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %19 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_RplacTop(i8* %19)
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %21 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %call21 = call i32 @term_Equal(%struct.term* %20, %struct.term* %21)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %while.body
  store i32 1, i32* %Replaced, align 4
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgListNode, align 8
  %23 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %call24 = call %struct.term* @term_Copy(%struct.term* %23)
  %24 = bitcast %struct.term* %call24 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %22, i8* %24)
  %25 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Delete(%struct.term* %25)
  br label %if.end.36

if.else:                                          ; preds = %while.body
  %26 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call i32 @term_IsComplex(%struct.term* %26)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.29

if.then.27:                                       ; preds = %if.else
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  %28 = bitcast %struct.LIST_HELP* %call28 to i8*
  call void @stack_Push(i8* %28)
  br label %if.end.35

if.else.29:                                       ; preds = %if.else
  %29 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call30 = call i32 @term_IsVariable(%struct.term* %29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.else.29
  %30 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %31 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call33 = call %struct.term* @subst_Apply(%struct.subst* %30, %struct.term* %31)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.else.29
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.23
  br label %while.cond.37

while.cond.37:                                    ; preds = %while.body.43, %if.end.36
  %32 = load i32, i32* %Bottom, align 4
  %call38 = call i32 @stack_Empty(i32 %32)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond.37
  %call40 = call i8* @stack_Top()
  %33 = bitcast i8* %call40 to %struct.LIST_HELP*
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %33)
  %tobool42 = icmp ne i32 %call41, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.37
  %34 = phi i1 [ false, %while.cond.37 ], [ %tobool42, %land.rhs ]
  br i1 %34, label %while.body.43, label %while.end

while.body.43:                                    ; preds = %land.end
  %call44 = call i32 @stack_Pop()
  br label %while.cond.37

while.end:                                        ; preds = %land.end
  br label %while.cond

while.end.45:                                     ; preds = %while.cond
  br label %if.end.46

if.end.46:                                        ; preds = %while.end.45, %if.end.9
  %35 = load i32, i32* %Replaced, align 4
  store i32 %35, i32* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacTop(%struct.term* %T, i32 %S) #1 {
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
define internal void @term_RplacArgumentList(%struct.term* %T, %struct.LIST_HELP* %A) #1 {
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
define internal %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret %struct.LIST_HELP* %call
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
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
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
define internal i32 @stack_Pop() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  ret i32 %dec
}

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #2

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

; Function Attrs: nounwind uwtable
define internal %struct.term* @inf_AllTermsSideRplacs(%struct.term* %Term, %struct.term* %TestTerm, %struct.term* %RplacTerm, %struct.subst* %Subst, i32 %Right) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %TestTerm.addr = alloca %struct.term*, align 8
  %RplacTerm.addr = alloca %struct.term*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Right.addr = alloca i32, align 4
  %ActTerm = alloca %struct.term*, align 8
  %ReplSide = alloca %struct.term*, align 8
  %OtherSide = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TestTerm, %struct.term** %TestTerm.addr, align 8
  store %struct.term* %RplacTerm, %struct.term** %RplacTerm.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i32 %Right, i32* %Right.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @term_Copy(%struct.term* %0)
  store %struct.term* %call, %struct.term** %ActTerm, align 8
  %1 = load i32, i32* %Right.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call1 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call1, %struct.term** %ReplSide, align 8
  %3 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %3)
  store %struct.term* %call2, %struct.term** %OtherSide, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  store %struct.term* %call3, %struct.term** %ReplSide, align 8
  %5 = load %struct.term*, %struct.term** %ActTerm, align 8
  %call4 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  store %struct.term* %call4, %struct.term** %OtherSide, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.term*, %struct.term** %ReplSide, align 8
  %7 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %8 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %9 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call5 = call i32 @inf_NAllTermsRplac(%struct.term* %6, %struct.term* %7, %struct.term* %8, %struct.subst* %9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.end
  %10 = load %struct.term*, %struct.term** %OtherSide, align 8
  %11 = load %struct.term*, %struct.term** %TestTerm.addr, align 8
  %12 = load %struct.term*, %struct.term** %RplacTerm.addr, align 8
  %13 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call8 = call i32 @inf_NAllTermsRplac(%struct.term* %10, %struct.term* %11, %struct.term* %12, %struct.subst* %13)
  br label %if.end.10

if.else.9:                                        ; preds = %if.end
  %14 = load %struct.term*, %struct.term** %ActTerm, align 8
  call void @term_Delete(%struct.term* %14)
  store %struct.term* null, %struct.term** %ActTerm, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.9, %if.then.7
  %15 = load %struct.term*, %struct.term** %ActTerm, align 8
  ret %struct.term* %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSuperpositionRight(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 8, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSuperpositionLeft(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 9, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromOrderedParamodulation(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 7, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromParamodulation(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 6, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetDataFromParents(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Father, i32 %i, %struct.CLAUSE_HELP* %Mother, i32 %j, i32* %Flags, i32* %Precedence) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Father.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Mother.addr = alloca %struct.CLAUSE_HELP*, align 8
  %j.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Father, %struct.CLAUSE_HELP** %Father.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %Mother, %struct.CLAUSE_HELP** %Mother.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %1 = load i32*, i32** %Flags.addr, align 8
  %2 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_OrientAndReInit(%struct.CLAUSE_HELP* %0, i32* %1, i32* %2)
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  call void @clause_SetSplitDataFromParents(%struct.CLAUSE_HELP* %3, %struct.CLAUSE_HELP* %4, %struct.CLAUSE_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call = call i32 @clause_Depth(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call1 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %8)
  %call2 = call i32 @misc_Max(i32 %call, i32 %call1)
  %add = add nsw i32 %call2, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %6, i32 %add)
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call3 = call i32 @clause_Number(%struct.CLAUSE_HELP* %10)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %9, i32 %call3)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %12 = load i32, i32* %i.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %11, i32 %12)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call4 = call i32 @clause_Number(%struct.CLAUSE_HELP* %14)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %13, i32 %call4)
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %16 = load i32, i32* %j.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %15, i32 %16)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetSplitDataFromParents(%struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP* %Mother, %struct.CLAUSE_HELP* %Father) #1 {
entry:
  %Result.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Mother.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Father.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Result, %struct.CLAUSE_HELP** %Result.addr, align 8
  store %struct.CLAUSE_HELP* %Mother, %struct.CLAUSE_HELP** %Mother.addr, align 8
  store %struct.CLAUSE_HELP* %Father, %struct.CLAUSE_HELP** %Father.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call1 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %1, i32 8)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %2, i32 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call3 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call4 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  br label %if.end.106

if.end.7:                                         ; preds = %land.lhs.true, %if.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call8 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call9 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %7)
  %cmp10 = icmp ugt i32 %call8, %call9
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %call11 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %8)
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %call12 = call i32 @clause_SplitLevel(%struct.CLAUSE_HELP* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call11, %cond.true ], [ %call12, %cond.false ]
  call void @clause_SetSplitLevel(%struct.CLAUSE_HELP* %5, i32 %cond)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %10, i32 0, i32 5
  %11 = load i32, i32* %splitfield_length, align 4
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length13 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %12, i32 0, i32 5
  %13 = load i32, i32* %splitfield_length13, align 4
  %cmp14 = icmp ugt i32 %11, %13
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %cond.end
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %14, i32 0, i32 4
  %15 = load i64*, i64** %splitfield, align 8
  %cmp16 = icmp ne i64* %15, null
  br i1 %cmp16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.15
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield18 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %16, i32 0, i32 4
  %17 = load i64*, i64** %splitfield18, align 8
  %18 = bitcast i64* %17 to i8*
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length19 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %19, i32 0, i32 5
  %20 = load i32, i32* %splitfield_length19, align 4
  %conv = zext i32 %20 to i64
  %mul = mul i64 8, %conv
  %conv20 = trunc i64 %mul to i32
  call void @memory_Free(i8* %18, i32 %conv20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.15
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length22 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %21, i32 0, i32 5
  %22 = load i32, i32* %splitfield_length22, align 4
  %conv23 = zext i32 %22 to i64
  %mul24 = mul i64 8, %conv23
  %conv25 = trunc i64 %mul24 to i32
  %call26 = call i8* @memory_Malloc(i32 %conv25)
  %23 = bitcast i8* %call26 to i64*
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield27 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %24, i32 0, i32 4
  store i64* %23, i64** %splitfield27, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length28 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %25, i32 0, i32 5
  %26 = load i32, i32* %splitfield_length28, align 4
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length29 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %27, i32 0, i32 5
  store i32 %26, i32* %splitfield_length29, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length30 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %29, i32 0, i32 5
  %30 = load i32, i32* %splitfield_length30, align 4
  %cmp31 = icmp ult i32 %28, %30
  br i1 %cmp31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4
  %idxprom = zext i32 %31 to i64
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield33 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %32, i32 0, i32 4
  %33 = load i64*, i64** %splitfield33, align 8
  %arrayidx = getelementptr inbounds i64, i64* %33, i64 %idxprom
  %34 = load i64, i64* %arrayidx, align 8
  %35 = load i32, i32* %i, align 4
  %idxprom34 = zext i32 %35 to i64
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield35 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %36, i32 0, i32 4
  %37 = load i64*, i64** %splitfield35, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %37, i64 %idxprom34
  %38 = load i64, i64* %arrayidx36, align 8
  %or = or i64 %34, %38
  %39 = load i32, i32* %i, align 4
  %idxprom37 = zext i32 %39 to i64
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield38 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %40, i32 0, i32 4
  %41 = load i64*, i64** %splitfield38, align 8
  %arrayidx39 = getelementptr inbounds i64, i64* %41, i64 %idxprom37
  store i64 %or, i64* %arrayidx39, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %i, align 4
  %inc = add i32 %42, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length40 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %43, i32 0, i32 5
  %44 = load i32, i32* %splitfield_length40, align 4
  store i32 %44, i32* %i, align 4
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc.52, %for.end
  %45 = load i32, i32* %i, align 4
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length42 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %46, i32 0, i32 5
  %47 = load i32, i32* %splitfield_length42, align 4
  %cmp43 = icmp ult i32 %45, %47
  br i1 %cmp43, label %for.body.45, label %for.end.54

for.body.45:                                      ; preds = %for.cond.41
  %48 = load i32, i32* %i, align 4
  %idxprom46 = zext i32 %48 to i64
  %49 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield47 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %49, i32 0, i32 4
  %50 = load i64*, i64** %splitfield47, align 8
  %arrayidx48 = getelementptr inbounds i64, i64* %50, i64 %idxprom46
  %51 = load i64, i64* %arrayidx48, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom49 = zext i32 %52 to i64
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield50 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %53, i32 0, i32 4
  %54 = load i64*, i64** %splitfield50, align 8
  %arrayidx51 = getelementptr inbounds i64, i64* %54, i64 %idxprom49
  store i64 %51, i64* %arrayidx51, align 8
  br label %for.inc.52

for.inc.52:                                       ; preds = %for.body.45
  %55 = load i32, i32* %i, align 4
  %inc53 = add i32 %55, 1
  store i32 %inc53, i32* %i, align 4
  br label %for.cond.41

for.end.54:                                       ; preds = %for.cond.41
  br label %if.end.106

if.else:                                          ; preds = %cond.end
  %56 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield55 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %56, i32 0, i32 4
  %57 = load i64*, i64** %splitfield55, align 8
  %cmp56 = icmp ne i64* %57, null
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.else
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield59 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %58, i32 0, i32 4
  %59 = load i64*, i64** %splitfield59, align 8
  %60 = bitcast i64* %59 to i8*
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length60 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %61, i32 0, i32 5
  %62 = load i32, i32* %splitfield_length60, align 4
  %conv61 = zext i32 %62 to i64
  %mul62 = mul i64 8, %conv61
  %conv63 = trunc i64 %mul62 to i32
  call void @memory_Free(i8* %60, i32 %conv63)
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.else
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length65 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %63, i32 0, i32 5
  %64 = load i32, i32* %splitfield_length65, align 4
  %conv66 = zext i32 %64 to i64
  %mul67 = mul i64 8, %conv66
  %conv68 = trunc i64 %mul67 to i32
  %call69 = call i8* @memory_Malloc(i32 %conv68)
  %65 = bitcast i8* %call69 to i64*
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield70 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %66, i32 0, i32 4
  store i64* %65, i64** %splitfield70, align 8
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length71 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %67, i32 0, i32 5
  %68 = load i32, i32* %splitfield_length71, align 4
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield_length72 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %69, i32 0, i32 5
  store i32 %68, i32* %splitfield_length72, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.88, %if.end.64
  %70 = load i32, i32* %i, align 4
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length74 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %71, i32 0, i32 5
  %72 = load i32, i32* %splitfield_length74, align 4
  %cmp75 = icmp ult i32 %70, %72
  br i1 %cmp75, label %for.body.77, label %for.end.90

for.body.77:                                      ; preds = %for.cond.73
  %73 = load i32, i32* %i, align 4
  %idxprom78 = zext i32 %73 to i64
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield79 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %74, i32 0, i32 4
  %75 = load i64*, i64** %splitfield79, align 8
  %arrayidx80 = getelementptr inbounds i64, i64* %75, i64 %idxprom78
  %76 = load i64, i64* %arrayidx80, align 8
  %77 = load i32, i32* %i, align 4
  %idxprom81 = zext i32 %77 to i64
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield82 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %78, i32 0, i32 4
  %79 = load i64*, i64** %splitfield82, align 8
  %arrayidx83 = getelementptr inbounds i64, i64* %79, i64 %idxprom81
  %80 = load i64, i64* %arrayidx83, align 8
  %or84 = or i64 %76, %80
  %81 = load i32, i32* %i, align 4
  %idxprom85 = zext i32 %81 to i64
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield86 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %82, i32 0, i32 4
  %83 = load i64*, i64** %splitfield86, align 8
  %arrayidx87 = getelementptr inbounds i64, i64* %83, i64 %idxprom85
  store i64 %or84, i64* %arrayidx87, align 8
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.77
  %84 = load i32, i32* %i, align 4
  %inc89 = add i32 %84, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.73

for.end.90:                                       ; preds = %for.cond.73
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Mother.addr, align 8
  %splitfield_length91 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %85, i32 0, i32 5
  %86 = load i32, i32* %splitfield_length91, align 4
  store i32 %86, i32* %i, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.103, %for.end.90
  %87 = load i32, i32* %i, align 4
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield_length93 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %88, i32 0, i32 5
  %89 = load i32, i32* %splitfield_length93, align 4
  %cmp94 = icmp ult i32 %87, %89
  br i1 %cmp94, label %for.body.96, label %for.end.105

for.body.96:                                      ; preds = %for.cond.92
  %90 = load i32, i32* %i, align 4
  %idxprom97 = zext i32 %90 to i64
  %91 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Father.addr, align 8
  %splitfield98 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %91, i32 0, i32 4
  %92 = load i64*, i64** %splitfield98, align 8
  %arrayidx99 = getelementptr inbounds i64, i64* %92, i64 %idxprom97
  %93 = load i64, i64* %arrayidx99, align 8
  %94 = load i32, i32* %i, align 4
  %idxprom100 = zext i32 %94 to i64
  %95 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Result.addr, align 8
  %splitfield101 = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %95, i32 0, i32 4
  %96 = load i64*, i64** %splitfield101, align 8
  %arrayidx102 = getelementptr inbounds i64, i64* %96, i64 %idxprom100
  store i64 %93, i64* %arrayidx102, align 8
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.96
  %97 = load i32, i32* %i, align 4
  %inc104 = add i32 %97, 1
  store i32 %inc104, i32* %i, align 4
  br label %for.cond.92

for.end.105:                                      ; preds = %for.cond.92
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.6, %for.end.105, %for.end.54
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPRightEqToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %Left, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Left.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Term = alloca %struct.term*, align 8
  %PartnerTerm = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %Scl = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %MaxVar = alloca i32, align 4
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %PartnerLeft = alloca %struct.term*, align 8
  %PartnerRight = alloca %struct.term*, align 8
  %Check = alloca i32, align 4
  %PartnerCheck = alloca i32, align 4
  %NewLeft = alloca %struct.term*, align 8
  %NewRight = alloca %struct.term*, align 8
  %SupAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %Left, i32* %Left.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call1, %struct.LITERAL_HELP** %Lit, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %2)
  store %struct.term* %call2, %struct.term** %Atom, align 8
  %call3 = call i32 @stack_Bottom()
  store i32 %call3, i32* %Bottom, align 4
  %3 = load i32, i32* %Left.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Atom, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call4)
  call void @sharing_PushListOnStack(%struct.LIST_HELP* %call5)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %Atom, align 8
  %call6 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call6)
  call void @sharing_PushListOnStack(%struct.LIST_HELP* %call7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.171, %if.end
  %6 = load i32, i32* %Bottom, align 4
  %call8 = call i32 @stack_Empty(i32 %6)
  %tobool9 = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool9, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call10 = call i8* @stack_PopResult()
  %7 = bitcast i8* %call10 to %struct.term*
  store %struct.term* %7, %struct.term** %Term, align 8
  %8 = load %struct.term*, %struct.term** %Term, align 8
  %call11 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.171, label %if.then.13

if.then.13:                                       ; preds = %while.body
  %call14 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call15 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %9)
  %call16 = call %struct.binding* @cont_RightContext()
  %10 = load %struct.term*, %struct.term** %Term, align 8
  %call17 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call14, %struct.st* %call15, %struct.binding* %call16, %struct.term* %10)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.168, %if.then.13
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body, label %for.end.170

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %13, %struct.term** %PartnerTerm, align 8
  %14 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call22 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %14)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Parents, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.165, %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %for.body.27, label %for.end.167

for.body.27:                                      ; preds = %for.cond.23
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call28 to %struct.term*
  store %struct.term* %17, %struct.term** %PartnerEq, align 8
  %18 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call29 = call i32 @fol_IsEquality(%struct.term* %18)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.164

if.then.31:                                       ; preds = %for.body.27
  %19 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call32 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %19)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.then.31
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %for.body.37, label %for.end

for.body.37:                                      ; preds = %for.cond.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call38 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %22, %struct.LITERAL_HELP** %PartnerLit, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call39 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %23)
  store i32 %call39, i32* %j, align 4
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call40 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %24)
  store %struct.CLAUSE_HELP* %call40, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call41 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %25, i32 2)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.162, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.37
  %26 = load i32, i32* %MaxPara.addr, align 4
  %tobool43 = icmp ne i32 %26, 0
  br i1 %tobool43, label %lor.lhs.false, label %land.lhs.true.46

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call44 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %27, i32 2)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %land.lhs.true.46, label %if.end.162

land.lhs.true.46:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i32, i32* %OrdPara.addr, align 4
  %tobool47 = icmp ne i32 %28, 0
  br i1 %tobool47, label %lor.lhs.false.48, label %land.lhs.true.53

lor.lhs.false.48:                                 ; preds = %land.lhs.true.46
  %29 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %30 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %cmp = icmp eq %struct.term* %29, %call49
  br i1 %cmp, label %land.lhs.true.53, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.48
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call51 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %31)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.end.162, label %land.lhs.true.53

land.lhs.true.53:                                 ; preds = %lor.lhs.false.50, %lor.lhs.false.48, %land.lhs.true.46
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call54 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %32)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.162

land.lhs.true.56:                                 ; preds = %land.lhs.true.53
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call57 = call i32 @clause_Number(%struct.CLAUSE_HELP* %33)
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call58 = call i32 @clause_Number(%struct.CLAUSE_HELP* %34)
  %cmp59 = icmp ne i32 %call57, %call58
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.162

land.lhs.true.60:                                 ; preds = %land.lhs.true.56
  %35 = load i32, i32* %Unit.addr, align 4
  %tobool61 = icmp ne i32 %35, 0
  br i1 %tobool61, label %lor.lhs.false.62, label %land.lhs.true.65

lor.lhs.false.62:                                 ; preds = %land.lhs.true.60
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call63 = call i32 @clause_Length(%struct.CLAUSE_HELP* %36)
  %cmp64 = icmp eq i32 %call63, 1
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.162

land.lhs.true.65:                                 ; preds = %lor.lhs.false.62, %land.lhs.true.60
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call66 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %37)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.162

if.then.68:                                       ; preds = %land.lhs.true.65
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call69 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %38)
  store i32 %call69, i32* %MaxVar, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %39, i32 %40)
  call void @cont_Check()
  %call70 = call %struct.binding* @cont_LeftContext()
  %41 = load %struct.term*, %struct.term** %Term, align 8
  %call71 = call %struct.binding* @cont_RightContext()
  %42 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call72 = call i32 @unify_UnifyNoOC(%struct.binding* %call70, %struct.term* %41, %struct.binding* %call71, %struct.term* %42)
  %call73 = call %struct.binding* @cont_LeftContext()
  %call74 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call73, %struct.subst** %Subst, %struct.binding* %call74, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %43 = load i32, i32* %MaxPara.addr, align 4
  %tobool75 = icmp ne i32 %43, 0
  br i1 %tobool75, label %lor.lhs.false.76, label %if.then.79

lor.lhs.false.76:                                 ; preds = %if.then.68
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %45 = load i32, i32* %i.addr, align 4
  %46 = load %struct.subst*, %struct.subst** %Subst, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %48 = load i32, i32* %j, align 4
  %49 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %50 = load i32*, i32** %Flags.addr, align 8
  %51 = load i32*, i32** %Precedence.addr, align 8
  %call77 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %44, i32 %45, %struct.subst* %46, %struct.CLAUSE_HELP* %47, i32 %48, %struct.subst* %49, i32* %50, i32* %51)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.161

if.then.79:                                       ; preds = %lor.lhs.false.76, %if.then.68
  store %struct.term* null, %struct.term** %PartnerRight, align 8
  store %struct.term* null, %struct.term** %PartnerLeft, align 8
  store i32 1, i32* %Check, align 4
  store i32 1, i32* %PartnerCheck, align 4
  %52 = load i32, i32* %OrdPara.addr, align 4
  %tobool80 = icmp ne i32 %52, 0
  br i1 %tobool80, label %land.lhs.true.81, label %if.end.99

land.lhs.true.81:                                 ; preds = %if.then.79
  %53 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call82 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %53)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.99, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.81
  %54 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %55 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call85 = call %struct.term* @term_FirstArgument(%struct.term* %55)
  %cmp86 = icmp eq %struct.term* %54, %call85
  br i1 %cmp86, label %if.then.87, label %if.else.89

if.then.87:                                       ; preds = %if.then.84
  %56 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call88 = call %struct.term* @term_SecondArgument(%struct.term* %56)
  store %struct.term* %call88, %struct.term** %PartnerRight, align 8
  br label %if.end.91

if.else.89:                                       ; preds = %if.then.84
  %57 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call90 = call %struct.term* @term_FirstArgument(%struct.term* %57)
  store %struct.term* %call90, %struct.term** %PartnerRight, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.89, %if.then.87
  %58 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %59 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call92 = call %struct.term* @term_Copy(%struct.term* %59)
  %call93 = call %struct.term* @subst_Apply(%struct.subst* %58, %struct.term* %call92)
  store %struct.term* %call93, %struct.term** %PartnerLeft, align 8
  %60 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %61 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call94 = call %struct.term* @term_Copy(%struct.term* %61)
  %call95 = call %struct.term* @subst_Apply(%struct.subst* %60, %struct.term* %call94)
  store %struct.term* %call95, %struct.term** %PartnerRight, align 8
  %62 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %63 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %64 = load i32*, i32** %Flags.addr, align 8
  %65 = load i32*, i32** %Precedence.addr, align 8
  %call96 = call i32 @ord_Compare(%struct.term* %62, %struct.term* %63, i32* %64, i32* %65)
  %call97 = call i32 @ord_SmallerThan()
  %cmp98 = icmp ne i32 %call96, %call97
  %conv = zext i1 %cmp98 to i32
  store i32 %conv, i32* %PartnerCheck, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.91, %land.lhs.true.81, %if.then.79
  %66 = load i32, i32* %PartnerCheck, align 4
  %tobool100 = icmp ne i32 %66, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.123

land.lhs.true.101:                                ; preds = %if.end.99
  %67 = load i32, i32* %MaxPara.addr, align 4
  %tobool102 = icmp ne i32 %67, 0
  br i1 %tobool102, label %land.lhs.true.103, label %if.end.123

land.lhs.true.103:                                ; preds = %land.lhs.true.101
  %68 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call104 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %68)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.123, label %if.then.106

if.then.106:                                      ; preds = %land.lhs.true.103
  %69 = load i32, i32* %Left.addr, align 4
  %tobool107 = icmp ne i32 %69, 0
  br i1 %tobool107, label %if.then.108, label %if.else.111

if.then.108:                                      ; preds = %if.then.106
  %70 = load %struct.term*, %struct.term** %Atom, align 8
  %call109 = call %struct.term* @term_FirstArgument(%struct.term* %70)
  store %struct.term* %call109, %struct.term** %NewLeft, align 8
  %71 = load %struct.term*, %struct.term** %Atom, align 8
  %call110 = call %struct.term* @term_SecondArgument(%struct.term* %71)
  store %struct.term* %call110, %struct.term** %NewRight, align 8
  br label %if.end.114

if.else.111:                                      ; preds = %if.then.106
  %72 = load %struct.term*, %struct.term** %Atom, align 8
  %call112 = call %struct.term* @term_SecondArgument(%struct.term* %72)
  store %struct.term* %call112, %struct.term** %NewLeft, align 8
  %73 = load %struct.term*, %struct.term** %Atom, align 8
  %call113 = call %struct.term* @term_FirstArgument(%struct.term* %73)
  store %struct.term* %call113, %struct.term** %NewRight, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.108
  %74 = load %struct.subst*, %struct.subst** %Subst, align 8
  %75 = load %struct.term*, %struct.term** %NewLeft, align 8
  %call115 = call %struct.term* @term_Copy(%struct.term* %75)
  %call116 = call %struct.term* @subst_Apply(%struct.subst* %74, %struct.term* %call115)
  store %struct.term* %call116, %struct.term** %NewLeft, align 8
  %76 = load %struct.subst*, %struct.subst** %Subst, align 8
  %77 = load %struct.term*, %struct.term** %NewRight, align 8
  %call117 = call %struct.term* @term_Copy(%struct.term* %77)
  %call118 = call %struct.term* @subst_Apply(%struct.subst* %76, %struct.term* %call117)
  store %struct.term* %call118, %struct.term** %NewRight, align 8
  %78 = load %struct.term*, %struct.term** %NewLeft, align 8
  %79 = load %struct.term*, %struct.term** %NewRight, align 8
  %80 = load i32*, i32** %Flags.addr, align 8
  %81 = load i32*, i32** %Precedence.addr, align 8
  %call119 = call i32 @ord_Compare(%struct.term* %78, %struct.term* %79, i32* %80, i32* %81)
  %call120 = call i32 @ord_SmallerThan()
  %cmp121 = icmp ne i32 %call119, %call120
  %conv122 = zext i1 %cmp121 to i32
  store i32 %conv122, i32* %Check, align 4
  %82 = load %struct.term*, %struct.term** %NewLeft, align 8
  call void @term_Delete(%struct.term* %82)
  %83 = load %struct.term*, %struct.term** %NewRight, align 8
  call void @term_Delete(%struct.term* %83)
  br label %if.end.123

if.end.123:                                       ; preds = %if.end.114, %land.lhs.true.103, %land.lhs.true.101, %if.end.99
  %84 = load i32, i32* %Check, align 4
  %tobool124 = icmp ne i32 %84, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.150

land.lhs.true.125:                                ; preds = %if.end.123
  %85 = load i32, i32* %PartnerCheck, align 4
  %tobool126 = icmp ne i32 %85, 0
  br i1 %tobool126, label %if.then.127, label %if.end.150

if.then.127:                                      ; preds = %land.lhs.true.125
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %86 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %cmp128 = icmp eq %struct.term* %86, null
  br i1 %cmp128, label %if.then.130, label %if.end.141

if.then.130:                                      ; preds = %if.then.127
  %87 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %88 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call131 = call %struct.term* @term_FirstArgument(%struct.term* %88)
  %cmp132 = icmp eq %struct.term* %87, %call131
  br i1 %cmp132, label %if.then.134, label %if.else.136

if.then.134:                                      ; preds = %if.then.130
  %89 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call135 = call %struct.term* @term_SecondArgument(%struct.term* %89)
  store %struct.term* %call135, %struct.term** %PartnerRight, align 8
  br label %if.end.138

if.else.136:                                      ; preds = %if.then.130
  %90 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call137 = call %struct.term* @term_FirstArgument(%struct.term* %90)
  store %struct.term* %call137, %struct.term** %PartnerRight, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.136, %if.then.134
  %91 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %92 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call139 = call %struct.term* @term_Copy(%struct.term* %92)
  %call140 = call %struct.term* @subst_Apply(%struct.subst* %91, %struct.term* %call139)
  store %struct.term* %call140, %struct.term** %PartnerRight, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.138, %if.then.127
  %93 = load i32, i32* %Left.addr, align 4
  %tobool142 = icmp ne i32 %93, 0
  br i1 %tobool142, label %if.then.143, label %if.else.145

if.then.143:                                      ; preds = %if.end.141
  %94 = load %struct.term*, %struct.term** %Atom, align 8
  %95 = load %struct.term*, %struct.term** %Term, align 8
  %96 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %97 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call144 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %94, %struct.term* %95, %struct.term* %96, %struct.subst* %97)
  store %struct.term* %call144, %struct.term** %SupAtom, align 8
  br label %if.end.147

if.else.145:                                      ; preds = %if.end.141
  %98 = load %struct.term*, %struct.term** %Atom, align 8
  %99 = load %struct.term*, %struct.term** %Term, align 8
  %100 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %101 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call146 = call %struct.term* @inf_AllTermsRightRplac(%struct.term* %98, %struct.term* %99, %struct.term* %100, %struct.subst* %101)
  store %struct.term* %call146, %struct.term** %SupAtom, align 8
  br label %if.end.147

if.end.147:                                       ; preds = %if.else.145, %if.then.143
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %103 = load i32, i32* %j, align 4
  %104 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %106 = load i32, i32* %i.addr, align 4
  %107 = load %struct.subst*, %struct.subst** %Subst, align 8
  %108 = load %struct.term*, %struct.term** %SupAtom, align 8
  %109 = load i32, i32* %OrdPara.addr, align 4
  %110 = load i32, i32* %MaxPara.addr, align 4
  %111 = load i32*, i32** %Flags.addr, align 8
  %112 = load i32*, i32** %Precedence.addr, align 8
  %call148 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %102, i32 %103, %struct.subst* %104, %struct.CLAUSE_HELP* %105, i32 %106, %struct.subst* %107, %struct.term* %108, i32 1, i32 %109, i32 %110, i32* %111, i32* %112)
  %113 = bitcast %struct.CLAUSE_HELP* %call148 to i8*
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call149 = call %struct.LIST_HELP* @list_Cons(i8* %113, %struct.LIST_HELP* %114)
  store %struct.LIST_HELP* %call149, %struct.LIST_HELP** %Result, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.147, %land.lhs.true.125, %if.end.123
  %115 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %call151 = call %struct.term* @term_Null()
  %cmp152 = icmp ne %struct.term* %115, %call151
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.end.150
  %116 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  call void @term_Delete(%struct.term* %116)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.end.150
  %117 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call156 = call %struct.term* @term_Null()
  %cmp157 = icmp ne %struct.term* %117, %call156
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  %118 = load %struct.term*, %struct.term** %PartnerRight, align 8
  call void @term_Delete(%struct.term* %118)
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.155
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %lor.lhs.false.76
  %119 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %119)
  %120 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %120)
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.65, %lor.lhs.false.62, %land.lhs.true.56, %land.lhs.true.53, %lor.lhs.false.50, %lor.lhs.false, %for.body.37
  br label %for.inc

for.inc:                                          ; preds = %if.end.162
  %121 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call163 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %121)
  store %struct.LIST_HELP* %call163, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  br label %if.end.164

if.end.164:                                       ; preds = %for.end, %for.body.27
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %122 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call166 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %122)
  store %struct.LIST_HELP* %call166, %struct.LIST_HELP** %Parents, align 8
  br label %for.cond.23

for.end.167:                                      ; preds = %for.cond.23
  br label %for.inc.168

for.inc.168:                                      ; preds = %for.end.167
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call169 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %123)
  store %struct.LIST_HELP* %call169, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.170:                                      ; preds = %for.cond
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %124
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPRightLitToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.term* %Atom, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Atom.addr = alloca %struct.term*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %ParentList = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  %Term = alloca %struct.term*, align 8
  %PartnerTerm = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %Scl = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %MaxVar = alloca i32, align 4
  %PartnerLeft = alloca %struct.term*, align 8
  %PartnerRight = alloca %struct.term*, align 8
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %SupAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @stack_Bottom()
  store i32 %call1, i32* %Bottom, align 4
  %0 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  call void @sharing_PushListOnStack(%struct.LIST_HELP* %call2)
  br label %while.cond

while.cond:                                       ; preds = %if.end.107, %entry
  %1 = load i32, i32* %Bottom, align 4
  %call3 = call i32 @stack_Empty(i32 %1)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call4 = call i8* @stack_PopResult()
  %2 = bitcast i8* %call4 to %struct.term*
  store %struct.term* %2, %struct.term** %Term, align 8
  %3 = load %struct.term*, %struct.term** %Term, align 8
  %call5 = call i32 @term_IsVariable(%struct.term* %3)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.107, label %if.then

if.then:                                          ; preds = %while.body
  %call7 = call %struct.binding* @cont_LeftContext()
  %4 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call8 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %4)
  %call9 = call %struct.binding* @cont_RightContext()
  %5 = load %struct.term*, %struct.term** %Term, align 8
  %call10 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call7, %struct.st* %call8, %struct.binding* %call9, %struct.term* %5)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.104, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body, label %for.end.106

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call14 to %struct.term*
  store %struct.term* %8, %struct.term** %PartnerTerm, align 8
  %9 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call15 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %9)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.101, %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot19 = xor i1 %tobool18, true
  br i1 %lnot19, label %for.body.20, label %for.end.103

for.body.20:                                      ; preds = %for.cond.16
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call21 to %struct.term*
  store %struct.term* %12, %struct.term** %PartnerEq, align 8
  %13 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call22 = call i32 @fol_IsEquality(%struct.term* %13)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.100

if.then.24:                                       ; preds = %for.body.20
  %14 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call25 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %14)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc, %if.then.24
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end

for.body.30:                                      ; preds = %for.cond.26
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call31 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %17, %struct.LITERAL_HELP** %PartnerLit, align 8
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call32 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %18)
  store i32 %call32, i32* %j, align 4
  %19 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call33 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %19)
  store %struct.CLAUSE_HELP* %call33, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call34 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %20, i32 2)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.98, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.30
  %21 = load i32, i32* %MaxPara.addr, align 4
  %tobool36 = icmp ne i32 %21, 0
  br i1 %tobool36, label %lor.lhs.false, label %land.lhs.true.39

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call37 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %22, i32 2)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.98

land.lhs.true.39:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %23 = load i32, i32* %OrdPara.addr, align 4
  %tobool40 = icmp ne i32 %23, 0
  br i1 %tobool40, label %lor.lhs.false.41, label %land.lhs.true.46

lor.lhs.false.41:                                 ; preds = %land.lhs.true.39
  %24 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %25 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call42 = call %struct.term* @term_FirstArgument(%struct.term* %25)
  %cmp = icmp eq %struct.term* %24, %call42
  br i1 %cmp, label %land.lhs.true.46, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.41
  %26 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call44 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %26)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.98, label %land.lhs.true.46

land.lhs.true.46:                                 ; preds = %lor.lhs.false.43, %lor.lhs.false.41, %land.lhs.true.39
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call47 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %27)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.lhs.true.49, label %if.end.98

land.lhs.true.49:                                 ; preds = %land.lhs.true.46
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call50 = call i32 @clause_Number(%struct.CLAUSE_HELP* %28)
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call51 = call i32 @clause_Number(%struct.CLAUSE_HELP* %29)
  %cmp52 = icmp ne i32 %call50, %call51
  br i1 %cmp52, label %land.lhs.true.53, label %if.end.98

land.lhs.true.53:                                 ; preds = %land.lhs.true.49
  %30 = load i32, i32* %Unit.addr, align 4
  %tobool54 = icmp ne i32 %30, 0
  br i1 %tobool54, label %lor.lhs.false.55, label %land.lhs.true.58

lor.lhs.false.55:                                 ; preds = %land.lhs.true.53
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call56 = call i32 @clause_Length(%struct.CLAUSE_HELP* %31)
  %cmp57 = icmp eq i32 %call56, 1
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.98

land.lhs.true.58:                                 ; preds = %lor.lhs.false.55, %land.lhs.true.53
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call59 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %32)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.then.61, label %if.end.98

if.then.61:                                       ; preds = %land.lhs.true.58
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call62 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %33)
  store i32 %call62, i32* %MaxVar, align 4
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %35 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %34, i32 %35)
  call void @cont_Check()
  %call63 = call %struct.binding* @cont_LeftContext()
  %36 = load %struct.term*, %struct.term** %Term, align 8
  %call64 = call %struct.binding* @cont_RightContext()
  %37 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call65 = call i32 @unify_UnifyNoOC(%struct.binding* %call63, %struct.term* %36, %struct.binding* %call64, %struct.term* %37)
  %call66 = call %struct.binding* @cont_LeftContext()
  %call67 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call66, %struct.subst** %Subst, %struct.binding* %call67, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %38 = load i32, i32* %MaxPara.addr, align 4
  %tobool68 = icmp ne i32 %38, 0
  br i1 %tobool68, label %lor.lhs.false.69, label %if.then.72

lor.lhs.false.69:                                 ; preds = %if.then.61
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %i.addr, align 4
  %41 = load %struct.subst*, %struct.subst** %Subst, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %43 = load i32, i32* %j, align 4
  %44 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %45 = load i32*, i32** %Flags.addr, align 8
  %46 = load i32*, i32** %Precedence.addr, align 8
  %call70 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %39, i32 %40, %struct.subst* %41, %struct.CLAUSE_HELP* %42, i32 %43, %struct.subst* %44, i32* %45, i32* %46)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.72, label %if.end.97

if.then.72:                                       ; preds = %lor.lhs.false.69, %if.then.61
  %47 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %48 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call73 = call %struct.term* @term_Copy(%struct.term* %48)
  %call74 = call %struct.term* @subst_Apply(%struct.subst* %47, %struct.term* %call73)
  store %struct.term* %call74, %struct.term** %PartnerLeft, align 8
  %49 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %50 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call75 = call %struct.term* @term_FirstArgument(%struct.term* %50)
  %cmp76 = icmp eq %struct.term* %49, %call75
  br i1 %cmp76, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.then.72
  %51 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %52 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call78 = call %struct.term* @term_SecondArgument(%struct.term* %52)
  %call79 = call %struct.term* @term_Copy(%struct.term* %call78)
  %call80 = call %struct.term* @subst_Apply(%struct.subst* %51, %struct.term* %call79)
  store %struct.term* %call80, %struct.term** %PartnerRight, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.72
  %53 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %54 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call81 = call %struct.term* @term_FirstArgument(%struct.term* %54)
  %call82 = call %struct.term* @term_Copy(%struct.term* %call81)
  %call83 = call %struct.term* @subst_Apply(%struct.subst* %53, %struct.term* %call82)
  store %struct.term* %call83, %struct.term** %PartnerRight, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.77
  %55 = load i32, i32* %OrdPara.addr, align 4
  %tobool84 = icmp ne i32 %55, 0
  br i1 %tobool84, label %lor.lhs.false.85, label %if.then.92

lor.lhs.false.85:                                 ; preds = %if.end
  %56 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call86 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %56)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.92, label %lor.lhs.false.88

lor.lhs.false.88:                                 ; preds = %lor.lhs.false.85
  %57 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %58 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %59 = load i32*, i32** %Flags.addr, align 8
  %60 = load i32*, i32** %Precedence.addr, align 8
  %call89 = call i32 @ord_Compare(%struct.term* %57, %struct.term* %58, i32* %59, i32* %60)
  %call90 = call i32 @ord_SmallerThan()
  %cmp91 = icmp ne i32 %call89, %call90
  br i1 %cmp91, label %if.then.92, label %if.end.96

if.then.92:                                       ; preds = %lor.lhs.false.88, %lor.lhs.false.85, %if.end
  %61 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %62 = load %struct.term*, %struct.term** %Term, align 8
  %63 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %64 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call93 = call %struct.term* @inf_AllTermsRplac(%struct.term* %61, %struct.term* %62, %struct.term* %63, %struct.subst* %64)
  store %struct.term* %call93, %struct.term** %SupAtom, align 8
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %66 = load i32, i32* %j, align 4
  %67 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %69 = load i32, i32* %i.addr, align 4
  %70 = load %struct.subst*, %struct.subst** %Subst, align 8
  %71 = load %struct.term*, %struct.term** %SupAtom, align 8
  %72 = load i32, i32* %OrdPara.addr, align 4
  %73 = load i32, i32* %MaxPara.addr, align 4
  %74 = load i32*, i32** %Flags.addr, align 8
  %75 = load i32*, i32** %Precedence.addr, align 8
  %call94 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %65, i32 %66, %struct.subst* %67, %struct.CLAUSE_HELP* %68, i32 %69, %struct.subst* %70, %struct.term* %71, i32 1, i32 %72, i32 %73, i32* %74, i32* %75)
  %76 = bitcast %struct.CLAUSE_HELP* %call94 to i8*
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call95 = call %struct.LIST_HELP* @list_Cons(i8* %76, %struct.LIST_HELP* %77)
  store %struct.LIST_HELP* %call95, %struct.LIST_HELP** %Result, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.92, %lor.lhs.false.88
  %78 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  call void @term_Delete(%struct.term* %78)
  %79 = load %struct.term*, %struct.term** %PartnerRight, align 8
  call void @term_Delete(%struct.term* %79)
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %lor.lhs.false.69
  %80 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %80)
  %81 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %81)
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %land.lhs.true.58, %lor.lhs.false.55, %land.lhs.true.49, %land.lhs.true.46, %lor.lhs.false.43, %lor.lhs.false, %for.body.30
  br label %for.inc

for.inc:                                          ; preds = %if.end.98
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call99 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %82)
  store %struct.LIST_HELP* %call99, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.26

for.end:                                          ; preds = %for.cond.26
  br label %if.end.100

if.end.100:                                       ; preds = %for.end, %for.body.20
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call102 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %83)
  store %struct.LIST_HELP* %call102, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.16

for.end.103:                                      ; preds = %for.cond.16
  br label %for.inc.104

for.inc.104:                                      ; preds = %for.end.103
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call105 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call105, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.106:                                      ; preds = %for.cond
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %85
}

declare void @sharing_PushListOnStack(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @stack_PopResult() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  %dec = add i32 %0, -1
  store i32 %dec, i32* @stack_POINTER, align 4
  %idxprom = zext i32 %dec to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @stack_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #1 {
entry:
  ret %struct.term* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @term_IsAtom(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  ret i32 %call1
}

declare i32 @term_HasPointerSubterm(%struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ord_GreaterThan() #1 {
entry:
  ret i32 3
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

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_Lit2MParamod(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %i, i32 %j, %struct.term* %s, %struct.term* %t, %struct.term* %s2, %struct.term* %v, %struct.term* %u_tau, %struct.subst* %tau, i32* %Flags, i32* %Precedence) #0 {
entry:
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %s.addr = alloca %struct.term*, align 8
  %t.addr = alloca %struct.term*, align 8
  %s2.addr = alloca %struct.term*, align 8
  %v.addr = alloca %struct.term*, align 8
  %u_tau.addr = alloca %struct.term*, align 8
  %tau.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %k = alloca i32, align 4
  %last = alloca i32, align 4
  %partnerLit2 = alloca %struct.LITERAL_HELP*, align 8
  %partnerAtom2 = alloca %struct.term*, align 8
  %rho = alloca %struct.subst*, align 8
  %pLeft2 = alloca %struct.term*, align 8
  %pRight2 = alloca %struct.term*, align 8
  %s_sigma = alloca %struct.term*, align 8
  %t_sigma = alloca %struct.term*, align 8
  %v2_sigma = alloca %struct.term*, align 8
  %ordResult = alloca i32, align 4
  %checkPassed = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.term* %s, %struct.term** %s.addr, align 8
  store %struct.term* %t, %struct.term** %t.addr, align 8
  store %struct.term* %s2, %struct.term** %s2.addr, align 8
  store %struct.term* %v, %struct.term** %v.addr, align 8
  store %struct.term* %u_tau, %struct.term** %u_tau.addr, align 8
  store %struct.subst* %tau, %struct.subst** %tau.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %last, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %k, align 4
  %3 = load i32, i32* %last, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %5 = load i32, i32* %k, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %partnerLit2, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %partnerLit2, align 8
  %call4 = call %struct.term* @clause_LiteralSignedAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %partnerAtom2, align 8
  %7 = load i32, i32* %k, align 4
  %8 = load i32, i32* %j.addr, align 4
  %cmp5 = icmp ne i32 %7, %8
  br i1 %cmp5, label %land.lhs.true, label %if.end.87

land.lhs.true:                                    ; preds = %for.body
  %9 = load %struct.term*, %struct.term** %partnerAtom2, align 8
  %call6 = call i32 @fol_IsEquality(%struct.term* %9)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.end.87

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %11 = load %struct.term*, %struct.term** %partnerAtom2, align 8
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  %call8 = call %struct.term* @term_Copy(%struct.term* %call7)
  %call9 = call %struct.term* @subst_Apply(%struct.subst* %10, %struct.term* %call8)
  store %struct.term* %call9, %struct.term** %pLeft2, align 8
  %12 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %13 = load %struct.term*, %struct.term** %partnerAtom2, align 8
  %call10 = call %struct.term* @term_SecondArgument(%struct.term* %13)
  %call11 = call %struct.term* @term_Copy(%struct.term* %call10)
  %call12 = call %struct.term* @subst_Apply(%struct.subst* %12, %struct.term* %call11)
  store %struct.term* %call12, %struct.term** %pRight2, align 8
  call void @cont_Check()
  %call13 = call %struct.binding* @cont_LeftContext()
  %14 = load %struct.term*, %struct.term** %u_tau.addr, align 8
  %15 = load %struct.term*, %struct.term** %pLeft2, align 8
  %call14 = call i32 @unify_UnifyCom(%struct.binding* %call13, %struct.term* %14, %struct.term* %15)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.48

if.then.16:                                       ; preds = %if.then
  %call17 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call17, %struct.subst** %rho)
  store %struct.term* null, %struct.term** %t_sigma, align 8
  store %struct.term* null, %struct.term** %s_sigma, align 8
  store i32 1, i32* %checkPassed, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %17 = load i32, i32* %i.addr, align 4
  %call18 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %16, i32 %17)
  %call19 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.34, label %if.then.21

if.then.21:                                       ; preds = %if.then.16
  %18 = load %struct.subst*, %struct.subst** %rho, align 8
  %19 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %20 = load %struct.term*, %struct.term** %s.addr, align 8
  %call22 = call %struct.term* @term_Copy(%struct.term* %20)
  %call23 = call %struct.term* @subst_Apply(%struct.subst* %19, %struct.term* %call22)
  %call24 = call %struct.term* @subst_Apply(%struct.subst* %18, %struct.term* %call23)
  store %struct.term* %call24, %struct.term** %s_sigma, align 8
  %21 = load %struct.subst*, %struct.subst** %rho, align 8
  %22 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %23 = load %struct.term*, %struct.term** %t.addr, align 8
  %call25 = call %struct.term* @term_Copy(%struct.term* %23)
  %call26 = call %struct.term* @subst_Apply(%struct.subst* %22, %struct.term* %call25)
  %call27 = call %struct.term* @subst_Apply(%struct.subst* %21, %struct.term* %call26)
  store %struct.term* %call27, %struct.term** %t_sigma, align 8
  %24 = load %struct.term*, %struct.term** %s_sigma, align 8
  %25 = load %struct.term*, %struct.term** %t_sigma, align 8
  %26 = load i32*, i32** %Flags.addr, align 8
  %27 = load i32*, i32** %Precedence.addr, align 8
  %call28 = call i32 @ord_Compare(%struct.term* %24, %struct.term* %25, i32* %26, i32* %27)
  store i32 %call28, i32* %ordResult, align 4
  %28 = load i32, i32* %ordResult, align 4
  %call29 = call i32 @ord_SmallerThan()
  %cmp30 = icmp eq i32 %28, %call29
  br i1 %cmp30, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.21
  %29 = load i32, i32* %ordResult, align 4
  %call31 = call i32 @ord_Equal()
  %cmp32 = icmp eq i32 %29, %call31
  br i1 %cmp32, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.21
  store i32 0, i32* %checkPassed, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.33, %lor.lhs.false
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %if.then.16
  %30 = load i32, i32* %checkPassed, align 4
  %tobool35 = icmp ne i32 %30, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end.44

land.lhs.true.36:                                 ; preds = %if.end.34
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %32 = load i32, i32* %i.addr, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %34 = load i32, i32* %j.addr, align 4
  %35 = load %struct.subst*, %struct.subst** %rho, align 8
  %36 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %37 = load i32*, i32** %Flags.addr, align 8
  %38 = load i32*, i32** %Precedence.addr, align 8
  %call37 = call i32 @inf_LiteralsMaxWith2Subst(%struct.CLAUSE_HELP* %31, i32 %32, %struct.CLAUSE_HELP* %33, i32 %34, %struct.subst* %35, %struct.subst* %36, i32* %37, i32* %38)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.44

if.then.39:                                       ; preds = %land.lhs.true.36
  %39 = load %struct.subst*, %struct.subst** %rho, align 8
  %40 = load %struct.term*, %struct.term** %pRight2, align 8
  %call40 = call %struct.term* @term_Copy(%struct.term* %40)
  %call41 = call %struct.term* @subst_Apply(%struct.subst* %39, %struct.term* %call40)
  store %struct.term* %call41, %struct.term** %v2_sigma, align 8
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %43 = load i32, i32* %i.addr, align 4
  %44 = load i32, i32* %j.addr, align 4
  %45 = load i32, i32* %k, align 4
  %46 = load %struct.term*, %struct.term** %u_tau.addr, align 8
  %47 = load %struct.term*, %struct.term** %v.addr, align 8
  %48 = load %struct.term*, %struct.term** %s2.addr, align 8
  %49 = load %struct.term*, %struct.term** %t.addr, align 8
  %50 = load %struct.term*, %struct.term** %v2_sigma, align 8
  %51 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %52 = load %struct.subst*, %struct.subst** %rho, align 8
  %53 = load i32*, i32** %Flags.addr, align 8
  %54 = load i32*, i32** %Precedence.addr, align 8
  %call42 = call %struct.LIST_HELP* @inf_ApplyMParamod(%struct.CLAUSE_HELP* %41, %struct.CLAUSE_HELP* %42, i32 %43, i32 %44, i32 %45, %struct.term* %46, %struct.term* %47, %struct.term* %48, %struct.term* %49, %struct.term* %50, %struct.subst* %51, %struct.subst* %52, i32* %53, i32* %54)
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call43 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call42, %struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %result, align 8
  %56 = load %struct.term*, %struct.term** %v2_sigma, align 8
  call void @term_Delete(%struct.term* %56)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.39, %land.lhs.true.36, %if.end.34
  %57 = load %struct.term*, %struct.term** %s_sigma, align 8
  %cmp45 = icmp ne %struct.term* %57, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  %58 = load %struct.term*, %struct.term** %s_sigma, align 8
  call void @term_Delete(%struct.term* %58)
  %59 = load %struct.term*, %struct.term** %t_sigma, align 8
  call void @term_Delete(%struct.term* %59)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %if.end.44
  %60 = load %struct.subst*, %struct.subst** %rho, align 8
  call void @subst_Delete(%struct.subst* %60)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then
  call void @cont_Reset()
  %call49 = call %struct.binding* @cont_LeftContext()
  %61 = load %struct.term*, %struct.term** %u_tau.addr, align 8
  %62 = load %struct.term*, %struct.term** %pRight2, align 8
  %call50 = call i32 @unify_UnifyCom(%struct.binding* %call49, %struct.term* %61, %struct.term* %62)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.86

if.then.52:                                       ; preds = %if.end.48
  %call53 = call %struct.binding* @cont_LeftContext()
  call void @subst_ExtractUnifierCom(%struct.binding* %call53, %struct.subst** %rho)
  store %struct.term* null, %struct.term** %t_sigma, align 8
  store %struct.term* null, %struct.term** %s_sigma, align 8
  store i32 1, i32* %checkPassed, align 4
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %64 = load i32, i32* %i.addr, align 4
  %call54 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %63, i32 %64)
  %call55 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call54)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.end.72, label %if.then.57

if.then.57:                                       ; preds = %if.then.52
  %65 = load %struct.subst*, %struct.subst** %rho, align 8
  %66 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %67 = load %struct.term*, %struct.term** %s.addr, align 8
  %call58 = call %struct.term* @term_Copy(%struct.term* %67)
  %call59 = call %struct.term* @subst_Apply(%struct.subst* %66, %struct.term* %call58)
  %call60 = call %struct.term* @subst_Apply(%struct.subst* %65, %struct.term* %call59)
  store %struct.term* %call60, %struct.term** %s_sigma, align 8
  %68 = load %struct.subst*, %struct.subst** %rho, align 8
  %69 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %70 = load %struct.term*, %struct.term** %t.addr, align 8
  %call61 = call %struct.term* @term_Copy(%struct.term* %70)
  %call62 = call %struct.term* @subst_Apply(%struct.subst* %69, %struct.term* %call61)
  %call63 = call %struct.term* @subst_Apply(%struct.subst* %68, %struct.term* %call62)
  store %struct.term* %call63, %struct.term** %t_sigma, align 8
  %71 = load %struct.term*, %struct.term** %s_sigma, align 8
  %72 = load %struct.term*, %struct.term** %t_sigma, align 8
  %73 = load i32*, i32** %Flags.addr, align 8
  %74 = load i32*, i32** %Precedence.addr, align 8
  %call64 = call i32 @ord_Compare(%struct.term* %71, %struct.term* %72, i32* %73, i32* %74)
  store i32 %call64, i32* %ordResult, align 4
  %75 = load i32, i32* %ordResult, align 4
  %call65 = call i32 @ord_SmallerThan()
  %cmp66 = icmp eq i32 %75, %call65
  br i1 %cmp66, label %if.then.70, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %if.then.57
  %76 = load i32, i32* %ordResult, align 4
  %call68 = call i32 @ord_Equal()
  %cmp69 = icmp eq i32 %76, %call68
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %lor.lhs.false.67, %if.then.57
  store i32 0, i32* %checkPassed, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %lor.lhs.false.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.then.52
  %77 = load i32, i32* %checkPassed, align 4
  %tobool73 = icmp ne i32 %77, 0
  br i1 %tobool73, label %land.lhs.true.74, label %if.end.82

land.lhs.true.74:                                 ; preds = %if.end.72
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %79 = load i32, i32* %i.addr, align 4
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %81 = load i32, i32* %j.addr, align 4
  %82 = load %struct.subst*, %struct.subst** %rho, align 8
  %83 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %84 = load i32*, i32** %Flags.addr, align 8
  %85 = load i32*, i32** %Precedence.addr, align 8
  %call75 = call i32 @inf_LiteralsMaxWith2Subst(%struct.CLAUSE_HELP* %78, i32 %79, %struct.CLAUSE_HELP* %80, i32 %81, %struct.subst* %82, %struct.subst* %83, i32* %84, i32* %85)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %land.lhs.true.74
  %86 = load %struct.subst*, %struct.subst** %rho, align 8
  %87 = load %struct.term*, %struct.term** %pLeft2, align 8
  %call78 = call %struct.term* @term_Copy(%struct.term* %87)
  %call79 = call %struct.term* @subst_Apply(%struct.subst* %86, %struct.term* %call78)
  store %struct.term* %call79, %struct.term** %v2_sigma, align 8
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %90 = load i32, i32* %i.addr, align 4
  %91 = load i32, i32* %j.addr, align 4
  %92 = load i32, i32* %k, align 4
  %93 = load %struct.term*, %struct.term** %u_tau.addr, align 8
  %94 = load %struct.term*, %struct.term** %v.addr, align 8
  %95 = load %struct.term*, %struct.term** %s2.addr, align 8
  %96 = load %struct.term*, %struct.term** %t.addr, align 8
  %97 = load %struct.term*, %struct.term** %v2_sigma, align 8
  %98 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %99 = load %struct.subst*, %struct.subst** %rho, align 8
  %100 = load i32*, i32** %Flags.addr, align 8
  %101 = load i32*, i32** %Precedence.addr, align 8
  %call80 = call %struct.LIST_HELP* @inf_ApplyMParamod(%struct.CLAUSE_HELP* %88, %struct.CLAUSE_HELP* %89, i32 %90, i32 %91, i32 %92, %struct.term* %93, %struct.term* %94, %struct.term* %95, %struct.term* %96, %struct.term* %97, %struct.subst* %98, %struct.subst* %99, i32* %100, i32* %101)
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call81 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call80, %struct.LIST_HELP* %102)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %result, align 8
  %103 = load %struct.term*, %struct.term** %v2_sigma, align 8
  call void @term_Delete(%struct.term* %103)
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %land.lhs.true.74, %if.end.72
  %104 = load %struct.term*, %struct.term** %s_sigma, align 8
  %cmp83 = icmp ne %struct.term* %104, null
  br i1 %cmp83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.82
  %105 = load %struct.term*, %struct.term** %s_sigma, align 8
  call void @term_Delete(%struct.term* %105)
  %106 = load %struct.term*, %struct.term** %t_sigma, align 8
  call void @term_Delete(%struct.term* %106)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %if.end.82
  %107 = load %struct.subst*, %struct.subst** %rho, align 8
  call void @subst_Delete(%struct.subst* %107)
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %if.end.48
  call void @cont_Reset()
  %108 = load %struct.term*, %struct.term** %pLeft2, align 8
  call void @term_Delete(%struct.term* %108)
  %109 = load %struct.term*, %struct.term** %pRight2, align 8
  call void @term_Delete(%struct.term* %109)
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.87
  %110 = load i32, i32* %k, align 4
  %inc = add nsw i32 %110, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %111 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %111
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
define internal i32 @inf_LiteralsMaxWith2Subst(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.CLAUSE_HELP* %PartnerClause, i32 %j, %struct.subst* %Subst2, %struct.subst* %Subst1, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %PartnerClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %j.addr = alloca i32, align 4
  %Subst2.addr = alloca %struct.subst*, align 8
  %Subst1.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.CLAUSE_HELP* %PartnerClause, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %Subst2, %struct.subst** %Subst2.addr, align 8
  store %struct.subst* %Subst1, %struct.subst** %Subst1.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %0, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load i32, i32* %i.addr, align 4
  %3 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %4 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %5 = load i32, i32* %i.addr, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %6)
  %cmp = icmp sgt i32 %5, %call1
  %conv = zext i1 %cmp to i32
  %7 = load i32*, i32** %Flags.addr, align 8
  %8 = load i32*, i32** %Precedence.addr, align 8
  %call2 = call i32 @inf_LitMaxWith2Subst(%struct.CLAUSE_HELP* %1, i32 %2, i32 -1, %struct.subst* %3, %struct.subst* %4, i32 %conv, i32* %7, i32* %8)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call4 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %9, i32 2)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.13, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %if.end
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %11 = load i32, i32* %j.addr, align 4
  %12 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %13 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %14 = load i32, i32* %j.addr, align 4
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause.addr, align 8
  %call7 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %15)
  %cmp8 = icmp sgt i32 %14, %call7
  %conv9 = zext i1 %cmp8 to i32
  %16 = load i32*, i32** %Flags.addr, align 8
  %17 = load i32*, i32** %Precedence.addr, align 8
  %call10 = call i32 @inf_LitMaxWith2Subst(%struct.CLAUSE_HELP* %10, i32 %11, i32 -1, %struct.subst* %12, %struct.subst* %13, i32 %conv9, i32* %16, i32* %17)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true.6
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.6, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then.12, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_ApplyMParamod(%struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP* %C2, i32 %i, i32 %j, i32 %k, %struct.term* %u_tau, %struct.term* %v, %struct.term* %s2, %struct.term* %t, %struct.term* %v2_sigma, %struct.subst* %tau, %struct.subst* %rho, i32* %Flags, i32* %Precedence) #0 {
entry:
  %C1.addr = alloca %struct.CLAUSE_HELP*, align 8
  %C2.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %k.addr = alloca i32, align 4
  %u_tau.addr = alloca %struct.term*, align 8
  %v.addr = alloca %struct.term*, align 8
  %s2.addr = alloca %struct.term*, align 8
  %t.addr = alloca %struct.term*, align 8
  %v2_sigma.addr = alloca %struct.term*, align 8
  %tau.addr = alloca %struct.subst*, align 8
  %rho.addr = alloca %struct.subst*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %newClause = alloca %struct.CLAUSE_HELP*, align 8
  %u_sigma = alloca %struct.term*, align 8
  %m = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %ls = alloca i32, align 4
  %pls = alloca i32, align 4
  %pla = alloca i32, align 4
  %plc = alloca i32, align 4
  %help = alloca i32, align 4
  %newAtom = alloca %struct.term*, align 8
  %right = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %C1, %struct.CLAUSE_HELP** %C1.addr, align 8
  store %struct.CLAUSE_HELP* %C2, %struct.CLAUSE_HELP** %C2.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store i32 %k, i32* %k.addr, align 4
  store %struct.term* %u_tau, %struct.term** %u_tau.addr, align 8
  store %struct.term* %v, %struct.term** %v.addr, align 8
  store %struct.term* %s2, %struct.term** %s2.addr, align 8
  store %struct.term* %t, %struct.term** %t.addr, align 8
  store %struct.term* %v2_sigma, %struct.term** %v2_sigma.addr, align 8
  store %struct.subst* %tau, %struct.subst** %tau.addr, align 8
  store %struct.subst* %rho, %struct.subst** %rho.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %pls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %pla, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call2 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %plc, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call3 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call3, i32* %ls, align 4
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call4 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %4)
  store i32 %call4, i32* %la, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call5 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %5)
  store i32 %call5, i32* %lc, align 4
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call6 = call i32 @clause_Length(%struct.CLAUSE_HELP* %6)
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call7 = call i32 @clause_Length(%struct.CLAUSE_HELP* %7)
  %add = add nsw i32 %call6, %call7
  %sub = sub nsw i32 %add, 1
  %call8 = call %struct.CLAUSE_HELP* @clause_CreateBody(i32 %sub)
  store %struct.CLAUSE_HELP* %call8, %struct.CLAUSE_HELP** %newClause, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call9 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %9)
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call10 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %10)
  %add11 = add nsw i32 %call9, %call10
  call void @clause_SetNumOfConsLits(%struct.CLAUSE_HELP* %8, i32 %add11)
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call12 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %12)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call13 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %13)
  %add14 = add nsw i32 %call12, %call13
  call void @clause_SetNumOfAnteLits(%struct.CLAUSE_HELP* %11, i32 %add14)
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call15 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %15)
  %sub16 = sub nsw i32 %call15, 1
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call17 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %16)
  %add18 = add nsw i32 %sub16, %call17
  call void @clause_SetNumOfSuccLits(%struct.CLAUSE_HELP* %14, i32 %add18)
  %call19 = call i32 @clause_FirstLitIndex()
  store i32 %call19, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %17 = load i32, i32* %m, align 4
  %18 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %20 = load i32, i32* %m, align 4
  %21 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %22 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %24 = load i32, i32* %m, align 4
  %call20 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %23, i32 %24)
  %call21 = call %struct.term* @term_Copy(%struct.term* %call20)
  %call22 = call %struct.term* @subst_Apply(%struct.subst* %22, %struct.term* %call21)
  %call23 = call %struct.term* @subst_Apply(%struct.subst* %21, %struct.term* %call22)
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call24 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call23, %struct.CLAUSE_HELP* %25)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %19, i32 %20, %struct.LITERAL_HELP* %call24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %m, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call25 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %27)
  store i32 %call25, i32* %help, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.35, %for.end
  %28 = load i32, i32* %m, align 4
  %29 = load i32, i32* %la, align 4
  %cmp27 = icmp sle i32 %28, %29
  br i1 %cmp27, label %for.body.28, label %for.end.37

for.body.28:                                      ; preds = %for.cond.26
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %31 = load i32, i32* %m, align 4
  %32 = load i32, i32* %help, align 4
  %add29 = add nsw i32 %31, %32
  %33 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %34 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %36 = load i32, i32* %m, align 4
  %call30 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %35, i32 %36)
  %call31 = call %struct.term* @term_Copy(%struct.term* %call30)
  %call32 = call %struct.term* @subst_Apply(%struct.subst* %34, %struct.term* %call31)
  %call33 = call %struct.term* @subst_Apply(%struct.subst* %33, %struct.term* %call32)
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call34 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call33, %struct.CLAUSE_HELP* %37)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %30, i32 %add29, %struct.LITERAL_HELP* %call34)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.28
  %38 = load i32, i32* %m, align 4
  %inc36 = add nsw i32 %38, 1
  store i32 %inc36, i32* %m, align 4
  br label %for.cond.26

for.end.37:                                       ; preds = %for.cond.26
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call38 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %39)
  %40 = load i32, i32* %help, align 4
  %add39 = add nsw i32 %40, %call38
  store i32 %add39, i32* %help, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.50, %for.end.37
  %41 = load i32, i32* %m, align 4
  %42 = load i32, i32* %ls, align 4
  %cmp41 = icmp sle i32 %41, %42
  br i1 %cmp41, label %for.body.42, label %for.end.52

for.body.42:                                      ; preds = %for.cond.40
  %43 = load i32, i32* %m, align 4
  %44 = load i32, i32* %i.addr, align 4
  %cmp43 = icmp ne i32 %43, %44
  br i1 %cmp43, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.42
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %46 = load i32, i32* %m, align 4
  %47 = load i32, i32* %help, align 4
  %add44 = add nsw i32 %46, %47
  %48 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %49 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %51 = load i32, i32* %m, align 4
  %call45 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %50, i32 %51)
  %call46 = call %struct.term* @term_Copy(%struct.term* %call45)
  %call47 = call %struct.term* @subst_Apply(%struct.subst* %49, %struct.term* %call46)
  %call48 = call %struct.term* @subst_Apply(%struct.subst* %48, %struct.term* %call47)
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call49 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call48, %struct.CLAUSE_HELP* %52)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %45, i32 %add44, %struct.LITERAL_HELP* %call49)
  br label %if.end

if.else:                                          ; preds = %for.body.42
  %53 = load i32, i32* %help, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %help, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.50

for.inc.50:                                       ; preds = %if.end
  %54 = load i32, i32* %m, align 4
  %inc51 = add nsw i32 %54, 1
  store i32 %inc51, i32* %m, align 4
  br label %for.cond.40

for.end.52:                                       ; preds = %for.cond.40
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call53 = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %55)
  store i32 %call53, i32* %help, align 4
  %call54 = call i32 @clause_FirstLitIndex()
  store i32 %call54, i32* %m, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.64, %for.end.52
  %56 = load i32, i32* %m, align 4
  %57 = load i32, i32* %plc, align 4
  %cmp56 = icmp sle i32 %56, %57
  br i1 %cmp56, label %for.body.57, label %for.end.66

for.body.57:                                      ; preds = %for.cond.55
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %59 = load i32, i32* %m, align 4
  %60 = load i32, i32* %help, align 4
  %add58 = add nsw i32 %59, %60
  %61 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %62 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %63 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %64 = load i32, i32* %m, align 4
  %call59 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %63, i32 %64)
  %call60 = call %struct.term* @term_Copy(%struct.term* %call59)
  %call61 = call %struct.term* @subst_Apply(%struct.subst* %62, %struct.term* %call60)
  %call62 = call %struct.term* @subst_Apply(%struct.subst* %61, %struct.term* %call61)
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call63 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call62, %struct.CLAUSE_HELP* %65)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %58, i32 %add58, %struct.LITERAL_HELP* %call63)
  br label %for.inc.64

for.inc.64:                                       ; preds = %for.body.57
  %66 = load i32, i32* %m, align 4
  %inc65 = add nsw i32 %66, 1
  store i32 %inc65, i32* %m, align 4
  br label %for.cond.55

for.end.66:                                       ; preds = %for.cond.55
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call67 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %67)
  %68 = load i32, i32* %help, align 4
  %add68 = add nsw i32 %68, %call67
  store i32 %add68, i32* %help, align 4
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.78, %for.end.66
  %69 = load i32, i32* %m, align 4
  %70 = load i32, i32* %pla, align 4
  %cmp70 = icmp sle i32 %69, %70
  br i1 %cmp70, label %for.body.71, label %for.end.80

for.body.71:                                      ; preds = %for.cond.69
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %72 = load i32, i32* %m, align 4
  %73 = load i32, i32* %help, align 4
  %add72 = add nsw i32 %72, %73
  %74 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %75 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %77 = load i32, i32* %m, align 4
  %call73 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %76, i32 %77)
  %call74 = call %struct.term* @term_Copy(%struct.term* %call73)
  %call75 = call %struct.term* @subst_Apply(%struct.subst* %75, %struct.term* %call74)
  %call76 = call %struct.term* @subst_Apply(%struct.subst* %74, %struct.term* %call75)
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call77 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %call76, %struct.CLAUSE_HELP* %78)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %71, i32 %add72, %struct.LITERAL_HELP* %call77)
  br label %for.inc.78

for.inc.78:                                       ; preds = %for.body.71
  %79 = load i32, i32* %m, align 4
  %inc79 = add nsw i32 %79, 1
  store i32 %inc79, i32* %m, align 4
  br label %for.cond.69

for.end.80:                                       ; preds = %for.cond.69
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %call81 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %80)
  %sub82 = sub nsw i32 %call81, 1
  %81 = load i32, i32* %help, align 4
  %add83 = add nsw i32 %81, %sub82
  store i32 %add83, i32* %help, align 4
  %82 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %83 = load %struct.term*, %struct.term** %u_tau.addr, align 8
  %call84 = call %struct.term* @term_Copy(%struct.term* %83)
  %call85 = call %struct.term* @subst_Apply(%struct.subst* %82, %struct.term* %call84)
  store %struct.term* %call85, %struct.term** %u_sigma, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.123, %for.end.80
  %84 = load i32, i32* %m, align 4
  %85 = load i32, i32* %pls, align 4
  %cmp87 = icmp sle i32 %84, %85
  br i1 %cmp87, label %for.body.88, label %for.end.125

for.body.88:                                      ; preds = %for.cond.86
  %86 = load i32, i32* %m, align 4
  %87 = load i32, i32* %j.addr, align 4
  %cmp89 = icmp eq i32 %86, %87
  br i1 %cmp89, label %if.then.90, label %if.else.105

if.then.90:                                       ; preds = %for.body.88
  %88 = load %struct.term*, %struct.term** %v.addr, align 8
  %89 = load %struct.term*, %struct.term** %s2.addr, align 8
  %cmp91 = icmp eq %struct.term* %88, %89
  br i1 %cmp91, label %if.then.92, label %if.else.94

if.then.92:                                       ; preds = %if.then.90
  %90 = load %struct.term*, %struct.term** %t.addr, align 8
  %call93 = call %struct.term* @term_Copy(%struct.term* %90)
  store %struct.term* %call93, %struct.term** %right, align 8
  br label %if.end.97

if.else.94:                                       ; preds = %if.then.90
  %91 = load %struct.term*, %struct.term** %v.addr, align 8
  %call95 = call %struct.term* @term_Copy(%struct.term* %91)
  store %struct.term* %call95, %struct.term** %right, align 8
  %92 = load %struct.term*, %struct.term** %right, align 8
  %93 = load %struct.term*, %struct.term** %s2.addr, align 8
  %94 = load %struct.term*, %struct.term** %t.addr, align 8
  %call96 = call i32 @term_ReplaceSubtermBy(%struct.term* %92, %struct.term* %93, %struct.term* %94)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.92
  %call98 = call i32 @fol_Equality()
  %95 = load %struct.term*, %struct.term** %u_sigma, align 8
  %call99 = call %struct.term* @term_Copy(%struct.term* %95)
  %96 = bitcast %struct.term* %call99 to i8*
  %97 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %98 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %99 = load %struct.term*, %struct.term** %right, align 8
  %call100 = call %struct.term* @subst_Apply(%struct.subst* %98, %struct.term* %99)
  %call101 = call %struct.term* @subst_Apply(%struct.subst* %97, %struct.term* %call100)
  %100 = bitcast %struct.term* %call101 to i8*
  %call102 = call %struct.LIST_HELP* @list_List(i8* %100)
  %call103 = call %struct.LIST_HELP* @list_Cons(i8* %96, %struct.LIST_HELP* %call102)
  %call104 = call %struct.term* @term_Create(i32 %call98, %struct.LIST_HELP* %call103)
  store %struct.term* %call104, %struct.term** %newAtom, align 8
  br label %if.end.120

if.else.105:                                      ; preds = %for.body.88
  %101 = load i32, i32* %m, align 4
  %102 = load i32, i32* %k.addr, align 4
  %cmp106 = icmp eq i32 %101, %102
  br i1 %cmp106, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %if.else.105
  %call108 = call i32 @fol_Equality()
  %103 = load %struct.term*, %struct.term** %u_sigma, align 8
  %call109 = call %struct.term* @term_Copy(%struct.term* %103)
  %104 = bitcast %struct.term* %call109 to i8*
  %105 = load %struct.term*, %struct.term** %v2_sigma.addr, align 8
  %call110 = call %struct.term* @term_Copy(%struct.term* %105)
  %106 = bitcast %struct.term* %call110 to i8*
  %call111 = call %struct.LIST_HELP* @list_List(i8* %106)
  %call112 = call %struct.LIST_HELP* @list_Cons(i8* %104, %struct.LIST_HELP* %call111)
  %call113 = call %struct.term* @term_Create(i32 %call108, %struct.LIST_HELP* %call112)
  store %struct.term* %call113, %struct.term** %newAtom, align 8
  br label %if.end.119

if.else.114:                                      ; preds = %if.else.105
  %107 = load %struct.subst*, %struct.subst** %rho.addr, align 8
  %108 = load %struct.subst*, %struct.subst** %tau.addr, align 8
  %109 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %110 = load i32, i32* %m, align 4
  %call115 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %109, i32 %110)
  %call116 = call %struct.term* @term_Copy(%struct.term* %call115)
  %call117 = call %struct.term* @subst_Apply(%struct.subst* %108, %struct.term* %call116)
  %call118 = call %struct.term* @subst_Apply(%struct.subst* %107, %struct.term* %call117)
  store %struct.term* %call118, %struct.term** %newAtom, align 8
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.114, %if.then.107
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %if.end.97
  %111 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %112 = load i32, i32* %m, align 4
  %113 = load i32, i32* %help, align 4
  %add121 = add nsw i32 %112, %113
  %114 = load %struct.term*, %struct.term** %newAtom, align 8
  %115 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %call122 = call %struct.LITERAL_HELP* @clause_LiteralCreate(%struct.term* %114, %struct.CLAUSE_HELP* %115)
  call void @clause_SetLiteral(%struct.CLAUSE_HELP* %111, i32 %add121, %struct.LITERAL_HELP* %call122)
  br label %for.inc.123

for.inc.123:                                      ; preds = %if.end.120
  %116 = load i32, i32* %m, align 4
  %inc124 = add nsw i32 %116, 1
  store i32 %inc124, i32* %m, align 4
  br label %for.cond.86

for.end.125:                                      ; preds = %for.cond.86
  %117 = load %struct.term*, %struct.term** %u_sigma, align 8
  call void @term_Delete(%struct.term* %117)
  %118 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  call void @clause_SetFromMergingParamodulation(%struct.CLAUSE_HELP* %118)
  %119 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %120 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %call126 = call i32 @clause_Number(%struct.CLAUSE_HELP* %120)
  call void @clause_AddParentClause(%struct.CLAUSE_HELP* %119, i32 %call126)
  %121 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %122 = load i32, i32* %k.addr, align 4
  call void @clause_AddParentLiteral(%struct.CLAUSE_HELP* %121, i32 %122)
  %123 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %124 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C2.addr, align 8
  %125 = load i32, i32* %j.addr, align 4
  %126 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C1.addr, align 8
  %127 = load i32, i32* %k.addr, align 4
  %128 = load i32*, i32** %Flags.addr, align 8
  %129 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_SetDataFromParents(%struct.CLAUSE_HELP* %123, %struct.CLAUSE_HELP* %124, i32 %125, %struct.CLAUSE_HELP* %126, i32 %127, i32* %128, i32* %129)
  %130 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %131 = bitcast %struct.CLAUSE_HELP* %130 to i8*
  %call127 = call %struct.LIST_HELP* @list_List(i8* %131)
  ret %struct.LIST_HELP* %call127
}

; Function Attrs: nounwind uwtable
define internal i32 @inf_LitMaxWith2Subst(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %j, %struct.subst* %Subst2, %struct.subst* %Subst1, i32 %Strict, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca i32, align 4
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %j.addr = alloca i32, align 4
  %Subst2.addr = alloca %struct.subst*, align 8
  %Subst1.addr = alloca %struct.subst*, align 8
  %Strict.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Max = alloca %struct.term*, align 8
  %LitTerm = alloca %struct.term*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Compare = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %j, i32* %j.addr, align 4
  store %struct.subst* %Subst2, %struct.subst** %Subst2.addr, align 8
  store %struct.subst* %Subst1, %struct.subst** %Subst1.addr, align 8
  store i32 %Strict, i32* %Strict.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call, %struct.LITERAL_HELP** %Lit, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call1 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %Strict.addr, align 4
  %tobool2 = icmp ne i32 %3, 0
  br i1 %tobool2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call3 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %4, i32 2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call5 = call i32 @clause_NumOfAnteLits(%struct.CLAUSE_HELP* %5)
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_NumOfSuccLits(%struct.CLAUSE_HELP* %6)
  %add = add nsw i32 %call5, %call6
  %cmp = icmp eq i32 %add, 1
  br i1 %cmp, label %if.then.13, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %7 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %call8 = call i32 @subst_Empty(%struct.subst* %7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.14

land.lhs.true.10:                                 ; preds = %lor.lhs.false.7
  %8 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %call11 = call i32 @subst_Empty(%struct.subst* %8)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.10, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.10, %lor.lhs.false.7
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call15 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %9)
  store i32 %call15, i32* %l, align 4
  %10 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %12 = load i32, i32* %i.addr, align 4
  %call16 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %11, i32 %12)
  %call17 = call %struct.term* @term_Copy(%struct.term* %call16)
  %call18 = call %struct.term* @subst_Apply(%struct.subst* %10, %struct.term* %call17)
  store %struct.term* %call18, %struct.term** %Max, align 8
  %13 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %14 = load %struct.term*, %struct.term** %Max, align 8
  %call19 = call %struct.term* @subst_Apply(%struct.subst* %13, %struct.term* %14)
  store %struct.term* %call19, %struct.term** %Max, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call20 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %15)
  store i32 %call20, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %16 = load i32, i32* %k, align 4
  %17 = load i32, i32* %l, align 4
  %cmp21 = icmp sle i32 %16, %17
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %k, align 4
  %19 = load i32, i32* %i.addr, align 4
  %cmp22 = icmp ne i32 %18, %19
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.48

land.lhs.true.23:                                 ; preds = %for.body
  %20 = load i32, i32* %k, align 4
  %21 = load i32, i32* %j.addr, align 4
  %cmp24 = icmp ne i32 %20, %21
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.48

land.lhs.true.25:                                 ; preds = %land.lhs.true.23
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load i32, i32* %k, align 4
  %call26 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %22, i32 %23)
  %call27 = call i32 @clause_LiteralIsMaximal(%struct.LITERAL_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.48

if.then.29:                                       ; preds = %land.lhs.true.25
  %24 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %26 = load i32, i32* %k, align 4
  %call30 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %25, i32 %26)
  %call31 = call %struct.term* @term_Copy(%struct.term* %call30)
  %call32 = call %struct.term* @subst_Apply(%struct.subst* %24, %struct.term* %call31)
  store %struct.term* %call32, %struct.term** %LitTerm, align 8
  %27 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %28 = load %struct.term*, %struct.term** %LitTerm, align 8
  %call33 = call %struct.term* @subst_Apply(%struct.subst* %27, %struct.term* %28)
  store %struct.term* %call33, %struct.term** %LitTerm, align 8
  %29 = load %struct.term*, %struct.term** %Max, align 8
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %31 = load i32, i32* %i.addr, align 4
  %call34 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %30, i32 %31)
  %call35 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call34)
  %32 = load %struct.term*, %struct.term** %LitTerm, align 8
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %34 = load i32, i32* %k, align 4
  %call36 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %33, i32 %34)
  %call37 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %call36)
  %35 = load i32*, i32** %Flags.addr, align 8
  %36 = load i32*, i32** %Precedence.addr, align 8
  %call38 = call i32 @ord_LiteralCompare(%struct.term* %29, i32 %call35, %struct.term* %32, i32 %call37, i32 1, i32* %35, i32* %36)
  store i32 %call38, i32* %Compare, align 4
  %37 = load i32, i32* %Compare, align 4
  %call39 = call i32 @ord_SmallerThan()
  %cmp40 = icmp eq i32 %37, %call39
  br i1 %cmp40, label %if.then.46, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.then.29
  %38 = load i32, i32* %Strict.addr, align 4
  %tobool42 = icmp ne i32 %38, 0
  br i1 %tobool42, label %land.lhs.true.43, label %if.end.47

land.lhs.true.43:                                 ; preds = %lor.lhs.false.41
  %39 = load i32, i32* %Compare, align 4
  %call44 = call i32 @ord_Equal()
  %cmp45 = icmp eq i32 %39, %call44
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %land.lhs.true.43, %if.then.29
  %40 = load %struct.term*, %struct.term** %Max, align 8
  call void @term_Delete(%struct.term* %40)
  %41 = load %struct.term*, %struct.term** %LitTerm, align 8
  call void @term_Delete(%struct.term* %41)
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %land.lhs.true.43, %lor.lhs.false.41
  %42 = load %struct.term*, %struct.term** %LitTerm, align 8
  call void @term_Delete(%struct.term* %42)
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %land.lhs.true.25, %land.lhs.true.23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.48
  %43 = load i32, i32* %k, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.term*, %struct.term** %Max, align 8
  call void @term_Delete(%struct.term* %44)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.46, %if.then.13, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare i32 @term_ReplaceSubtermBy(%struct.term*, %struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromMergingParamodulation(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 5, i32* %origin, align 4
  ret void
}

declare void @sharing_PushReverseOnStack(%struct.term*) #2

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
define internal void @clause_SetFromGeneralResolution(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 13, i32* %origin, align 4
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
define internal void @clause_ClearFlags(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %flags = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 8
  store i32 0, i32* %flags, align 4
  ret void
}

declare void @clause_SubstApply(%struct.subst*, %struct.CLAUSE_HELP*) #2

declare void @clause_DeleteLiteral(%struct.CLAUSE_HELP*, i32, i32*, i32*) #2

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
define internal void @clause_SetFromGeneralFactoring(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 14, i32* %origin, align 4
  ret void
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
define internal i32 @clause_IncreaseCounter() #1 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @clause_CLAUSECOUNTER, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPLeftEqToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, i32 %Left, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Left.addr = alloca i32, align 4
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %ParentList = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %Term = alloca %struct.term*, align 8
  %PartnerTerm = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %Scl = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %MaxVar = alloca i32, align 4
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %PartnerLeft = alloca %struct.term*, align 8
  %PartnerRight = alloca %struct.term*, align 8
  %Check = alloca i32, align 4
  %PartnerCheck = alloca i32, align 4
  %NewLeft = alloca %struct.term*, align 8
  %NewRight = alloca %struct.term*, align 8
  %SupAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store i32 %Left, i32* %Left.addr, align 4
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call1, %struct.LITERAL_HELP** %Lit, align 8
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %2)
  store %struct.term* %call2, %struct.term** %Atom, align 8
  %call3 = call i32 @stack_Bottom()
  store i32 %call3, i32* %Bottom, align 4
  %3 = load i32, i32* %Left.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Atom, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  call void @sharing_PushOnStack(%struct.term* %call4)
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load %struct.term*, %struct.term** %Atom, align 8
  %call5 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  call void @sharing_PushOnStack(%struct.term* %call5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.169, %if.end
  %6 = load i32, i32* %Bottom, align 4
  %call6 = call i32 @stack_Empty(i32 %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call8 = call i8* @stack_PopResult()
  %7 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %7, %struct.term** %Term, align 8
  %8 = load %struct.term*, %struct.term** %Term, align 8
  %call9 = call i32 @term_IsVariable(%struct.term* %8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.169, label %if.then.11

if.then.11:                                       ; preds = %while.body
  %call12 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call13 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %9)
  %call14 = call %struct.binding* @cont_RightContext()
  %10 = load %struct.term*, %struct.term** %Term, align 8
  %call15 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call12, %struct.st* %call13, %struct.binding* %call14, %struct.term* %10)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.166, %if.then.11
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body, label %for.end.168

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call19 to %struct.term*
  store %struct.term* %13, %struct.term** %PartnerTerm, align 8
  %14 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call20 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %14)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.163, %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %15)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end.165

for.body.25:                                      ; preds = %for.cond.21
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call26 to %struct.term*
  store %struct.term* %17, %struct.term** %PartnerEq, align 8
  %18 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call27 = call i32 @fol_IsEquality(%struct.term* %18)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.162

if.then.29:                                       ; preds = %for.body.25
  %19 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call30 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %19)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc, %if.then.29
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot34 = xor i1 %tobool33, true
  br i1 %lnot34, label %for.body.35, label %for.end

for.body.35:                                      ; preds = %for.cond.31
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call36 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %22, %struct.LITERAL_HELP** %PartnerLit, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call37 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %23)
  store i32 %call37, i32* %j, align 4
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call38 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %24)
  store %struct.CLAUSE_HELP* %call38, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call39 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %25, i32 2)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.end.160, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.35
  %26 = load i32, i32* %MaxPara.addr, align 4
  %tobool41 = icmp ne i32 %26, 0
  br i1 %tobool41, label %lor.lhs.false, label %land.lhs.true.44

lor.lhs.false:                                    ; preds = %land.lhs.true
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call42 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %27, i32 2)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end.160

land.lhs.true.44:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %28 = load i32, i32* %OrdPara.addr, align 4
  %tobool45 = icmp ne i32 %28, 0
  br i1 %tobool45, label %lor.lhs.false.46, label %land.lhs.true.51

lor.lhs.false.46:                                 ; preds = %land.lhs.true.44
  %29 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %30 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call47 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %cmp = icmp eq %struct.term* %29, %call47
  br i1 %cmp, label %land.lhs.true.51, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.46
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call49 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %31)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.160, label %land.lhs.true.51

land.lhs.true.51:                                 ; preds = %lor.lhs.false.48, %lor.lhs.false.46, %land.lhs.true.44
  %32 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call52 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %32)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %land.lhs.true.54, label %if.end.160

land.lhs.true.54:                                 ; preds = %land.lhs.true.51
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call55 = call i32 @clause_Number(%struct.CLAUSE_HELP* %33)
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call56 = call i32 @clause_Number(%struct.CLAUSE_HELP* %34)
  %cmp57 = icmp ne i32 %call55, %call56
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.160

land.lhs.true.58:                                 ; preds = %land.lhs.true.54
  %35 = load i32, i32* %Unit.addr, align 4
  %tobool59 = icmp ne i32 %35, 0
  br i1 %tobool59, label %lor.lhs.false.60, label %land.lhs.true.63

lor.lhs.false.60:                                 ; preds = %land.lhs.true.58
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call61 = call i32 @clause_Length(%struct.CLAUSE_HELP* %36)
  %cmp62 = icmp eq i32 %call61, 1
  br i1 %cmp62, label %land.lhs.true.63, label %if.end.160

land.lhs.true.63:                                 ; preds = %lor.lhs.false.60, %land.lhs.true.58
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call64 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %37)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.160

if.then.66:                                       ; preds = %land.lhs.true.63
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call67 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %38)
  store i32 %call67, i32* %MaxVar, align 4
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %39, i32 %40)
  call void @cont_Check()
  %call68 = call %struct.binding* @cont_LeftContext()
  %41 = load %struct.term*, %struct.term** %Term, align 8
  %call69 = call %struct.binding* @cont_RightContext()
  %42 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call70 = call i32 @unify_UnifyNoOC(%struct.binding* %call68, %struct.term* %41, %struct.binding* %call69, %struct.term* %42)
  %call71 = call %struct.binding* @cont_LeftContext()
  %call72 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call71, %struct.subst** %Subst, %struct.binding* %call72, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %43 = load i32, i32* %MaxPara.addr, align 4
  %tobool73 = icmp ne i32 %43, 0
  br i1 %tobool73, label %lor.lhs.false.74, label %if.then.77

lor.lhs.false.74:                                 ; preds = %if.then.66
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %45 = load i32, i32* %i.addr, align 4
  %46 = load %struct.subst*, %struct.subst** %Subst, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %48 = load i32, i32* %j, align 4
  %49 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %50 = load i32*, i32** %Flags.addr, align 8
  %51 = load i32*, i32** %Precedence.addr, align 8
  %call75 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %44, i32 %45, %struct.subst* %46, %struct.CLAUSE_HELP* %47, i32 %48, %struct.subst* %49, i32* %50, i32* %51)
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %if.then.77, label %if.end.159

if.then.77:                                       ; preds = %lor.lhs.false.74, %if.then.66
  store %struct.term* null, %struct.term** %PartnerRight, align 8
  store %struct.term* null, %struct.term** %PartnerLeft, align 8
  store i32 1, i32* %Check, align 4
  store i32 1, i32* %PartnerCheck, align 4
  %52 = load i32, i32* %OrdPara.addr, align 4
  %tobool78 = icmp ne i32 %52, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.end.97

land.lhs.true.79:                                 ; preds = %if.then.77
  %53 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call80 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %53)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.97, label %if.then.82

if.then.82:                                       ; preds = %land.lhs.true.79
  %54 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %55 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call83 = call %struct.term* @term_FirstArgument(%struct.term* %55)
  %cmp84 = icmp eq %struct.term* %54, %call83
  br i1 %cmp84, label %if.then.85, label %if.else.87

if.then.85:                                       ; preds = %if.then.82
  %56 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call86 = call %struct.term* @term_SecondArgument(%struct.term* %56)
  store %struct.term* %call86, %struct.term** %PartnerRight, align 8
  br label %if.end.89

if.else.87:                                       ; preds = %if.then.82
  %57 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call88 = call %struct.term* @term_FirstArgument(%struct.term* %57)
  store %struct.term* %call88, %struct.term** %PartnerRight, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.85
  %58 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %59 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call90 = call %struct.term* @term_Copy(%struct.term* %59)
  %call91 = call %struct.term* @subst_Apply(%struct.subst* %58, %struct.term* %call90)
  store %struct.term* %call91, %struct.term** %PartnerLeft, align 8
  %60 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %61 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call92 = call %struct.term* @term_Copy(%struct.term* %61)
  %call93 = call %struct.term* @subst_Apply(%struct.subst* %60, %struct.term* %call92)
  store %struct.term* %call93, %struct.term** %PartnerRight, align 8
  %62 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %63 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %64 = load i32*, i32** %Flags.addr, align 8
  %65 = load i32*, i32** %Precedence.addr, align 8
  %call94 = call i32 @ord_Compare(%struct.term* %62, %struct.term* %63, i32* %64, i32* %65)
  %call95 = call i32 @ord_SmallerThan()
  %cmp96 = icmp ne i32 %call94, %call95
  %conv = zext i1 %cmp96 to i32
  store i32 %conv, i32* %PartnerCheck, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.89, %land.lhs.true.79, %if.then.77
  %66 = load i32, i32* %PartnerCheck, align 4
  %tobool98 = icmp ne i32 %66, 0
  br i1 %tobool98, label %land.lhs.true.99, label %if.end.121

land.lhs.true.99:                                 ; preds = %if.end.97
  %67 = load i32, i32* %MaxPara.addr, align 4
  %tobool100 = icmp ne i32 %67, 0
  br i1 %tobool100, label %land.lhs.true.101, label %if.end.121

land.lhs.true.101:                                ; preds = %land.lhs.true.99
  %68 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call102 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %68)
  %tobool103 = icmp ne i32 %call102, 0
  br i1 %tobool103, label %if.end.121, label %if.then.104

if.then.104:                                      ; preds = %land.lhs.true.101
  %69 = load i32, i32* %Left.addr, align 4
  %tobool105 = icmp ne i32 %69, 0
  br i1 %tobool105, label %if.then.106, label %if.else.109

if.then.106:                                      ; preds = %if.then.104
  %70 = load %struct.term*, %struct.term** %Atom, align 8
  %call107 = call %struct.term* @term_FirstArgument(%struct.term* %70)
  store %struct.term* %call107, %struct.term** %NewLeft, align 8
  %71 = load %struct.term*, %struct.term** %Atom, align 8
  %call108 = call %struct.term* @term_SecondArgument(%struct.term* %71)
  store %struct.term* %call108, %struct.term** %NewRight, align 8
  br label %if.end.112

if.else.109:                                      ; preds = %if.then.104
  %72 = load %struct.term*, %struct.term** %Atom, align 8
  %call110 = call %struct.term* @term_SecondArgument(%struct.term* %72)
  store %struct.term* %call110, %struct.term** %NewLeft, align 8
  %73 = load %struct.term*, %struct.term** %Atom, align 8
  %call111 = call %struct.term* @term_FirstArgument(%struct.term* %73)
  store %struct.term* %call111, %struct.term** %NewRight, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.else.109, %if.then.106
  %74 = load %struct.subst*, %struct.subst** %Subst, align 8
  %75 = load %struct.term*, %struct.term** %NewLeft, align 8
  %call113 = call %struct.term* @term_Copy(%struct.term* %75)
  %call114 = call %struct.term* @subst_Apply(%struct.subst* %74, %struct.term* %call113)
  store %struct.term* %call114, %struct.term** %NewLeft, align 8
  %76 = load %struct.subst*, %struct.subst** %Subst, align 8
  %77 = load %struct.term*, %struct.term** %NewRight, align 8
  %call115 = call %struct.term* @term_Copy(%struct.term* %77)
  %call116 = call %struct.term* @subst_Apply(%struct.subst* %76, %struct.term* %call115)
  store %struct.term* %call116, %struct.term** %NewRight, align 8
  %78 = load %struct.term*, %struct.term** %NewLeft, align 8
  %79 = load %struct.term*, %struct.term** %NewRight, align 8
  %80 = load i32*, i32** %Flags.addr, align 8
  %81 = load i32*, i32** %Precedence.addr, align 8
  %call117 = call i32 @ord_Compare(%struct.term* %78, %struct.term* %79, i32* %80, i32* %81)
  %call118 = call i32 @ord_SmallerThan()
  %cmp119 = icmp ne i32 %call117, %call118
  %conv120 = zext i1 %cmp119 to i32
  store i32 %conv120, i32* %Check, align 4
  %82 = load %struct.term*, %struct.term** %NewLeft, align 8
  call void @term_Delete(%struct.term* %82)
  %83 = load %struct.term*, %struct.term** %NewRight, align 8
  call void @term_Delete(%struct.term* %83)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.112, %land.lhs.true.101, %land.lhs.true.99, %if.end.97
  %84 = load i32, i32* %Check, align 4
  %tobool122 = icmp ne i32 %84, 0
  br i1 %tobool122, label %land.lhs.true.123, label %if.end.148

land.lhs.true.123:                                ; preds = %if.end.121
  %85 = load i32, i32* %PartnerCheck, align 4
  %tobool124 = icmp ne i32 %85, 0
  br i1 %tobool124, label %if.then.125, label %if.end.148

if.then.125:                                      ; preds = %land.lhs.true.123
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %86 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %cmp126 = icmp eq %struct.term* %86, null
  br i1 %cmp126, label %if.then.128, label %if.end.139

if.then.128:                                      ; preds = %if.then.125
  %87 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %88 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call129 = call %struct.term* @term_FirstArgument(%struct.term* %88)
  %cmp130 = icmp eq %struct.term* %87, %call129
  br i1 %cmp130, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %if.then.128
  %89 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call133 = call %struct.term* @term_SecondArgument(%struct.term* %89)
  store %struct.term* %call133, %struct.term** %PartnerRight, align 8
  br label %if.end.136

if.else.134:                                      ; preds = %if.then.128
  %90 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call135 = call %struct.term* @term_FirstArgument(%struct.term* %90)
  store %struct.term* %call135, %struct.term** %PartnerRight, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.132
  %91 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %92 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call137 = call %struct.term* @term_Copy(%struct.term* %92)
  %call138 = call %struct.term* @subst_Apply(%struct.subst* %91, %struct.term* %call137)
  store %struct.term* %call138, %struct.term** %PartnerRight, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.end.136, %if.then.125
  %93 = load i32, i32* %Left.addr, align 4
  %tobool140 = icmp ne i32 %93, 0
  br i1 %tobool140, label %if.then.141, label %if.else.143

if.then.141:                                      ; preds = %if.end.139
  %94 = load %struct.term*, %struct.term** %Atom, align 8
  %95 = load %struct.term*, %struct.term** %Term, align 8
  %96 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %97 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call142 = call %struct.term* @inf_AllTermsLeftRplac(%struct.term* %94, %struct.term* %95, %struct.term* %96, %struct.subst* %97)
  store %struct.term* %call142, %struct.term** %SupAtom, align 8
  br label %if.end.145

if.else.143:                                      ; preds = %if.end.139
  %98 = load %struct.term*, %struct.term** %Atom, align 8
  %99 = load %struct.term*, %struct.term** %Term, align 8
  %100 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %101 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call144 = call %struct.term* @inf_AllTermsRightRplac(%struct.term* %98, %struct.term* %99, %struct.term* %100, %struct.subst* %101)
  store %struct.term* %call144, %struct.term** %SupAtom, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.143, %if.then.141
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %103 = load i32, i32* %j, align 4
  %104 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %106 = load i32, i32* %i.addr, align 4
  %107 = load %struct.subst*, %struct.subst** %Subst, align 8
  %108 = load %struct.term*, %struct.term** %SupAtom, align 8
  %109 = load i32, i32* %OrdPara.addr, align 4
  %110 = load i32, i32* %MaxPara.addr, align 4
  %111 = load i32*, i32** %Flags.addr, align 8
  %112 = load i32*, i32** %Precedence.addr, align 8
  %call146 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %102, i32 %103, %struct.subst* %104, %struct.CLAUSE_HELP* %105, i32 %106, %struct.subst* %107, %struct.term* %108, i32 0, i32 %109, i32 %110, i32* %111, i32* %112)
  %113 = bitcast %struct.CLAUSE_HELP* %call146 to i8*
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call147 = call %struct.LIST_HELP* @list_Cons(i8* %113, %struct.LIST_HELP* %114)
  store %struct.LIST_HELP* %call147, %struct.LIST_HELP** %Result, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.end.145, %land.lhs.true.123, %if.end.121
  %115 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %call149 = call %struct.term* @term_Null()
  %cmp150 = icmp ne %struct.term* %115, %call149
  br i1 %cmp150, label %if.then.152, label %if.end.153

if.then.152:                                      ; preds = %if.end.148
  %116 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  call void @term_Delete(%struct.term* %116)
  br label %if.end.153

if.end.153:                                       ; preds = %if.then.152, %if.end.148
  %117 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %call154 = call %struct.term* @term_Null()
  %cmp155 = icmp ne %struct.term* %117, %call154
  br i1 %cmp155, label %if.then.157, label %if.end.158

if.then.157:                                      ; preds = %if.end.153
  %118 = load %struct.term*, %struct.term** %PartnerRight, align 8
  call void @term_Delete(%struct.term* %118)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.157, %if.end.153
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %lor.lhs.false.74
  %119 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %119)
  %120 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %120)
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %land.lhs.true.63, %lor.lhs.false.60, %land.lhs.true.54, %land.lhs.true.51, %lor.lhs.false.48, %lor.lhs.false, %for.body.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.160
  %121 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call161 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %121)
  store %struct.LIST_HELP* %call161, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.31

for.end:                                          ; preds = %for.cond.31
  br label %if.end.162

if.end.162:                                       ; preds = %for.end, %for.body.25
  br label %for.inc.163

for.inc.163:                                      ; preds = %if.end.162
  %122 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call164 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %122)
  store %struct.LIST_HELP* %call164, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.21

for.end.165:                                      ; preds = %for.cond.21
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.end.165
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call167 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %123)
  store %struct.LIST_HELP* %call167, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.168:                                      ; preds = %for.cond
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.168, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %124
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GenSPLeftLitToGiven(%struct.CLAUSE_HELP* %Clause, i32 %i, %struct.term* %Atom, %struct.SHARED_INDEX_NODE* %ShIndex, i32 %OrdPara, i32 %MaxPara, i32 %Unit, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %i.addr = alloca i32, align 4
  %Atom.addr = alloca %struct.term*, align 8
  %ShIndex.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %OrdPara.addr = alloca i32, align 4
  %MaxPara.addr = alloca i32, align 4
  %Unit.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %ParentList = alloca %struct.LIST_HELP*, align 8
  %Bottom = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %PartnerTerm = alloca %struct.term*, align 8
  %PartnerEq = alloca %struct.term*, align 8
  %PartnerClause = alloca %struct.CLAUSE_HELP*, align 8
  %PartnerLit = alloca %struct.LITERAL_HELP*, align 8
  %PartnerAtom = alloca %struct.term*, align 8
  %Scl = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %MaxVar = alloca i32, align 4
  %PartnerLeft = alloca %struct.term*, align 8
  %PartnerRight = alloca %struct.term*, align 8
  %Subst = alloca %struct.subst*, align 8
  %PartnerSubst = alloca %struct.subst*, align 8
  %SupAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.SHARED_INDEX_NODE* %ShIndex, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  store i32 %OrdPara, i32* %OrdPara.addr, align 4
  store i32 %MaxPara, i32* %MaxPara.addr, align 4
  store i32 %Unit, i32* %Unit.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load i32, i32* %i.addr, align 4
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %1)
  store %struct.LITERAL_HELP* %call1, %struct.LITERAL_HELP** %Lit, align 8
  %call2 = call i32 @stack_Bottom()
  store i32 %call2, i32* %Bottom, align 4
  %2 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  call void @sharing_PushListOnStack(%struct.LIST_HELP* %call3)
  br label %while.cond

while.cond:                                       ; preds = %if.end.109, %entry
  %3 = load i32, i32* %Bottom, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call5 = call i8* @stack_PopResult()
  %4 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %4, %struct.term** %Term, align 8
  %5 = load %struct.term*, %struct.term** %Term, align 8
  %call6 = call i32 @term_IsVariable(%struct.term* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.109, label %if.then

if.then:                                          ; preds = %while.body
  %call8 = call %struct.binding* @cont_LeftContext()
  %6 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %ShIndex.addr, align 8
  %call9 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %6)
  %call10 = call %struct.binding* @cont_RightContext()
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %call11 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call8, %struct.st* %call9, %struct.binding* %call10, %struct.term* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.106, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body, label %for.end.108

for.body:                                         ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call15 to %struct.term*
  store %struct.term* %10, %struct.term** %PartnerTerm, align 8
  %11 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call16 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %11)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.103, %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.105

for.body.21:                                      ; preds = %for.cond.17
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %14, %struct.term** %PartnerEq, align 8
  %15 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call23 = call i32 @fol_IsEquality(%struct.term* %15)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.102

if.then.25:                                       ; preds = %for.body.21
  %16 = load %struct.term*, %struct.term** %PartnerEq, align 8
  %call26 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %16)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc, %if.then.25
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot30 = xor i1 %tobool29, true
  br i1 %lnot30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.27
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call32 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %19, %struct.LITERAL_HELP** %PartnerLit, align 8
  %20 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call33 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %20)
  store i32 %call33, i32* %j, align 4
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call34 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %21)
  store %struct.CLAUSE_HELP* %call34, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call35 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %22)
  store %struct.term* %call35, %struct.term** %PartnerAtom, align 8
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call36 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %23, i32 2)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end.100, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body.31
  %24 = load i32, i32* %MaxPara.addr, align 4
  %tobool38 = icmp ne i32 %24, 0
  br i1 %tobool38, label %lor.lhs.false, label %land.lhs.true.41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call39 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %25, i32 2)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end.100

land.lhs.true.41:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %26 = load i32, i32* %OrdPara.addr, align 4
  %tobool42 = icmp ne i32 %26, 0
  br i1 %tobool42, label %lor.lhs.false.43, label %land.lhs.true.48

lor.lhs.false.43:                                 ; preds = %land.lhs.true.41
  %27 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %28 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call44 = call %struct.term* @term_FirstArgument(%struct.term* %28)
  %cmp = icmp eq %struct.term* %27, %call44
  br i1 %cmp, label %land.lhs.true.48, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.43
  %29 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call46 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %29)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.end.100, label %land.lhs.true.48

land.lhs.true.48:                                 ; preds = %lor.lhs.false.45, %lor.lhs.false.43, %land.lhs.true.41
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call49 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %30)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.100

land.lhs.true.51:                                 ; preds = %land.lhs.true.48
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call52 = call i32 @clause_Number(%struct.CLAUSE_HELP* %31)
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call53 = call i32 @clause_Number(%struct.CLAUSE_HELP* %32)
  %cmp54 = icmp ne i32 %call52, %call53
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.100

land.lhs.true.55:                                 ; preds = %land.lhs.true.51
  %33 = load i32, i32* %Unit.addr, align 4
  %tobool56 = icmp ne i32 %33, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %land.lhs.true.60

lor.lhs.false.57:                                 ; preds = %land.lhs.true.55
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call58 = call i32 @clause_Length(%struct.CLAUSE_HELP* %34)
  %cmp59 = icmp eq i32 %call58, 1
  br i1 %cmp59, label %land.lhs.true.60, label %if.end.100

land.lhs.true.60:                                 ; preds = %lor.lhs.false.57, %land.lhs.true.55
  %35 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call61 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %35)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.then.63, label %if.end.100

if.then.63:                                       ; preds = %land.lhs.true.60
  store %struct.term* null, %struct.term** %SupAtom, align 8
  %36 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %call64 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %36)
  store i32 %call64, i32* %MaxVar, align 4
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %38 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %37, i32 %38)
  call void @cont_Check()
  %call65 = call %struct.binding* @cont_LeftContext()
  %39 = load %struct.term*, %struct.term** %Term, align 8
  %call66 = call %struct.binding* @cont_RightContext()
  %40 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call67 = call i32 @unify_UnifyNoOC(%struct.binding* %call65, %struct.term* %39, %struct.binding* %call66, %struct.term* %40)
  %call68 = call %struct.binding* @cont_LeftContext()
  %call69 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call68, %struct.subst** %Subst, %struct.binding* %call69, %struct.subst** %PartnerSubst)
  call void @cont_Reset()
  %41 = load i32, i32* %MaxPara.addr, align 4
  %tobool70 = icmp ne i32 %41, 0
  br i1 %tobool70, label %lor.lhs.false.71, label %if.then.74

lor.lhs.false.71:                                 ; preds = %if.then.63
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %43 = load i32, i32* %i.addr, align 4
  %44 = load %struct.subst*, %struct.subst** %Subst, align 8
  %45 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %46 = load i32, i32* %j, align 4
  %47 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %48 = load i32*, i32** %Flags.addr, align 8
  %49 = load i32*, i32** %Precedence.addr, align 8
  %call72 = call i32 @inf_LiteralsMax(%struct.CLAUSE_HELP* %42, i32 %43, %struct.subst* %44, %struct.CLAUSE_HELP* %45, i32 %46, %struct.subst* %47, i32* %48, i32* %49)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.99

if.then.74:                                       ; preds = %lor.lhs.false.71, %if.then.63
  %50 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %51 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %call75 = call %struct.term* @term_Copy(%struct.term* %51)
  %call76 = call %struct.term* @subst_Apply(%struct.subst* %50, %struct.term* %call75)
  store %struct.term* %call76, %struct.term** %PartnerLeft, align 8
  %52 = load %struct.term*, %struct.term** %PartnerTerm, align 8
  %53 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call77 = call %struct.term* @term_FirstArgument(%struct.term* %53)
  %cmp78 = icmp eq %struct.term* %52, %call77
  br i1 %cmp78, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %if.then.74
  %54 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %55 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call80 = call %struct.term* @term_SecondArgument(%struct.term* %55)
  %call81 = call %struct.term* @term_Copy(%struct.term* %call80)
  %call82 = call %struct.term* @subst_Apply(%struct.subst* %54, %struct.term* %call81)
  store %struct.term* %call82, %struct.term** %PartnerRight, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.74
  %56 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %57 = load %struct.term*, %struct.term** %PartnerAtom, align 8
  %call83 = call %struct.term* @term_FirstArgument(%struct.term* %57)
  %call84 = call %struct.term* @term_Copy(%struct.term* %call83)
  %call85 = call %struct.term* @subst_Apply(%struct.subst* %56, %struct.term* %call84)
  store %struct.term* %call85, %struct.term** %PartnerRight, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.79
  %58 = load i32, i32* %OrdPara.addr, align 4
  %tobool86 = icmp ne i32 %58, 0
  br i1 %tobool86, label %lor.lhs.false.87, label %if.then.94

lor.lhs.false.87:                                 ; preds = %if.end
  %59 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PartnerLit, align 8
  %call88 = call i32 @clause_LiteralIsOrientedEquality(%struct.LITERAL_HELP* %59)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.94, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.87
  %60 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  %61 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %62 = load i32*, i32** %Flags.addr, align 8
  %63 = load i32*, i32** %Precedence.addr, align 8
  %call91 = call i32 @ord_Compare(%struct.term* %60, %struct.term* %61, i32* %62, i32* %63)
  %call92 = call i32 @ord_SmallerThan()
  %cmp93 = icmp ne i32 %call91, %call92
  br i1 %cmp93, label %if.then.94, label %if.end.98

if.then.94:                                       ; preds = %lor.lhs.false.90, %lor.lhs.false.87, %if.end
  %64 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %65 = load %struct.term*, %struct.term** %Term, align 8
  %66 = load %struct.term*, %struct.term** %PartnerRight, align 8
  %67 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call95 = call %struct.term* @inf_AllTermsRplac(%struct.term* %64, %struct.term* %65, %struct.term* %66, %struct.subst* %67)
  store %struct.term* %call95, %struct.term** %SupAtom, align 8
  %68 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerClause, align 8
  %69 = load i32, i32* %j, align 4
  %70 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %72 = load i32, i32* %i.addr, align 4
  %73 = load %struct.subst*, %struct.subst** %Subst, align 8
  %74 = load %struct.term*, %struct.term** %SupAtom, align 8
  %75 = load i32, i32* %OrdPara.addr, align 4
  %76 = load i32, i32* %MaxPara.addr, align 4
  %77 = load i32*, i32** %Flags.addr, align 8
  %78 = load i32*, i32** %Precedence.addr, align 8
  %call96 = call %struct.CLAUSE_HELP* @inf_ApplyGenSuperposition(%struct.CLAUSE_HELP* %68, i32 %69, %struct.subst* %70, %struct.CLAUSE_HELP* %71, i32 %72, %struct.subst* %73, %struct.term* %74, i32 0, i32 %75, i32 %76, i32* %77, i32* %78)
  %79 = bitcast %struct.CLAUSE_HELP* %call96 to i8*
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call97 = call %struct.LIST_HELP* @list_Cons(i8* %79, %struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call97, %struct.LIST_HELP** %Result, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.94, %lor.lhs.false.90
  %81 = load %struct.term*, %struct.term** %PartnerLeft, align 8
  call void @term_Delete(%struct.term* %81)
  %82 = load %struct.term*, %struct.term** %PartnerRight, align 8
  call void @term_Delete(%struct.term* %82)
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %lor.lhs.false.71
  %83 = load %struct.subst*, %struct.subst** %Subst, align 8
  call void @subst_Delete(%struct.subst* %83)
  %84 = load %struct.subst*, %struct.subst** %PartnerSubst, align 8
  call void @subst_Delete(%struct.subst* %84)
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %land.lhs.true.60, %lor.lhs.false.57, %land.lhs.true.51, %land.lhs.true.48, %lor.lhs.false.45, %lor.lhs.false, %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.100
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scl, align 8
  %call101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %Scl, align 8
  br label %for.cond.27

for.end:                                          ; preds = %for.cond.27
  br label %if.end.102

if.end.102:                                       ; preds = %for.end, %for.body.21
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentList, align 8
  %call104 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %86)
  store %struct.LIST_HELP* %call104, %struct.LIST_HELP** %ParentList, align 8
  br label %for.cond.17

for.end.105:                                      ; preds = %for.cond.17
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call107 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %87)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.108:                                      ; preds = %for.cond
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %88
}

declare void @sharing_PushOnStack(%struct.term*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GetAntecedentLiterals(%struct.CLAUSE_HELP* %Clause) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %lc = alloca i32, align 4
  %i = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lc, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  %6 = bitcast %struct.LITERAL_HELP* %call3 to i8*
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %6, %struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %9
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_HyperResolvents(%struct.CLAUSE_HELP* %Clause, %struct.subst* %Subst, %struct.LIST_HELP* %Restlits, i32 %GlobalMaxVar, %struct.LIST_HELP* %FoundMap, i32 %StrictlyMaximal, %struct.SHARED_INDEX_NODE* %Index, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Restlits.addr = alloca %struct.LIST_HELP*, align 8
  %GlobalMaxVar.addr = alloca i32, align 4
  %FoundMap.addr = alloca %struct.LIST_HELP*, align 8
  %StrictlyMaximal.addr = alloca i32, align 4
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %MapItem = alloca %struct.INF_MAPNODE*, align 8
  %PartnerCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NextLits = alloca %struct.LIST_HELP*, align 8
  %AtomCopy = alloca %struct.term*, align 8
  %NewSubst = alloca %struct.subst*, align 8
  %RightSubst = alloca %struct.subst*, align 8
  %HelpSubst = alloca %struct.subst*, align 8
  %NewMaxVar = alloca i32, align 4
  %PLitInd = alloca i32, align 4
  %Swapped = alloca i32, align 4
  %MapNode = alloca %struct.INF_MAPNODE, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.LIST_HELP* %Restlits, %struct.LIST_HELP** %Restlits.addr, align 8
  store i32 %GlobalMaxVar, i32* %GlobalMaxVar.addr, align 4
  store %struct.LIST_HELP* %FoundMap, %struct.LIST_HELP** %FoundMap.addr, align 8
  store i32 %StrictlyMaximal, i32* %StrictlyMaximal.addr, align 4
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %StrictlyMaximal.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.INF_MAPNODE*
  store %struct.INF_MAPNODE* %5, %struct.INF_MAPNODE** %MapItem, align 8
  %6 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %ElectronLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %6, i32 0, i32 1
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ElectronLit, align 8
  store %struct.LITERAL_HELP* %7, %struct.LITERAL_HELP** %Lit, align 8
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call6 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %8)
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call7 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %9)
  %10 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %11 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %ElectronSubst = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %11, i32 0, i32 2
  %12 = load %struct.subst*, %struct.subst** %ElectronSubst, align 8
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  %call8 = call i32 @inf_LitMaxWith2Subst(%struct.CLAUSE_HELP* %call6, i32 %call7, i32 -1, %struct.subst* %10, %struct.subst* %12, i32 1, i32* %13, i32* %14)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then.10

if.then.10:                                       ; preds = %for.body
  %call11 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.13

if.end.13:                                        ; preds = %for.end, %if.then
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %17 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %19 = load i32, i32* %StrictlyMaximal.addr, align 4
  %20 = load i32*, i32** %Flags.addr, align 8
  %21 = load i32*, i32** %Precedence.addr, align 8
  %call14 = call %struct.CLAUSE_HELP* @inf_BuildHyperResolvent(%struct.CLAUSE_HELP* %16, %struct.subst* %17, %struct.LIST_HELP* %18, i32 %19, i32* %20, i32* %21)
  %22 = bitcast %struct.CLAUSE_HELP* %call14 to i8*
  %call15 = call %struct.LIST_HELP* @list_List(i8* %22)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call16 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Result, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call17 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %23)
  %24 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %25 = load i32, i32* %GlobalMaxVar.addr, align 4
  %call18 = call %struct.LIST_HELP* @clause_MoveBestLiteralToFront(%struct.LIST_HELP* %call17, %struct.subst* %24, i32 %25, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)* @clause_HyperLiteralIsBetter)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Restlits.addr, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call19 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %27, %struct.LITERAL_HELP** %Lit, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call20 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Restlits.addr, align 8
  %29 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call21 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %30)
  %call22 = call %struct.term* @term_Copy(%struct.term* %call21)
  %call23 = call %struct.term* @subst_Apply(%struct.subst* %29, %struct.term* %call22)
  store %struct.term* %call23, %struct.term** %AtomCopy, align 8
  store i32 0, i32* %Swapped, align 4
  br label %while.body

while.body:                                       ; preds = %if.else, %if.end.67
  %31 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %32 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %33 = load i32, i32* %StrictlyMaximal.addr, align 4
  %call24 = call %struct.LIST_HELP* @inf_GetHyperResolutionPartnerLits(%struct.term* %31, %struct.SHARED_INDEX_NODE* %32, i32 %33)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %NextLits, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.59, %while.body
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  br i1 %lnot28, label %for.body.29, label %for.end.61

for.body.29:                                      ; preds = %for.cond.25
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call30 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %36, %struct.LITERAL_HELP** %PLit, align 8
  %37 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call31 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %37)
  store i32 %call31, i32* %PLitInd, align 4
  %38 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call32 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %38)
  %call33 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %call32)
  store %struct.CLAUSE_HELP* %call33, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %40 = load i32, i32* %GlobalMaxVar.addr, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %39, i32 %40)
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %42 = load i32, i32* %PLitInd, align 4
  %call34 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %41, i32 %42)
  store %struct.LITERAL_HELP* %call34, %struct.LITERAL_HELP** %PLit, align 8
  %43 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call35 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %43)
  %call36 = call i32 @term_MaxVar(%struct.term* %call35)
  store i32 %call36, i32* %NewMaxVar, align 4
  %44 = load i32, i32* %GlobalMaxVar.addr, align 4
  %45 = load i32, i32* %NewMaxVar, align 4
  %call37 = call i32 @symbol_GreaterVariable(i32 %44, i32 %45)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.29
  %46 = load i32, i32* %GlobalMaxVar.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.29
  %47 = load i32, i32* %NewMaxVar, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %46, %cond.true ], [ %47, %cond.false ]
  store i32 %cond, i32* %NewMaxVar, align 4
  call void @cont_Check()
  %call39 = call %struct.binding* @cont_LeftContext()
  %48 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call40 = call %struct.binding* @cont_RightContext()
  %49 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call41 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %49)
  %call42 = call i32 @unify_UnifyNoOC(%struct.binding* %call39, %struct.term* %48, %struct.binding* %call40, %struct.term* %call41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.48, label %if.then.44

if.then.44:                                       ; preds = %cond.end
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call45 = call i32 @fflush(%struct._IO_FILE* %50)
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 3815)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i32 0, i32 0))
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call47 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %52)
  call void @misc_DumpCore()
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.44, %cond.end
  %call49 = call %struct.binding* @cont_LeftContext()
  %call50 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call49, %struct.subst** %NewSubst, %struct.binding* %call50, %struct.subst** %RightSubst)
  call void @cont_Reset()
  %53 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  store %struct.subst* %53, %struct.subst** %HelpSubst, align 8
  %54 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %55 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call51 = call %struct.subst* @subst_Copy(%struct.subst* %55)
  %call52 = call %struct.subst* @subst_Compose(%struct.subst* %54, %struct.subst* %call51)
  store %struct.subst* %call52, %struct.subst** %NewSubst, align 8
  %56 = load %struct.subst*, %struct.subst** %HelpSubst, align 8
  call void @subst_Delete(%struct.subst* %56)
  %57 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %NucleusLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 0
  store %struct.LITERAL_HELP* %57, %struct.LITERAL_HELP** %NucleusLit, align 8
  %58 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %ElectronLit53 = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 1
  store %struct.LITERAL_HELP* %58, %struct.LITERAL_HELP** %ElectronLit53, align 8
  %59 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %ElectronSubst54 = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %MapNode, i32 0, i32 2
  store %struct.subst* %59, %struct.subst** %ElectronSubst54, align 8
  %60 = bitcast %struct.INF_MAPNODE* %MapNode to i8*
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call55 = call %struct.LIST_HELP* @list_Cons(i8* %60, %struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %FoundMap.addr, align 8
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %63 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %65 = load i32, i32* %NewMaxVar, align 4
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %67 = load i32, i32* %StrictlyMaximal.addr, align 4
  %68 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %69 = load i32*, i32** %Flags.addr, align 8
  %70 = load i32*, i32** %Precedence.addr, align 8
  %call56 = call %struct.LIST_HELP* @inf_HyperResolvents(%struct.CLAUSE_HELP* %62, %struct.subst* %63, %struct.LIST_HELP* %64, i32 %65, %struct.LIST_HELP* %66, i32 %67, %struct.SHARED_INDEX_NODE* %68, i32* %69, i32* %70)
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call57 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call56, %struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %Result, align 8
  %72 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  call void @subst_Delete(%struct.subst* %72)
  %73 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  call void @subst_Delete(%struct.subst* %73)
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %74)
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  %call58 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %FoundMap.addr, align 8
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.48
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call60 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %NextLits, align 8
  br label %for.cond.25

for.end.61:                                       ; preds = %for.cond.25
  %77 = load i32, i32* %Swapped, align 4
  %tobool62 = icmp ne i32 %77, 0
  br i1 %tobool62, label %if.else.66, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end.61
  %78 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call63 = call i32 @fol_IsEquality(%struct.term* %78)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %land.lhs.true
  %79 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @term_EqualitySwap(%struct.term* %79)
  store i32 1, i32* %Swapped, align 4
  br label %if.end.67

if.else.66:                                       ; preds = %land.lhs.true, %for.end.61
  br label %while.end

if.end.67:                                        ; preds = %if.then.65
  br label %while.body

while.end:                                        ; preds = %if.else.66
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %80)
  %81 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @term_Delete(%struct.term* %81)
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %82, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %while.end, %if.end.13, %if.then.10
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %83
}

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_BuildHyperResolvent(%struct.CLAUSE_HELP* %Nucleus, %struct.subst* %Subst, %struct.LIST_HELP* %FoundMap, i32 %StrictlyMaximal, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Nucleus.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %FoundMap.addr = alloca %struct.LIST_HELP*, align 8
  %StrictlyMaximal.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %Parents = alloca %struct.LIST_HELP*, align 8
  %ParentNum = alloca %struct.LIST_HELP*, align 8
  %ParentLits = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %bound = alloca i32, align 4
  %Depth = alloca i32, align 4
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %ESubst = alloca %struct.subst*, align 8
  %MapItem = alloca %struct.INF_MAPNODE*, align 8
  store %struct.CLAUSE_HELP* %Nucleus, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.LIST_HELP* %FoundMap, %struct.LIST_HELP** %FoundMap.addr, align 8
  store i32 %StrictlyMaximal, i32* %StrictlyMaximal.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %1 = bitcast %struct.CLAUSE_HELP* %0 to i8*
  %call = call %struct.LIST_HELP* @list_List(i8* %1)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Parents, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ParentNum, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ParentLits, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Succedent, align 8
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Constraint, align 8
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call4 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call4, i32* %bound, align 4
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call5 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %3)
  store i32 %call5, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %bound, align 4
  %cmp = icmp sle i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call6 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %7, i32 %8)
  %call7 = call %struct.term* @term_Copy(%struct.term* %call6)
  %call8 = call %struct.term* @subst_Apply(%struct.subst* %6, %struct.term* %call7)
  %9 = bitcast %struct.term* %call8 to i8*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Constraint, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call10 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %12)
  store i32 %call10, i32* %bound, align 4
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call11 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %13)
  store i32 %call11, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.19, %for.end
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* %bound, align 4
  %cmp13 = icmp sle i32 %14, %15
  br i1 %cmp13, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.12
  %16 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %18 = load i32, i32* %i, align 4
  %call15 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %17, i32 %18)
  %call16 = call %struct.term* @term_Copy(%struct.term* %call15)
  %call17 = call %struct.term* @subst_Apply(%struct.subst* %16, %struct.term* %call16)
  %19 = bitcast %struct.term* %call17 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Succedent, align 8
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.body.14
  %21 = load i32, i32* %i, align 4
  %inc20 = add nsw i32 %21, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond.12

for.end.21:                                       ; preds = %for.cond.12
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call22 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %22)
  store i32 %call22, i32* %Depth, align 4
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call23 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %23)
  store i32 %call23, i32* %bound, align 4
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call24 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %24)
  store i32 %call24, i32* %i, align 4
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.60, %for.end.21
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %bound, align 4
  %cmp26 = icmp sle i32 %25, %26
  br i1 %cmp26, label %for.body.27, label %for.end.62

for.body.27:                                      ; preds = %for.cond.25
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %28 = load i32, i32* %i, align 4
  %call28 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %27, i32 %28)
  store %struct.LITERAL_HELP* %call28, %struct.LITERAL_HELP** %Lit, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FoundMap.addr, align 8
  store %struct.LIST_HELP* %29, %struct.LIST_HELP** %Scan, align 8
  store %struct.INF_MAPNODE* null, %struct.INF_MAPNODE** %MapItem, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.34, %for.body.27
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %30)
  %tobool = icmp ne i32 %call30, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.31, label %for.end.36

for.body.31:                                      ; preds = %for.cond.29
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call32 to %struct.INF_MAPNODE*
  store %struct.INF_MAPNODE* %32, %struct.INF_MAPNODE** %MapItem, align 8
  %33 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %NucleusLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %33, i32 0, i32 0
  %34 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucleusLit, align 8
  %35 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %cmp33 = icmp eq %struct.LITERAL_HELP* %34, %35
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.31
  br label %for.end.36

if.end:                                           ; preds = %for.body.31
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.end.36:                                       ; preds = %if.then, %for.cond.29
  %37 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %cmp37 = icmp eq %struct.INF_MAPNODE* %37, null
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.36
  %38 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %NucleusLit38 = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %38, i32 0, i32 0
  %39 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NucleusLit38, align 8
  %40 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %cmp39 = icmp ne %struct.LITERAL_HELP* %39, %40
  br i1 %cmp39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %lor.lhs.false, %for.end.36
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call41 = call i32 @fflush(%struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i32 0, i32 0), i32 3637)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i32 0, i32 0))
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call43 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %43)
  call void @misc_DumpCore()
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %lor.lhs.false
  %44 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %ElectronLit = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %44, i32 0, i32 1
  %45 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %ElectronLit, align 8
  store %struct.LITERAL_HELP* %45, %struct.LITERAL_HELP** %Lit, align 8
  %46 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call45 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %46)
  store %struct.CLAUSE_HELP* %call45, %struct.CLAUSE_HELP** %NewClause, align 8
  %47 = load %struct.INF_MAPNODE*, %struct.INF_MAPNODE** %MapItem, align 8
  %ElectronSubst = getelementptr inbounds %struct.INF_MAPNODE, %struct.INF_MAPNODE* %47, i32 0, i32 2
  %48 = load %struct.subst*, %struct.subst** %ElectronSubst, align 8
  store %struct.subst* %48, %struct.subst** %ESubst, align 8
  %49 = load i32, i32* %Depth, align 4
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call46 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %50)
  %call47 = call i32 @misc_Max(i32 %49, i32 %call46)
  store i32 %call47, i32* %Depth, align 4
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %52 = bitcast %struct.CLAUSE_HELP* %51 to i8*
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  %call48 = call %struct.LIST_HELP* @list_Cons(i8* %52, %struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Parents, align 8
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Nucleus.addr, align 8
  %call49 = call i32 @clause_Number(%struct.CLAUSE_HELP* %54)
  %conv = sext i32 %call49 to i64
  %55 = inttoptr i64 %conv to i8*
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentNum, align 8
  %call50 = call %struct.LIST_HELP* @list_Cons(i8* %55, %struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %ParentNum, align 8
  %57 = load i32, i32* %i, align 4
  %conv51 = sext i32 %57 to i64
  %58 = inttoptr i64 %conv51 to i8*
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call52 = call %struct.LIST_HELP* @list_Cons(i8* %58, %struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %ParentLits, align 8
  %60 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call53 = call i32 @clause_Number(%struct.CLAUSE_HELP* %60)
  %conv54 = sext i32 %call53 to i64
  %61 = inttoptr i64 %conv54 to i8*
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentNum, align 8
  %call55 = call %struct.LIST_HELP* @list_Cons(i8* %61, %struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %ParentNum, align 8
  %63 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call56 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %63)
  %conv57 = sext i32 %call56 to i64
  %64 = inttoptr i64 %conv57 to i8*
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call58 = call %struct.LIST_HELP* @list_Cons(i8* %64, %struct.LIST_HELP* %65)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %ParentLits, align 8
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %67 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %68 = load %struct.subst*, %struct.subst** %ESubst, align 8
  %69 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call59 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %69)
  call void @inf_CopyHyperElectron(%struct.CLAUSE_HELP* %66, %struct.subst* %67, %struct.subst* %68, i32 %call59, %struct.LIST_HELP** %Constraint, %struct.LIST_HELP** %Succedent)
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.44
  %70 = load i32, i32* %i, align 4
  %inc61 = add nsw i32 %70, 1
  store i32 %inc61, i32* %i, align 4
  br label %for.cond.25

for.end.62:                                       ; preds = %for.cond.25
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call63 = call %struct.LIST_HELP* @list_Nil()
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %73 = load i32*, i32** %Flags.addr, align 8
  %74 = load i32*, i32** %Precedence.addr, align 8
  %call64 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %71, %struct.LIST_HELP* %call63, %struct.LIST_HELP* %72, i32* %73, i32* %74)
  store %struct.CLAUSE_HELP* %call64, %struct.CLAUSE_HELP** %NewClause, align 8
  %75 = load i32, i32* %StrictlyMaximal.addr, align 4
  %tobool65 = icmp ne i32 %75, 0
  br i1 %tobool65, label %if.then.66, label %if.else

if.then.66:                                       ; preds = %for.end.62
  %76 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromOrderedHyperResolution(%struct.CLAUSE_HELP* %76)
  br label %if.end.67

if.else:                                          ; preds = %for.end.62
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromSimpleHyperResolution(%struct.CLAUSE_HELP* %77)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else, %if.then.66
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %79 = load i32, i32* %Depth, align 4
  %add = add nsw i32 %79, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %78, i32 %add)
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @clause_SetSplitDataFromList(%struct.CLAUSE_HELP* %80, %struct.LIST_HELP* %81)
  %82 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentNum, align 8
  %call68 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %83)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %82, %struct.LIST_HELP* %call68)
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call69 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %85)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %84, %struct.LIST_HELP* %call69)
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Parents, align 8
  call void @list_Delete(%struct.LIST_HELP* %86)
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %87)
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %88)
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %89
}

declare %struct.LIST_HELP* @clause_MoveBestLiteralToFront(%struct.LIST_HELP*, %struct.subst*, i32, i32 (%struct.LITERAL_HELP*, i32, %struct.LITERAL_HELP*, i32)*) #2

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_HyperLiteralIsBetter(%struct.LITERAL_HELP* %Dummy1, i32 %S1, %struct.LITERAL_HELP* %Dummy2, i32 %S2) #1 {
entry:
  %Dummy1.addr = alloca %struct.LITERAL_HELP*, align 8
  %S1.addr = alloca i32, align 4
  %Dummy2.addr = alloca %struct.LITERAL_HELP*, align 8
  %S2.addr = alloca i32, align 4
  store %struct.LITERAL_HELP* %Dummy1, %struct.LITERAL_HELP** %Dummy1.addr, align 8
  store i32 %S1, i32* %S1.addr, align 4
  store %struct.LITERAL_HELP* %Dummy2, %struct.LITERAL_HELP** %Dummy2.addr, align 8
  store i32 %S2, i32* %S2.addr, align 4
  %0 = load i32, i32* %S1.addr, align 4
  %1 = load i32, i32* %S2.addr, align 4
  %cmp = icmp ugt i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GetHyperResolutionPartnerLits(%struct.term* %Atom, %struct.SHARED_INDEX_NODE* %Index, i32 %StrictlyMaximal) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %Index.addr = alloca %struct.SHARED_INDEX_NODE*, align 8
  %StrictlyMaximal.addr = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.SHARED_INDEX_NODE* %Index, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  store i32 %StrictlyMaximal, i32* %StrictlyMaximal.addr, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %Index.addr, align 8
  %call2 = call %struct.st* @sharing_Index(%struct.SHARED_INDEX_NODE* %0)
  %call3 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call4 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call1, %struct.st* %call2, %struct.binding* %call3, %struct.term* %1)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.33, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  %call7 = call i32 @term_IsVariable(%struct.term* %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.32, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.11
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call16 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %9, %struct.LITERAL_HELP** %NextLit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call17 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %10)
  store %struct.CLAUSE_HELP* %call17, %struct.CLAUSE_HELP** %Clause, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call18 = call i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %11)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.15
  %12 = load i32, i32* %StrictlyMaximal.addr, align 4
  %tobool20 = icmp ne i32 %12, 0
  br i1 %tobool20, label %lor.lhs.false, label %land.lhs.true.23

lor.lhs.false:                                    ; preds = %land.lhs.true
  %13 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call21 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %13, i32 2)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %land.lhs.true.23, label %if.end

land.lhs.true.23:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call24 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %14)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true.23
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call27 = call i32 @clause_HasEmptyAntecedent(%struct.CLAUSE_HELP* %15)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %land.lhs.true.26
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %17 = bitcast %struct.LITERAL_HELP* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %land.lhs.true.26, %land.lhs.true.23, %lor.lhs.false, %for.body.15
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.11

for.end:                                          ; preds = %for.cond.11
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %for.body
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.32
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call34 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.35:                                       ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %21
}

declare i32 @term_MaxVar(%struct.term*) #2

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

declare %struct.subst* @subst_Compose(%struct.subst*, %struct.subst*) #2

declare %struct.subst* @subst_Copy(%struct.subst*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @inf_CopyHyperElectron(%struct.CLAUSE_HELP* %Clause, %struct.subst* %Subst2, %struct.subst* %Subst1, i32 %PLitInd, %struct.LIST_HELP** %Constraint, %struct.LIST_HELP** %Succedent) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Subst2.addr = alloca %struct.subst*, align 8
  %Subst1.addr = alloca %struct.subst*, align 8
  %PLitInd.addr = alloca i32, align 4
  %Constraint.addr = alloca %struct.LIST_HELP**, align 8
  %Succedent.addr = alloca %struct.LIST_HELP**, align 8
  %Atom = alloca %struct.term*, align 8
  %n = alloca i32, align 4
  %lc = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.subst* %Subst2, %struct.subst** %Subst2.addr, align 8
  store %struct.subst* %Subst1, %struct.subst** %Subst1.addr, align 8
  store i32 %PLitInd, i32* %PLitInd.addr, align 4
  store %struct.LIST_HELP** %Constraint, %struct.LIST_HELP*** %Constraint.addr, align 8
  store %struct.LIST_HELP** %Succedent, %struct.LIST_HELP*** %Succedent.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %n, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call1, i32* %lc, align 4
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_FirstConstraintLitIndex(%struct.CLAUSE_HELP* %2)
  store i32 %call2, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %j, align 4
  %4 = load i32, i32* %n, align 4
  %cmp = icmp sle i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %j, align 4
  %6 = load i32, i32* %PLitInd.addr, align 4
  %cmp3 = icmp ne i32 %5, %6
  br i1 %cmp3, label %if.then, label %if.end.12

if.then:                                          ; preds = %for.body
  %7 = load %struct.subst*, %struct.subst** %Subst1.addr, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load i32, i32* %j, align 4
  %call4 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %9)
  %call5 = call %struct.term* @term_Copy(%struct.term* %call4)
  %call6 = call %struct.term* @subst_Apply(%struct.subst* %7, %struct.term* %call5)
  store %struct.term* %call6, %struct.term** %Atom, align 8
  %10 = load %struct.subst*, %struct.subst** %Subst2.addr, align 8
  %11 = load %struct.term*, %struct.term** %Atom, align 8
  %call7 = call %struct.term* @subst_Apply(%struct.subst* %10, %struct.term* %11)
  store %struct.term* %call7, %struct.term** %Atom, align 8
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %lc, align 4
  %cmp8 = icmp sle i32 %12, %13
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %14 = load %struct.term*, %struct.term** %Atom, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %16 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Constraint.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %16, align 8
  %call10 = call %struct.LIST_HELP* @list_Cons(i8* %15, %struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Constraint.addr, align 8
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %18, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct.term*, %struct.term** %Atom, align 8
  %20 = bitcast %struct.term* %19 to i8*
  %21 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Succedent.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %21, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %20, %struct.LIST_HELP* %22)
  %23 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Succedent.addr, align 8
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %24 = load i32, i32* %j, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromOrderedHyperResolution(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 11, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSimpleHyperResolution(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 10, i32* %origin, align 4
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

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

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
define internal i32 @clause_LiteralIsFromSuccedent(%struct.LITERAL_HELP* %Literal) #1 {
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

declare i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP*) #2

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
