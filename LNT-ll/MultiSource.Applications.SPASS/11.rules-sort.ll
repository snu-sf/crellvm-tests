; ModuleID = './MultiSource.Applications.SPASS/11.rules-sort.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.CONDITION_HELP = type { i32, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP* }

@fol_NOT = external global i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_RIGHTCONTEXT = external global %struct.binding*, align 8
@cont_BINDINGS = external global i32, align 4
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_STACKPOINTER = external global i32, align 4
@cont_INDEXVARSCANNER = external global i32, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [86 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/rules-sort.c\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"\0A In inf_BuildConstraintHyperResolvent: Unification failed.\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@clause_CLAUSECOUNTER = external global i32, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"\0AT_k = \00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"\0AS_k =\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c" in \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\0ASOJU: \00", align 1
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@cont_STACK = external global [1000 x i32], align 16

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_BackwardSortResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32 %Precheck, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Precheck.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %pLit = alloca %struct.LITERAL_HELP*, align 8
  %pAtom = alloca %struct.term*, align 8
  %termList = alloca %struct.LIST_HELP*, align 8
  %litScan = alloca %struct.LIST_HELP*, align 8
  %gLit = alloca %struct.LITERAL_HELP*, align 8
  %gClause = alloca %struct.CLAUSE_HELP*, align 8
  %gAtom = alloca %struct.term*, align 8
  %lc = alloca i32, align 4
  %gi = alloca i32, align 4
  %j = alloca i32, align 4
  %tLits = alloca %struct.LIST_HELP*, align 8
  %restLits = alloca %struct.LIST_HELP*, align 8
  %tCand = alloca %struct.LITERAL_HELP*, align 8
  %pClauseCopy = alloca %struct.CLAUSE_HELP*, align 8
  %minVar = alloca i32, align 4
  %foundLits = alloca %struct.LIST_HELP*, align 8
  %leftSubst = alloca %struct.subst*, align 8
  %rightSubst = alloca %struct.subst*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32 %Precheck, i32* %Precheck.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %ls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.90, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.92

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %pLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %pAtom, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call5 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %7, i32 2)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.89

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call6 = call i32 @clause_LiteralIsSort(%struct.LITERAL_HELP* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.89

if.then:                                          ; preds = %land.lhs.true
  %call8 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call9 = call %struct.binding* @cont_RightContext()
  %10 = load %struct.term*, %struct.term** %pAtom, align 8
  %call10 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call8, %struct.st* %9, %struct.binding* %call9, %struct.term* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %termList, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.86, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termList, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br i1 %lnot, label %for.body.14, label %for.end.88

for.body.14:                                      ; preds = %for.cond.11
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termList, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @term_IsAtom(%struct.term* %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.85

land.lhs.true.18:                                 ; preds = %for.body.14
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termList, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call19 to %struct.term*
  %call20 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  %call21 = call i32 @term_IsVariable(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.85, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.18
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termList, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call24 to %struct.term*
  %call25 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %17)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.82, %if.then.23
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end.84

for.body.30:                                      ; preds = %for.cond.26
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call31 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %20, %struct.LITERAL_HELP** %gLit, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call32 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %21)
  store %struct.CLAUSE_HELP* %call32, %struct.CLAUSE_HELP** %gClause, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call33 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %22)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call34 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %23)
  %cmp35 = icmp slt i32 %call33, %call34
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.81

land.lhs.true.36:                                 ; preds = %for.body.30
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call37 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %24, i32 1)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.81

if.then.39:                                       ; preds = %land.lhs.true.36
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call40 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %25)
  store %struct.term* %call40, %struct.term** %gAtom, align 8
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call41 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %26)
  store i32 %call41, i32* %lc, align 4
  %27 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call42 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %27)
  store i32 %call42, i32* %gi, align 4
  %28 = load i32, i32* %gi, align 4
  %conv = sext i32 %28 to i64
  %29 = inttoptr i64 %conv to i8*
  %call43 = call %struct.LIST_HELP* @list_List(i8* %29)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %tLits, align 8
  %call44 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %restLits, align 8
  %call45 = call i32 @clause_FirstLitIndex()
  store i32 %call45, i32* %j, align 4
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc, %if.then.39
  %30 = load i32, i32* %j, align 4
  %31 = load i32, i32* %lc, align 4
  %cmp47 = icmp sle i32 %30, %31
  br i1 %cmp47, label %for.body.49, label %for.end

for.body.49:                                      ; preds = %for.cond.46
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %33 = load i32, i32* %j, align 4
  %call50 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %32, i32 %33)
  store %struct.LITERAL_HELP* %call50, %struct.LITERAL_HELP** %tCand, align 8
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %gi, align 4
  %cmp51 = icmp ne i32 %34, %35
  br i1 %cmp51, label %land.lhs.true.53, label %if.end

land.lhs.true.53:                                 ; preds = %for.body.49
  %36 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tCand, align 8
  %call54 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %36)
  %call55 = call %struct.term* @term_FirstArgument(%struct.term* %call54)
  %37 = load %struct.term*, %struct.term** %gAtom, align 8
  %call56 = call %struct.term* @term_FirstArgument(%struct.term* %37)
  %cmp57 = icmp eq %struct.term* %call55, %call56
  br i1 %cmp57, label %if.then.59, label %if.end

if.then.59:                                       ; preds = %land.lhs.true.53
  %38 = load i32, i32* %j, align 4
  %conv60 = sext i32 %38 to i64
  %39 = inttoptr i64 %conv60 to i8*
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call61 = call %struct.LIST_HELP* @list_Cons(i8* %39, %struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %tLits, align 8
  %41 = load i32, i32* %j, align 4
  %conv62 = sext i32 %41 to i64
  %42 = inttoptr i64 %conv62 to i8*
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  %call63 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call63, %struct.LIST_HELP** %restLits, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.59, %land.lhs.true.53, %for.body.49
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %44 = load i32, i32* %j, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.46

for.end:                                          ; preds = %for.cond.46
  %45 = load i32, i32* %Precheck.addr, align 4
  %tobool64 = icmp ne i32 %45, 0
  br i1 %tobool64, label %lor.lhs.false, label %if.then.67

lor.lhs.false:                                    ; preds = %for.end
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %48 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %49 = load %struct.st*, %struct.st** %Index.addr, align 8
  %50 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call65 = call i32 @inf_SubsortPrecheck(%struct.CLAUSE_HELP* %46, %struct.LIST_HELP* %47, %struct.LITERAL_HELP* %48, %struct.st* %49, %struct.SORTTHEORY_HELP* %50)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %lor.lhs.false, %for.end
  %51 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call68 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %51)
  store %struct.CLAUSE_HELP* %call68, %struct.CLAUSE_HELP** %pClauseCopy, align 8
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call69 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %52)
  store i32 %call69, i32* %minVar, align 4
  %53 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %54 = bitcast %struct.LITERAL_HELP* %53 to i8*
  %call70 = call %struct.LIST_HELP* @list_List(i8* %54)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %foundLits, align 8
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClauseCopy, align 8
  %56 = load i32, i32* %minVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %55, i32 %56)
  %57 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClauseCopy, align 8
  %58 = load i32, i32* %i, align 4
  %call71 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %57, i32 %58)
  store %struct.term* %call71, %struct.term** %pAtom, align 8
  call void @cont_Check()
  %call72 = call %struct.binding* @cont_LeftContext()
  %59 = load %struct.term*, %struct.term** %gAtom, align 8
  %call73 = call %struct.binding* @cont_RightContext()
  %60 = load %struct.term*, %struct.term** %pAtom, align 8
  %call74 = call i32 @unify_UnifyNoOC(%struct.binding* %call72, %struct.term* %59, %struct.binding* %call73, %struct.term* %60)
  %call75 = call %struct.binding* @cont_LeftContext()
  %call76 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call75, %struct.subst** %leftSubst, %struct.binding* %call76, %struct.subst** %rightSubst)
  call void @cont_Reset()
  %61 = load %struct.subst*, %struct.subst** %rightSubst, align 8
  call void @subst_Delete(%struct.subst* %61)
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %64 = load %struct.subst*, %struct.subst** %leftSubst, align 8
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %foundLits, align 8
  %67 = load %struct.st*, %struct.st** %Index.addr, align 8
  %68 = load i32*, i32** %Flags.addr, align 8
  %69 = load i32*, i32** %Precedence.addr, align 8
  %call77 = call %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %62, %struct.LIST_HELP* %63, %struct.subst* %64, %struct.LIST_HELP* %65, %struct.LIST_HELP* %66, %struct.st* %67, i32* %68, i32* %69)
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call78 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call77, %struct.LIST_HELP* %70)
  store %struct.LIST_HELP* %call78, %struct.LIST_HELP** %result, align 8
  %71 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call79 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %71)
  store %struct.term* %call79, %struct.term** %pAtom, align 8
  %72 = load %struct.subst*, %struct.subst** %leftSubst, align 8
  call void @subst_Delete(%struct.subst* %72)
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %foundLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %73)
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClauseCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %74)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.67, %lor.lhs.false
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %75)
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %76)
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %land.lhs.true.36, %for.body.30
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call83 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %77)
  store %struct.LIST_HELP* %call83, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.26

for.end.84:                                       ; preds = %for.cond.26
  br label %if.end.85

if.end.85:                                        ; preds = %for.end.84, %land.lhs.true.18, %for.body.14
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termList, align 8
  %call87 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %78)
  store %struct.LIST_HELP* %call87, %struct.LIST_HELP** %termList, align 8
  br label %for.cond.11

for.end.88:                                       ; preds = %for.cond.11
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %land.lhs.true, %for.body
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %79 = load i32, i32* %i, align 4
  %inc91 = add nsw i32 %79, 1
  store i32 %inc91, i32* %i, align 4
  br label %for.cond

for.end.92:                                       ; preds = %for.cond
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %80
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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
define internal i32 @clause_LiteralIsSort(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  %S = alloca i32, align 4
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %0)
  store i32 %call, i32* %S, align 4
  %1 = load i32, i32* %S, align 4
  %call1 = call i32 @symbol_IsPredicate(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* %S, align 4
  %call2 = call i32 @symbol_Arity(i32 %2)
  %cmp = icmp eq i32 %call2, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  ret i32 %land.ext
}

declare %struct.LIST_HELP* @st_GetUnifier(%struct.binding*, %struct.st*, %struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
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
define internal i32 @term_IsAtom(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  ret i32 %call1
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

declare %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term*) #2

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
define internal i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_NumOfConsLits(%struct.CLAUSE_HELP* %0)
  ret i32 %call
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
define internal i32 @clause_FirstLitIndex() #1 {
entry:
  ret i32 0
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

; Function Attrs: nounwind uwtable
define internal i32 @inf_SubsortPrecheck(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %TLits, %struct.LITERAL_HELP* %Special, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %TLits.addr = alloca %struct.LIST_HELP*, align 8
  %Special.addr = alloca %struct.LITERAL_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %tSort = alloca %struct.LIST_HELP*, align 8
  %unifierSort = alloca %struct.LIST_HELP*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %result = alloca i32, align 4
  %actAtom = alloca %struct.term*, align 8
  %extraSort = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %TLits, %struct.LIST_HELP** %TLits.addr, align 8
  store %struct.LITERAL_HELP* %Special, %struct.LITERAL_HELP** %Special.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = ptrtoint i8* %call to i32
  %call1 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %0, i32 %2)
  %3 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call2 = call %struct.LIST_HELP* @inf_GetForwardPartnerLits(%struct.LITERAL_HELP* %call1, %struct.st* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %unifiers, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %5 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call3 = call %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %4, %struct.SORTTHEORY_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %unifierSort, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %6)
  %call4 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %tSort, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = ptrtoint i8* %call6 to i32
  %call7 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %8, i32 %10)
  store %struct.term* %call7, %struct.term** %actAtom, align 8
  %11 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %12 = load %struct.term*, %struct.term** %actAtom, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %12)
  %call9 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %11, i32 %call8)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call10 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call9, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %tSort, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %TLits.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call12 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %tSort, align 8
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Special.addr, align 8
  %cmp = icmp eq %struct.LITERAL_HELP* %16, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  %17 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call13 = call i32 @sort_TheoryIsSubsortOf(%struct.SORTTHEORY_HELP* %17, %struct.LIST_HELP* %18, %struct.LIST_HELP* %19)
  store i32 %call13, i32* %result, align 4
  br label %if.end

if.else:                                          ; preds = %for.end
  %20 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Special.addr, align 8
  %call14 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %21)
  %call15 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %20, i32 %call14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %extraSort, align 8
  %22 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %extraSort, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call16 = call i32 @sort_TheoryIsSubsortOfExtra(%struct.SORTTHEORY_HELP* %22, %struct.LIST_HELP* %23, %struct.LIST_HELP* %24, %struct.LIST_HELP* %25)
  store i32 %call16, i32* %result, align 4
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %extraSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %28)
  %29 = load i32, i32* %result, align 4
  ret i32 %29
}

declare %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP*) #2

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

declare i32 @unify_UnifyNoOC(%struct.binding*, %struct.term*, %struct.binding*, %struct.term*) #2

declare void @subst_ExtractUnifier(%struct.binding*, %struct.subst**, %struct.binding*, %struct.subst**) #2

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

declare void @subst_Delete(%struct.subst*) #2

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
define internal %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Lits, %struct.subst* %Subst, %struct.LIST_HELP* %Restlits, %struct.LIST_HELP* %Foundlits, %struct.st* %Index, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Lits.addr = alloca %struct.LIST_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Restlits.addr = alloca %struct.LIST_HELP*, align 8
  %Foundlits.addr = alloca %struct.LIST_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %PartnerCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Lit = alloca %struct.LITERAL_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NextLits = alloca %struct.LIST_HELP*, align 8
  %AtomCopy = alloca %struct.term*, align 8
  %NewSubst = alloca %struct.subst*, align 8
  %RightSubst = alloca %struct.subst*, align 8
  %HelpSubst = alloca %struct.subst*, align 8
  %MaxVar = alloca i32, align 4
  %MaxCand = alloca i32, align 4
  %PLitInd = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Lits, %struct.LIST_HELP** %Lits.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.LIST_HELP* %Restlits, %struct.LIST_HELP** %Restlits.addr, align 8
  store %struct.LIST_HELP* %Foundlits, %struct.LIST_HELP** %Foundlits.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  %5 = load i32*, i32** %Flags.addr, align 8
  %6 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call %struct.CLAUSE_HELP* @inf_BuildConstraintHyperResolvent(%struct.CLAUSE_HELP* %1, %struct.LIST_HELP* %2, %struct.subst* %3, %struct.LIST_HELP* %4, i32* %5, i32* %6)
  %7 = bitcast %struct.CLAUSE_HELP* %call1 to i8*
  %call2 = call %struct.LIST_HELP* @list_List(i8* %7)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %retval
  br label %return

if.else:                                          ; preds = %entry
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = ptrtoint i8* %call4 to i32
  %call5 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %8, i32 %10)
  store %struct.LITERAL_HELP* %call5, %struct.LITERAL_HELP** %Lit, align 8
  %11 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Lit, align 8
  %call6 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %12)
  %call7 = call %struct.term* @term_Copy(%struct.term* %call6)
  %call8 = call %struct.term* @subst_Apply(%struct.subst* %11, %struct.term* %call7)
  store %struct.term* %call8, %struct.term** %AtomCopy, align 8
  %13 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %14 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call9 = call %struct.LIST_HELP* @inf_GetSortResolutionPartnerLits(%struct.term* %13, %struct.st* %14)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %NextLits, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call10 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %15)
  store i32 %call10, i32* %MaxVar, align 4
  %16 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call11 = call i32 @clause_AtomMaxVar(%struct.term* %16)
  store i32 %call11, i32* %MaxCand, align 4
  %17 = load i32, i32* %MaxVar, align 4
  %18 = load i32, i32* %MaxCand, align 4
  %call12 = call i32 @symbol_GreaterVariable(i32 %17, i32 %18)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %19 = load i32, i32* %MaxVar, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %20 = load i32, i32* %MaxCand, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %19, %cond.true ], [ %20, %cond.false ]
  store i32 %cond, i32* %MaxVar, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call16 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %23, %struct.LITERAL_HELP** %PLit, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call17 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %24)
  store i32 %call17, i32* %PLitInd, align 4
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %26 = bitcast %struct.LITERAL_HELP* %25 to i8*
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Foundlits.addr, align 8
  %28 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call19 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %28)
  %call20 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %call19)
  store %struct.CLAUSE_HELP* %call20, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %30 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %29, i32 %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %32 = load i32, i32* %PLitInd, align 4
  %call21 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %31, i32 %32)
  store %struct.LITERAL_HELP* %call21, %struct.LITERAL_HELP** %PLit, align 8
  call void @cont_Check()
  %call22 = call %struct.binding* @cont_LeftContext()
  %33 = load %struct.term*, %struct.term** %AtomCopy, align 8
  %call23 = call %struct.binding* @cont_RightContext()
  %34 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call24 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %34)
  %call25 = call i32 @unify_UnifyNoOC(%struct.binding* %call22, %struct.term* %33, %struct.binding* %call23, %struct.term* %call24)
  %call26 = call %struct.binding* @cont_LeftContext()
  %call27 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call26, %struct.subst** %NewSubst, %struct.binding* %call27, %struct.subst** %RightSubst)
  call void @cont_Reset()
  %35 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  call void @subst_Delete(%struct.subst* %35)
  %36 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  store %struct.subst* %36, %struct.subst** %HelpSubst, align 8
  %37 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %38 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %call28 = call %struct.subst* @subst_Copy(%struct.subst* %38)
  %call29 = call %struct.subst* @subst_Compose(%struct.subst* %37, %struct.subst* %call28)
  store %struct.subst* %call29, %struct.subst** %NewSubst, align 8
  %39 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %41 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Restlits.addr, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  %44 = load %struct.st*, %struct.st** %Index.addr, align 8
  %45 = load i32*, i32** %Flags.addr, align 8
  %46 = load i32*, i32** %Precedence.addr, align 8
  %call31 = call %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %39, %struct.LIST_HELP* %40, %struct.subst* %41, %struct.LIST_HELP* %call30, %struct.LIST_HELP* %43, %struct.st* %44, i32* %45, i32* %46)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call32 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call31, %struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Result, align 8
  %48 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  call void @subst_Delete(%struct.subst* %48)
  %49 = load %struct.subst*, %struct.subst** %HelpSubst, align 8
  call void @subst_Delete(%struct.subst* %49)
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %50)
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  %call33 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Foundlits.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NextLits, align 8
  %call34 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %NextLits, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %53 = load %struct.term*, %struct.term** %AtomCopy, align 8
  call void @term_Delete(%struct.term* %53)
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %55
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

declare void @clause_Delete(%struct.CLAUSE_HELP*) #2

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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_ForwardSortResolution(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32 %Precheck, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Precheck.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TLits = alloca %struct.LIST_HELP*, align 8
  %RestLits = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %Hit = alloca i32, align 4
  %TAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32 %Precheck, i32* %Precheck.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lc, align 4
  store i32 0, i32* %Hit, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %Hit, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.term* %call3, %struct.term** %TAtom, align 8
  %7 = load %struct.term*, %struct.term** %TAtom, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call5 = call i32 @term_IsVariable(%struct.term* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  store i32 1, i32* %Hit, align 4
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i32, i32* %Hit, align 4
  %tobool7 = icmp ne i32 %9, 0
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %while.end
  %call9 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %retval
  br label %return

if.end.10:                                        ; preds = %while.end
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %11 = load i32, i32* %i, align 4
  %call11 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %10, i32 %11)
  store %struct.term* %call11, %struct.term** %TAtom, align 8
  %12 = load i32, i32* %i, align 4
  %conv = sext i32 %12 to i64
  %13 = inttoptr i64 %conv to i8*
  %call12 = call %struct.LIST_HELP* @list_List(i8* %13)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %TLits, align 8
  %14 = load i32, i32* %i, align 4
  %add = add nsw i32 %14, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %lc, align 4
  %cmp13 = icmp sle i32 %15, %16
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call15 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %17, i32 %18)
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %call15)
  %19 = load %struct.term*, %struct.term** %TAtom, align 8
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %19)
  %cmp18 = icmp eq %struct.term* %call16, %call17
  br i1 %cmp18, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %for.body
  %20 = load i32, i32* %j, align 4
  %conv21 = sext i32 %20 to i64
  %21 = inttoptr i64 %conv21 to i8*
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call22 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %TLits, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %23 = load i32, i32* %j, align 4
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call25 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %RestLits, align 8
  %25 = load i32, i32* %Precheck.addr, align 4
  %tobool26 = icmp ne i32 %25, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %for.end
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %28 = load %struct.st*, %struct.st** %Index.addr, align 8
  %29 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call27 = call i32 @inf_SubsortPrecheck(%struct.CLAUSE_HELP* %26, %struct.LIST_HELP* %27, %struct.LITERAL_HELP* null, %struct.st* %28, %struct.SORTTHEORY_HELP* %29)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.33

if.then.29:                                       ; preds = %lor.lhs.false, %for.end
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call30 = call %struct.subst* @subst_Nil()
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  %call31 = call %struct.LIST_HELP* @list_Nil()
  %33 = load %struct.st*, %struct.st** %Index.addr, align 8
  %34 = load i32*, i32** %Flags.addr, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call32 = call %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %30, %struct.LIST_HELP* %31, %struct.subst* %call30, %struct.LIST_HELP* %32, %struct.LIST_HELP* %call31, %struct.st* %33, i32* %34, i32* %35)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Result, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.29, %lor.lhs.false
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %36)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %37)
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %38, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %39
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_BackwardEmptySort(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32 %Precheck, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Precheck.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %pLit = alloca %struct.LITERAL_HELP*, align 8
  %pAtom = alloca %struct.term*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %litScan = alloca %struct.LIST_HELP*, align 8
  %gLit = alloca %struct.LITERAL_HELP*, align 8
  %gClause = alloca %struct.CLAUSE_HELP*, align 8
  %gAtom = alloca %struct.term*, align 8
  %var = alloca i32, align 4
  %lc = alloca i32, align 4
  %gi = alloca i32, align 4
  %varOccursNoMore = alloca i32, align 4
  %j = alloca i32, align 4
  %bound = alloca i32, align 4
  %tLits = alloca %struct.LIST_HELP*, align 8
  %restLits = alloca %struct.LIST_HELP*, align 8
  %tCand = alloca %struct.LITERAL_HELP*, align 8
  %pCopy = alloca %struct.CLAUSE_HELP*, align 8
  %minVar = alloca i32, align 4
  %foundLits = alloca %struct.LIST_HELP*, align 8
  %leftSubst = alloca %struct.subst*, align 8
  %rightSubst = alloca %struct.subst*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32 %Precheck, i32* %Precheck.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %ls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.112, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.114

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %pLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %pAtom, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call5 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %7, i32 2)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.111

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call6 = call i32 @clause_LiteralIsSort(%struct.LITERAL_HELP* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.111

if.then:                                          ; preds = %land.lhs.true
  %call8 = call %struct.binding* @cont_LeftContext()
  %9 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call9 = call %struct.binding* @cont_RightContext()
  %10 = load %struct.term*, %struct.term** %pAtom, align 8
  %call10 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call8, %struct.st* %9, %struct.binding* %call9, %struct.term* %10)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.108, %if.then
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot = xor i1 %tobool13, true
  br i1 %lnot, label %for.body.14, label %for.end.110

for.body.14:                                      ; preds = %for.cond.11
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @term_IsAtom(%struct.term* %13)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.107

land.lhs.true.18:                                 ; preds = %for.body.14
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call19 to %struct.term*
  %call20 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  %call21 = call i32 @term_IsVariable(%struct.term* %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.107

if.then.23:                                       ; preds = %land.lhs.true.18
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call24 to %struct.term*
  %call25 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %17)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.104, %if.then.23
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end.106

for.body.30:                                      ; preds = %for.cond.26
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call31 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %20, %struct.LITERAL_HELP** %gLit, align 8
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call32 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %21)
  store %struct.CLAUSE_HELP* %call32, %struct.CLAUSE_HELP** %gClause, align 8
  %22 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call33 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %22)
  %23 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call34 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %23)
  %cmp35 = icmp slt i32 %call33, %call34
  br i1 %cmp35, label %land.lhs.true.36, label %if.end.103

land.lhs.true.36:                                 ; preds = %for.body.30
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call37 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %24, i32 1)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %land.lhs.true.39, label %if.end.103

land.lhs.true.39:                                 ; preds = %land.lhs.true.36
  %25 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %26 = load i32*, i32** %Flags.addr, align 8
  %27 = load i32*, i32** %Precedence.addr, align 8
  %call40 = call i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP* %25, i32* %26, i32* %27)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.103

if.then.42:                                       ; preds = %land.lhs.true.39
  %28 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call43 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %28)
  store %struct.term* %call43, %struct.term** %gAtom, align 8
  %29 = load %struct.term*, %struct.term** %gAtom, align 8
  %call44 = call %struct.term* @term_FirstArgument(%struct.term* %29)
  %call45 = call i32 @term_TopSymbol(%struct.term* %call44)
  store i32 %call45, i32* %var, align 4
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call46 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %30)
  store i32 %call46, i32* %lc, align 4
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %gLit, align 8
  %call47 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %31)
  store i32 %call47, i32* %gi, align 4
  store i32 1, i32* %varOccursNoMore, align 4
  %32 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call48 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %32)
  store i32 %call48, i32* %bound, align 4
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call49 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %33)
  store i32 %call49, i32* %j, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc, %if.then.42
  %34 = load i32, i32* %j, align 4
  %35 = load i32, i32* %bound, align 4
  %cmp51 = icmp sle i32 %34, %35
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.50
  %36 = load i32, i32* %varOccursNoMore, align 4
  %tobool52 = icmp ne i32 %36, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.50
  %37 = phi i1 [ false, %for.cond.50 ], [ %tobool52, %land.rhs ]
  br i1 %37, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %land.end
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %39 = load i32, i32* %j, align 4
  %call54 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %38, i32 %39)
  %40 = load i32, i32* %var, align 4
  %call55 = call i32 @term_ContainsSymbol(%struct.term* %call54, i32 %40)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end

if.then.57:                                       ; preds = %for.body.53
  store i32 0, i32* %varOccursNoMore, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.57, %for.body.53
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %j, align 4
  %inc = add nsw i32 %41, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.50

for.end:                                          ; preds = %land.end
  %42 = load i32, i32* %varOccursNoMore, align 4
  %tobool58 = icmp ne i32 %42, 0
  br i1 %tobool58, label %if.then.59, label %if.end.102

if.then.59:                                       ; preds = %for.end
  %43 = load i32, i32* %gi, align 4
  %conv = sext i32 %43 to i64
  %44 = inttoptr i64 %conv to i8*
  %call60 = call %struct.LIST_HELP* @list_List(i8* %44)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %tLits, align 8
  %call61 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %restLits, align 8
  %call62 = call i32 @clause_FirstLitIndex()
  store i32 %call62, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.82, %if.then.59
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* %lc, align 4
  %cmp64 = icmp sle i32 %45, %46
  br i1 %cmp64, label %for.body.66, label %for.end.84

for.body.66:                                      ; preds = %for.cond.63
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %48 = load i32, i32* %j, align 4
  %call67 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %47, i32 %48)
  store %struct.LITERAL_HELP* %call67, %struct.LITERAL_HELP** %tCand, align 8
  %49 = load i32, i32* %j, align 4
  %50 = load i32, i32* %gi, align 4
  %cmp68 = icmp ne i32 %49, %50
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.81

land.lhs.true.70:                                 ; preds = %for.body.66
  %51 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tCand, align 8
  %call71 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %51)
  %call72 = call %struct.term* @term_FirstArgument(%struct.term* %call71)
  %52 = load %struct.term*, %struct.term** %gAtom, align 8
  %call73 = call %struct.term* @term_FirstArgument(%struct.term* %52)
  %cmp74 = icmp eq %struct.term* %call72, %call73
  br i1 %cmp74, label %if.then.76, label %if.end.81

if.then.76:                                       ; preds = %land.lhs.true.70
  %53 = load i32, i32* %j, align 4
  %conv77 = sext i32 %53 to i64
  %54 = inttoptr i64 %conv77 to i8*
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call78 = call %struct.LIST_HELP* @list_Cons(i8* %54, %struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call78, %struct.LIST_HELP** %tLits, align 8
  %56 = load i32, i32* %j, align 4
  %conv79 = sext i32 %56 to i64
  %57 = inttoptr i64 %conv79 to i8*
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %57, %struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %restLits, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.76, %land.lhs.true.70, %for.body.66
  br label %for.inc.82

for.inc.82:                                       ; preds = %if.end.81
  %59 = load i32, i32* %j, align 4
  %inc83 = add nsw i32 %59, 1
  store i32 %inc83, i32* %j, align 4
  br label %for.cond.63

for.end.84:                                       ; preds = %for.cond.63
  %60 = load i32, i32* %Precheck.addr, align 4
  %tobool85 = icmp ne i32 %60, 0
  br i1 %tobool85, label %lor.lhs.false, label %if.then.88

lor.lhs.false:                                    ; preds = %for.end.84
  %61 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %63 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %64 = load %struct.st*, %struct.st** %Index.addr, align 8
  %65 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call86 = call i32 @inf_SubsortPrecheck(%struct.CLAUSE_HELP* %61, %struct.LIST_HELP* %62, %struct.LITERAL_HELP* %63, %struct.st* %64, %struct.SORTTHEORY_HELP* %65)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.then.88, label %if.end.101

if.then.88:                                       ; preds = %lor.lhs.false, %for.end.84
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call89 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %66)
  store %struct.CLAUSE_HELP* %call89, %struct.CLAUSE_HELP** %pCopy, align 8
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %call90 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %67)
  store i32 %call90, i32* %minVar, align 4
  %68 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %69 = bitcast %struct.LITERAL_HELP* %68 to i8*
  %call91 = call %struct.LIST_HELP* @list_List(i8* %69)
  store %struct.LIST_HELP* %call91, %struct.LIST_HELP** %foundLits, align 8
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pCopy, align 8
  %71 = load i32, i32* %minVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %70, i32 %71)
  %72 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pCopy, align 8
  %73 = load i32, i32* %i, align 4
  %call92 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %72, i32 %73)
  store %struct.term* %call92, %struct.term** %pAtom, align 8
  call void @cont_Check()
  %call93 = call %struct.binding* @cont_LeftContext()
  %74 = load %struct.term*, %struct.term** %gAtom, align 8
  %call94 = call %struct.binding* @cont_RightContext()
  %75 = load %struct.term*, %struct.term** %pAtom, align 8
  %call95 = call i32 @unify_UnifyNoOC(%struct.binding* %call93, %struct.term* %74, %struct.binding* %call94, %struct.term* %75)
  %call96 = call %struct.binding* @cont_LeftContext()
  %call97 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call96, %struct.subst** %leftSubst, %struct.binding* %call97, %struct.subst** %rightSubst)
  call void @cont_Reset()
  %76 = load %struct.subst*, %struct.subst** %rightSubst, align 8
  call void @subst_Delete(%struct.subst* %76)
  %77 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %gClause, align 8
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %79 = load %struct.subst*, %struct.subst** %leftSubst, align 8
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %foundLits, align 8
  %82 = load %struct.st*, %struct.st** %Index.addr, align 8
  %83 = load i32*, i32** %Flags.addr, align 8
  %84 = load i32*, i32** %Precedence.addr, align 8
  %call98 = call %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %77, %struct.LIST_HELP* %78, %struct.subst* %79, %struct.LIST_HELP* %80, %struct.LIST_HELP* %81, %struct.st* %82, i32* %83, i32* %84)
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call99 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call98, %struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call99, %struct.LIST_HELP** %result, align 8
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %foundLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %86)
  %87 = load %struct.subst*, %struct.subst** %leftSubst, align 8
  call void @subst_Delete(%struct.subst* %87)
  %88 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pCopy, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %88)
  %89 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call100 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %89)
  store %struct.term* %call100, %struct.term** %pAtom, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.88, %lor.lhs.false
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %90)
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %restLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %91)
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %for.end
  br label %if.end.103

if.end.103:                                       ; preds = %if.end.102, %land.lhs.true.39, %land.lhs.true.36, %for.body.30
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call105 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %92)
  store %struct.LIST_HELP* %call105, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.26

for.end.106:                                      ; preds = %for.cond.26
  br label %if.end.107

if.end.107:                                       ; preds = %for.end.106, %land.lhs.true.18, %for.body.14
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call109 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %93)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond.11

for.end.110:                                      ; preds = %for.cond.11
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %land.lhs.true, %for.body
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %94 = load i32, i32* %i, align 4
  %inc113 = add nsw i32 %94, 1
  store i32 %inc113, i32* %i, align 4
  br label %for.cond

for.end.114:                                      ; preds = %for.cond
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %95
}

declare i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP*, i32*, i32*) #2

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

declare i32 @term_ContainsSymbol(%struct.term*, i32) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_ForwardEmptySort(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32 %Precheck, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Precheck.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TLits = alloca %struct.LIST_HELP*, align 8
  %RestLits = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %ls = alloca i32, align 4
  %Hit = alloca i32, align 4
  %TAtom = alloca %struct.term*, align 8
  %Var = alloca i32, align 4
  %TCand = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32 %Precheck, i32* %Precheck.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lc, align 4
  store i32 0, i32* %Hit, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.23, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %Hit, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  store %struct.term* %call3, %struct.term** %TAtom, align 8
  %7 = load %struct.term*, %struct.term** %TAtom, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call5 = call i32 @term_IsVariable(%struct.term* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.19

if.then:                                          ; preds = %while.body
  %8 = load %struct.term*, %struct.term** %TAtom, align 8
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  store i32 %call8, i32* %Var, align 4
  %9 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call9 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %9)
  store i32 %call9, i32* %ls, align 4
  store i32 1, i32* %Hit, align 4
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call10 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %10)
  store i32 %call10, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, i32* %j, align 4
  %12 = load i32, i32* %ls, align 4
  %cmp11 = icmp sle i32 %11, %12
  br i1 %cmp11, label %land.rhs.12, label %land.end.14

land.rhs.12:                                      ; preds = %for.cond
  %13 = load i32, i32* %Hit, align 4
  %tobool13 = icmp ne i32 %13, 0
  br label %land.end.14

land.end.14:                                      ; preds = %land.rhs.12, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool13, %land.rhs.12 ]
  br i1 %14, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.14
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %16 = load i32, i32* %j, align 4
  %call15 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %15, i32 %16)
  %17 = load i32, i32* %Var, align 4
  %call16 = call i32 @term_ContainsSymbol(%struct.term* %call15, i32 %17)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %for.body
  store i32 0, i32* %Hit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %j, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end.14
  br label %if.end.19

if.end.19:                                        ; preds = %for.end, %while.body
  %19 = load i32, i32* %Hit, align 4
  %tobool20 = icmp ne i32 %19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.end.19
  %20 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, i32* %i, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end.19
  br label %while.cond

while.end:                                        ; preds = %land.end
  %21 = load i32, i32* %Hit, align 4
  %tobool24 = icmp ne i32 %21, 0
  br i1 %tobool24, label %if.end.27, label %if.then.25

if.then.25:                                       ; preds = %while.end
  %call26 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %retval
  br label %return

if.end.27:                                        ; preds = %while.end
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %23 = load i32, i32* %i, align 4
  %call28 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %22, i32 %23)
  store %struct.term* %call28, %struct.term** %TAtom, align 8
  %24 = load %struct.term*, %struct.term** %TAtom, align 8
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  %call30 = call i32 @term_TopSymbol(%struct.term* %call29)
  store i32 %call30, i32* %Var, align 4
  %25 = load i32, i32* %i, align 4
  %conv = sext i32 %25 to i64
  %26 = inttoptr i64 %conv to i8*
  %call31 = call %struct.LIST_HELP* @list_List(i8* %26)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %TLits, align 8
  %27 = load i32, i32* %i, align 4
  %add = add nsw i32 %27, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.45, %if.end.27
  %28 = load i32, i32* %j, align 4
  %29 = load i32, i32* %lc, align 4
  %cmp33 = icmp sle i32 %28, %29
  br i1 %cmp33, label %for.body.35, label %for.end.47

for.body.35:                                      ; preds = %for.cond.32
  %30 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %31 = load i32, i32* %j, align 4
  %call36 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %30, i32 %31)
  store %struct.term* %call36, %struct.term** %TCand, align 8
  %32 = load %struct.term*, %struct.term** %TCand, align 8
  %call37 = call %struct.term* @term_FirstArgument(%struct.term* %32)
  %call38 = call i32 @term_TopSymbol(%struct.term* %call37)
  %33 = load i32, i32* %Var, align 4
  %call39 = call i32 @symbol_Equal(i32 %call38, i32 %33)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.44

if.then.41:                                       ; preds = %for.body.35
  %34 = load i32, i32* %j, align 4
  %conv42 = sext i32 %34 to i64
  %35 = inttoptr i64 %conv42 to i8*
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call43 = call %struct.LIST_HELP* @list_Cons(i8* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %TLits, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.41, %for.body.35
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %37 = load i32, i32* %j, align 4
  %inc46 = add nsw i32 %37, 1
  store i32 %inc46, i32* %j, align 4
  br label %for.cond.32

for.end.47:                                       ; preds = %for.cond.32
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call48 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %RestLits, align 8
  %39 = load i32, i32* %Precheck.addr, align 4
  %tobool49 = icmp ne i32 %39, 0
  br i1 %tobool49, label %lor.lhs.false, label %if.then.52

lor.lhs.false:                                    ; preds = %for.end.47
  %40 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %42 = load %struct.st*, %struct.st** %Index.addr, align 8
  %43 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call50 = call i32 @inf_SubsortPrecheck(%struct.CLAUSE_HELP* %40, %struct.LIST_HELP* %41, %struct.LITERAL_HELP* null, %struct.st* %42, %struct.SORTTHEORY_HELP* %43)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %lor.lhs.false, %for.end.47
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  %call53 = call %struct.subst* @subst_Nil()
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  %call54 = call %struct.LIST_HELP* @list_Nil()
  %47 = load %struct.st*, %struct.st** %Index.addr, align 8
  %48 = load i32*, i32** %Flags.addr, align 8
  %49 = load i32*, i32** %Precedence.addr, align 8
  %call55 = call %struct.LIST_HELP* @inf_ConstraintHyperResolvents(%struct.CLAUSE_HELP* %44, %struct.LIST_HELP* %45, %struct.subst* %call53, %struct.LIST_HELP* %46, %struct.LIST_HELP* %call54, %struct.st* %47, i32* %48, i32* %49)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %Result, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %lor.lhs.false
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %RestLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %50)
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %52, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.56, %if.then.25
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %53
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_ForwardWeakening(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %hit = alloca i32, align 4
  %tLit = alloca %struct.LITERAL_HELP*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %j = alloca i32, align 4
  %tAtom = alloca %struct.term*, align 8
  %tLits = alloca %struct.LIST_HELP*, align 8
  %sojuList = alloca %struct.LIST_HELP*, align 8
  %tSort = alloca %struct.LIST_HELP*, align 8
  %unifierSort = alloca %struct.LIST_HELP*, align 8
  %actAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lc, align 4
  store i32 0, i32* %hit, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.39, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %hit, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end.40

for.body:                                         ; preds = %land.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %call3)
  %call5 = call i32 @term_IsVariable(%struct.term* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.38, label %if.then

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call7, %struct.LITERAL_HELP** %tLit, align 8
  store i32 1, i32* %hit, align 4
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %10 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call8 = call %struct.LIST_HELP* @inf_GetForwardPartnerLits(%struct.LITERAL_HELP* %9, %struct.st* %10)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %unifiers, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.37, label %if.then.11

if.then.11:                                       ; preds = %if.then
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %13 = load i32, i32* %i, align 4
  %call12 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %12, i32 %13)
  store %struct.term* %call12, %struct.term** %tAtom, align 8
  %call13 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %tLits, align 8
  %call14 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %tSort, align 8
  %14 = load i32, i32* %lc, align 4
  store i32 %14, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.11
  %15 = load i32, i32* %j, align 4
  %16 = load i32, i32* %i, align 4
  %cmp16 = icmp sgt i32 %15, %16
  br i1 %cmp16, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %for.cond.15
  %17 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %18 = load i32, i32* %j, align 4
  %call18 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %17, i32 %18)
  store %struct.term* %call18, %struct.term** %actAtom, align 8
  %19 = load %struct.term*, %struct.term** %actAtom, align 8
  %call19 = call %struct.term* @term_FirstArgument(%struct.term* %19)
  %20 = load %struct.term*, %struct.term** %tAtom, align 8
  %call20 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  %cmp21 = icmp eq %struct.term* %call19, %call20
  br i1 %cmp21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.body.17
  %21 = load i32, i32* %j, align 4
  %conv = sext i32 %21 to i64
  %22 = inttoptr i64 %conv to i8*
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call23 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %tLits, align 8
  %24 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %25 = load %struct.term*, %struct.term** %actAtom, align 8
  %call24 = call i32 @term_TopSymbol(%struct.term* %25)
  %call25 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %24, i32 %call24)
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call26 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call25, %struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %tSort, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.22, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %j, align 4
  %dec = add nsw i32 %27, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %28 = load i32, i32* %i, align 4
  %conv27 = sext i32 %28 to i64
  %29 = inttoptr i64 %conv27 to i8*
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %29, %struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %tLits, align 8
  %31 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %32 = load %struct.term*, %struct.term** %tAtom, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %32)
  %call30 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %31, i32 %call29)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call31 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call30, %struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %tSort, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call32 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %36 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call33 = call %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %35, %struct.SORTTHEORY_HELP* %36)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %unifierSort, align 8
  %37 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call34 = call %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP* %37, %struct.LIST_HELP* %38, %struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %sojuList, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %41)
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sojuList, align 8
  %46 = load i32*, i32** %Flags.addr, align 8
  %47 = load i32*, i32** %Precedence.addr, align 8
  %call35 = call %struct.LIST_HELP* @inf_InternWeakening(%struct.CLAUSE_HELP* %42, %struct.LIST_HELP* %43, %struct.LIST_HELP* %44, %struct.LITERAL_HELP* null, %struct.LIST_HELP* %45, i32* %46, i32* %47)
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call36 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call35, %struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %result, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %49)
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %50)
  br label %if.end.37

if.end.37:                                        ; preds = %for.end, %if.then
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %51 = load i32, i32* %i, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.40:                                       ; preds = %land.end
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %52
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GetForwardPartnerLits(%struct.LITERAL_HELP* %Literal, %struct.st* %Index) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %atomScan = alloca %struct.LIST_HELP*, align 8
  %litScan = alloca %struct.LIST_HELP*, align 8
  %atomCand = alloca %struct.term*, align 8
  %nextLit = alloca %struct.LITERAL_HELP*, align 8
  %nextClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call2 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call3 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %1)
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %call3)
  %call5 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call1, %struct.st* %0, %struct.binding* %call2, %struct.term* %call4)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call7 to %struct.term*
  %call8 = call i32 @term_IsAtom(%struct.term* %4)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.52, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call10 to %struct.term*
  %call11 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %atomScan, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.49, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot15 = xor i1 %tobool14, true
  br i1 %lnot15, label %for.body.16, label %for.end.51

for.body.16:                                      ; preds = %for.cond.12
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call17 to %struct.term*
  store %struct.term* %9, %struct.term** %atomCand, align 8
  %10 = load %struct.term*, %struct.term** %atomCand, align 8
  %call18 = call i32 @term_IsDeclaration(%struct.term* %10)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.48

if.then.20:                                       ; preds = %for.body.16
  %11 = load %struct.term*, %struct.term** %atomCand, align 8
  %call21 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %11)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.20
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot25 = xor i1 %tobool24, true
  br i1 %lnot25, label %for.body.26, label %for.end

for.body.26:                                      ; preds = %for.cond.22
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call27 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %14, %struct.LITERAL_HELP** %nextLit, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call28 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %15)
  store %struct.CLAUSE_HELP* %call28, %struct.CLAUSE_HELP** %nextClause, align 8
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call29 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %16)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.26
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call31 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %17, i32 2)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end

land.lhs.true.33:                                 ; preds = %land.lhs.true
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call34 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %18, i32 1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true.36, label %if.end

land.lhs.true.36:                                 ; preds = %land.lhs.true.33
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call37 to %struct.term*
  %call38 = call i32 @term_IsVariable(%struct.term* %20)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %lor.lhs.false, label %land.lhs.true.42

lor.lhs.false:                                    ; preds = %land.lhs.true.36
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call40 = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %21)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %land.lhs.true.42, label %if.end

land.lhs.true.42:                                 ; preds = %lor.lhs.false, %land.lhs.true.36
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call43 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %22)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.end

if.then.45:                                       ; preds = %land.lhs.true.42
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %24 = bitcast %struct.LITERAL_HELP* %23 to i8*
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call46 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.45, %land.lhs.true.42, %lor.lhs.false, %land.lhs.true.33, %land.lhs.true, %for.body.26
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call47 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.48

if.end.48:                                        ; preds = %for.end, %for.body.16
  br label %for.inc.49

for.inc.49:                                       ; preds = %if.end.48
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call50 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %atomScan, align 8
  br label %for.cond.12

for.end.51:                                       ; preds = %for.cond.12
  br label %if.end.52

if.end.52:                                        ; preds = %for.end.51, %for.body
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call54 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %unifiers, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %29
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_TopSort() #1 {
entry:
  %call = call %struct.LIST_HELP* @list_Nil()
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %S1, %struct.LIST_HELP* %S2) #1 {
entry:
  %S1.addr = alloca %struct.LIST_HELP*, align 8
  %S2.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S1, %struct.LIST_HELP** %S1.addr, align 8
  store %struct.LIST_HELP* %S2, %struct.LIST_HELP** %S2.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S1.addr, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S2.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %0, %struct.LIST_HELP* %1)
  ret %struct.LIST_HELP* %call
}

declare %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP*, i32) #2

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %Literals, %struct.SORTTHEORY_HELP* %SortTheory) #0 {
entry:
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %newSort = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.LITERAL_HELP*
  %call3 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %3)
  %call4 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %1, i32 %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %newSort, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newSort, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call5 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call7 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %8
}

declare %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare void @sort_Delete(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_InternWeakening(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %TLits, %struct.LIST_HELP* %Unifiers, %struct.LITERAL_HELP* %Special, %struct.LIST_HELP* %SojuList, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %TLits.addr = alloca %struct.LIST_HELP*, align 8
  %Unifiers.addr = alloca %struct.LIST_HELP*, align 8
  %Special.addr = alloca %struct.LITERAL_HELP*, align 8
  %SojuList.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %myUnifiers = alloca %struct.LIST_HELP*, align 8
  %searchTerm = alloca %struct.term*, align 8
  %stack = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %actSoju = alloca %struct.LIST_HELP*, align 8
  %actSortSymbols = alloca %struct.LIST_HELP*, align 8
  %symbolScan = alloca %struct.LIST_HELP*, align 8
  %unifierScan = alloca %struct.LIST_HELP*, align 8
  %subset = alloca %struct.LIST_HELP*, align 8
  %actLit = alloca %struct.LITERAL_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %TLits, %struct.LIST_HELP** %TLits.addr, align 8
  store %struct.LIST_HELP* %Unifiers, %struct.LIST_HELP** %Unifiers.addr, align 8
  store %struct.LITERAL_HELP* %Special, %struct.LITERAL_HELP** %Special.addr, align 8
  store %struct.LIST_HELP* %SojuList, %struct.LIST_HELP** %SojuList.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call i32 @putchar(i32 10)
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call1 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool = icmp ne i32 %call2, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = ptrtoint i8* %call3 to i32
  %call4 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %6)
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %call4)
  %call5 = call i32 @putchar(i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %8)
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers.addr, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.18, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot11 = xor i1 %tobool10, true
  br i1 %lnot11, label %for.body.12, label %for.end.20

for.body.12:                                      ; preds = %for.cond.8
  %call13 = call i32 @putchar(i32 10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call14 to %struct.LITERAL_HELP*
  call void @clause_LiteralPrint(%struct.LITERAL_HELP* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call15 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call16 to %struct.LITERAL_HELP*
  %call17 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %15)
  call void @clause_Print(%struct.CLAUSE_HELP* %call17)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.12
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.end.20:                                       ; preds = %for.cond.8
  %call21 = call i32 @putchar(i32 10)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuList.addr, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.20
  %call24 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.end.20
  %call25 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %result, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Unifiers.addr, align 8
  %call26 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %myUnifiers, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  call void @inf_CopyUnifierClauses(%struct.LIST_HELP* %19)
  %20 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  call void @inf_MakeClausesDisjoint(%struct.CLAUSE_HELP* %20, %struct.LIST_HELP* %21)
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = ptrtoint i8* %call27 to i32
  %call28 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %22, i32 %24)
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %call28)
  store %struct.term* %call29, %struct.term** %searchTerm, align 8
  %call30 = call i32 @stack_Bottom()
  store i32 %call30, i32* %stack, align 4
  br label %for.cond.31

for.cond.31:                                      ; preds = %for.inc.114, %if.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuList.addr, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %25)
  %tobool33 = icmp ne i32 %call32, 0
  %lnot34 = xor i1 %tobool33, true
  br i1 %lnot34, label %for.body.35, label %for.end.116

for.body.35:                                      ; preds = %for.cond.31
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuList.addr, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = bitcast i8* %call36 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %actSoju, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call37 = call i32 @fputs(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %28)
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSoju, align 8
  call void @sort_PairPrint(%struct.LIST_HELP* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call38 = call i32 @fflush(%struct._IO_FILE* %30)
  %31 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Special.addr, align 8
  %cmp = icmp eq %struct.LITERAL_HELP* %31, null
  br i1 %cmp, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.35
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSoju, align 8
  %call39 = call i8* @sort_PairSort(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call39 to %struct.LIST_HELP*
  %34 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Special.addr, align 8
  %call40 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %34)
  %call41 = call i32 @sort_ContainsSymbol(%struct.LIST_HELP* %33, i32 %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end.113

if.then.43:                                       ; preds = %lor.lhs.false, %for.body.35
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSoju, align 8
  %call44 = call i8* @sort_PairSort(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call44 to %struct.LIST_HELP*
  %call45 = call %struct.LIST_HELP* @sort_GetSymbolsFromSort(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %actSortSymbols, align 8
  %call46 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %subset, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSortSymbols, align 8
  store %struct.LIST_HELP* %37, %struct.LIST_HELP** %symbolScan, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  store %struct.LIST_HELP* %38, %struct.LIST_HELP** %unifierScan, align 8
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.then.43
  br label %while.cond

while.cond:                                       ; preds = %if.end.80, %do.body
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %39)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call49 = call i32 @list_Empty(%struct.LIST_HELP* %40)
  %tobool50 = icmp ne i32 %call49, 0
  %lnot51 = xor i1 %tobool50, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %41 = phi i1 [ false, %while.cond ], [ %lnot51, %land.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call52 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call52 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %43, %struct.LITERAL_HELP** %actLit, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call53 to %struct.LITERAL_HELP*
  %call54 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %call55 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = ptrtoint i8* %call55 to i32
  %call56 = call i32 @symbol_Equal(i32 %call54, i32 %47)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.then.58, label %if.else.78

if.then.58:                                       ; preds = %while.body
  call void @cont_StartBinding()
  %call59 = call %struct.binding* @cont_LeftContext()
  %48 = load %struct.term*, %struct.term** %searchTerm, align 8
  %call60 = call %struct.binding* @cont_RightContext()
  %49 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %call61 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %49)
  %call62 = call %struct.term* @term_FirstArgument(%struct.term* %call61)
  %call63 = call i32 @unify_UnifyNoOC(%struct.binding* %call59, %struct.term* %48, %struct.binding* %call60, %struct.term* %call62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.then.65, label %if.else.74

if.then.65:                                       ; preds = %if.then.58
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %51 = bitcast %struct.LIST_HELP* %50 to i8*
  call void @stack_Push(i8* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %52)
  %53 = bitcast %struct.LIST_HELP* %call66 to i8*
  call void @stack_Push(i8* %53)
  %54 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %actLit, align 8
  %55 = bitcast %struct.LITERAL_HELP* %54 to i8*
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subset, align 8
  %call67 = call %struct.LIST_HELP* @list_Cons(i8* %55, %struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %subset, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %call68 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %57)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %symbolScan, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %call69 = call i32 @list_Empty(%struct.LIST_HELP* %58)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %if.else, label %if.then.71

if.then.71:                                       ; preds = %if.then.65
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  store %struct.LIST_HELP* %59, %struct.LIST_HELP** %unifierScan, align 8
  br label %if.end.73

if.else:                                          ; preds = %if.then.65
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call72 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %60)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %unifierScan, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else, %if.then.71
  br label %if.end.77

if.else.74:                                       ; preds = %if.then.58
  %call75 = call i32 @cont_BackTrack()
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %61)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %unifierScan, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else.74, %if.end.73
  br label %if.end.80

if.else.78:                                       ; preds = %while.body
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call79 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call79, %struct.LIST_HELP** %unifierScan, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.end.77
  br label %while.cond

while.end:                                        ; preds = %land.end
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symbolScan, align 8
  %call81 = call i32 @list_Empty(%struct.LIST_HELP* %63)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.87

if.then.83:                                       ; preds = %while.end
  %64 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subset, align 8
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSoju, align 8
  %call84 = call i8* @sort_PairCondition(%struct.LIST_HELP* %67)
  %68 = bitcast i8* %call84 to %struct.CONDITION_HELP*
  %69 = load i32*, i32** %Flags.addr, align 8
  %70 = load i32*, i32** %Precedence.addr, align 8
  %call85 = call %struct.LIST_HELP* @inf_ApplyWeakening(%struct.CLAUSE_HELP* %64, %struct.LIST_HELP* %65, %struct.LIST_HELP* %66, %struct.CONDITION_HELP* %68, i32* %69, i32* %70)
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call86 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call85, %struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call86, %struct.LIST_HELP** %result, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %while.end
  br label %while.cond.88

while.cond.88:                                    ; preds = %while.body.96, %if.end.87
  %72 = load i32, i32* %stack, align 4
  %call89 = call i32 @stack_Empty(i32 %72)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %land.end.95, label %land.rhs.91

land.rhs.91:                                      ; preds = %while.cond.88
  %call92 = call i8* @stack_Top()
  %73 = bitcast i8* %call92 to %struct.LIST_HELP*
  %call93 = call i32 @list_Empty(%struct.LIST_HELP* %73)
  %tobool94 = icmp ne i32 %call93, 0
  br label %land.end.95

land.end.95:                                      ; preds = %land.rhs.91, %while.cond.88
  %74 = phi i1 [ false, %while.cond.88 ], [ %tobool94, %land.rhs.91 ]
  br i1 %74, label %while.body.96, label %while.end.99

while.body.96:                                    ; preds = %land.end.95
  call void @stack_NPop(i32 2)
  %call97 = call i32 @cont_BackTrack()
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subset, align 8
  %call98 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call98, %struct.LIST_HELP** %subset, align 8
  br label %while.cond.88

while.end.99:                                     ; preds = %land.end.95
  %76 = load i32, i32* %stack, align 4
  %call100 = call i32 @stack_Empty(i32 %76)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.107, label %if.then.102

if.then.102:                                      ; preds = %while.end.99
  %call103 = call i8* @stack_PopResult()
  %77 = bitcast i8* %call103 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %77, %struct.LIST_HELP** %unifierScan, align 8
  %call104 = call i8* @stack_PopResult()
  %78 = bitcast i8* %call104 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %78, %struct.LIST_HELP** %symbolScan, align 8
  %call105 = call i32 @cont_BackTrack()
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subset, align 8
  %call106 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %79)
  store %struct.LIST_HELP* %call106, %struct.LIST_HELP** %subset, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %while.end.99
  br label %do.cond

do.cond:                                          ; preds = %if.end.107
  %80 = load i32, i32* %stack, align 4
  %call108 = call i32 @stack_Empty(i32 %80)
  %tobool109 = icmp ne i32 %call108, 0
  br i1 %tobool109, label %lor.rhs, label %lor.end

lor.rhs:                                          ; preds = %do.cond
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierScan, align 8
  %call110 = call i32 @list_Empty(%struct.LIST_HELP* %81)
  %tobool111 = icmp ne i32 %call110, 0
  %lnot112 = xor i1 %tobool111, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %do.cond
  %82 = phi i1 [ true, %do.cond ], [ %lnot112, %lor.rhs ]
  br i1 %82, label %do.body, label %do.end

do.end:                                           ; preds = %lor.end
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSortSymbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %83)
  br label %if.end.113

if.end.113:                                       ; preds = %do.end, %lor.lhs.false
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %actSoju, align 8
  call void @sort_PairDelete(%struct.LIST_HELP* %84)
  br label %for.inc.114

for.inc.114:                                      ; preds = %if.end.113
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SojuList.addr, align 8
  %call115 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call115, %struct.LIST_HELP** %SojuList.addr, align 8
  br label %for.cond.31

for.end.116:                                      ; preds = %for.cond.31
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  call void @inf_DeleteUnifierClauses(%struct.LIST_HELP* %86)
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %myUnifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %87)
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %88, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.116, %if.then
  %89 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %89
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_BackwardWeakening(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %sLit = alloca %struct.LITERAL_HELP*, align 8
  %sAtom = alloca %struct.term*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %partners = alloca %struct.LIST_HELP*, align 8
  %unifierSort = alloca %struct.LIST_HELP*, align 8
  %tLit = alloca %struct.LITERAL_HELP*, align 8
  %tClause = alloca %struct.CLAUSE_HELP*, align 8
  %tAtom = alloca %struct.term*, align 8
  %ti = alloca i32, align 4
  %lc = alloca i32, align 4
  %j = alloca i32, align 4
  %tLits = alloca %struct.LIST_HELP*, align 8
  %sojuList = alloca %struct.LIST_HELP*, align 8
  %tSort = alloca %struct.LIST_HELP*, align 8
  %actAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %ls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.60, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.61

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %sLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %sAtom, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call5 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %7, i32 2)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.59

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call6 = call i32 @clause_LiteralIsSort(%struct.LITERAL_HELP* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.59

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load %struct.term*, %struct.term** %sAtom, align 8
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call10 = call i32 @term_IsVariable(%struct.term* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call12 = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end.59

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.8
  %call14 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %partners, align 8
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %unifiers, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %12 = load %struct.st*, %struct.st** %Index.addr, align 8
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  call void @inf_GetBackwardPartnerLits(%struct.LITERAL_HELP* %11, %struct.st* %12, %struct.LIST_HELP** %partners, %struct.LIST_HELP** %unifiers, i32 0, i32* %13, i32* %14)
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %16 = bitcast %struct.LITERAL_HELP* %15 to i8*
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call15 = call %struct.LIST_HELP* @list_Cons(i8* %16, %struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %unifiers, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %19 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call16 = call %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %18, %struct.SORTTHEORY_HELP* %19)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %unifierSort, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.56, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %for.body.20, label %for.end.58

for.body.20:                                      ; preds = %for.cond.17
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call21 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %22, %struct.LITERAL_HELP** %tLit, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call22 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %23)
  store %struct.CLAUSE_HELP* %call22, %struct.CLAUSE_HELP** %tClause, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call23 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %24)
  store %struct.term* %call23, %struct.term** %tAtom, align 8
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call24 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %25)
  store i32 %call24, i32* %ti, align 4
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %call25 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %26)
  store i32 %call25, i32* %lc, align 4
  %call26 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %tLits, align 8
  %call27 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %tSort, align 8
  %27 = load i32, i32* %lc, align 4
  store i32 %27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body.20
  %28 = load i32, i32* %j, align 4
  %call29 = call i32 @clause_FirstLitIndex()
  %cmp30 = icmp sge i32 %28, %call29
  br i1 %cmp30, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %29 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %30 = load i32, i32* %j, align 4
  %call32 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %29, i32 %30)
  store %struct.term* %call32, %struct.term** %actAtom, align 8
  %31 = load i32, i32* %j, align 4
  %32 = load i32, i32* %ti, align 4
  %cmp33 = icmp ne i32 %31, %32
  br i1 %cmp33, label %land.lhs.true.34, label %if.end

land.lhs.true.34:                                 ; preds = %for.body.31
  %33 = load %struct.term*, %struct.term** %actAtom, align 8
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %33)
  %34 = load %struct.term*, %struct.term** %tAtom, align 8
  %call36 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  %cmp37 = icmp eq %struct.term* %call35, %call36
  br i1 %cmp37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %land.lhs.true.34
  %35 = load i32, i32* %j, align 4
  %conv = sext i32 %35 to i64
  %36 = inttoptr i64 %conv to i8*
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call39 = call %struct.LIST_HELP* @list_Cons(i8* %36, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %tLits, align 8
  %38 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %39 = load %struct.term*, %struct.term** %actAtom, align 8
  %call40 = call i32 @term_TopSymbol(%struct.term* %39)
  %call41 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %38, i32 %call40)
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call42 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call41, %struct.LIST_HELP* %40)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %tSort, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.38, %land.lhs.true.34, %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %41 = load i32, i32* %j, align 4
  %dec = add nsw i32 %41, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  %42 = load i32, i32* %ti, align 4
  %conv43 = sext i32 %42 to i64
  %43 = inttoptr i64 %conv43 to i8*
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call44 = call %struct.LIST_HELP* @list_Cons(i8* %43, %struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %tLits, align 8
  %45 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %46 = load %struct.term*, %struct.term** %tAtom, align 8
  %call45 = call i32 @term_TopSymbol(%struct.term* %46)
  %call46 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %45, i32 %call45)
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call47 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call46, %struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %tSort, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call48 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %48)
  %49 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call49 = call %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP* %49, %struct.LIST_HELP* %50, %struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %sojuList, align 8
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %52)
  call void @cont_StartBinding()
  %call50 = call %struct.binding* @cont_LeftContext()
  %53 = load %struct.term*, %struct.term** %tAtom, align 8
  %call51 = call %struct.binding* @cont_RightContext()
  %54 = load %struct.term*, %struct.term** %sAtom, align 8
  %call52 = call i32 @unify_UnifyNoOC(%struct.binding* %call50, %struct.term* %53, %struct.binding* %call51, %struct.term* %54)
  %55 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %58 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sojuList, align 8
  %60 = load i32*, i32** %Flags.addr, align 8
  %61 = load i32*, i32** %Precedence.addr, align 8
  %call53 = call %struct.LIST_HELP* @inf_InternWeakening(%struct.CLAUSE_HELP* %55, %struct.LIST_HELP* %56, %struct.LIST_HELP* %57, %struct.LITERAL_HELP* %58, %struct.LIST_HELP* %59, i32* %60, i32* %61)
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call54 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call53, %struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %result, align 8
  %call55 = call i32 @cont_BackTrack()
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %63)
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call57 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %64)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %partners, align 8
  br label %for.cond.17

for.end.58:                                       ; preds = %for.cond.17
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %65)
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %66)
  br label %if.end.59

if.end.59:                                        ; preds = %for.end.58, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc.60

for.inc.60:                                       ; preds = %if.end.59
  %67 = load i32, i32* %i, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %for.cond
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %68
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

; Function Attrs: nounwind uwtable
define internal void @inf_GetBackwardPartnerLits(%struct.LITERAL_HELP* %Literal, %struct.st* %Index, %struct.LIST_HELP** %ConstraintLits, %struct.LIST_HELP** %Unifiers, i32 %IsFromEmptySort, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Literal.addr = alloca %struct.LITERAL_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %ConstraintLits.addr = alloca %struct.LIST_HELP**, align 8
  %Unifiers.addr = alloca %struct.LIST_HELP**, align 8
  %IsFromEmptySort.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %candidates = alloca %struct.LIST_HELP*, align 8
  %atomScan = alloca %struct.LIST_HELP*, align 8
  %litScan = alloca %struct.LIST_HELP*, align 8
  %nextLit = alloca %struct.LITERAL_HELP*, align 8
  %nextClause = alloca %struct.CLAUSE_HELP*, align 8
  %atomCand = alloca %struct.term*, align 8
  store %struct.LITERAL_HELP* %Literal, %struct.LITERAL_HELP** %Literal.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.LIST_HELP** %ConstraintLits, %struct.LIST_HELP*** %ConstraintLits.addr, align 8
  store %struct.LIST_HELP** %Unifiers, %struct.LIST_HELP*** %Unifiers.addr, align 8
  store i32 %IsFromEmptySort, i32* %IsFromEmptySort.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call1 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %1)
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %call2)
  %call4 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call, %struct.st* %0, %struct.binding* %call1, %struct.term* %call3)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %candidates, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  %call7 = call i32 @term_IsAtom(%struct.term* %4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.78, label %if.then

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.LIST_HELP* @term_SupertermList(%struct.term* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %atomScan, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.75, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end.77

for.body.15:                                      ; preds = %for.cond.11
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %9, %struct.term** %atomCand, align 8
  %10 = load %struct.term*, %struct.term** %atomCand, align 8
  %call17 = call i32 @term_IsDeclaration(%struct.term* %10)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.74

if.then.19:                                       ; preds = %for.body.15
  %11 = load %struct.term*, %struct.term** %atomCand, align 8
  %call20 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %11)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc, %if.then.19
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool23 = icmp ne i32 %call22, 0
  %lnot24 = xor i1 %tobool23, true
  br i1 %lnot24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.21
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call26 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %14, %struct.LITERAL_HELP** %nextLit, align 8
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call27 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %15)
  store %struct.CLAUSE_HELP* %call27, %struct.CLAUSE_HELP** %nextClause, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call28 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %16, i32 1)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.72

if.then.30:                                       ; preds = %for.body.25
  %17 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call31 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %17)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %if.then.30
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call34 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %18, i32 2)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.33
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call36 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call36 to %struct.term*
  %call37 = call i32 @term_IsVariable(%struct.term* %20)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %lor.lhs.false, label %land.lhs.true.41

lor.lhs.false:                                    ; preds = %land.lhs.true
  %21 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call39 = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %21)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %land.lhs.true.41, label %if.end

land.lhs.true.41:                                 ; preds = %lor.lhs.false, %land.lhs.true
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call42 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %22)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.end

land.lhs.true.44:                                 ; preds = %land.lhs.true.41
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %Literal.addr, align 8
  %call45 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %23)
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call46 = call i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %24)
  %call47 = call i32 @symbol_Equal(i32 %call45, i32 %call46)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end, label %if.then.49

if.then.49:                                       ; preds = %land.lhs.true.44
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %26 = bitcast %struct.LITERAL_HELP* %25 to i8*
  %27 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Unifiers.addr, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %27, align 8
  %call50 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %28)
  %29 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Unifiers.addr, align 8
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %29, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.49, %land.lhs.true.44, %land.lhs.true.41, %lor.lhs.false, %if.then.33
  br label %if.end.71

if.else:                                          ; preds = %if.then.30
  %30 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %call51 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %30)
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %call52 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %31)
  %cmp = icmp slt i32 %call51, %call52
  br i1 %cmp, label %land.lhs.true.53, label %if.end.70

land.lhs.true.53:                                 ; preds = %if.else
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call54 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call54 to %struct.term*
  %call55 = call i32 @term_IsVariable(%struct.term* %33)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %lor.lhs.false.59, label %land.lhs.true.57

land.lhs.true.57:                                 ; preds = %land.lhs.true.53
  %34 = load i32, i32* %IsFromEmptySort.addr, align 4
  %tobool58 = icmp ne i32 %34, 0
  br i1 %tobool58, label %lor.lhs.false.59, label %if.then.68

lor.lhs.false.59:                                 ; preds = %land.lhs.true.57, %land.lhs.true.53
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call60 to %struct.term*
  %call61 = call i32 @term_IsVariable(%struct.term* %36)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %land.lhs.true.63, label %if.end.70

land.lhs.true.63:                                 ; preds = %lor.lhs.false.59
  %37 = load i32, i32* %IsFromEmptySort.addr, align 4
  %tobool64 = icmp ne i32 %37, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.70

land.lhs.true.65:                                 ; preds = %land.lhs.true.63
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %nextClause, align 8
  %39 = load i32*, i32** %Flags.addr, align 8
  %40 = load i32*, i32** %Precedence.addr, align 8
  %call66 = call i32 @clause_HasOnlyVarsInConstraint(%struct.CLAUSE_HELP* %38, i32* %39, i32* %40)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %land.lhs.true.65, %land.lhs.true.57
  %41 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %nextLit, align 8
  %42 = bitcast %struct.LITERAL_HELP* %41 to i8*
  %43 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ConstraintLits.addr, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %43, align 8
  %call69 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %44)
  %45 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ConstraintLits.addr, align 8
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %45, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %land.lhs.true.65, %land.lhs.true.63, %lor.lhs.false.59, %if.else
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %for.body.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %litScan, align 8
  %call73 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %litScan, align 8
  br label %for.cond.21

for.end:                                          ; preds = %for.cond.21
  br label %if.end.74

if.end.74:                                        ; preds = %for.end, %for.body.15
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %atomScan, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %atomScan, align 8
  br label %for.cond.11

for.end.77:                                       ; preds = %for.cond.11
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %for.body
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %candidates, align 8
  %call80 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %candidates, align 8
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  %49 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ConstraintLits.addr, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %49, align 8
  %call82 = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %50, i32 (i8*, i8*)* bitcast (i32 (%struct.LITERAL_HELP*, %struct.LITERAL_HELP*)* @inf_LiteralsHaveSameSubtermAndAreFromSameClause to i32 (i8*, i8*)*))
  %51 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ConstraintLits.addr, align 8
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %51, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #1 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BackTrack() #1 {
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

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_ForwardEmptySortPlusPlus(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %lc = alloca i32, align 4
  %hit = alloca i32, align 4
  %tLit = alloca %struct.LITERAL_HELP*, align 8
  %var = alloca %struct.term*, align 8
  %j = alloca i32, align 4
  %ls = alloca i32, align 4
  %varOccursNoMore = alloca i32, align 4
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %tAtom = alloca %struct.term*, align 8
  %tLits = alloca %struct.LIST_HELP*, align 8
  %sojuList = alloca %struct.LIST_HELP*, align 8
  %tSort = alloca %struct.LIST_HELP*, align 8
  %unifierSort = alloca %struct.LIST_HELP*, align 8
  %actAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %lc, align 4
  store i32 0, i32* %hit, align 4
  %call2 = call i32 @clause_FirstLitIndex()
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.59, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %lc, align 4
  %cmp = icmp sle i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %hit, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end.61

for.body:                                         ; preds = %land.end
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %6 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %5, i32 %6)
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %call3)
  %call5 = call i32 @term_IsVariable(%struct.term* %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end.58

if.then:                                          ; preds = %for.body
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %8 = load i32, i32* %i, align 4
  %call7 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  store %struct.LITERAL_HELP* %call7, %struct.LITERAL_HELP** %tLit, align 8
  %9 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call8 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %9)
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %call8)
  store %struct.term* %call9, %struct.term** %var, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call10 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %10)
  store i32 %call10, i32* %ls, align 4
  store i32 1, i32* %varOccursNoMore, align 4
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call11 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %11)
  store i32 %call11, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %12 = load i32, i32* %j, align 4
  %13 = load i32, i32* %ls, align 4
  %cmp13 = icmp sle i32 %12, %13
  br i1 %cmp13, label %land.rhs.14, label %land.end.16

land.rhs.14:                                      ; preds = %for.cond.12
  %14 = load i32, i32* %varOccursNoMore, align 4
  %tobool15 = icmp ne i32 %14, 0
  br label %land.end.16

land.end.16:                                      ; preds = %land.rhs.14, %for.cond.12
  %15 = phi i1 [ false, %for.cond.12 ], [ %tobool15, %land.rhs.14 ]
  br i1 %15, label %for.body.17, label %for.end

for.body.17:                                      ; preds = %land.end.16
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %17 = load i32, i32* %j, align 4
  %call18 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %16, i32 %17)
  %18 = load %struct.term*, %struct.term** %var, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %18)
  %call20 = call i32 @term_ContainsSymbol(%struct.term* %call18, i32 %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %for.body.17
  store i32 0, i32* %varOccursNoMore, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %for.body.17
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load i32, i32* %j, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.12

for.end:                                          ; preds = %land.end.16
  %20 = load i32, i32* %varOccursNoMore, align 4
  %tobool23 = icmp ne i32 %20, 0
  br i1 %tobool23, label %if.then.24, label %if.end.57

if.then.24:                                       ; preds = %for.end
  %21 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %22 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call25 = call %struct.LIST_HELP* @inf_GetForwardPartnerLits(%struct.LITERAL_HELP* %21, %struct.st* %22)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %unifiers, align 8
  store i32 1, i32* %hit, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.56, label %if.then.28

if.then.28:                                       ; preds = %if.then.24
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call29 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %24)
  store %struct.term* %call29, %struct.term** %tAtom, align 8
  %call30 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %tLits, align 8
  %call31 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %tSort, align 8
  %25 = load i32, i32* %lc, align 4
  store i32 %25, i32* %j, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.44, %if.then.28
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %i, align 4
  %cmp33 = icmp sgt i32 %26, %27
  br i1 %cmp33, label %for.body.34, label %for.end.45

for.body.34:                                      ; preds = %for.cond.32
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %29 = load i32, i32* %j, align 4
  %call35 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %28, i32 %29)
  store %struct.term* %call35, %struct.term** %actAtom, align 8
  %30 = load %struct.term*, %struct.term** %actAtom, align 8
  %call36 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %31 = load %struct.term*, %struct.term** %var, align 8
  %cmp37 = icmp eq %struct.term* %call36, %31
  br i1 %cmp37, label %if.then.38, label %if.end.43

if.then.38:                                       ; preds = %for.body.34
  %32 = load i32, i32* %j, align 4
  %conv = sext i32 %32 to i64
  %33 = inttoptr i64 %conv to i8*
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call39 = call %struct.LIST_HELP* @list_Cons(i8* %33, %struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %tLits, align 8
  %35 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %36 = load %struct.term*, %struct.term** %actAtom, align 8
  %call40 = call i32 @term_TopSymbol(%struct.term* %36)
  %call41 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %35, i32 %call40)
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call42 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call41, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %tSort, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.38, %for.body.34
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %38 = load i32, i32* %j, align 4
  %dec = add nsw i32 %38, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  %39 = load i32, i32* %i, align 4
  %conv46 = sext i32 %39 to i64
  %40 = inttoptr i64 %conv46 to i8*
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call47 = call %struct.LIST_HELP* @list_Cons(i8* %40, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %tLits, align 8
  %42 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %43 = load %struct.term*, %struct.term** %tAtom, align 8
  %call48 = call i32 @term_TopSymbol(%struct.term* %43)
  %call49 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %42, i32 %call48)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call50 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call49, %struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call50, %struct.LIST_HELP** %tSort, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call51 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %47 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call52 = call %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %46, %struct.SORTTHEORY_HELP* %47)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %unifierSort, align 8
  %48 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call53 = call %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP* %48, %struct.LIST_HELP* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %sojuList, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %52)
  %53 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sojuList, align 8
  %57 = load i32*, i32** %Flags.addr, align 8
  %58 = load i32*, i32** %Precedence.addr, align 8
  %call54 = call %struct.LIST_HELP* @inf_InternWeakening(%struct.CLAUSE_HELP* %53, %struct.LIST_HELP* %54, %struct.LIST_HELP* %55, %struct.LITERAL_HELP* null, %struct.LIST_HELP* %56, i32* %57, i32* %58)
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call55 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call54, %struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %result, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %60)
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %61)
  br label %if.end.56

if.end.56:                                        ; preds = %for.end.45, %if.then.24
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %for.end
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %for.body
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %62 = load i32, i32* %i, align 4
  %inc60 = add nsw i32 %62, 1
  store i32 %inc60, i32* %i, align 4
  br label %for.cond

for.end.61:                                       ; preds = %land.end
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %63
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @inf_BackwardEmptySortPlusPlus(%struct.CLAUSE_HELP* %GivenClause, %struct.st* %Index, %struct.SORTTHEORY_HELP* %SortTheory, i32* %Flags, i32* %Precedence) #0 {
entry:
  %GivenClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %SortTheory.addr = alloca %struct.SORTTHEORY_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %ls = alloca i32, align 4
  %sLit = alloca %struct.LITERAL_HELP*, align 8
  %sAtom = alloca %struct.term*, align 8
  %unifiers = alloca %struct.LIST_HELP*, align 8
  %partners = alloca %struct.LIST_HELP*, align 8
  %unifierSort = alloca %struct.LIST_HELP*, align 8
  %tLit = alloca %struct.LITERAL_HELP*, align 8
  %tClause = alloca %struct.CLAUSE_HELP*, align 8
  %tAtom = alloca %struct.term*, align 8
  %ti = alloca i32, align 4
  %li = alloca i32, align 4
  %var = alloca %struct.term*, align 8
  %varOccursNoMore = alloca i32, align 4
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %tLits = alloca %struct.LIST_HELP*, align 8
  %sojuList = alloca %struct.LIST_HELP*, align 8
  %tSort = alloca %struct.LIST_HELP*, align 8
  %actAtom = alloca %struct.term*, align 8
  store %struct.CLAUSE_HELP* %GivenClause, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  store %struct.SORTTHEORY_HELP* %SortTheory, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call1 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  store i32 %call1, i32* %ls, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call2 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %1)
  store i32 %call2, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.79, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %ls, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.81

for.body:                                         ; preds = %for.cond
  %4 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %5 = load i32, i32* %i, align 4
  %call3 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %4, i32 %5)
  store %struct.LITERAL_HELP* %call3, %struct.LITERAL_HELP** %sLit, align 8
  %6 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call4 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %6)
  store %struct.term* %call4, %struct.term** %sAtom, align 8
  %7 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call5 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %7, i32 2)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %for.body
  %8 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %call6 = call i32 @clause_LiteralIsSort(%struct.LITERAL_HELP* %8)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end.78

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %9 = load %struct.term*, %struct.term** %sAtom, align 8
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call10 = call i32 @term_IsVariable(%struct.term* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true.8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GivenClause.addr, align 8
  %call12 = call i32 @clause_HasEmptyConstraint(%struct.CLAUSE_HELP* %10)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then, label %if.end.78

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true.8
  %call14 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %partners, align 8
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %unifiers, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %12 = load %struct.st*, %struct.st** %Index.addr, align 8
  %13 = load i32*, i32** %Flags.addr, align 8
  %14 = load i32*, i32** %Precedence.addr, align 8
  call void @inf_GetBackwardPartnerLits(%struct.LITERAL_HELP* %11, %struct.st* %12, %struct.LIST_HELP** %partners, %struct.LIST_HELP** %unifiers, i32 1, i32* %13, i32* %14)
  %15 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %16 = bitcast %struct.LITERAL_HELP* %15 to i8*
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %call15 = call %struct.LIST_HELP* @list_Cons(i8* %16, %struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %unifiers, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %19 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %call16 = call %struct.LIST_HELP* @inf_GetSortFromLits(%struct.LIST_HELP* %18, %struct.SORTTHEORY_HELP* %19)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %unifierSort, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.75, %if.then
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot = xor i1 %tobool19, true
  br i1 %lnot, label %for.body.20, label %for.end.77

for.body.20:                                      ; preds = %for.cond.17
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call21 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %22, %struct.LITERAL_HELP** %tLit, align 8
  %23 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call22 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %23)
  store %struct.CLAUSE_HELP* %call22, %struct.CLAUSE_HELP** %tClause, align 8
  %24 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call23 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %24)
  store %struct.term* %call23, %struct.term** %tAtom, align 8
  %25 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %tLit, align 8
  %call24 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %25)
  store i32 %call24, i32* %ti, align 4
  %26 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %call25 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %26)
  store i32 %call25, i32* %li, align 4
  %27 = load %struct.term*, %struct.term** %tAtom, align 8
  %call26 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  store %struct.term* %call26, %struct.term** %var, align 8
  store i32 1, i32* %varOccursNoMore, align 4
  %28 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %call27 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %28)
  store i32 %call27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %for.body.20
  %29 = load i32, i32* %j, align 4
  %30 = load i32, i32* %li, align 4
  %cmp29 = icmp sle i32 %29, %30
  br i1 %cmp29, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.28
  %31 = load i32, i32* %varOccursNoMore, align 4
  %tobool30 = icmp ne i32 %31, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.28
  %32 = phi i1 [ false, %for.cond.28 ], [ %tobool30, %land.rhs ]
  br i1 %32, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %land.end
  %33 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %34 = load i32, i32* %j, align 4
  %call32 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %33, i32 %34)
  %35 = load %struct.term*, %struct.term** %var, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %35)
  %call34 = call i32 @term_ContainsSymbol(%struct.term* %call32, i32 %call33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end

if.then.36:                                       ; preds = %for.body.31
  store i32 0, i32* %varOccursNoMore, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.36, %for.body.31
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %36 = load i32, i32* %j, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %land.end
  %37 = load i32, i32* %varOccursNoMore, align 4
  %tobool37 = icmp ne i32 %37, 0
  br i1 %tobool37, label %if.then.38, label %if.end.74

if.then.38:                                       ; preds = %for.end
  %38 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %call39 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %38)
  store i32 %call39, i32* %lc, align 4
  %call40 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %tLits, align 8
  %call41 = call %struct.LIST_HELP* @sort_TopSort()
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %tSort, align 8
  %39 = load i32, i32* %lc, align 4
  store i32 %39, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.59, %if.then.38
  %40 = load i32, i32* %j, align 4
  %call43 = call i32 @clause_FirstLitIndex()
  %cmp44 = icmp sge i32 %40, %call43
  br i1 %cmp44, label %for.body.45, label %for.end.60

for.body.45:                                      ; preds = %for.cond.42
  %41 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %42 = load i32, i32* %j, align 4
  %call46 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %41, i32 %42)
  store %struct.term* %call46, %struct.term** %actAtom, align 8
  %43 = load i32, i32* %j, align 4
  %44 = load i32, i32* %ti, align 4
  %cmp47 = icmp ne i32 %43, %44
  br i1 %cmp47, label %land.lhs.true.48, label %if.end.58

land.lhs.true.48:                                 ; preds = %for.body.45
  %45 = load %struct.term*, %struct.term** %actAtom, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %45)
  %call50 = call i32 @term_TopSymbol(%struct.term* %call49)
  %46 = load %struct.term*, %struct.term** %var, align 8
  %call51 = call i32 @term_TopSymbol(%struct.term* %46)
  %cmp52 = icmp eq i32 %call50, %call51
  br i1 %cmp52, label %if.then.53, label %if.end.58

if.then.53:                                       ; preds = %land.lhs.true.48
  %47 = load i32, i32* %j, align 4
  %conv = sext i32 %47 to i64
  %48 = inttoptr i64 %conv to i8*
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call54 = call %struct.LIST_HELP* @list_Cons(i8* %48, %struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %tLits, align 8
  %50 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %51 = load %struct.term*, %struct.term** %actAtom, align 8
  %call55 = call i32 @term_TopSymbol(%struct.term* %51)
  %call56 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %50, i32 %call55)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call57 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call56, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %tSort, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.53, %land.lhs.true.48, %for.body.45
  br label %for.inc.59

for.inc.59:                                       ; preds = %if.end.58
  %53 = load i32, i32* %j, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.42

for.end.60:                                       ; preds = %for.cond.42
  %54 = load i32, i32* %ti, align 4
  %conv61 = sext i32 %54 to i64
  %55 = inttoptr i64 %conv61 to i8*
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %call62 = call %struct.LIST_HELP* @list_Cons(i8* %55, %struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %tLits, align 8
  %57 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %58 = load %struct.term*, %struct.term** %tAtom, align 8
  %call63 = call i32 @term_TopSymbol(%struct.term* %58)
  %call64 = call %struct.LIST_HELP* @sort_TheorySortOfSymbol(%struct.SORTTHEORY_HELP* %57, i32 %call63)
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call65 = call %struct.LIST_HELP* @sort_Intersect(%struct.LIST_HELP* %call64, %struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %tSort, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call66 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %60)
  %61 = load %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP** %SortTheory.addr, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  %call67 = call %struct.LIST_HELP* @sort_TheoryComputeAllSubsortHits(%struct.SORTTHEORY_HELP* %61, %struct.LIST_HELP* %62, %struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %sojuList, align 8
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %64)
  call void @cont_StartBinding()
  %call68 = call %struct.binding* @cont_LeftContext()
  %65 = load %struct.term*, %struct.term** %tAtom, align 8
  %call69 = call %struct.binding* @cont_RightContext()
  %66 = load %struct.term*, %struct.term** %sAtom, align 8
  %call70 = call i32 @unify_UnifyNoOC(%struct.binding* %call68, %struct.term* %65, %struct.binding* %call69, %struct.term* %66)
  %67 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %tClause, align 8
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  %70 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %sLit, align 8
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %sojuList, align 8
  %72 = load i32*, i32** %Flags.addr, align 8
  %73 = load i32*, i32** %Precedence.addr, align 8
  %call71 = call %struct.LIST_HELP* @inf_InternWeakening(%struct.CLAUSE_HELP* %67, %struct.LIST_HELP* %68, %struct.LIST_HELP* %69, %struct.LITERAL_HELP* %70, %struct.LIST_HELP* %71, i32* %72, i32* %73)
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call72 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call71, %struct.LIST_HELP* %74)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %result, align 8
  %call73 = call i32 @cont_BackTrack()
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %tLits, align 8
  call void @list_Delete(%struct.LIST_HELP* %75)
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.60, %for.end
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %partners, align 8
  %call76 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %partners, align 8
  br label %for.cond.17

for.end.77:                                       ; preds = %for.cond.17
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifierSort, align 8
  call void @sort_Delete(%struct.LIST_HELP* %77)
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %unifiers, align 8
  call void @list_Delete(%struct.LIST_HELP* %78)
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %lor.lhs.false, %land.lhs.true, %for.body
  br label %for.inc.79

for.inc.79:                                       ; preds = %if.end.78
  %79 = load i32, i32* %i, align 4
  %inc80 = add nsw i32 %79, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond

for.end.81:                                       ; preds = %for.cond
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %80
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
define internal i32 @clause_LiteralPredicate(%struct.LITERAL_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L, %struct.LITERAL_HELP** %L.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call i32 @term_TopSymbol(%struct.term* %call)
  ret i32 %call1
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
define internal i8* @list_First(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

declare i8* @memory_Malloc(i32) #2

declare i32 @sort_TheoryIsSubsortOf(%struct.SORTTHEORY_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare i32 @sort_TheoryIsSubsortOfExtra(%struct.SORTTHEORY_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.CLAUSE_HELP* @inf_BuildConstraintHyperResolvent(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %Lits, %struct.subst* %Subst, %struct.LIST_HELP* %Foundlits, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Lits.addr = alloca %struct.LIST_HELP*, align 8
  %Subst.addr = alloca %struct.subst*, align 8
  %Foundlits.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %NewClause = alloca %struct.CLAUSE_HELP*, align 8
  %ClauseCopy = alloca %struct.CLAUSE_HELP*, align 8
  %Constraint = alloca %struct.LIST_HELP*, align 8
  %Antecedent = alloca %struct.LIST_HELP*, align 8
  %Succedent = alloca %struct.LIST_HELP*, align 8
  %ParentCls = alloca %struct.LIST_HELP*, align 8
  %ParentLits = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Atom = alloca %struct.term*, align 8
  %MaxVar = alloca i32, align 4
  %MaxCand = alloca i32, align 4
  %i = alloca i32, align 4
  %bound = alloca i32, align 4
  %depth = alloca i32, align 4
  %IsFromEmptySort = alloca i32, align 4
  %Partners = alloca %struct.LIST_HELP*, align 8
  %PartnerCopy = alloca %struct.CLAUSE_HELP*, align 8
  %PLit = alloca %struct.LITERAL_HELP*, align 8
  %PAtom = alloca %struct.term*, align 8
  %NewSubst = alloca %struct.subst*, align 8
  %RightSubst = alloca %struct.subst*, align 8
  %j = alloca i32, align 4
  %lc = alloca i32, align 4
  %la = alloca i32, align 4
  %n = alloca i32, align 4
  %PLitInd = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %Lits, %struct.LIST_HELP** %Lits.addr, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store %struct.LIST_HELP* %Foundlits, %struct.LIST_HELP** %Foundlits.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %ParentCls, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ParentLits, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Constraint, align 8
  %call3 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Antecedent, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Succedent, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Partners, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call6 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %0)
  store i32 %call6, i32* %depth, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %depth, align 4
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call8 to %struct.LITERAL_HELP*
  %call9 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %5)
  %call10 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %call9)
  %call11 = call i32 @misc_Max(i32 %3, i32 %call10)
  store i32 %call11, i32* %depth, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call13 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %7)
  store %struct.CLAUSE_HELP* %call13, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %9 = bitcast %struct.CLAUSE_HELP* %8 to i8*
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Partners, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %9, %struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %Partners, align 8
  %11 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  call void @clause_SubstApply(%struct.subst* %11, %struct.CLAUSE_HELP* %12)
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = ptrtoint i8* %call15 to i32
  %call16 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %13, i32 %15)
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %call16)
  %call18 = call i32 @term_IsVariable(%struct.term* %call17)
  store i32 %call18, i32* %IsFromEmptySort, align 4
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %call19 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %16)
  store i32 %call19, i32* %bound, align 4
  %call20 = call i32 @clause_FirstLitIndex()
  store i32 %call20, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.33, %for.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %bound, align 4
  %cmp = icmp sle i32 %17, %18
  br i1 %cmp, label %for.body.22, label %for.end.34

for.body.22:                                      ; preds = %for.cond.21
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %21 = inttoptr i64 %conv to i8*
  %call23 = call i32 @list_PointerMember(%struct.LIST_HELP* %19, i8* %21)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.else, label %if.then

if.then:                                          ; preds = %for.body.22
  %22 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %23 = load i32, i32* %i, align 4
  %call25 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %22, i32 %23)
  %call26 = call %struct.term* @term_Copy(%struct.term* %call25)
  store %struct.term* %call26, %struct.term** %Atom, align 8
  %24 = load %struct.term*, %struct.term** %Atom, align 8
  %25 = bitcast %struct.term* %24 to i8*
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call27 = call %struct.LIST_HELP* @list_Cons(i8* %25, %struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Constraint, align 8
  br label %if.end

if.else:                                          ; preds = %for.body.22
  %27 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %call28 = call i32 @clause_Number(%struct.CLAUSE_HELP* %27)
  %conv29 = sext i32 %call28 to i64
  %28 = inttoptr i64 %conv29 to i8*
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentCls, align 8
  %call30 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %ParentCls, align 8
  %30 = load i32, i32* %i, align 4
  %conv31 = sext i32 %30 to i64
  %31 = inttoptr i64 %conv31 to i8*
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call32 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %ParentLits, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.21

for.end.34:                                       ; preds = %for.cond.21
  %34 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %call35 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %34)
  store i32 %call35, i32* %bound, align 4
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.43, %for.end.34
  %35 = load i32, i32* %i, align 4
  %36 = load i32, i32* %bound, align 4
  %cmp37 = icmp sle i32 %35, %36
  br i1 %cmp37, label %for.body.39, label %for.end.45

for.body.39:                                      ; preds = %for.cond.36
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %38 = load i32, i32* %i, align 4
  %call40 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %37, i32 %38)
  %call41 = call %struct.term* @term_Copy(%struct.term* %call40)
  store %struct.term* %call41, %struct.term** %Atom, align 8
  %39 = load %struct.term*, %struct.term** %Atom, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call42 = call %struct.LIST_HELP* @list_Cons(i8* %40, %struct.LIST_HELP* %41)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Antecedent, align 8
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.39
  %42 = load i32, i32* %i, align 4
  %inc44 = add nsw i32 %42, 1
  store i32 %inc44, i32* %i, align 4
  br label %for.cond.36

for.end.45:                                       ; preds = %for.cond.36
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %call46 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %43)
  store i32 %call46, i32* %bound, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.54, %for.end.45
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %bound, align 4
  %cmp48 = icmp sle i32 %44, %45
  br i1 %cmp48, label %for.body.50, label %for.end.56

for.body.50:                                      ; preds = %for.cond.47
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %47 = load i32, i32* %i, align 4
  %call51 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %46, i32 %47)
  %call52 = call %struct.term* @term_Copy(%struct.term* %call51)
  store %struct.term* %call52, %struct.term** %Atom, align 8
  %48 = load %struct.term*, %struct.term** %Atom, align 8
  %49 = bitcast %struct.term* %48 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call53 = call %struct.LIST_HELP* @list_Cons(i8* %49, %struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %Succedent, align 8
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.50
  %51 = load i32, i32* %i, align 4
  %inc55 = add nsw i32 %51, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond.47

for.end.56:                                       ; preds = %for.cond.47
  %52 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call57 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %52)
  store i32 %call57, i32* %bound, align 4
  %call58 = call i32 @clause_FirstLitIndex()
  store i32 %call58, i32* %i, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.178, %for.end.56
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* %bound, align 4
  %cmp60 = icmp sle i32 %53, %54
  br i1 %cmp60, label %for.body.62, label %for.end.180

for.body.62:                                      ; preds = %for.cond.59
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lits.addr, align 8
  %56 = load i32, i32* %i, align 4
  %conv63 = sext i32 %56 to i64
  %57 = inttoptr i64 %conv63 to i8*
  %call64 = call i32 @list_PointerMember(%struct.LIST_HELP* %55, i8* %57)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.177

if.then.66:                                       ; preds = %for.body.62
  %58 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %59 = load i32, i32* %i, align 4
  %call67 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %58, i32 %59)
  store %struct.term* %call67, %struct.term** %Atom, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call68 = call %struct.CLAUSE_HELP* @clause_CreateUnnormalized(%struct.LIST_HELP* %60, %struct.LIST_HELP* %61, %struct.LIST_HELP* %62)
  store %struct.CLAUSE_HELP* %call68, %struct.CLAUSE_HELP** %NewClause, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %63)
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %64)
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %65)
  %call69 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Constraint, align 8
  %call70 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %Antecedent, align 8
  %call71 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %Succedent, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Foundlits.addr, align 8
  store %struct.LIST_HELP* %66, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.80, %if.then.66
  %67 = load %struct.term*, %struct.term** %Atom, align 8
  %call73 = call i32 @term_TopSymbol(%struct.term* %67)
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call74 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call74 to %struct.LITERAL_HELP*
  %call75 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %69)
  %call76 = call i32 @term_TopSymbol(%struct.term* %call75)
  %cmp77 = icmp ne i32 %call73, %call76
  br i1 %cmp77, label %for.body.79, label %for.end.82

for.body.79:                                      ; preds = %for.cond.72
  br label %for.inc.80

for.inc.80:                                       ; preds = %for.body.79
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call81 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %70)
  store %struct.LIST_HELP* %call81, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.72

for.end.82:                                       ; preds = %for.cond.72
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call83 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = bitcast i8* %call83 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %72, %struct.LITERAL_HELP** %PLit, align 8
  %73 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call84 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %73)
  store i32 %call84, i32* %PLitInd, align 4
  %74 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call85 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %74)
  %call86 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %call85)
  store %struct.CLAUSE_HELP* %call86, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %75 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %76 = bitcast %struct.CLAUSE_HELP* %75 to i8*
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Partners, align 8
  %call87 = call %struct.LIST_HELP* @list_Cons(i8* %76, %struct.LIST_HELP* %77)
  store %struct.LIST_HELP* %call87, %struct.LIST_HELP** %Partners, align 8
  %78 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %call88 = call i32 @clause_Number(%struct.CLAUSE_HELP* %78)
  %conv89 = sext i32 %call88 to i64
  %79 = inttoptr i64 %conv89 to i8*
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentCls, align 8
  %call90 = call %struct.LIST_HELP* @list_Cons(i8* %79, %struct.LIST_HELP* %80)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %ParentCls, align 8
  %81 = load i32, i32* %PLitInd, align 4
  %conv91 = sext i32 %81 to i64
  %82 = inttoptr i64 %conv91 to i8*
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call92 = call %struct.LIST_HELP* @list_Cons(i8* %82, %struct.LIST_HELP* %83)
  store %struct.LIST_HELP* %call92, %struct.LIST_HELP** %ParentLits, align 8
  %84 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  %call93 = call i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %84)
  store i32 %call93, i32* %MaxVar, align 4
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call94 = call i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP* %85)
  store i32 %call94, i32* %MaxCand, align 4
  %86 = load i32, i32* %MaxVar, align 4
  %87 = load i32, i32* %MaxCand, align 4
  %cmp95 = icmp sgt i32 %86, %87
  br i1 %cmp95, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end.82
  %88 = load i32, i32* %MaxVar, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.end.82
  %89 = load i32, i32* %MaxCand, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %88, %cond.true ], [ %89, %cond.false ]
  store i32 %cond, i32* %MaxVar, align 4
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %91 = load i32, i32* %MaxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %90, i32 %91)
  %92 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %93 = load i32, i32* %PLitInd, align 4
  %call97 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %92, i32 %93)
  store %struct.LITERAL_HELP* %call97, %struct.LITERAL_HELP** %PLit, align 8
  %94 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %PLit, align 8
  %call98 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %94)
  store %struct.term* %call98, %struct.term** %PAtom, align 8
  call void @cont_Check()
  %call99 = call %struct.binding* @cont_LeftContext()
  %95 = load %struct.term*, %struct.term** %PAtom, align 8
  %call100 = call %struct.binding* @cont_RightContext()
  %96 = load %struct.term*, %struct.term** %Atom, align 8
  %call101 = call i32 @unify_UnifyNoOC(%struct.binding* %call99, %struct.term* %95, %struct.binding* %call100, %struct.term* %96)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.end.107, label %if.then.103

if.then.103:                                      ; preds = %cond.end
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call104 = call i32 @fflush(%struct._IO_FILE* %97)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.1, i32 0, i32 0), i32 258)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0))
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call106 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %99)
  call void @misc_DumpCore()
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.103, %cond.end
  %call108 = call %struct.binding* @cont_LeftContext()
  %call109 = call %struct.binding* @cont_RightContext()
  call void @subst_ExtractUnifier(%struct.binding* %call108, %struct.subst** %RightSubst, %struct.binding* %call109, %struct.subst** %NewSubst)
  call void @cont_Reset()
  %100 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %101 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SubstApply(%struct.subst* %100, %struct.CLAUSE_HELP* %101)
  %102 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  %103 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %ClauseCopy, align 8
  call void @clause_SubstApply(%struct.subst* %102, %struct.CLAUSE_HELP* %103)
  %104 = load %struct.subst*, %struct.subst** %NewSubst, align 8
  call void @subst_Delete(%struct.subst* %104)
  %105 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %call110 = call i32 @clause_Length(%struct.CLAUSE_HELP* %105)
  store i32 %call110, i32* %n, align 4
  %106 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %call111 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %106)
  store i32 %call111, i32* %lc, align 4
  %107 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %call112 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %107)
  store i32 %call112, i32* %la, align 4
  %call113 = call i32 @clause_FirstLitIndex()
  store i32 %call113, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.144, %if.end.107
  %108 = load i32, i32* %j, align 4
  %109 = load i32, i32* %n, align 4
  %cmp115 = icmp slt i32 %108, %109
  br i1 %cmp115, label %for.body.117, label %for.end.146

for.body.117:                                     ; preds = %for.cond.114
  %110 = load i32, i32* %j, align 4
  %111 = load i32, i32* %lc, align 4
  %cmp118 = icmp sle i32 %110, %111
  br i1 %cmp118, label %if.then.120, label %if.else.125

if.then.120:                                      ; preds = %for.body.117
  %112 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %113 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %114 = load i32, i32* %j, align 4
  %call121 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %113, i32 %114)
  %call122 = call %struct.term* @term_Copy(%struct.term* %call121)
  %call123 = call %struct.term* @subst_Apply(%struct.subst* %112, %struct.term* %call122)
  %115 = bitcast %struct.term* %call123 to i8*
  %116 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call124 = call %struct.LIST_HELP* @list_Cons(i8* %115, %struct.LIST_HELP* %116)
  store %struct.LIST_HELP* %call124, %struct.LIST_HELP** %Constraint, align 8
  br label %if.end.143

if.else.125:                                      ; preds = %for.body.117
  %117 = load i32, i32* %j, align 4
  %118 = load i32, i32* %la, align 4
  %cmp126 = icmp sle i32 %117, %118
  br i1 %cmp126, label %if.then.128, label %if.else.133

if.then.128:                                      ; preds = %if.else.125
  %119 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %120 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %121 = load i32, i32* %j, align 4
  %call129 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %120, i32 %121)
  %call130 = call %struct.term* @term_Copy(%struct.term* %call129)
  %call131 = call %struct.term* @subst_Apply(%struct.subst* %119, %struct.term* %call130)
  %122 = bitcast %struct.term* %call131 to i8*
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call132 = call %struct.LIST_HELP* @list_Cons(i8* %122, %struct.LIST_HELP* %123)
  store %struct.LIST_HELP* %call132, %struct.LIST_HELP** %Antecedent, align 8
  br label %if.end.142

if.else.133:                                      ; preds = %if.else.125
  %124 = load i32, i32* %j, align 4
  %125 = load i32, i32* %PLitInd, align 4
  %cmp134 = icmp ne i32 %124, %125
  br i1 %cmp134, label %if.then.136, label %if.end.141

if.then.136:                                      ; preds = %if.else.133
  %126 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  %127 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %PartnerCopy, align 8
  %128 = load i32, i32* %j, align 4
  %call137 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %127, i32 %128)
  %call138 = call %struct.term* @term_Copy(%struct.term* %call137)
  %call139 = call %struct.term* @subst_Apply(%struct.subst* %126, %struct.term* %call138)
  %129 = bitcast %struct.term* %call139 to i8*
  %130 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call140 = call %struct.LIST_HELP* @list_Cons(i8* %129, %struct.LIST_HELP* %130)
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %Succedent, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.136, %if.else.133
  br label %if.end.142

if.end.142:                                       ; preds = %if.end.141, %if.then.128
  br label %if.end.143

if.end.143:                                       ; preds = %if.end.142, %if.then.120
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %131 = load i32, i32* %j, align 4
  %inc145 = add nsw i32 %131, 1
  store i32 %inc145, i32* %j, align 4
  br label %for.cond.114

for.end.146:                                      ; preds = %for.cond.114
  %132 = load %struct.subst*, %struct.subst** %RightSubst, align 8
  call void @subst_Delete(%struct.subst* %132)
  %133 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call147 = call i32 @clause_Length(%struct.CLAUSE_HELP* %133)
  store i32 %call147, i32* %n, align 4
  %134 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call148 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %134)
  store i32 %call148, i32* %lc, align 4
  %135 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %call149 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %135)
  store i32 %call149, i32* %la, align 4
  %call150 = call i32 @clause_FirstLitIndex()
  store i32 %call150, i32* %j, align 4
  br label %for.cond.151

for.cond.151:                                     ; preds = %for.inc.174, %for.end.146
  %136 = load i32, i32* %j, align 4
  %137 = load i32, i32* %n, align 4
  %cmp152 = icmp slt i32 %136, %137
  br i1 %cmp152, label %for.body.154, label %for.end.176

for.body.154:                                     ; preds = %for.cond.151
  %138 = load i32, i32* %j, align 4
  %139 = load i32, i32* %lc, align 4
  %cmp155 = icmp sle i32 %138, %139
  br i1 %cmp155, label %if.then.157, label %if.else.161

if.then.157:                                      ; preds = %for.body.154
  %140 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %141 = load i32, i32* %j, align 4
  %call158 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %140, i32 %141)
  %call159 = call %struct.term* @term_Copy(%struct.term* %call158)
  %142 = bitcast %struct.term* %call159 to i8*
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %call160 = call %struct.LIST_HELP* @list_Cons(i8* %142, %struct.LIST_HELP* %143)
  store %struct.LIST_HELP* %call160, %struct.LIST_HELP** %Constraint, align 8
  br label %if.end.173

if.else.161:                                      ; preds = %for.body.154
  %144 = load i32, i32* %j, align 4
  %145 = load i32, i32* %la, align 4
  %cmp162 = icmp sle i32 %144, %145
  br i1 %cmp162, label %if.then.164, label %if.else.168

if.then.164:                                      ; preds = %if.else.161
  %146 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %147 = load i32, i32* %j, align 4
  %call165 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %146, i32 %147)
  %call166 = call %struct.term* @term_Copy(%struct.term* %call165)
  %148 = bitcast %struct.term* %call166 to i8*
  %149 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %call167 = call %struct.LIST_HELP* @list_Cons(i8* %148, %struct.LIST_HELP* %149)
  store %struct.LIST_HELP* %call167, %struct.LIST_HELP** %Antecedent, align 8
  br label %if.end.172

if.else.168:                                      ; preds = %if.else.161
  %150 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %151 = load i32, i32* %j, align 4
  %call169 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %150, i32 %151)
  %call170 = call %struct.term* @term_Copy(%struct.term* %call169)
  %152 = bitcast %struct.term* %call170 to i8*
  %153 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %call171 = call %struct.LIST_HELP* @list_Cons(i8* %152, %struct.LIST_HELP* %153)
  store %struct.LIST_HELP* %call171, %struct.LIST_HELP** %Succedent, align 8
  br label %if.end.172

if.end.172:                                       ; preds = %if.else.168, %if.then.164
  br label %if.end.173

if.end.173:                                       ; preds = %if.end.172, %if.then.157
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.173
  %154 = load i32, i32* %j, align 4
  %inc175 = add nsw i32 %154, 1
  store i32 %inc175, i32* %j, align 4
  br label %for.cond.151

for.end.176:                                      ; preds = %for.cond.151
  %155 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_Delete(%struct.CLAUSE_HELP* %155)
  call void @clause_DecreaseCounter()
  br label %if.end.177

if.end.177:                                       ; preds = %for.end.176, %for.body.62
  br label %for.inc.178

for.inc.178:                                      ; preds = %if.end.177
  %156 = load i32, i32* %i, align 4
  %inc179 = add nsw i32 %156, 1
  store i32 %inc179, i32* %i, align 4
  br label %for.cond.59

for.end.180:                                      ; preds = %for.cond.59
  %157 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  %159 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  %160 = load i32*, i32** %Flags.addr, align 8
  %161 = load i32*, i32** %Precedence.addr, align 8
  %call181 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %157, %struct.LIST_HELP* %158, %struct.LIST_HELP* %159, i32* %160, i32* %161)
  store %struct.CLAUSE_HELP* %call181, %struct.CLAUSE_HELP** %NewClause, align 8
  %162 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Constraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %162)
  %163 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Antecedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %163)
  %164 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %164)
  %165 = load i32, i32* %IsFromEmptySort, align 4
  %tobool182 = icmp ne i32 %165, 0
  br i1 %tobool182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %for.end.180
  %166 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromEmptySort(%struct.CLAUSE_HELP* %166)
  br label %if.end.185

if.else.184:                                      ; preds = %for.end.180
  %167 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  call void @clause_SetFromSortResolution(%struct.CLAUSE_HELP* %167)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.184, %if.then.183
  %168 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %169 = load i32, i32* %depth, align 4
  %add = add nsw i32 %169, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %168, i32 %add)
  %170 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %171 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Partners, align 8
  call void @clause_SetSplitDataFromList(%struct.CLAUSE_HELP* %170, %struct.LIST_HELP* %171)
  %172 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Partners, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %172)
  %173 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %174 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentCls, align 8
  %call186 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %174)
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %173, %struct.LIST_HELP* %call186)
  %175 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  %176 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ParentLits, align 8
  %call187 = call %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP* %176)
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %175, %struct.LIST_HELP* %call187)
  %177 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %NewClause, align 8
  ret %struct.CLAUSE_HELP* %177
}

declare %struct.term* @subst_Apply(%struct.subst*, %struct.term*) #2

declare %struct.term* @term_Copy(%struct.term*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_GetSortResolutionPartnerLits(%struct.term* %Atom, %struct.st* %Index) #0 {
entry:
  %Atom.addr = alloca %struct.term*, align 8
  %Index.addr = alloca %struct.st*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %LitScan = alloca %struct.LIST_HELP*, align 8
  %NextLit = alloca %struct.LITERAL_HELP*, align 8
  %Clause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.term* %Atom, %struct.term** %Atom.addr, align 8
  store %struct.st* %Index, %struct.st** %Index.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call %struct.binding* @cont_LeftContext()
  %0 = load %struct.st*, %struct.st** %Index.addr, align 8
  %call2 = call %struct.binding* @cont_RightContext()
  %1 = load %struct.term*, %struct.term** %Atom.addr, align 8
  %call3 = call %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %call1, %struct.st* %0, %struct.binding* %call2, %struct.term* %1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.term*
  %call6 = call i32 @term_IsAtom(%struct.term* %4)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %5)
  %6 = bitcast i8* %call8 to %struct.term*
  %call9 = call %struct.LIST_HELP* @sharing_NAtomDataList(%struct.term* %6)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call15 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %9, %struct.LITERAL_HELP** %NextLit, align 8
  %10 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call16 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %10)
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %Clause, align 8
  %11 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call17 = call i32 @clause_LiteralIsPositive(%struct.LITERAL_HELP* %11)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.14
  %12 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %call19 = call i32 @clause_LiteralGetFlag(%struct.LITERAL_HELP* %12, i32 2)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call22 = call i32 @clause_GetFlag(%struct.CLAUSE_HELP* %13, i32 1)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause, align 8
  %call25 = call i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP* %14)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end

land.lhs.true.27:                                 ; preds = %land.lhs.true.24
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %16 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %17 = bitcast %struct.LITERAL_HELP* %16 to i8*
  %call28 = call i32 @list_PointerMember(%struct.LIST_HELP* %15, i8* %17)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.27
  %18 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %NextLit, align 8
  %19 = bitcast %struct.LITERAL_HELP* %18 to i8*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call31 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.30, %land.lhs.true.27, %land.lhs.true.24, %land.lhs.true.21, %land.lhs.true, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %LitScan, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %LitScan, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %for.body
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call35 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %TermList, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %23
}

declare i32 @clause_AtomMaxVar(%struct.term*) #2

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

declare void @term_Delete(%struct.term*) #2

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

declare i32 @misc_Max(i32, i32) #2

declare void @clause_SubstApply(%struct.subst*, %struct.CLAUSE_HELP*) #2

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
define internal i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %0)
  %sub = sub nsw i32 %call, 1
  ret i32 %sub
}

declare %struct.CLAUSE_HELP* @clause_CreateUnnormalized(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare i32 @clause_SearchMaxVar(%struct.CLAUSE_HELP*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), %struct._IO_FILE* %0)
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
define internal void @clause_DecreaseCounter() #1 {
entry:
  %0 = load i32, i32* @clause_CLAUSECOUNTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @clause_CLAUSECOUNTER, align 4
  ret void
}

declare %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromEmptySort(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 1, i32* %origin, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @clause_SetFromSortResolution(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %origin = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 14
  store i32 2, i32* %origin, align 4
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

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #2

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

declare %struct.LIST_HELP* @list_NReverse(%struct.LIST_HELP*) #2

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

; Function Attrs: noreturn nounwind
declare void @abort() #3

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

declare i32 @clause_HasSolvedConstraint(%struct.CLAUSE_HELP*) #2

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
define internal i32 @term_IsDeclaration(%struct.term* %Term) #1 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsAtom(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @symbol_IsBaseSort(i32 %call1)
  %tobool3 = icmp ne i32 %call2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool3, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
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

declare i32 @putchar(i32) #2

declare void @clause_Print(%struct.CLAUSE_HELP*) #2

declare void @clause_LiteralPrint(%struct.LITERAL_HELP*) #2

; Function Attrs: nounwind uwtable
define internal void @inf_CopyUnifierClauses(%struct.LIST_HELP* %Literals) #0 {
entry:
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  %actClause = alloca %struct.CLAUSE_HELP*, align 8
  %i = alloca i32, align 4
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LITERAL_HELP*
  %call2 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %2)
  store %struct.CLAUSE_HELP* %call2, %struct.CLAUSE_HELP** %actClause, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call3 to %struct.LITERAL_HELP*
  %call4 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %4)
  store i32 %call4, i32* %i, align 4
  %5 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actClause, align 8
  %call5 = call %struct.CLAUSE_HELP* @clause_Copy(%struct.CLAUSE_HELP* %5)
  store %struct.CLAUSE_HELP* %call5, %struct.CLAUSE_HELP** %actClause, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actClause, align 8
  %8 = load i32, i32* %i, align 4
  %call6 = call %struct.LITERAL_HELP* @clause_GetLiteral(%struct.CLAUSE_HELP* %7, i32 %8)
  %9 = bitcast %struct.LITERAL_HELP* %call6 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %6, i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @inf_MakeClausesDisjoint(%struct.CLAUSE_HELP* %GClause, %struct.LIST_HELP* %Literals) #0 {
entry:
  %GClause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  %maxVar = alloca i32, align 4
  %maxCand = alloca i32, align 4
  %lastClause = alloca %struct.CLAUSE_HELP*, align 8
  %actClause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %GClause, %struct.CLAUSE_HELP** %GClause.addr, align 8
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %GClause.addr, align 8
  %call = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %0)
  store i32 %call, i32* %maxVar, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LITERAL_HELP*
  %call2 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %2)
  store %struct.CLAUSE_HELP* %call2, %struct.CLAUSE_HELP** %lastClause, align 8
  %3 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %lastClause, align 8
  %4 = load i32, i32* %maxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %3, i32 %4)
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %lastClause, align 8
  call void @clause_UpdateMaxVar(%struct.CLAUSE_HELP* %7)
  %8 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %lastClause, align 8
  %call5 = call i32 @clause_MaxVar(%struct.CLAUSE_HELP* %8)
  store i32 %call5, i32* %maxCand, align 4
  %9 = load i32, i32* %maxVar, align 4
  %10 = load i32, i32* %maxCand, align 4
  %call6 = call i32 @symbol_GreaterVariable(i32 %9, i32 %10)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %11 = load i32, i32* %maxVar, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %12 = load i32, i32* %maxCand, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ]
  store i32 %cond, i32* %maxVar, align 4
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call8 to %struct.LITERAL_HELP*
  %call9 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %14)
  store %struct.CLAUSE_HELP* %call9, %struct.CLAUSE_HELP** %actClause, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actClause, align 8
  %16 = load i32, i32* %maxVar, align 4
  call void @clause_RenameVarsBiggerThan(%struct.CLAUSE_HELP* %15, i32 %16)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

declare void @sort_PairPrint(%struct.LIST_HELP*) #2

declare i32 @sort_ContainsSymbol(%struct.LIST_HELP*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @sort_PairSort(%struct.LIST_HELP* %Pair) #1 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairFirst(%struct.LIST_HELP* %0)
  ret i8* %call
}

declare %struct.LIST_HELP* @sort_GetSymbolsFromSort(%struct.LIST_HELP*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @inf_ApplyWeakening(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP* %TLits, %struct.LIST_HELP* %Partners, %struct.CONDITION_HELP* %Condition, i32* %Flags, i32* %Precedence) #0 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %TLits.addr = alloca %struct.LIST_HELP*, align 8
  %Partners.addr = alloca %struct.LIST_HELP*, align 8
  %Condition.addr = alloca %struct.CONDITION_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %parents = alloca %struct.LIST_HELP*, align 8
  %constraint = alloca %struct.LIST_HELP*, align 8
  %antecedent = alloca %struct.LIST_HELP*, align 8
  %succedent = alloca %struct.LIST_HELP*, align 8
  %parentClauses = alloca %struct.LIST_HELP*, align 8
  %parentLits = alloca %struct.LIST_HELP*, align 8
  %i = alloca i32, align 4
  %bound = alloca i32, align 4
  %depth = alloca i32, align 4
  %tSubterm = alloca %struct.term*, align 8
  %newClause = alloca %struct.CLAUSE_HELP*, align 8
  %termCopy = alloca %struct.term*, align 8
  %termCopy22 = alloca %struct.term*, align 8
  %termCopy38 = alloca %struct.term*, align 8
  %condClause = alloca %struct.CLAUSE_HELP*, align 8
  %pLit = alloca %struct.LITERAL_HELP*, align 8
  %pClause = alloca %struct.CLAUSE_HELP*, align 8
  %pi = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP* %TLits, %struct.LIST_HELP** %TLits.addr, align 8
  store %struct.LIST_HELP* %Partners, %struct.LIST_HELP** %Partners.addr, align 8
  store %struct.CONDITION_HELP* %Condition, %struct.CONDITION_HELP** %Condition.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %succedent, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %antecedent, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %constraint, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %parentLits, align 8
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %parentClauses, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %parents, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call3 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %0)
  store i32 %call3, i32* %depth, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = ptrtoint i8* %call4 to i32
  %call5 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %1, i32 %3)
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %call5)
  store %struct.term* %call6, %struct.term** %tSubterm, align 8
  %4 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call7 = call %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %4)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call8, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.term* @term_Copy(%struct.term* %7)
  store %struct.term* %call10, %struct.term** %termCopy, align 8
  %8 = load %struct.term*, %struct.term** %termCopy, align 8
  %9 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call11 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %9)
  %10 = load %struct.term*, %struct.term** %tSubterm, align 8
  call void @term_ReplaceVariable(%struct.term* %8, i32 %call11, %struct.term* %10)
  %call12 = call %struct.binding* @cont_LeftContext()
  %11 = load %struct.term*, %struct.term** %termCopy, align 8
  %call13 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call12, %struct.term* %11)
  %12 = bitcast %struct.term* %call13 to i8*
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  %call14 = call %struct.LIST_HELP* @list_Cons(i8* %12, %struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %constraint, align 8
  %14 = load %struct.term*, %struct.term** %termCopy, align 8
  call void @term_Delete(%struct.term* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call16 = call %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %16)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.29, %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.31

for.body.21:                                      ; preds = %for.cond.17
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call23 to %struct.term*
  %call24 = call %struct.term* @term_Copy(%struct.term* %19)
  store %struct.term* %call24, %struct.term** %termCopy22, align 8
  %20 = load %struct.term*, %struct.term** %termCopy22, align 8
  %21 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call25 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %21)
  %22 = load %struct.term*, %struct.term** %tSubterm, align 8
  call void @term_ReplaceVariable(%struct.term* %20, i32 %call25, %struct.term* %22)
  %call26 = call %struct.binding* @cont_LeftContext()
  %23 = load %struct.term*, %struct.term** %termCopy22, align 8
  %call27 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call26, %struct.term* %23)
  %24 = bitcast %struct.term* %call27 to i8*
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  %call28 = call %struct.LIST_HELP* @list_Cons(i8* %24, %struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %antecedent, align 8
  %26 = load %struct.term*, %struct.term** %termCopy22, align 8
  call void @term_Delete(%struct.term* %26)
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.body.21
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.end.31:                                       ; preds = %for.cond.17
  %28 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call32 = call %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %28)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.45, %for.end.31
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %for.body.37, label %for.end.47

for.body.37:                                      ; preds = %for.cond.33
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call39 to %struct.term*
  %call40 = call %struct.term* @term_Copy(%struct.term* %31)
  store %struct.term* %call40, %struct.term** %termCopy38, align 8
  %32 = load %struct.term*, %struct.term** %termCopy38, align 8
  %33 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call41 = call i32 @sort_ConditionVar(%struct.CONDITION_HELP* %33)
  %34 = load %struct.term*, %struct.term** %tSubterm, align 8
  call void @term_ReplaceVariable(%struct.term* %32, i32 %call41, %struct.term* %34)
  %call42 = call %struct.binding* @cont_LeftContext()
  %35 = load %struct.term*, %struct.term** %termCopy38, align 8
  %call43 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call42, %struct.term* %35)
  %36 = bitcast %struct.term* %call43 to i8*
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  %call44 = call %struct.LIST_HELP* @list_Cons(i8* %36, %struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %succedent, align 8
  %38 = load %struct.term*, %struct.term** %termCopy38, align 8
  call void @term_Delete(%struct.term* %38)
  br label %for.inc.45

for.inc.45:                                       ; preds = %for.body.37
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.33

for.end.47:                                       ; preds = %for.cond.33
  %40 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %Condition.addr, align 8
  %call48 = call %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %40)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.63, %for.end.47
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool51 = icmp ne i32 %call50, 0
  %lnot52 = xor i1 %tobool51, true
  br i1 %lnot52, label %for.body.53, label %for.end.65

for.body.53:                                      ; preds = %for.cond.49
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call54 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call54 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %43, %struct.CLAUSE_HELP** %condClause, align 8
  %44 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %condClause, align 8
  %45 = bitcast %struct.CLAUSE_HELP* %44 to i8*
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parents, align 8
  %call55 = call %struct.LIST_HELP* @list_Cons(i8* %45, %struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %parents, align 8
  %47 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %condClause, align 8
  %call56 = call i32 @clause_Number(%struct.CLAUSE_HELP* %47)
  %conv = sext i32 %call56 to i64
  %48 = inttoptr i64 %conv to i8*
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentClauses, align 8
  %call57 = call %struct.LIST_HELP* @list_Cons(i8* %48, %struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %parentClauses, align 8
  %50 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %condClause, align 8
  %call58 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %50)
  %conv59 = sext i32 %call58 to i64
  %51 = inttoptr i64 %conv59 to i8*
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  %call60 = call %struct.LIST_HELP* @list_Cons(i8* %51, %struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %parentLits, align 8
  %53 = load i32, i32* %depth, align 4
  %54 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %condClause, align 8
  %call61 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %54)
  %call62 = call i32 @misc_Max(i32 %53, i32 %call61)
  store i32 %call62, i32* %depth, align 4
  br label %for.inc.63

for.inc.63:                                       ; preds = %for.body.53
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.49

for.end.65:                                       ; preds = %for.cond.49
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Partners.addr, align 8
  store %struct.LIST_HELP* %56, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.66

for.cond.66:                                      ; preds = %for.inc.121, %for.end.65
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call67 = call i32 @list_Empty(%struct.LIST_HELP* %57)
  %tobool68 = icmp ne i32 %call67, 0
  %lnot69 = xor i1 %tobool68, true
  br i1 %lnot69, label %for.body.70, label %for.end.123

for.body.70:                                      ; preds = %for.cond.66
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call71 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call71 to %struct.LITERAL_HELP*
  store %struct.LITERAL_HELP* %59, %struct.LITERAL_HELP** %pLit, align 8
  %60 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call72 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %60)
  store %struct.CLAUSE_HELP* %call72, %struct.CLAUSE_HELP** %pClause, align 8
  %61 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %pLit, align 8
  %call73 = call i32 @clause_LiteralGetIndex(%struct.LITERAL_HELP* %61)
  store i32 %call73, i32* %pi, align 4
  %62 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call74 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %62)
  store i32 %call74, i32* %bound, align 4
  %call75 = call i32 @clause_FirstLitIndex()
  store i32 %call75, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.83, %for.body.70
  %63 = load i32, i32* %i, align 4
  %64 = load i32, i32* %bound, align 4
  %cmp = icmp sle i32 %63, %64
  br i1 %cmp, label %for.body.78, label %for.end.84

for.body.78:                                      ; preds = %for.cond.76
  %call79 = call %struct.binding* @cont_RightContext()
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %66 = load i32, i32* %i, align 4
  %call80 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %65, i32 %66)
  %call81 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call79, %struct.term* %call80)
  %67 = bitcast %struct.term* %call81 to i8*
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  %call82 = call %struct.LIST_HELP* @list_Cons(i8* %67, %struct.LIST_HELP* %68)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %constraint, align 8
  br label %for.inc.83

for.inc.83:                                       ; preds = %for.body.78
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.76

for.end.84:                                       ; preds = %for.cond.76
  %70 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call85 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %70)
  store i32 %call85, i32* %bound, align 4
  %71 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call86 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %71)
  store i32 %call86, i32* %i, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.95, %for.end.84
  %72 = load i32, i32* %i, align 4
  %73 = load i32, i32* %bound, align 4
  %cmp88 = icmp sle i32 %72, %73
  br i1 %cmp88, label %for.body.90, label %for.end.97

for.body.90:                                      ; preds = %for.cond.87
  %call91 = call %struct.binding* @cont_RightContext()
  %74 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %75 = load i32, i32* %i, align 4
  %call92 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %74, i32 %75)
  %call93 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call91, %struct.term* %call92)
  %76 = bitcast %struct.term* %call93 to i8*
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  %call94 = call %struct.LIST_HELP* @list_Cons(i8* %76, %struct.LIST_HELP* %77)
  store %struct.LIST_HELP* %call94, %struct.LIST_HELP** %antecedent, align 8
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.body.90
  %78 = load i32, i32* %i, align 4
  %inc96 = add nsw i32 %78, 1
  store i32 %inc96, i32* %i, align 4
  br label %for.cond.87

for.end.97:                                       ; preds = %for.cond.87
  %79 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call98 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %79)
  store i32 %call98, i32* %bound, align 4
  %80 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call99 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %80)
  store i32 %call99, i32* %i, align 4
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.110, %for.end.97
  %81 = load i32, i32* %i, align 4
  %82 = load i32, i32* %bound, align 4
  %cmp101 = icmp sle i32 %81, %82
  br i1 %cmp101, label %for.body.103, label %for.end.112

for.body.103:                                     ; preds = %for.cond.100
  %83 = load i32, i32* %i, align 4
  %84 = load i32, i32* %pi, align 4
  %cmp104 = icmp ne i32 %83, %84
  br i1 %cmp104, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.103
  %call106 = call %struct.binding* @cont_RightContext()
  %85 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %86 = load i32, i32* %i, align 4
  %call107 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %85, i32 %86)
  %call108 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call106, %struct.term* %call107)
  %87 = bitcast %struct.term* %call108 to i8*
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  %call109 = call %struct.LIST_HELP* @list_Cons(i8* %87, %struct.LIST_HELP* %88)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %succedent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.103
  br label %for.inc.110

for.inc.110:                                      ; preds = %if.end
  %89 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %89, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.100

for.end.112:                                      ; preds = %for.cond.100
  %90 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %91 = bitcast %struct.CLAUSE_HELP* %90 to i8*
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parents, align 8
  %call113 = call %struct.LIST_HELP* @list_Cons(i8* %91, %struct.LIST_HELP* %92)
  store %struct.LIST_HELP* %call113, %struct.LIST_HELP** %parents, align 8
  %93 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call114 = call i32 @clause_Number(%struct.CLAUSE_HELP* %93)
  %conv115 = sext i32 %call114 to i64
  %94 = inttoptr i64 %conv115 to i8*
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentClauses, align 8
  %call116 = call %struct.LIST_HELP* @list_Cons(i8* %94, %struct.LIST_HELP* %95)
  store %struct.LIST_HELP* %call116, %struct.LIST_HELP** %parentClauses, align 8
  %96 = load i32, i32* %pi, align 4
  %conv117 = sext i32 %96 to i64
  %97 = inttoptr i64 %conv117 to i8*
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  %call118 = call %struct.LIST_HELP* @list_Cons(i8* %97, %struct.LIST_HELP* %98)
  store %struct.LIST_HELP* %call118, %struct.LIST_HELP** %parentLits, align 8
  %99 = load i32, i32* %depth, align 4
  %100 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %pClause, align 8
  %call119 = call i32 @clause_Depth(%struct.CLAUSE_HELP* %100)
  %call120 = call i32 @misc_Max(i32 %99, i32 %call119)
  store i32 %call120, i32* %depth, align 4
  br label %for.inc.121

for.inc.121:                                      ; preds = %for.end.112
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call122 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %101)
  store %struct.LIST_HELP* %call122, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.66

for.end.123:                                      ; preds = %for.cond.66
  %102 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call124 = call i32 @clause_LastConstraintLitIndex(%struct.CLAUSE_HELP* %102)
  store i32 %call124, i32* %bound, align 4
  %call125 = call i32 @clause_FirstLitIndex()
  store i32 %call125, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.144, %for.end.123
  %103 = load i32, i32* %i, align 4
  %104 = load i32, i32* %bound, align 4
  %cmp127 = icmp sle i32 %103, %104
  br i1 %cmp127, label %for.body.129, label %for.end.146

for.body.129:                                     ; preds = %for.cond.126
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TLits.addr, align 8
  %106 = load i32, i32* %i, align 4
  %conv130 = sext i32 %106 to i64
  %107 = inttoptr i64 %conv130 to i8*
  %call131 = call i32 @list_PointerMember(%struct.LIST_HELP* %105, i8* %107)
  %tobool132 = icmp ne i32 %call131, 0
  br i1 %tobool132, label %if.else, label %if.then.133

if.then.133:                                      ; preds = %for.body.129
  %call134 = call %struct.binding* @cont_LeftContext()
  %108 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %109 = load i32, i32* %i, align 4
  %call135 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %108, i32 %109)
  %call136 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call134, %struct.term* %call135)
  %110 = bitcast %struct.term* %call136 to i8*
  %111 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  %call137 = call %struct.LIST_HELP* @list_Cons(i8* %110, %struct.LIST_HELP* %111)
  store %struct.LIST_HELP* %call137, %struct.LIST_HELP** %constraint, align 8
  br label %if.end.143

if.else:                                          ; preds = %for.body.129
  %112 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call138 = call i32 @clause_Number(%struct.CLAUSE_HELP* %112)
  %conv139 = sext i32 %call138 to i64
  %113 = inttoptr i64 %conv139 to i8*
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentClauses, align 8
  %call140 = call %struct.LIST_HELP* @list_Cons(i8* %113, %struct.LIST_HELP* %114)
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %parentClauses, align 8
  %115 = load i32, i32* %i, align 4
  %conv141 = sext i32 %115 to i64
  %116 = inttoptr i64 %conv141 to i8*
  %117 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  %call142 = call %struct.LIST_HELP* @list_Cons(i8* %116, %struct.LIST_HELP* %117)
  store %struct.LIST_HELP* %call142, %struct.LIST_HELP** %parentLits, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.else, %if.then.133
  br label %for.inc.144

for.inc.144:                                      ; preds = %if.end.143
  %118 = load i32, i32* %i, align 4
  %inc145 = add nsw i32 %118, 1
  store i32 %inc145, i32* %i, align 4
  br label %for.cond.126

for.end.146:                                      ; preds = %for.cond.126
  %119 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call147 = call i32 @clause_LastAntecedentLitIndex(%struct.CLAUSE_HELP* %119)
  store i32 %call147, i32* %bound, align 4
  %120 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call148 = call i32 @clause_FirstAntecedentLitIndex(%struct.CLAUSE_HELP* %120)
  store i32 %call148, i32* %i, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.157, %for.end.146
  %121 = load i32, i32* %i, align 4
  %122 = load i32, i32* %bound, align 4
  %cmp150 = icmp sle i32 %121, %122
  br i1 %cmp150, label %for.body.152, label %for.end.159

for.body.152:                                     ; preds = %for.cond.149
  %call153 = call %struct.binding* @cont_LeftContext()
  %123 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %124 = load i32, i32* %i, align 4
  %call154 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %123, i32 %124)
  %call155 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call153, %struct.term* %call154)
  %125 = bitcast %struct.term* %call155 to i8*
  %126 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  %call156 = call %struct.LIST_HELP* @list_Cons(i8* %125, %struct.LIST_HELP* %126)
  store %struct.LIST_HELP* %call156, %struct.LIST_HELP** %antecedent, align 8
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.152
  %127 = load i32, i32* %i, align 4
  %inc158 = add nsw i32 %127, 1
  store i32 %inc158, i32* %i, align 4
  br label %for.cond.149

for.end.159:                                      ; preds = %for.cond.149
  %128 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call160 = call i32 @clause_LastSuccedentLitIndex(%struct.CLAUSE_HELP* %128)
  store i32 %call160, i32* %bound, align 4
  %129 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call161 = call i32 @clause_FirstSuccedentLitIndex(%struct.CLAUSE_HELP* %129)
  store i32 %call161, i32* %i, align 4
  br label %for.cond.162

for.cond.162:                                     ; preds = %for.inc.170, %for.end.159
  %130 = load i32, i32* %i, align 4
  %131 = load i32, i32* %bound, align 4
  %cmp163 = icmp sle i32 %130, %131
  br i1 %cmp163, label %for.body.165, label %for.end.172

for.body.165:                                     ; preds = %for.cond.162
  %call166 = call %struct.binding* @cont_LeftContext()
  %132 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %133 = load i32, i32* %i, align 4
  %call167 = call %struct.term* @clause_GetLiteralAtom(%struct.CLAUSE_HELP* %132, i32 %133)
  %call168 = call %struct.term* @cont_CopyAndApplyBindings(%struct.binding* %call166, %struct.term* %call167)
  %134 = bitcast %struct.term* %call168 to i8*
  %135 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  %call169 = call %struct.LIST_HELP* @list_Cons(i8* %134, %struct.LIST_HELP* %135)
  store %struct.LIST_HELP* %call169, %struct.LIST_HELP** %succedent, align 8
  br label %for.inc.170

for.inc.170:                                      ; preds = %for.body.165
  %136 = load i32, i32* %i, align 4
  %inc171 = add nsw i32 %136, 1
  store i32 %inc171, i32* %i, align 4
  br label %for.cond.162

for.end.172:                                      ; preds = %for.cond.162
  %137 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %138 = bitcast %struct.CLAUSE_HELP* %137 to i8*
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parents, align 8
  %call173 = call %struct.LIST_HELP* @list_Cons(i8* %138, %struct.LIST_HELP* %139)
  store %struct.LIST_HELP* %call173, %struct.LIST_HELP** %parents, align 8
  %140 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  %141 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  %142 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  %143 = load i32*, i32** %Flags.addr, align 8
  %144 = load i32*, i32** %Precedence.addr, align 8
  %call174 = call %struct.CLAUSE_HELP* @clause_Create(%struct.LIST_HELP* %140, %struct.LIST_HELP* %141, %struct.LIST_HELP* %142, i32* %143, i32* %144)
  store %struct.CLAUSE_HELP* %call174, %struct.CLAUSE_HELP** %newClause, align 8
  %145 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  call void @list_Delete(%struct.LIST_HELP* %145)
  %146 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %146)
  %147 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  call void @list_Delete(%struct.LIST_HELP* %147)
  %148 = load %struct.term*, %struct.term** %tSubterm, align 8
  %call175 = call i32 @term_IsVariable(%struct.term* %148)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %for.end.172
  %149 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  call void @clause_SetFromEmptySort(%struct.CLAUSE_HELP* %149)
  br label %if.end.179

if.else.178:                                      ; preds = %for.end.172
  %150 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  call void @clause_SetFromSortResolution(%struct.CLAUSE_HELP* %150)
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.178, %if.then.177
  %151 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %152 = load i32, i32* %depth, align 4
  %add = add nsw i32 %152, 1
  call void @clause_SetDepth(%struct.CLAUSE_HELP* %151, i32 %add)
  %153 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %153, i32 4)
  %154 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %155 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parents, align 8
  call void @clause_SetSplitDataFromList(%struct.CLAUSE_HELP* %154, %struct.LIST_HELP* %155)
  %156 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parents, align 8
  call void @list_Delete(%struct.LIST_HELP* %156)
  %157 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentClauses, align 8
  call void @clause_SetParentClauses(%struct.CLAUSE_HELP* %157, %struct.LIST_HELP* %158)
  %159 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %160 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentLits, align 8
  call void @clause_SetParentLiterals(%struct.CLAUSE_HELP* %159, %struct.LIST_HELP* %160)
  %161 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %newClause, align 8
  %162 = bitcast %struct.CLAUSE_HELP* %161 to i8*
  %call180 = call %struct.LIST_HELP* @list_List(i8* %162)
  ret %struct.LIST_HELP* %call180
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @sort_PairCondition(%struct.LIST_HELP* %Pair) #1 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @list_PairSecond(%struct.LIST_HELP* %0)
  ret i8* %call
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
define internal void @stack_NPop(i32 %N) #1 {
entry:
  %N.addr = alloca i32, align 4
  store i32 %N, i32* %N.addr, align 4
  %0 = load i32, i32* %N.addr, align 4
  %1 = load i32, i32* @stack_POINTER, align 4
  %sub = sub i32 %1, %0
  store i32 %sub, i32* @stack_POINTER, align 4
  ret void
}

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
define internal void @sort_PairDelete(%struct.LIST_HELP* %Pair) #1 {
entry:
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call = call i8* @sort_PairSort(%struct.LIST_HELP* %0)
  %1 = bitcast i8* %call to %struct.LIST_HELP*
  call void @sort_DeleteOne(%struct.LIST_HELP* %1)
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call1 = call i8* @sort_PairCondition(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.CONDITION_HELP*
  call void @sort_ConditionDelete(%struct.CONDITION_HELP* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  call void @list_PairFree(%struct.LIST_HELP* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @inf_DeleteUnifierClauses(%struct.LIST_HELP* %Literals) #0 {
entry:
  %Literals.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Literals, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.LITERAL_HELP*
  %call2 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %2)
  call void @clause_Delete(%struct.CLAUSE_HELP* %call2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* null)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Literals.addr, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Literals.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
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

declare void @clause_UpdateMaxVar(%struct.CLAUSE_HELP*) #2

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
define internal %struct.LIST_HELP* @sort_ConditionConstraint(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %constraint = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %constraint, align 8
  ret %struct.LIST_HELP* %1
}

declare void @term_ReplaceVariable(%struct.term*, i32, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @sort_ConditionVar(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %var = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 0
  %1 = load i32, i32* %var, align 4
  ret i32 %1
}

declare %struct.term* @cont_CopyAndApplyBindings(%struct.binding*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_ConditionAntecedent(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %antecedent = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %antecedent, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_ConditionSuccedent(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %succedent = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 3
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %succedent, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @sort_ConditionClauses(%struct.CONDITION_HELP* %C) #1 {
entry:
  %C.addr = alloca %struct.CONDITION_HELP*, align 8
  store %struct.CONDITION_HELP* %C, %struct.CONDITION_HELP** %C.addr, align 8
  %0 = load %struct.CONDITION_HELP*, %struct.CONDITION_HELP** %C.addr, align 8
  %clauses = getelementptr inbounds %struct.CONDITION_HELP, %struct.CONDITION_HELP* %0, i32 0, i32 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauses, align 8
  ret %struct.LIST_HELP* %1
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
define internal void @sort_DeleteOne(%struct.LIST_HELP* %S) #1 {
entry:
  %S.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %S, %struct.LIST_HELP** %S.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %S.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %0)
  ret void
}

declare void @sort_ConditionDelete(%struct.CONDITION_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_PairFree(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_Free(%struct.LIST_HELP* %0)
  ret void
}

declare %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @inf_LiteralsHaveSameSubtermAndAreFromSameClause(%struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP* %L2) #0 {
entry:
  %L1.addr = alloca %struct.LITERAL_HELP*, align 8
  %L2.addr = alloca %struct.LITERAL_HELP*, align 8
  store %struct.LITERAL_HELP* %L1, %struct.LITERAL_HELP** %L1.addr, align 8
  store %struct.LITERAL_HELP* %L2, %struct.LITERAL_HELP** %L2.addr, align 8
  %0 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %0)
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %call)
  %1 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call2 = call %struct.term* @clause_LiteralAtom(%struct.LITERAL_HELP* %1)
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %call2)
  %cmp = icmp eq %struct.term* %call1, %call3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L1.addr, align 8
  %call4 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %2)
  %3 = load %struct.LITERAL_HELP*, %struct.LITERAL_HELP** %L2.addr, align 8
  %call5 = call %struct.CLAUSE_HELP* @clause_LiteralOwningClause(%struct.LITERAL_HELP* %3)
  %cmp6 = icmp eq %struct.CLAUSE_HELP* %call4, %call5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp6, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackPush(i32 %Entry) #1 {
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
define internal i32 @cont_StackEmpty(i32 %Pointer) #1 {
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
define internal i32 @cont_StackPopResult() #1 {
entry:
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @cont_STACKPOINTER, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
