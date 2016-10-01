; ModuleID = './MultiSource.Applications.SPASS/40.cnf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PROOFSEARCH_HELP = type { %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SORTTHEORY_HELP*, %struct.SHARED_INDEX_NODE*, %struct.LIST_HELP*, i32*, i32*, %struct.LIST_HELP*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SORTTHEORY_HELP = type { %struct.st*, [4000 x %struct.NODE_HELP*], %struct.LIST_HELP*, %struct.LIST_HELP*, i32 }
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }
%struct.term = type { i32, %union.anon, %struct.LIST_HELP*, i32, i32 }
%union.anon = type { %struct.LIST_HELP* }
%struct.NODE_HELP = type { %struct.LIST_HELP*, i32, i32, i32, %struct.LIST_HELP*, i32 }
%struct.SHARED_INDEX_NODE = type { %struct.st*, [3001 x %struct.term*], [4000 x %struct.term*], i32 }
%struct.LIST_HELP = type { %struct.LIST_HELP*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.MEMORY_BIGBLOCKHEADERHELP = type { %struct.MEMORY_BIGBLOCKHEADERHELP*, %struct.MEMORY_BIGBLOCKHEADERHELP* }
%struct.MEMORY_RESOURCEHELP = type { i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.signature = type { i8*, i32, i32, i32, i32, i32, %struct.LIST_HELP* }
%struct.binding = type { i32, i32, %struct.term*, %struct.binding*, %struct.binding* }
%struct.CLAUSE_HELP = type { i32, i32, i32, i32, i64*, i32, %struct.LIST_HELP*, %struct.LIST_HELP*, i32, i32, %struct.LITERAL_HELP**, i32, i32, i32, i32 }
%struct.LITERAL_HELP = type { i32, i32, i32, %struct.CLAUSE_HELP*, %struct.term* }

@cnf_VARIABLEDEPTHARRAY = internal global i32* null, align 8
@cnf_SEARCHCOPY = internal global %struct.PROOFSEARCH_HELP* null, align 8
@cnf_HAVEPROOFPS = internal global %struct.PROOFSEARCH_HELP* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"\0ATarget after applying def:\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [79 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/cnf.c\00", align 1
@.str.4 = private unnamed_addr constant [68 x i8] c"\0A In cnf_ComputeLiteralLists: Unexpected junctor in input Formula!\0A\00", align 1
@.str.5 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"conjecture%d\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"\0AAdded label %s for conjecture\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0ATarget :\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"\0AConverted to :\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0AToProve for this target :\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"\0APredicate : \00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"\0AAlways Applicable     : \00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\0AClause before applying def :\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"\0APredicate :\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"\0AExpansion :\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"\0AClauses derived by expanding definition :\00", align 1
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@symbol_STANDARDVARCOUNTER = external global i32, align 4
@fol_AND = external global i32, align 4
@fol_OR = external global i32, align 4
@fol_NOT = external global i32, align 4
@fol_IMPLIED = external global i32, align 4
@fol_VARLIST = external global i32, align 4
@fol_IMPLIES = external global i32, align 4
@fol_EQUIV = external global i32, align 4
@vec_MAX = external global i32, align 4
@vec_VECTOR = external global [10000 x i8*], align 16
@fol_ALL = external global i32, align 4
@fol_EXIST = external global i32, align 4
@symbol_TYPEMASK = external constant i32, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@fol_TRUE = external global i32, align 4
@fol_FALSE = external global i32, align 4
@flag_CLEAN = external constant i32, align 4
@symbol_SIGNATURE = external global %struct.signature**, align 8
@symbol_TYPESTATBITS = external constant i32, align 4
@.str.21 = private unnamed_addr constant [48 x i8] c"\0A In cnf_GetFormulaPolarity: Wrong arguments !\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"\0ATerm before skolemization : \0A \00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"\0ATerm after skolemization : \00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"\0AHaveProof not necessary\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"\0AIn term \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"\0A subterm \00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c" is moved to toplevel.\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Result : \00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"\0AStrong skolemization applied\00", align 1
@symbol_ACTSKOLEMFINDEX = external global i32, align 4
@symbol_ACTSKOLEMCINDEX = external global i32, align 4
@symbol_ACTSKOLEMPINDEX = external global i32, align 4
@symbol_ACTSKOLEMAINDEX = external global i32, align 4
@.str.30 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too small for flag %s.\0A\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"\0A Error: Flag value %d is too large for flag %s.\0A\00", align 1
@red_ALL = external constant i32, align 4
@red_USABLE = external constant i32, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"\0Acheck1\00", align 1
@cont_BINDINGS = external global i32, align 4
@cont_STACKPOINTER = external global i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@cont_LEFTCONTEXT = external global %struct.binding*, align 8
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@fol_EQUALITY = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @cnf_Init(i32* %Flags) #0 {
entry:
  %Flags.addr = alloca i32*, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 54)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call i8* @memory_Malloc(i32 8004)
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i32* null, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call2 = call %struct.PROOFSEARCH_HELP* @prfs_Create()
  store %struct.PROOFSEARCH_HELP* %call2, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %call3 = call %struct.PROOFSEARCH_HELP* @prfs_Create()
  store %struct.PROOFSEARCH_HELP* %call3, %struct.PROOFSEARCH_HELP** @cnf_HAVEPROOFPS, align 8
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

declare i8* @memory_Malloc(i32) #2

declare %struct.PROOFSEARCH_HELP* @prfs_Create() #2

; Function Attrs: nounwind uwtable
define void @cnf_Free(i32* %Flags) #0 {
entry:
  %Flags.addr = alloca i32*, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 54)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  %2 = bitcast i32* %1 to i8*
  call void @memory_Free(i8* %2, i32 8004)
  store i32* null, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  call void @prfs_Delete(%struct.PROOFSEARCH_HELP* %3)
  store %struct.PROOFSEARCH_HELP* null, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_HAVEPROOFPS, align 8
  call void @prfs_Delete(%struct.PROOFSEARCH_HELP* %4)
  store %struct.PROOFSEARCH_HELP* null, %struct.PROOFSEARCH_HELP** @cnf_HAVEPROOFPS, align 8
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

declare void @prfs_Delete(%struct.PROOFSEARCH_HELP*) #2

; Function Attrs: nounwind uwtable
define i32 @cnf_ContainsDefinition(%struct.term* %Def, %struct.term** %FoundPred) #0 {
entry:
  %Def.addr = alloca %struct.term*, align 8
  %FoundPred.addr = alloca %struct.term**, align 8
  %result = alloca i32, align 4
  store %struct.term* %Def, %struct.term** %Def.addr, align 8
  store %struct.term** %FoundPred, %struct.term*** %FoundPred.addr, align 8
  %0 = load %struct.term*, %struct.term** %Def.addr, align 8
  %1 = load %struct.term*, %struct.term** %Def.addr, align 8
  %2 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %0, %struct.term* %1, i32 1, %struct.term** %2)
  store i32 %call, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @cnf_ContainsDefinitionIntern(%struct.term* %TopDef, %struct.term* %Def, i32 %Polarity, %struct.term** %FoundPred) #0 {
entry:
  %retval = alloca i32, align 4
  %TopDef.addr = alloca %struct.term*, align 8
  %Def.addr = alloca %struct.term*, align 8
  %Polarity.addr = alloca i32, align 4
  %FoundPred.addr = alloca %struct.term**, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %defpredicate = alloca %struct.term*, align 8
  %predicate_vars = alloca %struct.LIST_HELP*, align 8
  %l71 = alloca %struct.LIST_HELP*, align 8
  %defpath = alloca %struct.LIST_HELP*, align 8
  %allquantifierfound = alloca i32, align 4
  %super = alloca %struct.term*, align 8
  %pol = alloca i32, align 4
  %pair = alloca %struct.LIST_HELP*, align 8
  %t = alloca %struct.term*, align 8
  %p = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan164 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %TopDef, %struct.term** %TopDef.addr, align 8
  store %struct.term* %Def, %struct.term** %Def.addr, align 8
  store i32 %Polarity, i32* %Polarity.addr, align 4
  store %struct.term** %FoundPred, %struct.term*** %FoundPred.addr, align 8
  %0 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_And()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %Polarity.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %call4 = call i32 @fol_Or()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %Polarity.addr, align 4
  %cmp8 = icmp eq i32 %3, -1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7, %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.7, %lor.lhs.false
  %4 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %4)
  %call10 = call i32 @fol_And()
  %call11 = call i32 @symbol_Equal(i32 %call9, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.18, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end
  %5 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call14 = call i32 @term_TopSymbol(%struct.term* %5)
  %call15 = call i32 @fol_Or()
  %call16 = call i32 @symbol_Equal(i32 %call14, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.28

if.then.18:                                       ; preds = %lor.lhs.false.13, %if.end
  %6 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot = xor i1 %tobool21, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.term*, %struct.term** %TopDef.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call22 to %struct.term*
  %11 = load i32, i32* %Polarity.addr, align 4
  %12 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call23 = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %8, %struct.term* %10, i32 %11, %struct.term** %12)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %lor.lhs.false.13
  %14 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %14)
  %call30 = call i32 @fol_IsQuantifier(i32 %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.28
  %15 = load %struct.term*, %struct.term** %TopDef.addr, align 8
  %16 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call33 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  %17 = load i32, i32* %Polarity.addr, align 4
  %18 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call34 = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %15, %struct.term* %call33, i32 %17, %struct.term** %18)
  store i32 %call34, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.end.28
  %19 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %19)
  %call37 = call i32 @fol_Not()
  %call38 = call i32 @symbol_Equal(i32 %call36, i32 %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.35
  %20 = load %struct.term*, %struct.term** %TopDef.addr, align 8
  %21 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call41 = call %struct.term* @term_FirstArgument(%struct.term* %21)
  %22 = load i32, i32* %Polarity.addr, align 4
  %sub = sub nsw i32 0, %22
  %23 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call42 = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %20, %struct.term* %call41, i32 %sub, %struct.term** %23)
  store i32 %call42, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.35
  %24 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call44 = call i32 @term_TopSymbol(%struct.term* %24)
  %call45 = call i32 @fol_Implies()
  %call46 = call i32 @symbol_Equal(i32 %call44, i32 %call45)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %if.end.43
  %25 = load i32, i32* %Polarity.addr, align 4
  %cmp49 = icmp eq i32 %25, 1
  br i1 %cmp49, label %if.then.50, label %if.end.59

if.then.50:                                       ; preds = %if.then.48
  %26 = load %struct.term*, %struct.term** %TopDef.addr, align 8
  %27 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call51 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %28 = load i32, i32* %Polarity.addr, align 4
  %sub52 = sub nsw i32 0, %28
  %29 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call53 = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %26, %struct.term* %call51, i32 %sub52, %struct.term** %29)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.50
  store i32 1, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.then.50
  %30 = load %struct.term*, %struct.term** %TopDef.addr, align 8
  %31 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call57 = call %struct.term* @term_SecondArgument(%struct.term* %31)
  %32 = load i32, i32* %Polarity.addr, align 4
  %33 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  %call58 = call i32 @cnf_ContainsDefinitionIntern(%struct.term* %30, %struct.term* %call57, i32 %32, %struct.term** %33)
  store i32 %call58, i32* %retval
  br label %return

if.end.59:                                        ; preds = %if.then.48
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %if.end.43
  %34 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call61 = call i32 @term_TopSymbol(%struct.term* %34)
  %call62 = call i32 @fol_Equiv()
  %call63 = call i32 @symbol_Equal(i32 %call61, i32 %call62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %land.lhs.true.65, label %if.end.186

land.lhs.true.65:                                 ; preds = %if.end.60
  %35 = load i32, i32* %Polarity.addr, align 4
  %cmp66 = icmp eq i32 %35, 1
  br i1 %cmp66, label %if.then.67, label %if.end.186

if.then.67:                                       ; preds = %land.lhs.true.65
  %36 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call68 = call %struct.term* @cnf_IsDefinition(%struct.term* %36)
  store %struct.term* %call68, %struct.term** %defpredicate, align 8
  %37 = load %struct.term*, %struct.term** %defpredicate, align 8
  %cmp69 = icmp ne %struct.term* %37, null
  br i1 %cmp69, label %if.then.70, label %if.end.185

if.then.70:                                       ; preds = %if.then.67
  %38 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call72 = call %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %38)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %predicate_vars, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  %call73 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %predicate_vars, align 8
  store i32 0, i32* %allquantifierfound, align 4
  %call74 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call74, %struct.LIST_HELP** %defpath, align 8
  %40 = load %struct.term*, %struct.term** %Def.addr, align 8
  store %struct.term* %40, %struct.term** %super, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.70
  %41 = load %struct.term*, %struct.term** %super, align 8
  %cmp75 = icmp ne %struct.term* %41, null
  br i1 %cmp75, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %42 = load %struct.term*, %struct.term** %super, align 8
  %43 = bitcast %struct.term* %42 to i8*
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  %call76 = call %struct.LIST_HELP* @list_Cons(i8* %43, %struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %defpath, align 8
  %45 = load %struct.term*, %struct.term** %super, align 8
  %call77 = call %struct.term* @term_Superterm(%struct.term* %45)
  store %struct.term* %call77, %struct.term** %super, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %pol, align 4
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  store %struct.LIST_HELP* %46, %struct.LIST_HELP** %l71, align 8
  br label %for.cond.78

for.cond.78:                                      ; preds = %for.inc.116, %while.end
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call79 = call i32 @list_Empty(%struct.LIST_HELP* %47)
  %tobool80 = icmp ne i32 %call79, 0
  %lnot81 = xor i1 %tobool80, true
  br i1 %lnot81, label %for.body.82, label %for.end.118

for.body.82:                                      ; preds = %for.cond.78
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call83 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call83 to %struct.term*
  %51 = bitcast %struct.term* %50 to i8*
  %52 = load i32, i32* %pol, align 4
  %conv = sext i32 %52 to i64
  %53 = inttoptr i64 %conv to %struct.LIST_HELP*
  %54 = bitcast %struct.LIST_HELP* %53 to i8*
  %call84 = call %struct.LIST_HELP* @list_PairCreate(i8* %51, i8* %54)
  %55 = bitcast %struct.LIST_HELP* %call84 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %48, i8* %55)
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call85 = call i8* @list_Car(%struct.LIST_HELP* %56)
  %57 = bitcast i8* %call85 to %struct.term*
  %call86 = call i32 @term_TopSymbol(%struct.term* %57)
  %call87 = call i32 @fol_Not()
  %call88 = call i32 @symbol_Equal(i32 %call86, i32 %call87)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.then.90, label %if.else

if.then.90:                                       ; preds = %for.body.82
  %58 = load i32, i32* %pol, align 4
  %sub91 = sub nsw i32 0, %58
  store i32 %sub91, i32* %pol, align 4
  br label %if.end.115

if.else:                                          ; preds = %for.body.82
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call92 = call i8* @list_Car(%struct.LIST_HELP* %59)
  %60 = bitcast i8* %call92 to %struct.term*
  %call93 = call i32 @term_TopSymbol(%struct.term* %60)
  %call94 = call i32 @fol_Implies()
  %call95 = call i32 @symbol_Equal(i32 %call93, i32 %call94)
  %tobool96 = icmp ne i32 %call95, 0
  br i1 %tobool96, label %land.lhs.true.97, label %if.else.106

land.lhs.true.97:                                 ; preds = %if.else
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call98 = call i8* @list_Car(%struct.LIST_HELP* %61)
  %62 = bitcast i8* %call98 to %struct.term*
  %call99 = call %struct.term* @term_FirstArgument(%struct.term* %62)
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call100 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  %call101 = call i8* @list_Car(%struct.LIST_HELP* %call100)
  %64 = bitcast i8* %call101 to %struct.term*
  %cmp102 = icmp eq %struct.term* %call99, %64
  br i1 %cmp102, label %if.then.104, label %if.else.106

if.then.104:                                      ; preds = %land.lhs.true.97
  %65 = load i32, i32* %pol, align 4
  %sub105 = sub nsw i32 0, %65
  store i32 %sub105, i32* %pol, align 4
  br label %if.end.114

if.else.106:                                      ; preds = %land.lhs.true.97, %if.else
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call107 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call107 to %struct.term*
  %call108 = call i32 @term_TopSymbol(%struct.term* %67)
  %call109 = call i32 @fol_Equiv()
  %call110 = call i32 @symbol_Equal(i32 %call108, i32 %call109)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.else.106
  store i32 0, i32* %pol, align 4
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.else.106
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.104
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.then.90
  br label %for.inc.116

for.inc.116:                                      ; preds = %if.end.115
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call117 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %68)
  store %struct.LIST_HELP* %call117, %struct.LIST_HELP** %l71, align 8
  br label %for.cond.78

for.end.118:                                      ; preds = %for.cond.78
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  store %struct.LIST_HELP* %69, %struct.LIST_HELP** %l71, align 8
  br label %for.cond.119

for.cond.119:                                     ; preds = %for.inc.182, %for.end.118
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call120 = call i32 @list_Empty(%struct.LIST_HELP* %70)
  %tobool121 = icmp ne i32 %call120, 0
  br i1 %tobool121, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond.119
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  %call122 = call i32 @list_Empty(%struct.LIST_HELP* %71)
  %tobool123 = icmp ne i32 %call122, 0
  %lnot124 = xor i1 %tobool123, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.119
  %72 = phi i1 [ false, %for.cond.119 ], [ %lnot124, %land.rhs ]
  br i1 %72, label %for.body.125, label %for.end.184

for.body.125:                                     ; preds = %land.end
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call126 = call i8* @list_Car(%struct.LIST_HELP* %73)
  %74 = bitcast i8* %call126 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %74, %struct.LIST_HELP** %pair, align 8
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call127 = call i8* @list_PairFirst(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call127 to %struct.term*
  store %struct.term* %76, %struct.term** %t, align 8
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call128 = call i8* @list_PairSecond(%struct.LIST_HELP* %77)
  %78 = ptrtoint i8* %call128 to i32
  store i32 %78, i32* %p, align 4
  %79 = load %struct.term*, %struct.term** %t, align 8
  %call129 = call i32 @term_TopSymbol(%struct.term* %79)
  %call130 = call i32 @fol_IsQuantifier(i32 %call129)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.then.132, label %if.end.181

if.then.132:                                      ; preds = %for.body.125
  %80 = load %struct.term*, %struct.term** %t, align 8
  %call133 = call i32 @term_TopSymbol(%struct.term* %80)
  %call134 = call i32 @fol_All()
  %call135 = call i32 @symbol_Equal(i32 %call133, i32 %call134)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %land.lhs.true.137, label %lor.lhs.false.140

land.lhs.true.137:                                ; preds = %if.then.132
  %81 = load i32, i32* %p, align 4
  %cmp138 = icmp eq i32 %81, 1
  br i1 %cmp138, label %if.then.148, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %land.lhs.true.137, %if.then.132
  %82 = load %struct.term*, %struct.term** %t, align 8
  %call141 = call i32 @term_TopSymbol(%struct.term* %82)
  %call142 = call i32 @fol_Exist()
  %call143 = call i32 @symbol_Equal(i32 %call141, i32 %call142)
  %tobool144 = icmp ne i32 %call143, 0
  br i1 %tobool144, label %land.lhs.true.145, label %if.else.160

land.lhs.true.145:                                ; preds = %lor.lhs.false.140
  %83 = load i32, i32* %p, align 4
  %cmp146 = icmp eq i32 %83, -1
  br i1 %cmp146, label %if.then.148, label %if.else.160

if.then.148:                                      ; preds = %land.lhs.true.145, %land.lhs.true.137
  store i32 1, i32* %allquantifierfound, align 4
  %84 = load %struct.term*, %struct.term** %t, align 8
  %call149 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %84)
  store %struct.LIST_HELP* %call149, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.150

for.cond.150:                                     ; preds = %for.inc.157, %if.then.148
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call151 = call i32 @list_Empty(%struct.LIST_HELP* %85)
  %tobool152 = icmp ne i32 %call151, 0
  %lnot153 = xor i1 %tobool152, true
  br i1 %lnot153, label %for.body.154, label %for.end.159

for.body.154:                                     ; preds = %for.cond.150
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call155 = call i8* @list_Car(%struct.LIST_HELP* %87)
  %88 = bitcast i8* %call155 to %struct.term*
  %89 = bitcast %struct.term* %88 to i8*
  %call156 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %86, i8* %89, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call156, %struct.LIST_HELP** %predicate_vars, align 8
  br label %for.inc.157

for.inc.157:                                      ; preds = %for.body.154
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call158 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %90)
  store %struct.LIST_HELP* %call158, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.150

for.end.159:                                      ; preds = %for.cond.150
  br label %if.end.180

if.else.160:                                      ; preds = %land.lhs.true.145, %lor.lhs.false.140
  %91 = load i32, i32* %allquantifierfound, align 4
  %tobool161 = icmp ne i32 %91, 0
  br i1 %tobool161, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %if.else.160
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %92)
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %93)
  store i32 0, i32* %retval
  br label %return

if.else.163:                                      ; preds = %if.else.160
  %94 = load %struct.term*, %struct.term** %t, align 8
  %call165 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %94)
  store %struct.LIST_HELP* %call165, %struct.LIST_HELP** %scan164, align 8
  br label %for.cond.166

for.cond.166:                                     ; preds = %for.inc.176, %if.else.163
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan164, align 8
  %call167 = call i32 @list_Empty(%struct.LIST_HELP* %95)
  %tobool168 = icmp ne i32 %call167, 0
  %lnot169 = xor i1 %tobool168, true
  br i1 %lnot169, label %for.body.170, label %for.end.178

for.body.170:                                     ; preds = %for.cond.166
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  %97 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan164, align 8
  %call171 = call i8* @list_Car(%struct.LIST_HELP* %97)
  %98 = bitcast i8* %call171 to %struct.term*
  %call172 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %96, %struct.term* %98)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.body.170
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicate_vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %99)
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %100)
  store i32 0, i32* %retval
  br label %return

if.end.175:                                       ; preds = %for.body.170
  br label %for.inc.176

for.inc.176:                                      ; preds = %if.end.175
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan164, align 8
  %call177 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %101)
  store %struct.LIST_HELP* %call177, %struct.LIST_HELP** %scan164, align 8
  br label %for.cond.166

for.end.178:                                      ; preds = %for.cond.166
  br label %if.end.179

if.end.179:                                       ; preds = %for.end.178
  br label %if.end.180

if.end.180:                                       ; preds = %if.end.179, %for.end.159
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %for.body.125
  br label %for.inc.182

for.inc.182:                                      ; preds = %if.end.181
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l71, align 8
  %call183 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %102)
  store %struct.LIST_HELP* %call183, %struct.LIST_HELP** %l71, align 8
  br label %for.cond.119

for.end.184:                                      ; preds = %land.end
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %defpath, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %103)
  %104 = load %struct.term*, %struct.term** %defpredicate, align 8
  %105 = load %struct.term**, %struct.term*** %FoundPred.addr, align 8
  store %struct.term* %104, %struct.term** %105, align 8
  store i32 1, i32* %retval
  br label %return

if.end.185:                                       ; preds = %if.then.67
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %land.lhs.true.65, %if.end.60
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.186, %for.end.184, %if.then.174, %if.then.162, %if.end.59, %if.end.56, %if.then.55, %if.then.40, %if.then.32, %for.end, %if.then.25, %if.then
  %106 = load i32, i32* %retval
  ret i32 %106
}

; Function Attrs: nounwind uwtable
define i32 @cnf_ContainsPredicate(%struct.term* %Target, i32 %Predicate, %struct.term** %TargetPredicate, %struct.term** %ToTopLevel, %struct.LIST_HELP** %TargetVars, %struct.LIST_HELP** %VarsForTopLevel) #0 {
entry:
  %Target.addr = alloca %struct.term*, align 8
  %Predicate.addr = alloca i32, align 4
  %TargetPredicate.addr = alloca %struct.term**, align 8
  %ToTopLevel.addr = alloca %struct.term**, align 8
  %TargetVars.addr = alloca %struct.LIST_HELP**, align 8
  %VarsForTopLevel.addr = alloca %struct.LIST_HELP**, align 8
  %result = alloca i32, align 4
  store %struct.term* %Target, %struct.term** %Target.addr, align 8
  store i32 %Predicate, i32* %Predicate.addr, align 4
  store %struct.term** %TargetPredicate, %struct.term*** %TargetPredicate.addr, align 8
  store %struct.term** %ToTopLevel, %struct.term*** %ToTopLevel.addr, align 8
  store %struct.LIST_HELP** %TargetVars, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP** %VarsForTopLevel, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %0 = load %struct.term*, %struct.term** %Target.addr, align 8
  %1 = load i32, i32* %Predicate.addr, align 4
  %2 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %3 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %5 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call = call i32 @cnf_ContainsPredicateIntern(%struct.term* %0, i32 %1, i32 1, %struct.term** %2, %struct.term** %3, %struct.LIST_HELP** %4, %struct.LIST_HELP** %5)
  store i32 %call, i32* %result, align 4
  %6 = load i32, i32* %result, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i32 @cnf_ContainsPredicateIntern(%struct.term* %Target, i32 %Predicate, i32 %Polarity, %struct.term** %TargetPredicate, %struct.term** %ToTopLevel, %struct.LIST_HELP** %TargetVars, %struct.LIST_HELP** %VarsForTopLevel) #0 {
entry:
  %retval = alloca i32, align 4
  %Target.addr = alloca %struct.term*, align 8
  %Predicate.addr = alloca i32, align 4
  %Polarity.addr = alloca i32, align 4
  %TargetPredicate.addr = alloca %struct.term**, align 8
  %ToTopLevel.addr = alloca %struct.term**, align 8
  %TargetVars.addr = alloca %struct.LIST_HELP**, align 8
  %VarsForTopLevel.addr = alloca %struct.LIST_HELP**, align 8
  %s = alloca %struct.term*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %l43 = alloca %struct.LIST_HELP*, align 8
  %l81 = alloca %struct.LIST_HELP*, align 8
  %l127 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Target, %struct.term** %Target.addr, align 8
  store i32 %Predicate, i32* %Predicate.addr, align 4
  store i32 %Polarity, i32* %Polarity.addr, align 4
  store %struct.term** %TargetPredicate, %struct.term*** %TargetPredicate.addr, align 8
  store %struct.term** %ToTopLevel, %struct.term*** %ToTopLevel.addr, align 8
  store %struct.LIST_HELP** %TargetVars, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP** %VarsForTopLevel, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %0 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_And()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %Polarity.addr, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  %call4 = call i32 @fol_Or()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %lor.lhs.false.9

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %Polarity.addr, align 4
  %cmp8 = icmp eq i32 %3, -1
  br i1 %cmp8, label %if.then, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %land.lhs.true.7, %lor.lhs.false
  %4 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %4)
  %call11 = call i32 @fol_Implies()
  %call12 = call i32 @symbol_Equal(i32 %call10, i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %land.lhs.true.14, label %lor.lhs.false.16

land.lhs.true.14:                                 ; preds = %lor.lhs.false.9
  %5 = load i32, i32* %Polarity.addr, align 4
  %cmp15 = icmp ne i32 %5, 1
  br i1 %cmp15, label %if.then, label %lor.lhs.false.16

lor.lhs.false.16:                                 ; preds = %land.lhs.true.14, %lor.lhs.false.9
  %6 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call17 = call i32 @term_TopSymbol(%struct.term* %6)
  %call18 = call i32 @fol_Equiv()
  %call19 = call i32 @symbol_Equal(i32 %call17, i32 %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then, label %if.end.32

if.then:                                          ; preds = %lor.lhs.false.16, %land.lhs.true.14, %land.lhs.true.7, %land.lhs.true
  %7 = load %struct.term*, %struct.term** %Target.addr, align 8
  %8 = load i32, i32* %Predicate.addr, align 4
  %call21 = call %struct.term* @term_FindSubterm(%struct.term* %7, i32 %8)
  store %struct.term* %call21, %struct.term** %s, align 8
  %9 = load %struct.term*, %struct.term** %s, align 8
  %cmp22 = icmp eq %struct.term* %9, null
  br i1 %cmp22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load %struct.term*, %struct.term** %s, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot = xor i1 %tobool26, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call27 to %struct.term*
  %call28 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %13)
  %14 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %14, align 8
  %call29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call28, %struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %18, align 8
  %call31 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %19)
  %20 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %20, align 8
  %21 = load %struct.term*, %struct.term** %s, align 8
  %22 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  store %struct.term* %21, %struct.term** %22, align 8
  %23 = load %struct.term*, %struct.term** %Target.addr, align 8
  %24 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  store %struct.term* %23, %struct.term** %24, align 8
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %lor.lhs.false.16
  %25 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call33 = call i32 @term_TopSymbol(%struct.term* %25)
  %call34 = call i32 @fol_And()
  %call35 = call i32 @symbol_Equal(i32 %call33, i32 %call34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.42, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %if.end.32
  %26 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call38 = call i32 @term_TopSymbol(%struct.term* %26)
  %call39 = call i32 @fol_Or()
  %call40 = call i32 @symbol_Equal(i32 %call38, i32 %call39)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.58

if.then.42:                                       ; preds = %lor.lhs.false.37, %if.end.32
  %27 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call44 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %l43, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.55, %if.then.42
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l43, align 8
  %call46 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool47 = icmp ne i32 %call46, 0
  %lnot48 = xor i1 %tobool47, true
  br i1 %lnot48, label %for.body.49, label %for.end.57

for.body.49:                                      ; preds = %for.cond.45
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l43, align 8
  %call50 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call50 to %struct.term*
  %31 = load i32, i32* %Predicate.addr, align 4
  %32 = load i32, i32* %Polarity.addr, align 4
  %33 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %34 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %35 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %36 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call51 = call i32 @cnf_ContainsPredicateIntern(%struct.term* %30, i32 %31, i32 %32, %struct.term** %33, %struct.term** %34, %struct.LIST_HELP** %35, %struct.LIST_HELP** %36)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %for.body.49
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %for.body.49
  br label %for.inc.55

for.inc.55:                                       ; preds = %if.end.54
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l43, align 8
  %call56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %l43, align 8
  br label %for.cond.45

for.end.57:                                       ; preds = %for.cond.45
  store i32 0, i32* %retval
  br label %return

if.end.58:                                        ; preds = %lor.lhs.false.37
  %38 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call59 = call i32 @term_TopSymbol(%struct.term* %38)
  %call60 = call i32 @fol_IsQuantifier(i32 %call59)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.100

if.then.62:                                       ; preds = %if.end.58
  %39 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call63 = call %struct.term* @term_SecondArgument(%struct.term* %39)
  %40 = load i32, i32* %Predicate.addr, align 4
  %41 = load i32, i32* %Polarity.addr, align 4
  %42 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %43 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %44 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %45 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call64 = call i32 @cnf_ContainsPredicateIntern(%struct.term* %call63, i32 %40, i32 %41, %struct.term** %42, %struct.term** %43, %struct.LIST_HELP** %44, %struct.LIST_HELP** %45)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then.66, label %if.end.99

if.then.66:                                       ; preds = %if.then.62
  %46 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call67 = call i32 @term_TopSymbol(%struct.term* %46)
  %call68 = call i32 @fol_All()
  %call69 = call i32 @symbol_Equal(i32 %call67, i32 %call68)
  %tobool70 = icmp ne i32 %call69, 0
  br i1 %tobool70, label %land.lhs.true.71, label %lor.lhs.false.73

land.lhs.true.71:                                 ; preds = %if.then.66
  %47 = load i32, i32* %Polarity.addr, align 4
  %cmp72 = icmp eq i32 %47, 1
  br i1 %cmp72, label %if.then.80, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.71, %if.then.66
  %48 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call74 = call i32 @term_TopSymbol(%struct.term* %48)
  %call75 = call i32 @fol_Exist()
  %call76 = call i32 @symbol_Equal(i32 %call74, i32 %call75)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.98

land.lhs.true.78:                                 ; preds = %lor.lhs.false.73
  %49 = load i32, i32* %Polarity.addr, align 4
  %cmp79 = icmp eq i32 %49, -1
  br i1 %cmp79, label %if.then.80, label %if.end.98

if.then.80:                                       ; preds = %land.lhs.true.78, %land.lhs.true.71
  %50 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %50, align 8
  store %struct.LIST_HELP* %51, %struct.LIST_HELP** %l81, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.95, %if.then.80
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l81, align 8
  %call83 = call i32 @list_Empty(%struct.LIST_HELP* %52)
  %tobool84 = icmp ne i32 %call83, 0
  %lnot85 = xor i1 %tobool84, true
  br i1 %lnot85, label %for.body.86, label %for.end.97

for.body.86:                                      ; preds = %for.cond.82
  %53 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call87 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %53)
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l81, align 8
  %call88 = call i8* @list_Car(%struct.LIST_HELP* %54)
  %55 = bitcast i8* %call88 to %struct.term*
  %call89 = call i32 @term_ListContainsTerm(%struct.LIST_HELP* %call87, %struct.term* %55)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.91, label %if.end.94

if.then.91:                                       ; preds = %for.body.86
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l81, align 8
  %call92 = call i8* @list_Car(%struct.LIST_HELP* %56)
  %57 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %57, align 8
  %call93 = call %struct.LIST_HELP* @list_Cons(i8* %call92, %struct.LIST_HELP* %58)
  %59 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  store %struct.LIST_HELP* %call93, %struct.LIST_HELP** %59, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.91, %for.body.86
  br label %for.inc.95

for.inc.95:                                       ; preds = %if.end.94
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l81, align 8
  %call96 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %60)
  store %struct.LIST_HELP* %call96, %struct.LIST_HELP** %l81, align 8
  br label %for.cond.82

for.end.97:                                       ; preds = %for.cond.82
  br label %if.end.98

if.end.98:                                        ; preds = %for.end.97, %land.lhs.true.78, %lor.lhs.false.73
  store i32 1, i32* %retval
  br label %return

if.end.99:                                        ; preds = %if.then.62
  store i32 0, i32* %retval
  br label %return

if.end.100:                                       ; preds = %if.end.58
  %61 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call101 = call i32 @term_TopSymbol(%struct.term* %61)
  %call102 = call i32 @fol_Not()
  %call103 = call i32 @symbol_Equal(i32 %call101, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %if.then.105, label %if.end.108

if.then.105:                                      ; preds = %if.end.100
  %62 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call106 = call %struct.term* @term_FirstArgument(%struct.term* %62)
  %63 = load i32, i32* %Predicate.addr, align 4
  %64 = load i32, i32* %Polarity.addr, align 4
  %sub = sub nsw i32 0, %64
  %65 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %66 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %67 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %68 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call107 = call i32 @cnf_ContainsPredicateIntern(%struct.term* %call106, i32 %63, i32 %sub, %struct.term** %65, %struct.term** %66, %struct.LIST_HELP** %67, %struct.LIST_HELP** %68)
  store i32 %call107, i32* %retval
  br label %return

if.end.108:                                       ; preds = %if.end.100
  %69 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call109 = call i32 @term_TopSymbol(%struct.term* %69)
  %call110 = call i32 @fol_Implies()
  %call111 = call i32 @symbol_Equal(i32 %call109, i32 %call110)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.then.113, label %if.end.122

if.then.113:                                      ; preds = %if.end.108
  %70 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call114 = call %struct.term* @term_FirstArgument(%struct.term* %70)
  %71 = load i32, i32* %Predicate.addr, align 4
  %72 = load i32, i32* %Polarity.addr, align 4
  %sub115 = sub nsw i32 0, %72
  %73 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %74 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %75 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %76 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call116 = call i32 @cnf_ContainsPredicateIntern(%struct.term* %call114, i32 %71, i32 %sub115, %struct.term** %73, %struct.term** %74, %struct.LIST_HELP** %75, %struct.LIST_HELP** %76)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.113
  store i32 1, i32* %retval
  br label %return

if.end.119:                                       ; preds = %if.then.113
  %77 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call120 = call %struct.term* @term_SecondArgument(%struct.term* %77)
  %78 = load i32, i32* %Predicate.addr, align 4
  %79 = load i32, i32* %Polarity.addr, align 4
  %80 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  %81 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  %82 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %83 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %VarsForTopLevel.addr, align 8
  %call121 = call i32 @cnf_ContainsPredicateIntern(%struct.term* %call120, i32 %78, i32 %79, %struct.term** %80, %struct.term** %81, %struct.LIST_HELP** %82, %struct.LIST_HELP** %83)
  store i32 %call121, i32* %retval
  br label %return

if.end.122:                                       ; preds = %if.end.108
  %84 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call123 = call i32 @term_TopSymbol(%struct.term* %84)
  %85 = load i32, i32* %Predicate.addr, align 4
  %call124 = call i32 @symbol_Equal(i32 %call123, i32 %85)
  %tobool125 = icmp ne i32 %call124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.141

if.then.126:                                      ; preds = %if.end.122
  %86 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call128 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %86)
  store %struct.LIST_HELP* %call128, %struct.LIST_HELP** %l127, align 8
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.137, %if.then.126
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l127, align 8
  %call130 = call i32 @list_Empty(%struct.LIST_HELP* %87)
  %tobool131 = icmp ne i32 %call130, 0
  %lnot132 = xor i1 %tobool131, true
  br i1 %lnot132, label %for.body.133, label %for.end.139

for.body.133:                                     ; preds = %for.cond.129
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l127, align 8
  %call134 = call i8* @list_Car(%struct.LIST_HELP* %88)
  %89 = bitcast i8* %call134 to %struct.term*
  %call135 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %89)
  %90 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %90, align 8
  %call136 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call135, %struct.LIST_HELP* %91)
  %92 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP* %call136, %struct.LIST_HELP** %92, align 8
  br label %for.inc.137

for.inc.137:                                      ; preds = %for.body.133
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l127, align 8
  %call138 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %93)
  store %struct.LIST_HELP* %call138, %struct.LIST_HELP** %l127, align 8
  br label %for.cond.129

for.end.139:                                      ; preds = %for.cond.129
  %94 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %94, align 8
  %call140 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %95)
  %96 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TargetVars.addr, align 8
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %96, align 8
  %97 = load %struct.term*, %struct.term** %Target.addr, align 8
  %98 = load %struct.term**, %struct.term*** %TargetPredicate.addr, align 8
  store %struct.term* %97, %struct.term** %98, align 8
  %99 = load %struct.term*, %struct.term** %Target.addr, align 8
  %100 = load %struct.term**, %struct.term*** %ToTopLevel.addr, align 8
  store %struct.term* %99, %struct.term** %100, align 8
  store i32 1, i32* %retval
  br label %return

if.end.141:                                       ; preds = %if.end.122
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.141, %for.end.139, %if.end.119, %if.then.118, %if.then.105, %if.end.99, %if.end.98, %for.end.57, %if.then.53, %for.end, %if.then.23
  %101 = load i32, i32* %retval
  ret i32 %101
}

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_ApplyDefinitionOnce(%struct.term* %Predicate, %struct.term* %Formula, %struct.term* %TargetTerm, %struct.term* %TargetPredicate, i32* %Flags) #0 {
entry:
  %Predicate.addr = alloca %struct.term*, align 8
  %Formula.addr = alloca %struct.term*, align 8
  %TargetTerm.addr = alloca %struct.term*, align 8
  %TargetPredicate.addr = alloca %struct.term*, align 8
  %Flags.addr = alloca i32*, align 8
  %maxvar = alloca i32, align 4
  %maxvar_temp = alloca i32, align 4
  %bound = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %success = alloca i32, align 4
  store %struct.term* %Predicate, %struct.term** %Predicate.addr, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %TargetTerm, %struct.term** %TargetTerm.addr, align 8
  store %struct.term* %TargetPredicate, %struct.term** %TargetPredicate.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  %0 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call = call i32 @term_MaxVar(%struct.term* %0)
  store i32 %call, i32* %maxvar, align 4
  %1 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call1 = call i32 @term_MaxVar(%struct.term* %1)
  store i32 %call1, i32* %maxvar_temp, align 4
  %2 = load i32, i32* %maxvar_temp, align 4
  %3 = load i32, i32* %maxvar, align 4
  %cmp = icmp sgt i32 %2, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %maxvar_temp, align 4
  store i32 %4, i32* %maxvar, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %maxvar, align 4
  call void @symbol_SetStandardVarCounter(i32 %5)
  %6 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call2 = call %struct.LIST_HELP* @fol_BoundVariables(%struct.term* %6)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %bound, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %bound, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call4 to %struct.term*
  %call5 = call i32 @term_TopSymbol(%struct.term* %11)
  %call6 = call i32 @term_ContainsSymbol(%struct.term* %9, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %for.body
  %12 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call9 to %struct.term*
  %call10 = call i32 @term_TopSymbol(%struct.term* %14)
  %call11 = call i32 @symbol_CreateStandardVariable()
  call void @term_ExchangeVariable(%struct.term* %12, i32 %call10, i32 %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %bound, align 8
  call void @list_Delete(%struct.LIST_HELP* %16)
  %17 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %18 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %19 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %20 = load %struct.term*, %struct.term** %TargetPredicate.addr, align 8
  %call14 = call %struct.term* @cnf_ApplyDefinitionInternOnce(%struct.term* %17, %struct.term* %18, %struct.term* %19, %struct.term* %20, i32* %success)
  store %struct.term* %call14, %struct.term** %TargetTerm.addr, align 8
  %21 = load i32*, i32** %Flags.addr, align 8
  %call15 = call i32 @flag_GetFlagValue(i32* %21, i32 37)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.23

if.then.17:                                       ; preds = %for.end
  %22 = load i32, i32* %success, align 4
  %tobool18 = icmp ne i32 %22, 0
  br i1 %tobool18, label %if.then.19, label %if.end.22

if.then.19:                                       ; preds = %if.then.17
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %23)
  %24 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  call void @fol_PrettyPrint(%struct.term* %24)
  %call21 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.19, %if.then.17
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.end
  %25 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  ret %struct.term* %25
}

declare i32 @term_MaxVar(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_SetStandardVarCounter(i32 %Variable) #1 {
entry:
  %Variable.addr = alloca i32, align 4
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load i32, i32* %Variable.addr, align 4
  store i32 %0, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret void
}

declare %struct.LIST_HELP* @fol_BoundVariables(%struct.term*) #2

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

declare i32 @term_ContainsSymbol(%struct.term*, i32) #2

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
define internal i8* @list_Car(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %car = getelementptr inbounds %struct.LIST_HELP, %struct.LIST_HELP* %0, i32 0, i32 1
  %1 = load i8*, i8** %car, align 8
  ret i8* %1
}

declare void @term_ExchangeVariable(%struct.term*, i32, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateStandardVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_STANDARDVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_STANDARDVARCOUNTER, align 4
  ret i32 %inc
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
define internal %struct.term* @cnf_ApplyDefinitionInternOnce(%struct.term* %Predicate, %struct.term* %Formula, %struct.term* %TargetTerm, %struct.term* %TargetPredicate, i32* %Success) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Predicate.addr = alloca %struct.term*, align 8
  %Formula.addr = alloca %struct.term*, align 8
  %TargetTerm.addr = alloca %struct.term*, align 8
  %TargetPredicate.addr = alloca %struct.term*, align 8
  %Success.addr = alloca i32*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.term*, align 8
  store %struct.term* %Predicate, %struct.term** %Predicate.addr, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  store %struct.term* %TargetTerm, %struct.term** %TargetTerm.addr, align 8
  store %struct.term* %TargetPredicate, %struct.term** %TargetPredicate.addr, align 8
  store i32* %Success, i32** %Success.addr, align 8
  %0 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_IsQuantifier(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %2 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %3 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %4 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  %5 = load %struct.term*, %struct.term** %TargetPredicate.addr, align 8
  %6 = load i32*, i32** %Success.addr, align 8
  %call3 = call %struct.term* @cnf_ApplyDefinitionInternOnce(%struct.term* %2, %struct.term* %3, %struct.term* %call2, %struct.term* %5, i32* %6)
  call void @term_RplacSecondArgument(%struct.term* %1, %struct.term* %call3)
  %7 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call4 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %8 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %call4, %struct.term* %8)
  %9 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  store %struct.term* %9, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %10 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %10)
  %call6 = call i32 @fol_IsJunctor(i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %11 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %11)
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %call8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %lor.lhs.false, %if.end
  %12 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %15 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %16 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call16 to %struct.term*
  %19 = load %struct.term*, %struct.term** %TargetPredicate.addr, align 8
  %20 = load i32*, i32** %Success.addr, align 8
  %call17 = call %struct.term* @cnf_ApplyDefinitionInternOnce(%struct.term* %15, %struct.term* %16, %struct.term* %18, %struct.term* %19, i32* %20)
  %21 = bitcast %struct.term* %call17 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %14, i8* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call18 to %struct.term*
  %24 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %23, %struct.term* %24)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  store %struct.term* %26, %struct.term** %retval
  br label %return

if.end.20:                                        ; preds = %lor.lhs.false
  %27 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %call22 = call i32 @term_TopSymbol(%struct.term* %28)
  %call23 = call i32 @symbol_Equal(i32 %call21, i32 %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.30

if.then.25:                                       ; preds = %if.end.20
  %29 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %30 = load %struct.term*, %struct.term** %TargetPredicate.addr, align 8
  %cmp = icmp eq %struct.term* %29, %30
  br i1 %cmp, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %if.then.25
  %31 = load %struct.term*, %struct.term** %Formula.addr, align 8
  store %struct.term* %31, %struct.term** %result, align 8
  %32 = load %struct.term*, %struct.term** %result, align 8
  %33 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %33)
  %34 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  %call28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  call void @cnf_RplacVar(%struct.term* %32, %struct.LIST_HELP* %call27, %struct.LIST_HELP* %call28)
  %35 = load %struct.term*, %struct.term** %result, align 8
  call void @term_AddFatherLinks(%struct.term* %35)
  %36 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  call void @term_Delete(%struct.term* %36)
  %37 = load i32*, i32** %Success.addr, align 8
  store i32 1, i32* %37, align 4
  %38 = load %struct.term*, %struct.term** %result, align 8
  store %struct.term* %38, %struct.term** %retval
  br label %return

if.end.29:                                        ; preds = %if.then.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end.20
  %39 = load %struct.term*, %struct.term** %TargetTerm.addr, align 8
  store %struct.term* %39, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.26, %for.end, %if.then
  %40 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %40
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

declare void @fol_PrettyPrint(%struct.term*) #2

declare i32 @puts(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_NegationNormalFormula(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %term1 = alloca %struct.term*, align 8
  %subterm = alloca %struct.term*, align 8
  %termL = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %symbol = alloca i32, align 4
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.74, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @fol_Not()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.59

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %call6)
  %6 = bitcast i8* %call7 to %struct.term*
  store %struct.term* %6, %struct.term** %subterm, align 8
  %7 = load %struct.term*, %struct.term** %subterm, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %7)
  %call9 = call i32 @fol_Not()
  %call10 = call i32 @symbol_Equal(i32 %call8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then
  %8 = load %struct.term*, %struct.term** %term1, align 8
  %9 = load %struct.term*, %struct.term** %subterm, align 8
  %call13 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call14 = call i32 @term_TopSymbol(%struct.term* %call13)
  call void @term_RplacTop(%struct.term* %8, i32 %call14)
  %10 = load %struct.term*, %struct.term** %term1, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  call void @list_Delete(%struct.LIST_HELP* %call15)
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %12 = load %struct.term*, %struct.term** %subterm, align 8
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %12)
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call16)
  call void @term_RplacArgumentList(%struct.term* %11, %struct.LIST_HELP* %call17)
  %13 = load %struct.term*, %struct.term** %subterm, align 8
  %call18 = call %struct.term* @term_FirstArgument(%struct.term* %13)
  call void @term_Free(%struct.term* %call18)
  %14 = load %struct.term*, %struct.term** %subterm, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  call void @list_Delete(%struct.LIST_HELP* %call19)
  %15 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Free(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %term1, align 8
  %17 = bitcast %struct.term* %16 to i8*
  call void @vec_Push(i8* %17)
  br label %if.end.58

if.else:                                          ; preds = %if.then
  %18 = load %struct.term*, %struct.term** %subterm, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %18)
  %call21 = call i32 @fol_IsQuantifier(i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.34

if.then.23:                                       ; preds = %if.else
  %19 = load %struct.term*, %struct.term** %subterm, align 8
  %call24 = call i32 @term_TopSymbol(%struct.term* %19)
  %call25 = call i32 @cnf_GetDualSymbol(i32 %call24)
  store i32 %call25, i32* %symbol, align 4
  %call26 = call i32 @fol_Not()
  %20 = load %struct.term*, %struct.term** %subterm, align 8
  %call27 = call %struct.term* @term_SecondArgument(%struct.term* %20)
  %21 = bitcast %struct.term* %call27 to i8*
  %call28 = call %struct.LIST_HELP* @list_List(i8* %21)
  %call29 = call %struct.term* @term_Create(i32 %call26, %struct.LIST_HELP* %call28)
  store %struct.term* %call29, %struct.term** %termL, align 8
  %22 = load %struct.term*, %struct.term** %subterm, align 8
  %call30 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  %23 = load %struct.term*, %struct.term** %termL, align 8
  %24 = bitcast %struct.term* %23 to i8*
  call void @list_RplacSecond(%struct.LIST_HELP* %call30, i8* %24)
  %25 = load %struct.term*, %struct.term** %term1, align 8
  %26 = load i32, i32* %symbol, align 4
  call void @term_RplacTop(%struct.term* %25, i32 %26)
  %27 = load %struct.term*, %struct.term** %term1, align 8
  %call31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  call void @list_Delete(%struct.LIST_HELP* %call31)
  %28 = load %struct.term*, %struct.term** %term1, align 8
  %29 = load %struct.term*, %struct.term** %subterm, align 8
  %call32 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  %call33 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call32)
  call void @term_RplacArgumentList(%struct.term* %28, %struct.LIST_HELP* %call33)
  %30 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Delete(%struct.term* %30)
  br label %if.end.57

if.else.34:                                       ; preds = %if.else
  %31 = load %struct.term*, %struct.term** %subterm, align 8
  %call35 = call i32 @term_TopSymbol(%struct.term* %31)
  %call36 = call i32 @fol_Or()
  %call37 = call i32 @symbol_Equal(i32 %call35, i32 %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.34
  %32 = load %struct.term*, %struct.term** %subterm, align 8
  %call39 = call i32 @term_TopSymbol(%struct.term* %32)
  %call40 = call i32 @fol_And()
  %call41 = call i32 @symbol_Equal(i32 %call39, i32 %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.end

if.then.43:                                       ; preds = %lor.lhs.false, %if.else.34
  %33 = load %struct.term*, %struct.term** %subterm, align 8
  %call44 = call i32 @term_TopSymbol(%struct.term* %33)
  %call45 = call i32 @cnf_GetDualSymbol(i32 %call44)
  store i32 %call45, i32* %symbol, align 4
  %34 = load %struct.term*, %struct.term** %subterm, align 8
  %call46 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.43
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool48 = icmp ne i32 %call47, 0
  %lnot = xor i1 %tobool48, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call49 to %struct.term*
  store %struct.term* %37, %struct.term** %termL, align 8
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call50 = call i32 @fol_Not()
  %39 = load %struct.term*, %struct.term** %termL, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %call51 = call %struct.LIST_HELP* @list_List(i8* %40)
  %call52 = call %struct.term* @term_Create(i32 %call50, %struct.LIST_HELP* %call51)
  %41 = bitcast %struct.term* %call52 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %38, i8* %41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call53 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call53, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct.term*, %struct.term** %term1, align 8
  %44 = load i32, i32* %symbol, align 4
  call void @term_RplacTop(%struct.term* %43, i32 %44)
  %45 = load %struct.term*, %struct.term** %term1, align 8
  %call54 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %45)
  call void @list_Delete(%struct.LIST_HELP* %call54)
  %46 = load %struct.term*, %struct.term** %term1, align 8
  %47 = load %struct.term*, %struct.term** %subterm, align 8
  %call55 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %47)
  %call56 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call55)
  call void @term_RplacArgumentList(%struct.term* %46, %struct.LIST_HELP* %call56)
  %48 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Delete(%struct.term* %48)
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false
  br label %if.end.57

if.end.57:                                        ; preds = %if.end, %if.then.23
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %if.then.12
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %while.body
  %49 = load %struct.term*, %struct.term** %term1, align 8
  %call60 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %49)
  %call61 = call i32 @list_Empty(%struct.LIST_HELP* %call60)
  %tobool62 = icmp ne i32 %call61, 0
  br i1 %tobool62, label %if.end.74, label %if.then.63

if.then.63:                                       ; preds = %if.end.59
  %50 = load %struct.term*, %struct.term** %term1, align 8
  %call64 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %50)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.71, %if.then.63
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call66 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool67 = icmp ne i32 %call66, 0
  %lnot68 = xor i1 %tobool67, true
  br i1 %lnot68, label %for.body.69, label %for.end.73

for.body.69:                                      ; preds = %for.cond.65
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call70 = call i8* @list_Car(%struct.LIST_HELP* %52)
  call void @vec_Push(i8* %call70)
  br label %for.inc.71

for.inc.71:                                       ; preds = %for.body.69
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call72 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.65

for.end.73:                                       ; preds = %for.cond.65
  br label %if.end.74

if.end.74:                                        ; preds = %for.end.73, %if.end.59
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %54)
  %55 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %55
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @vec_ActMax() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @vec_Push(i8* %Value) #1 {
entry:
  %Value.addr = alloca i8*, align 8
  store i8* %Value, i8** %Value.addr, align 8
  %0 = load i8*, i8** %Value.addr, align 8
  %1 = load i32, i32* @vec_MAX, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @vec_MAX, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @vec_PopResult() #1 {
entry:
  %0 = load i32, i32* @vec_MAX, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @vec_MAX, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [10000 x i8*], [10000 x i8*]* @vec_VECTOR, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
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
define internal i32 @fol_Not() #1 {
entry:
  %0 = load i32, i32* @fol_NOT, align 4
  ret i32 %0
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
define internal i32 @fol_IsQuantifier(i32 %S) #1 {
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

; Function Attrs: nounwind uwtable
define internal i32 @cnf_GetDualSymbol(i32 %symbol) #0 {
entry:
  %symbol.addr = alloca i32, align 4
  %dual = alloca i32, align 4
  store i32 %symbol, i32* %symbol.addr, align 4
  %0 = load i32, i32* %symbol.addr, align 4
  store i32 %0, i32* %dual, align 4
  %1 = load i32, i32* %symbol.addr, align 4
  %call = call i32 @fol_All()
  %call1 = call i32 @symbol_Equal(i32 %1, i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @fol_Exist()
  store i32 %call2, i32* %dual, align 4
  br label %if.end.22

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %symbol.addr, align 4
  %call3 = call i32 @fol_Exist()
  %call4 = call i32 @symbol_Equal(i32 %2, i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else
  %call7 = call i32 @fol_All()
  store i32 %call7, i32* %dual, align 4
  br label %if.end.21

if.else.8:                                        ; preds = %if.else
  %3 = load i32, i32* %symbol.addr, align 4
  %call9 = call i32 @fol_Or()
  %call10 = call i32 @symbol_Equal(i32 %3, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else.14

if.then.12:                                       ; preds = %if.else.8
  %call13 = call i32 @fol_And()
  store i32 %call13, i32* %dual, align 4
  br label %if.end.20

if.else.14:                                       ; preds = %if.else.8
  %4 = load i32, i32* %symbol.addr, align 4
  %call15 = call i32 @fol_And()
  %call16 = call i32 @symbol_Equal(i32 %4, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end

if.then.18:                                       ; preds = %if.else.14
  %call19 = call i32 @fol_Or()
  store i32 %call19, i32* %dual, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.18, %if.else.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end, %if.then.12
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.then.6
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.then
  %5 = load i32, i32* %dual, align 4
  ret i32 %5
}

declare %struct.term* @term_Create(i32, %struct.LIST_HELP*) #2

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
define internal void @list_RplacSecond(%struct.LIST_HELP* %L, i8* %P) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  %P.addr = alloca i8*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  store i8* %P, i8** %P.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %0)
  %1 = load i8*, i8** %P.addr, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %call, i8* %1)
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

declare void @term_Delete(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Or() #1 {
entry:
  %0 = load i32, i32* @fol_OR, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_And() #1 {
entry:
  %0 = load i32, i32* @fol_AND, align 4
  ret i32 %0
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
define internal void @vec_SetMax(i32 %Index) #1 {
entry:
  %Index.addr = alloca i32, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  store i32 %0, i32* @vec_MAX, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Help = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %List1 = alloca %struct.LIST_HELP*, align 8
  %List2 = alloca %struct.LIST_HELP*, align 8
  %NewResult = alloca %struct.LIST_HELP*, align 8
  %Symbol = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Symbol, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %1 = load i32, i32* %Symbol, align 4
  %call2 = call i32 @fol_Or()
  %call3 = call i32 @symbol_Equal(i32 %1, i32 %call2)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.47

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %call4)
  %3 = bitcast i8* %call5 to %struct.term*
  %call6 = call %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %3)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Result, align 8
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.44, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool10 = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool10, true
  br i1 %lnot, label %for.body, label %for.end.46

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call11 to %struct.term*
  %call12 = call %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %7)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %Help, align 8
  %call13 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %NewResult, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.41, %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot17 = xor i1 %tobool16, true
  br i1 %lnot17, label %for.body.18, label %for.end.43

for.body.18:                                      ; preds = %for.cond.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc, %for.body.18
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool21 = icmp ne i32 %call20, 0
  %lnot22 = xor i1 %tobool21, true
  br i1 %lnot22, label %for.body.23, label %for.end

for.body.23:                                      ; preds = %for.cond.19
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call24 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %List1, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call25 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %List2, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end, label %if.then.29

if.then.29:                                       ; preds = %for.body.23
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1, align 8
  %call30 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %List1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.29, %for.body.23
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.36, label %if.then.34

if.then.34:                                       ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2, align 8
  %call35 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %List2, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.34, %if.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2, align 8
  %call37 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %20, %struct.LIST_HELP* %21)
  %call38 = call %struct.LIST_HELP* @term_DestroyDuplicatesInList(%struct.LIST_HELP* %call37)
  %22 = bitcast %struct.LIST_HELP* %call38 to i8*
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewResult, align 8
  %call39 = call %struct.LIST_HELP* @list_Cons(i8* %22, %struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %NewResult, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call40 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.19

for.end:                                          ; preds = %for.cond.19
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond.14

for.end.43:                                       ; preds = %for.cond.14
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Help, align 8
  call void @list_Delete(%struct.LIST_HELP* %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  call void @list_Delete(%struct.LIST_HELP* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewResult, align 8
  store %struct.LIST_HELP* %28, %struct.LIST_HELP** %Result, align 8
  br label %for.inc.44

for.inc.44:                                       ; preds = %for.end.43
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end.46:                                       ; preds = %for.cond
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %retval
  br label %return

if.end.47:                                        ; preds = %entry
  %31 = load i32, i32* %Symbol, align 4
  %call48 = call i32 @fol_And()
  %call49 = call i32 @symbol_Equal(i32 %31, i32 %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.68

if.then.51:                                       ; preds = %if.end.47
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %32)
  %call53 = call i8* @list_Car(%struct.LIST_HELP* %call52)
  %33 = bitcast i8* %call53 to %struct.term*
  %call54 = call %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %33)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %Result, align 8
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call55 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  %call56 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call55)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %if.then.51
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %for.body.61, label %for.end.67

for.body.61:                                      ; preds = %for.cond.57
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call62 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call62 to %struct.term*
  %call63 = call %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %37)
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call64 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call63, %struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %Result, align 8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.61
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.57

for.end.67:                                       ; preds = %for.cond.57
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %40, %struct.LIST_HELP** %retval
  br label %return

if.end.68:                                        ; preds = %if.end.47
  %41 = load i32, i32* %Symbol, align 4
  %call69 = call i32 @fol_Not()
  %call70 = call i32 @symbol_Equal(i32 %41, i32 %call69)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.68
  %42 = load i32, i32* %Symbol, align 4
  %call72 = call i32 @symbol_IsPredicate(i32 %42)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %lor.lhs.false, %if.end.68
  %43 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call75 = call %struct.term* @term_Copy(%struct.term* %43)
  %44 = bitcast %struct.term* %call75 to i8*
  %call76 = call %struct.LIST_HELP* @list_List(i8* %44)
  %45 = bitcast %struct.LIST_HELP* %call76 to i8*
  %call77 = call %struct.LIST_HELP* @list_List(i8* %45)
  store %struct.LIST_HELP* %call77, %struct.LIST_HELP** %retval
  br label %return

if.end.78:                                        ; preds = %lor.lhs.false
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call79 = call i32 @fflush(%struct._IO_FILE* %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i32 0, i32 0), i32 1306)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.4, i32 0, i32 0))
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call81 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %48)
  call void @misc_DumpCore()
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  store %struct.LIST_HELP* %49, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.78, %if.then.74, %for.end.67, %for.end.46
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %50
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
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
define internal %struct.LIST_HELP* @term_DestroyDuplicatesInList(%struct.LIST_HELP* %Terms) #1 {
entry:
  %Terms.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Terms, %struct.LIST_HELP** %Terms.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Terms.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicatesFree(%struct.LIST_HELP* %0, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*), void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret %struct.LIST_HELP* %call
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

declare %struct.term* @term_Copy(%struct.term*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fflush(%struct._IO_FILE* %1)
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fflush(%struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fflush(%struct._IO_FILE* %3)
  call void @abort() #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @cnf_FPrintClause(%struct.term* %term, %struct._IO_FILE* %file) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @fol_Or()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %7)
  call void @vec_Push(i8* %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %while.body
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %10 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_FPrint(%struct._IO_FILE* %9, %struct.term* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %12)
  ret void
}

declare void @term_FPrint(%struct._IO_FILE*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define void @cnf_FPrint(%struct.term* %term, %struct._IO_FILE* %file) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @fol_And()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %7)
  call void @vec_Push(i8* %call9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %9 = load %struct.term*, %struct.term** %term1, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %9)
  %call12 = call i32 @fol_Or()
  %call13 = call i32 @symbol_Equal(i32 %call11, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load %struct.term*, %struct.term** %term1, align 8
  %call15 = call i32 @term_TopSymbol(%struct.term* %10)
  %call16 = call i32 @symbol_IsPredicate(i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.23, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %11)
  %call20 = call i32 @fol_Not()
  %call21 = call i32 @symbol_Equal(i32 %call19, i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %lor.lhs.false.18, %lor.lhs.false, %if.else
  %12 = load %struct.term*, %struct.term** %term1, align 8
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @cnf_FPrintClause(%struct.term* %12, %struct._IO_FILE* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.23, %lor.lhs.false.18
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %14)
  ret void
}

; Function Attrs: nounwind uwtable
define void @cnf_StdoutPrint(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %termlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %termlist, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.term*
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.term*
  %call8 = call i32 @fol_IsNegativeLiteral(%struct.term* %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call10 to %struct.term*
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %termlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.15
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call20 to %struct.term*
  call void @term_Print(%struct.term* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %call22 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call23 to %struct.term*
  call void @term_Print(%struct.term* %15)
  %call24 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %for.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsNegativeLiteral(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_Not()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  %call4 = call i32 @term_TopSymbol(%struct.term* %call3)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %tobool6, %land.rhs ]
  %land.ext = zext i1 %2 to i32
  ret i32 %land.ext
}

declare void @term_Print(%struct.term*) #2

; Function Attrs: nounwind uwtable
define void @cnf_FilePrint(%struct.term* %term, %struct._IO_FILE* %file) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %termlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %termlist, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.term*
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.term*
  %call8 = call i32 @fol_IsNegativeLiteral(%struct.term* %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call10 to %struct.term*
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %termlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call20 to %struct.term*
  call void @term_FPrint(%struct._IO_FILE* %11, %struct.term* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call22 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call23 to %struct.term*
  call void @term_FPrint(%struct._IO_FILE* %16, %struct.term* %18)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call24 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %19)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else, %for.end
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end.25
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @cnf_FilePrintPrefix(%struct.term* %term, %struct._IO_FILE* %file) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %termlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %termlist, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call3 to %struct.term*
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  %call5 = call i32 @symbol_IsPredicate(i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call7 to %struct.term*
  %call8 = call i32 @fol_IsNegativeLiteral(%struct.term* %5)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call10 to %struct.term*
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %termlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false, %for.body
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.else, label %if.then.14

if.then.14:                                       ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  store %struct.LIST_HELP* %9, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.14
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.15
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call20 to %struct.term*
  call void @term_FPrintPrefix(%struct._IO_FILE* %11, %struct.term* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.26, label %if.then.24

if.then.24:                                       ; preds = %for.body.19
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %15)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %for.body.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call28 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %17)
  br label %if.end.31

if.else:                                          ; preds = %if.end
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call29 to %struct.term*
  call void @term_FPrintPrefix(%struct._IO_FILE* %18, %struct.term* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call30 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), %struct._IO_FILE* %21)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %for.end
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

declare void @term_FPrintPrefix(%struct._IO_FILE*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_Flatten(%struct.term* %Term, i32 %Symbol) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Symbol.addr = alloca i32, align 4
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Argterm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Symbol, i32* %Symbol.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Symbol.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.17

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %3)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call5 to %struct.term*
  store %struct.term* %5, %struct.term** %Argterm, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan2, align 8
  %7 = load %struct.term*, %struct.term** %Argterm, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %7)
  %8 = load i32, i32* %Symbol.addr, align 4
  %call8 = call i32 @symbol_Equal(i32 %call7, i32 %8)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %while.body
  %9 = load %struct.term*, %struct.term** %Argterm, align 8
  %10 = load i32, i32* %Symbol.addr, align 4
  %call11 = call %struct.term* @cnf_Flatten(%struct.term* %9, i32 %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %12 = load %struct.term*, %struct.term** %Argterm, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call12)
  call void @list_NInsert(%struct.LIST_HELP* %11, %struct.LIST_HELP* %call13)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %14 = load %struct.term*, %struct.term** %Argterm, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %call14)
  call void @list_Rplaca(%struct.LIST_HELP* %13, i8* %call15)
  %15 = load %struct.term*, %struct.term** %Argterm, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  call void @list_Free(%struct.LIST_HELP* %call16)
  %16 = load %struct.term*, %struct.term** %Argterm, align 8
  call void @term_Free(%struct.term* %16)
  br label %if.end

if.end:                                           ; preds = %if.then.10, %while.body
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.17

if.end.17:                                        ; preds = %while.end, %entry
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %18
}

declare void @list_NInsert(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

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

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Subtop = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  %Update = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_IsComplex(%struct.term* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %1, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call1, i32* %Top, align 4
  store i32 0, i32* %Update, align 4
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %3, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else.37

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then.5
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool8 = icmp ne i32 %call7, 0
  %lnot = xor i1 %tobool8, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.term*
  %call10 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %7)
  store %struct.term* %call10, %struct.term** %Result, align 8
  %8 = load %struct.term*, %struct.term** %Result, align 8
  %call11 = call i32 @term_TopSymbol(%struct.term* %8)
  store i32 %call11, i32* %Subtop, align 4
  %9 = load i32, i32* %Subtop, align 4
  %call12 = call i32 @fol_True()
  %call13 = call i32 @symbol_Equal(i32 %9, i32 %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body
  store i32 1, i32* %Update, align 4
  br label %if.end.24

if.else:                                          ; preds = %while.body
  %10 = load i32, i32* %Subtop, align 4
  %call16 = call i32 @fol_False()
  %call17 = call i32 @symbol_Equal(i32 %10, i32 %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.end.23

if.then.19:                                       ; preds = %if.else
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call20 = call i32 @fol_False()
  call void @term_RplacTop(%struct.term* %11, i32 %call20)
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call21)
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %13, %struct.LIST_HELP* %call22)
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %14, %struct.term** %retval
  br label %return

if.end.23:                                        ; preds = %if.else
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.then.15
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, i32* %Update, align 4
  %tobool26 = icmp ne i32 %16, 0
  br i1 %tobool26, label %if.then.27, label %if.end.36

if.then.27:                                       ; preds = %while.end
  %17 = load %struct.term*, %struct.term** %Term.addr, align 8
  %18 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %call29 = call %struct.LIST_HELP* @fol_DeleteTrueTermFromList(%struct.LIST_HELP* %call28)
  call void @term_RplacArgumentList(%struct.term* %17, %struct.LIST_HELP* %call29)
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call30 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %call30)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.27
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call34 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %20, i32 %call34)
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %21, %struct.term** %retval
  br label %return

if.end.35:                                        ; preds = %if.then.27
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %while.end
  br label %if.end.239

if.else.37:                                       ; preds = %if.end
  %22 = load i32, i32* %Top, align 4
  %call38 = call i32 @fol_Or()
  %call39 = call i32 @symbol_Equal(i32 %22, i32 %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.else.78

if.then.41:                                       ; preds = %if.else.37
  %23 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call42 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.43

while.cond.43:                                    ; preds = %if.end.64, %if.then.41
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %24)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %while.body.47, label %while.end.66

while.body.47:                                    ; preds = %while.cond.43
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call48 to %struct.term*
  %call49 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %26)
  store %struct.term* %call49, %struct.term** %Result, align 8
  %27 = load %struct.term*, %struct.term** %Result, align 8
  %call50 = call i32 @term_TopSymbol(%struct.term* %27)
  store i32 %call50, i32* %Subtop, align 4
  %28 = load i32, i32* %Subtop, align 4
  %call51 = call i32 @fol_False()
  %call52 = call i32 @symbol_Equal(i32 %28, i32 %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %while.body.47
  store i32 1, i32* %Update, align 4
  br label %if.end.64

if.else.55:                                       ; preds = %while.body.47
  %29 = load i32, i32* %Subtop, align 4
  %call56 = call i32 @fol_True()
  %call57 = call i32 @symbol_Equal(i32 %29, i32 %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %if.else.55
  %30 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call60 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %30, i32 %call60)
  %31 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %31)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call61)
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call62 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %32, %struct.LIST_HELP* %call62)
  %33 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %33, %struct.term** %retval
  br label %return

if.end.63:                                        ; preds = %if.else.55
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.54
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call65 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call65, %struct.LIST_HELP** %Scan, align 8
  br label %while.cond.43

while.end.66:                                     ; preds = %while.cond.43
  %35 = load i32, i32* %Update, align 4
  %tobool67 = icmp ne i32 %35, 0
  br i1 %tobool67, label %if.then.68, label %if.end.77

if.then.68:                                       ; preds = %while.end.66
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %37 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call69 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %37)
  %call70 = call %struct.LIST_HELP* @fol_DeleteFalseTermFromList(%struct.LIST_HELP* %call69)
  call void @term_RplacArgumentList(%struct.term* %36, %struct.LIST_HELP* %call70)
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call71 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %38)
  %call72 = call i32 @list_Empty(%struct.LIST_HELP* %call71)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.then.74, label %if.end.76

if.then.74:                                       ; preds = %if.then.68
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call75 = call i32 @fol_False()
  call void @term_RplacTop(%struct.term* %39, i32 %call75)
  %40 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %40, %struct.term** %retval
  br label %return

if.end.76:                                        ; preds = %if.then.68
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %while.end.66
  br label %if.end.238

if.else.78:                                       ; preds = %if.else.37
  %41 = load i32, i32* %Top, align 4
  %call79 = call i32 @fol_IsQuantifier(i32 %41)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.78
  %42 = load i32, i32* %Top, align 4
  %call81 = call i32 @fol_Not()
  %call82 = call i32 @symbol_Equal(i32 %42, i32 %call81)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.else.133

if.then.84:                                       ; preds = %lor.lhs.false, %if.else.78
  %43 = load i32, i32* %Top, align 4
  %call85 = call i32 @fol_IsQuantifier(i32 %43)
  %tobool86 = icmp ne i32 %call85, 0
  br i1 %tobool86, label %if.then.87, label %if.else.90

if.then.87:                                       ; preds = %if.then.84
  %44 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call88 = call %struct.term* @term_SecondArgument(%struct.term* %44)
  %call89 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call88)
  store %struct.term* %call89, %struct.term** %Result, align 8
  br label %if.end.93

if.else.90:                                       ; preds = %if.then.84
  %45 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call91 = call %struct.term* @term_FirstArgument(%struct.term* %45)
  %call92 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call91)
  store %struct.term* %call92, %struct.term** %Result, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.87
  %46 = load %struct.term*, %struct.term** %Result, align 8
  %call94 = call i32 @term_TopSymbol(%struct.term* %46)
  store i32 %call94, i32* %Subtop, align 4
  %47 = load i32, i32* %Subtop, align 4
  %call95 = call i32 @fol_False()
  %call96 = call i32 @symbol_Equal(i32 %47, i32 %call95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %land.lhs.true, label %lor.lhs.false.101

land.lhs.true:                                    ; preds = %if.end.93
  %48 = load i32, i32* %Top, align 4
  %call98 = call i32 @fol_Not()
  %call99 = call i32 @symbol_Equal(i32 %48, i32 %call98)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.then.108, label %lor.lhs.false.101

lor.lhs.false.101:                                ; preds = %land.lhs.true, %if.end.93
  %49 = load i32, i32* %Subtop, align 4
  %call102 = call i32 @fol_True()
  %call103 = call i32 @symbol_Equal(i32 %49, i32 %call102)
  %tobool104 = icmp ne i32 %call103, 0
  br i1 %tobool104, label %land.lhs.true.105, label %if.else.112

land.lhs.true.105:                                ; preds = %lor.lhs.false.101
  %50 = load i32, i32* %Top, align 4
  %call106 = call i32 @fol_IsQuantifier(i32 %50)
  %tobool107 = icmp ne i32 %call106, 0
  br i1 %tobool107, label %if.then.108, label %if.else.112

if.then.108:                                      ; preds = %land.lhs.true.105, %land.lhs.true
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call109 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %51, i32 %call109)
  %52 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call110 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %52)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call110)
  %53 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call111 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %53, %struct.LIST_HELP* %call111)
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %54, %struct.term** %retval
  br label %return

if.else.112:                                      ; preds = %land.lhs.true.105, %lor.lhs.false.101
  %55 = load i32, i32* %Subtop, align 4
  %call113 = call i32 @fol_True()
  %call114 = call i32 @symbol_Equal(i32 %55, i32 %call113)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %land.lhs.true.116, label %lor.lhs.false.120

land.lhs.true.116:                                ; preds = %if.else.112
  %56 = load i32, i32* %Top, align 4
  %call117 = call i32 @fol_Not()
  %call118 = call i32 @symbol_Equal(i32 %56, i32 %call117)
  %tobool119 = icmp ne i32 %call118, 0
  br i1 %tobool119, label %if.then.127, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.116, %if.else.112
  %57 = load i32, i32* %Subtop, align 4
  %call121 = call i32 @fol_False()
  %call122 = call i32 @symbol_Equal(i32 %57, i32 %call121)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %land.lhs.true.124, label %if.end.131

land.lhs.true.124:                                ; preds = %lor.lhs.false.120
  %58 = load i32, i32* %Top, align 4
  %call125 = call i32 @fol_IsQuantifier(i32 %58)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %land.lhs.true.124, %land.lhs.true.116
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call128 = call i32 @fol_False()
  call void @term_RplacTop(%struct.term* %59, i32 %call128)
  %60 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call129 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %60)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call129)
  %61 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call130 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %61, %struct.LIST_HELP* %call130)
  %62 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %62, %struct.term** %retval
  br label %return

if.end.131:                                       ; preds = %land.lhs.true.124, %lor.lhs.false.120
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131
  br label %if.end.237

if.else.133:                                      ; preds = %lor.lhs.false
  %63 = load i32, i32* %Top, align 4
  %call134 = call i32 @fol_Implies()
  %call135 = call i32 @symbol_Equal(i32 %63, i32 %call134)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.then.137, label %if.else.180

if.then.137:                                      ; preds = %if.else.133
  %64 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call138 = call %struct.term* @term_FirstArgument(%struct.term* %64)
  %call139 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call138)
  store %struct.term* %call139, %struct.term** %Result, align 8
  %65 = load %struct.term*, %struct.term** %Result, align 8
  %call140 = call i32 @term_TopSymbol(%struct.term* %65)
  store i32 %call140, i32* %Subtop, align 4
  %66 = load i32, i32* %Subtop, align 4
  %call141 = call i32 @fol_False()
  %call142 = call i32 @symbol_Equal(i32 %66, i32 %call141)
  %tobool143 = icmp ne i32 %call142, 0
  br i1 %tobool143, label %if.then.144, label %if.else.148

if.then.144:                                      ; preds = %if.then.137
  %67 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call145 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %67, i32 %call145)
  %68 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call146 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %68)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call146)
  %69 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call147 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %69, %struct.LIST_HELP* %call147)
  %70 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %70, %struct.term** %retval
  br label %return

if.else.148:                                      ; preds = %if.then.137
  %71 = load i32, i32* %Subtop, align 4
  %call149 = call i32 @fol_True()
  %call150 = call i32 @symbol_Equal(i32 %71, i32 %call149)
  %tobool151 = icmp ne i32 %call150, 0
  br i1 %tobool151, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.else.148
  %72 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Delete(%struct.term* %72)
  %73 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call153 = call %struct.term* @term_SecondArgument(%struct.term* %73)
  store %struct.term* %call153, %struct.term** %Result, align 8
  %74 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call154 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %74)
  call void @list_Delete(%struct.LIST_HELP* %call154)
  %75 = load %struct.term*, %struct.term** %Term.addr, align 8
  %76 = load %struct.term*, %struct.term** %Result, align 8
  %call155 = call i32 @term_TopSymbol(%struct.term* %76)
  call void @term_RplacTop(%struct.term* %75, i32 %call155)
  %77 = load %struct.term*, %struct.term** %Term.addr, align 8
  %78 = load %struct.term*, %struct.term** %Result, align 8
  %call156 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %78)
  call void @term_RplacArgumentList(%struct.term* %77, %struct.LIST_HELP* %call156)
  %79 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Free(%struct.term* %79)
  %80 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call157 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %80)
  store %struct.term* %call157, %struct.term** %retval
  br label %return

if.end.158:                                       ; preds = %if.else.148
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158
  %81 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call160 = call %struct.term* @term_SecondArgument(%struct.term* %81)
  %call161 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call160)
  store %struct.term* %call161, %struct.term** %Result, align 8
  %82 = load %struct.term*, %struct.term** %Result, align 8
  %call162 = call i32 @term_TopSymbol(%struct.term* %82)
  store i32 %call162, i32* %Subtop, align 4
  %83 = load i32, i32* %Subtop, align 4
  %call163 = call i32 @fol_True()
  %call164 = call i32 @symbol_Equal(i32 %83, i32 %call163)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then.166, label %if.else.170

if.then.166:                                      ; preds = %if.end.159
  %84 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call167 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %84, i32 %call167)
  %85 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call168 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %85)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call168)
  %86 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call169 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %86, %struct.LIST_HELP* %call169)
  %87 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %87, %struct.term** %retval
  br label %return

if.else.170:                                      ; preds = %if.end.159
  %88 = load i32, i32* %Subtop, align 4
  %call171 = call i32 @fol_False()
  %call172 = call i32 @symbol_Equal(i32 %88, i32 %call171)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.then.174, label %if.end.178

if.then.174:                                      ; preds = %if.else.170
  %89 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call175 = call i32 @fol_Not()
  call void @term_RplacTop(%struct.term* %89, i32 %call175)
  %90 = load %struct.term*, %struct.term** %Term.addr, align 8
  %91 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call176 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %91)
  %call177 = call %struct.LIST_HELP* @fol_DeleteFalseTermFromList(%struct.LIST_HELP* %call176)
  call void @term_RplacArgumentList(%struct.term* %90, %struct.LIST_HELP* %call177)
  br label %if.end.178

if.end.178:                                       ; preds = %if.then.174, %if.else.170
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178
  br label %if.end.236

if.else.180:                                      ; preds = %if.else.133
  %92 = load i32, i32* %Top, align 4
  %call181 = call i32 @fol_Equiv()
  %call182 = call i32 @symbol_Equal(i32 %92, i32 %call181)
  %tobool183 = icmp ne i32 %call182, 0
  br i1 %tobool183, label %if.then.184, label %if.end.235

if.then.184:                                      ; preds = %if.else.180
  %93 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call185 = call %struct.term* @term_FirstArgument(%struct.term* %93)
  %call186 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call185)
  store %struct.term* %call186, %struct.term** %Result, align 8
  %94 = load %struct.term*, %struct.term** %Result, align 8
  %call187 = call i32 @term_TopSymbol(%struct.term* %94)
  store i32 %call187, i32* %Subtop, align 4
  %95 = load i32, i32* %Subtop, align 4
  %call188 = call i32 @fol_False()
  %call189 = call i32 @symbol_Equal(i32 %95, i32 %call188)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.191, label %if.else.202

if.then.191:                                      ; preds = %if.then.184
  %96 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call192 = call i32 @fol_Not()
  call void @term_RplacTop(%struct.term* %96, i32 %call192)
  %97 = load %struct.term*, %struct.term** %Term.addr, align 8
  %98 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call193 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %98)
  %call194 = call %struct.LIST_HELP* @fol_DeleteFalseTermFromList(%struct.LIST_HELP* %call193)
  call void @term_RplacArgumentList(%struct.term* %97, %struct.LIST_HELP* %call194)
  %99 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call195 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %99)
  %call196 = call i32 @list_Empty(%struct.LIST_HELP* %call195)
  %tobool197 = icmp ne i32 %call196, 0
  br i1 %tobool197, label %if.then.198, label %if.end.200

if.then.198:                                      ; preds = %if.then.191
  %100 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call199 = call i32 @fol_True()
  call void @term_RplacTop(%struct.term* %100, i32 %call199)
  %101 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %101, %struct.term** %retval
  br label %return

if.end.200:                                       ; preds = %if.then.191
  %102 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call201 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %102)
  store %struct.term* %call201, %struct.term** %retval
  br label %return

if.else.202:                                      ; preds = %if.then.184
  %103 = load i32, i32* %Subtop, align 4
  %call203 = call i32 @fol_True()
  %call204 = call i32 @symbol_Equal(i32 %103, i32 %call203)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then.206, label %if.end.212

if.then.206:                                      ; preds = %if.else.202
  %104 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Delete(%struct.term* %104)
  %105 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call207 = call %struct.term* @term_SecondArgument(%struct.term* %105)
  store %struct.term* %call207, %struct.term** %Result, align 8
  %106 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call208 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %106)
  call void @list_Delete(%struct.LIST_HELP* %call208)
  %107 = load %struct.term*, %struct.term** %Term.addr, align 8
  %108 = load %struct.term*, %struct.term** %Result, align 8
  %call209 = call i32 @term_TopSymbol(%struct.term* %108)
  call void @term_RplacTop(%struct.term* %107, i32 %call209)
  %109 = load %struct.term*, %struct.term** %Term.addr, align 8
  %110 = load %struct.term*, %struct.term** %Result, align 8
  %call210 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %110)
  call void @term_RplacArgumentList(%struct.term* %109, %struct.LIST_HELP* %call210)
  %111 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Free(%struct.term* %111)
  %112 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call211 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %112)
  store %struct.term* %call211, %struct.term** %retval
  br label %return

if.end.212:                                       ; preds = %if.else.202
  br label %if.end.213

if.end.213:                                       ; preds = %if.end.212
  %113 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call214 = call %struct.term* @term_SecondArgument(%struct.term* %113)
  %call215 = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %call214)
  store %struct.term* %call215, %struct.term** %Result, align 8
  %114 = load %struct.term*, %struct.term** %Result, align 8
  %call216 = call i32 @term_TopSymbol(%struct.term* %114)
  store i32 %call216, i32* %Subtop, align 4
  %115 = load i32, i32* %Subtop, align 4
  %call217 = call i32 @fol_False()
  %call218 = call i32 @symbol_Equal(i32 %115, i32 %call217)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.then.220, label %if.else.224

if.then.220:                                      ; preds = %if.end.213
  %116 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call221 = call i32 @fol_Not()
  call void @term_RplacTop(%struct.term* %116, i32 %call221)
  %117 = load %struct.term*, %struct.term** %Term.addr, align 8
  %118 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call222 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %118)
  %call223 = call %struct.LIST_HELP* @fol_DeleteFalseTermFromList(%struct.LIST_HELP* %call222)
  call void @term_RplacArgumentList(%struct.term* %117, %struct.LIST_HELP* %call223)
  br label %if.end.234

if.else.224:                                      ; preds = %if.end.213
  %119 = load i32, i32* %Subtop, align 4
  %call225 = call i32 @fol_True()
  %call226 = call i32 @symbol_Equal(i32 %119, i32 %call225)
  %tobool227 = icmp ne i32 %call226, 0
  br i1 %tobool227, label %if.then.228, label %if.end.233

if.then.228:                                      ; preds = %if.else.224
  %120 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Delete(%struct.term* %120)
  %121 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call229 = call %struct.term* @term_FirstArgument(%struct.term* %121)
  store %struct.term* %call229, %struct.term** %Result, align 8
  %122 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call230 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %122)
  call void @list_Delete(%struct.LIST_HELP* %call230)
  %123 = load %struct.term*, %struct.term** %Term.addr, align 8
  %124 = load %struct.term*, %struct.term** %Result, align 8
  %call231 = call i32 @term_TopSymbol(%struct.term* %124)
  call void @term_RplacTop(%struct.term* %123, i32 %call231)
  %125 = load %struct.term*, %struct.term** %Term.addr, align 8
  %126 = load %struct.term*, %struct.term** %Result, align 8
  %call232 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %126)
  call void @term_RplacArgumentList(%struct.term* %125, %struct.LIST_HELP* %call232)
  %127 = load %struct.term*, %struct.term** %Result, align 8
  call void @term_Free(%struct.term* %127)
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.228, %if.else.224
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.220
  br label %if.end.235

if.end.235:                                       ; preds = %if.end.234, %if.else.180
  br label %if.end.236

if.end.236:                                       ; preds = %if.end.235, %if.end.179
  br label %if.end.237

if.end.237:                                       ; preds = %if.end.236, %if.end.132
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.end.77
  br label %if.end.239

if.end.239:                                       ; preds = %if.end.238, %if.end.36
  %128 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %128, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.239, %if.then.206, %if.end.200, %if.then.198, %if.then.166, %if.then.152, %if.then.144, %if.then.127, %if.then.108, %if.then.74, %if.then.59, %if.then.33, %if.then.19, %if.then
  %129 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %129
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
define internal i32 @fol_True() #1 {
entry:
  %0 = load i32, i32* @fol_TRUE, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_False() #1 {
entry:
  %0 = load i32, i32* @fol_FALSE, align 4
  ret i32 %0
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
define internal %struct.LIST_HELP* @fol_DeleteTrueTermFromList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteElementIfFree(%struct.LIST_HELP* %0, i32 (i8*)* bitcast (i32 (%struct.term*)* @fol_IsTrue to i32 (i8*)*), void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @fol_DeleteFalseTermFromList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteElementIfFree(%struct.LIST_HELP* %0, i32 (i8*)* bitcast (i32 (%struct.term*)* @fol_IsFalse to i32 (i8*)*), void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Implies() #1 {
entry:
  %0 = load i32, i32* @fol_IMPLIES, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equiv() #1 {
entry:
  %0 = load i32, i32* @fol_EQUIV, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_ObviousSimplifications(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cnf_RemoveTrivialAtoms(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @cnf_RemoveTrivialOperators(%struct.term* %1)
  store %struct.term* %call1, %struct.term** %Term.addr, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @cnf_SimplifyQuantors(%struct.term* %2)
  store %struct.term* %call2, %struct.term** %Term.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %3
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_RemoveTrivialOperators(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsPredicate(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %2, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_And()
  %call3 = call i32 @symbol_Equal(i32 %3, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, i32* %Top, align 4
  %call5 = call i32 @fol_Or()
  %call6 = call i32 @symbol_Equal(i32 %4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.end
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call8)
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %land.lhs.true
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  store %struct.term* %call13, %struct.term** %Result, align 8
  %7 = load %struct.term*, %struct.term** %Result, align 8
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @term_Superterm(%struct.term* %8)
  call void @term_RplacSuperterm(%struct.term* %7, %struct.term* %call14)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  call void @list_Delete(%struct.LIST_HELP* %call15)
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %Result, align 8
  %call16 = call %struct.term* @cnf_RemoveTrivialOperators(%struct.term* %11)
  store %struct.term* %call16, %struct.term** %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.17
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %13)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot = xor i1 %tobool20, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call21 to %struct.term*
  %call22 = call %struct.term* @cnf_RemoveTrivialOperators(%struct.term* %16)
  %17 = bitcast %struct.term* %call22 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %14, i8* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call23 to %struct.term*
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %19, %struct.term* %20)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %22, %struct.term** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then
  %23 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %23
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_SimplifyQuantors(%struct.term* %Term) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Top = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Vars = alloca %struct.LIST_HELP*, align 8
  %Var = alloca %struct.term*, align 8
  %Subterm = alloca %struct.term*, align 8
  %Aux = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @symbol_IsPredicate(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* %Top, align 4
  %call2 = call i32 @fol_Varlist()
  %call3 = call i32 @symbol_Equal(i32 %2, i32 %call2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %3, %struct.term** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %Top, align 4
  %call5 = call i32 @fol_IsQuantifier(i32 %4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.48

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Vars, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  store %struct.term* %call9, %struct.term** %Subterm, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.7
  %6 = load %struct.term*, %struct.term** %Subterm, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %6)
  %7 = load i32, i32* %Top, align 4
  %call11 = call i32 @symbol_Equal(i32 %call10, i32 %7)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.term* @term_FirstArgument(%struct.term* %8)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Subterm, align 8
  %call15 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %10)
  %call16 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call14, %struct.LIST_HELP* %call15)
  call void @term_RplacArgumentList(%struct.term* %call13, %struct.LIST_HELP* %call16)
  %11 = load %struct.term*, %struct.term** %Subterm, align 8
  %call17 = call %struct.term* @term_FirstArgument(%struct.term* %11)
  call void @term_Free(%struct.term* %call17)
  %12 = load %struct.term*, %struct.term** %Subterm, align 8
  %call18 = call %struct.term* @term_SecondArgument(%struct.term* %12)
  store %struct.term* %call18, %struct.term** %Aux, align 8
  %13 = load %struct.term*, %struct.term** %Subterm, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  call void @list_Delete(%struct.LIST_HELP* %call19)
  %14 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %14)
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call20)
  %16 = load %struct.term*, %struct.term** %Aux, align 8
  %17 = bitcast %struct.term* %16 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call21, i8* %17)
  %18 = load %struct.term*, %struct.term** %Aux, align 8
  store %struct.term* %18, %struct.term** %Subterm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call22 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %19)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool24 = icmp ne i32 %call23, 0
  %lnot = xor i1 %tobool24, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call25 to %struct.term*
  store %struct.term* %22, %struct.term** %Var, align 8
  %23 = load %struct.term*, %struct.term** %Var, align 8
  %24 = load %struct.term*, %struct.term** %Subterm, align 8
  %call26 = call i32 @fol_VarOccursFreely(%struct.term* %23, %struct.term* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.30, label %if.then.28

if.then.28:                                       ; preds = %for.body
  %25 = load %struct.term*, %struct.term** %Var, align 8
  %26 = bitcast %struct.term* %25 to i8*
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %26, %struct.LIST_HELP* %27)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Vars, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %call32 = call i32 @list_Empty(%struct.LIST_HELP* %29)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.47, label %if.then.34

if.then.34:                                       ; preds = %for.end
  %30 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call35 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  store %struct.term* %call35, %struct.term** %Subterm, align 8
  %31 = load %struct.term*, %struct.term** %Subterm, align 8
  %32 = load %struct.term*, %struct.term** %Subterm, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %call37 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %call36, %struct.LIST_HELP* %33)
  call void @term_RplacArgumentList(%struct.term* %31, %struct.LIST_HELP* %call37)
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %34)
  %35 = load %struct.term*, %struct.term** %Subterm, align 8
  %call38 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %35)
  %call39 = call i32 @list_Empty(%struct.LIST_HELP* %call38)
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.46

if.then.41:                                       ; preds = %if.then.34
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call42 = call %struct.term* @term_SecondArgument(%struct.term* %36)
  store %struct.term* %call42, %struct.term** %Subterm, align 8
  %37 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call43 = call %struct.term* @term_FirstArgument(%struct.term* %37)
  call void @term_Delete(%struct.term* %call43)
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call44 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %38)
  call void @list_Delete(%struct.LIST_HELP* %call44)
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Free(%struct.term* %39)
  %40 = load %struct.term*, %struct.term** %Subterm, align 8
  %call45 = call %struct.term* @cnf_SimplifyQuantors(%struct.term* %40)
  store %struct.term* %call45, %struct.term** %retval
  br label %return

if.end.46:                                        ; preds = %if.then.34
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end
  %41 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call49 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %41)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.57, %if.end.48
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call i32 @list_Empty(%struct.LIST_HELP* %42)
  %tobool52 = icmp ne i32 %call51, 0
  %lnot53 = xor i1 %tobool52, true
  br i1 %lnot53, label %for.body.54, label %for.end.59

for.body.54:                                      ; preds = %for.cond.50
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call55 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call55 to %struct.term*
  %call56 = call %struct.term* @cnf_SimplifyQuantors(%struct.term* %45)
  %46 = bitcast %struct.term* %call56 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %43, i8* %46)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.54
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.50

for.end.59:                                       ; preds = %for.cond.50
  %48 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %48, %struct.term** %retval
  br label %return

return:                                           ; preds = %for.end.59, %if.then.41, %if.then
  %49 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %49
}

; Function Attrs: nounwind uwtable
define i32 @cnf_HaveProof(%struct.LIST_HELP* %TermList, %struct.term* %ToProve, i32* %InputFlags, i32* %InputPrecedence) #0 {
entry:
  %TermList.addr = alloca %struct.LIST_HELP*, align 8
  %ToProve.addr = alloca %struct.term*, align 8
  %InputFlags.addr = alloca i32*, align 8
  %InputPrecedence.addr = alloca i32*, align 8
  %search = alloca %struct.PROOFSEARCH_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %usables = alloca %struct.LIST_HELP*, align 8
  %symblist = alloca %struct.LIST_HELP*, align 8
  %emptyclauses = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %t = alloca %struct.term*, align 8
  store %struct.LIST_HELP* %TermList, %struct.LIST_HELP** %TermList.addr, align 8
  store %struct.term* %ToProve, %struct.term** %ToProve.addr, align 8
  store i32* %InputFlags, i32** %InputFlags.addr, align 8
  store i32* %InputPrecedence, i32** %InputPrecedence.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_HAVEPROOFPS, align 8
  store %struct.PROOFSEARCH_HELP* %0, %struct.PROOFSEARCH_HELP** %search, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %symblist, align 8
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %usables, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %search, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Flags, align 8
  %2 = load i32*, i32** %Flags, align 8
  call void @flag_CleanStore(i32* %2)
  %3 = load i32*, i32** %InputFlags.addr, align 8
  %4 = load i32*, i32** %Flags, align 8
  call void @flag_InitFlotterSubproofFlags(i32* %3, i32* %4)
  %5 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %search, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %5)
  store i32* %call2, i32** %Precedence, align 8
  %6 = load i32*, i32** %InputPrecedence.addr, align 8
  %7 = load i32*, i32** %Precedence, align 8
  call void @symbol_TransferPrecedence(i32* %6, i32* %7)
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList.addr, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call4 to %struct.term*
  %call5 = call %struct.term* @term_Copy(%struct.term* %11)
  store %struct.term* %call5, %struct.term** %t, align 8
  %12 = load %struct.term*, %struct.term** %t, align 8
  %13 = load i32*, i32** %Precedence, align 8
  %call6 = call %struct.term* @cnf_Cnf(%struct.term* %12, i32* %13, %struct.LIST_HELP** %symblist)
  store %struct.term* %call6, %struct.term** %t, align 8
  %14 = load %struct.term*, %struct.term** %t, align 8
  %15 = load i32*, i32** %Flags, align 8
  %16 = load i32*, i32** %Precedence, align 8
  %call7 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %14, i32 0, i32 0, i32* %15, i32* %16)
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %usables, align 8
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call7, %struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %usables, align 8
  %18 = load %struct.term*, %struct.term** %t, align 8
  call void @term_Delete(%struct.term* %18)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call10 = call i32 @fol_Not()
  %20 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  %call11 = call %struct.term* @term_Copy(%struct.term* %20)
  %21 = bitcast %struct.term* %call11 to i8*
  %call12 = call %struct.LIST_HELP* @list_List(i8* %21)
  %call13 = call %struct.term* @term_Create(i32 %call10, %struct.LIST_HELP* %call12)
  store %struct.term* %call13, %struct.term** %ToProve.addr, align 8
  %22 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %22)
  %23 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  %24 = load i32*, i32** %Precedence, align 8
  %call14 = call %struct.term* @cnf_Cnf(%struct.term* %23, i32* %24, %struct.LIST_HELP** %symblist)
  store %struct.term* %call14, %struct.term** %ToProve.addr, align 8
  %25 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  %26 = load i32*, i32** %Flags, align 8
  %27 = load i32*, i32** %Precedence, align 8
  %call15 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %25, i32 0, i32 0, i32* %26, i32* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %usables, align 8
  %call16 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call15, %struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %usables, align 8
  %29 = load %struct.term*, %struct.term** %ToProve.addr, align 8
  call void @term_Delete(%struct.term* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %usables, align 8
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.cond.17:                                      ; preds = %for.inc.23, %for.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool19 = icmp ne i32 %call18, 0
  %lnot20 = xor i1 %tobool19, true
  br i1 %lnot20, label %for.body.21, label %for.end.25

for.body.21:                                      ; preds = %for.cond.17
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call22 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %33, i32 8)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.21
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.17

for.end.25:                                       ; preds = %for.cond.17
  %35 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %search, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %usables, align 8
  %call26 = call %struct.LIST_HELP* @cnf_SatUnit(%struct.PROOFSEARCH_HELP* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %emptyclauses, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %emptyclauses, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.else, label %if.then

if.then:                                          ; preds = %for.end.25
  store i32 1, i32* %found, align 4
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %emptyclauses, align 8
  %call29 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %emptyclauses, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %emptyclauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %39)
  br label %if.end

if.else:                                          ; preds = %for.end.25
  store i32 0, i32* %found, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %40 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %search, align 8
  call void @prfs_Clean(%struct.PROOFSEARCH_HELP* %40)
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symblist, align 8
  call void @symbol_DeleteSymbolList(%struct.LIST_HELP* %41)
  %42 = load i32, i32* %found, align 4
  ret i32 %42
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

declare void @flag_InitFlotterSubproofFlags(i32*, i32*) #2

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
define internal void @symbol_TransferPrecedence(i32* %Source, i32* %Target) #1 {
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

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_Cnf(%struct.term* %Term, i32* %Precedence, %struct.LIST_HELP** %Symblist) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %0)
  store %struct.term* %call, %struct.term** %Term.addr, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load i32*, i32** %Precedence.addr, align 8
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call1 = call %struct.term* @ren_Rename(%struct.term* %2, i32* %3, %struct.LIST_HELP** %4, i32 0, i32 0)
  store %struct.term* %call1, %struct.term** %Term.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @cnf_RemoveEquivImplFromFormula(%struct.term* %5)
  store %struct.term* %call2, %struct.term** %Term.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %6)
  store %struct.term* %call3, %struct.term** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.term* @cnf_AntiPrenex(%struct.term* %7)
  %8 = load i32*, i32** %Precedence.addr, align 8
  %9 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call5 = call %struct.term* @cnf_SkolemFormula(%struct.term* %call4, i32* %8, %struct.LIST_HELP** %9)
  store %struct.term* %call5, %struct.term** %Term.addr, align 8
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.term* @cnf_DistributiveFormula(%struct.term* %10)
  store %struct.term* %call6, %struct.term** %Term.addr, align 8
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %11
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %term, i32 %Sorts, i32 %Conclause, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %term.addr = alloca %struct.term*, align 8
  %Sorts.addr = alloca i32, align 4
  %Conclause.addr = alloca i32, align 4
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %termlist = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %clauselist = alloca %struct.LIST_HELP*, align 8
  %newclauselist = alloca %struct.LIST_HELP*, align 8
  %delclauselist = alloca %struct.LIST_HELP*, align 8
  %condlist = alloca %struct.LIST_HELP*, align 8
  %clause = alloca %struct.CLAUSE_HELP*, align 8
  %j = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store i32 %Sorts, i32* %Sorts.addr, align 4
  store i32 %Conclause, i32* %Conclause.addr, align 4
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %termlist, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %clauselist, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call2 = call i32 @fol_IsTrue(%struct.term* %0)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call i32 @fol_IsNegativeLiteral(%struct.term* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load %struct.term*, %struct.term** %term.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %3)
  %call6 = call i32 @symbol_IsPredicate(i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %4 = load %struct.term*, %struct.term** %term.addr, align 8
  %call9 = call %struct.term* @term_Copy(%struct.term* %4)
  %5 = bitcast %struct.term* %call9 to i8*
  %call10 = call %struct.LIST_HELP* @list_List(i8* %5)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %termlist, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %7 = load i32, i32* %Sorts.addr, align 4
  %8 = load i32, i32* %Conclause.addr, align 4
  %9 = load i32*, i32** %Flags.addr, align 8
  %10 = load i32*, i32** %Precedence.addr, align 8
  %call11 = call %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP* %6, i32 %7, i32 %8, i32 1, i32* %9, i32* %10)
  store %struct.CLAUSE_HELP* %call11, %struct.CLAUSE_HELP** %clause, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %13 = bitcast %struct.CLAUSE_HELP* %12 to i8*
  %call12 = call %struct.LIST_HELP* @list_List(i8* %13)
  %call13 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %11, %struct.LIST_HELP* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %clauselist, align 8
  call void @term_StartMinRenaming()
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call14 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %14, i32 0)
  %call15 = call %struct.term* @term_Rename(%struct.term* %call14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %call17 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %delclauselist, align 8
  %17 = load %struct.term*, %struct.term** %term.addr, align 8
  %call18 = call %struct.term* @cnf_MakeOneAndTerm(%struct.term* %17)
  store %struct.term* %call18, %struct.term** %term.addr, align 8
  %18 = load %struct.term*, %struct.term** %term.addr, align 8
  %call19 = call i32 @term_TopSymbol(%struct.term* %18)
  %call20 = call i32 @fol_And()
  %call21 = call i32 @symbol_Equal(i32 %call19, i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else.61

if.then.23:                                       ; preds = %if.end.16
  %19 = load %struct.term*, %struct.term** %term.addr, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %if.then.23
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot = xor i1 %tobool26, true
  br i1 %lnot, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call27 to %struct.term*
  %call28 = call %struct.term* @cnf_MakeOneOrTerm(%struct.term* %23)
  %24 = bitcast %struct.term* %call28 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %21, i8* %24)
  %call29 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %termlist, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call30 to %struct.term*
  %call31 = call i32 @term_TopSymbol(%struct.term* %26)
  %call32 = call i32 @symbol_IsPredicate(i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.else, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %for.body
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call35 to %struct.term*
  %call36 = call i32 @fol_IsNegativeLiteral(%struct.term* %28)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.else, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false.34
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call39 to %struct.term*
  %call40 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %30)
  %call41 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call40)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %termlist, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call42 = call %struct.LIST_HELP* @term_DestroyDuplicatesInList(%struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %termlist, align 8
  br label %if.end.46

if.else:                                          ; preds = %lor.lhs.false.34, %for.body
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call43 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call43 to %struct.term*
  %call44 = call %struct.term* @term_Copy(%struct.term* %33)
  %34 = bitcast %struct.term* %call44 to i8*
  %call45 = call %struct.LIST_HELP* @list_List(i8* %34)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %termlist, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.38
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %35)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.57, label %if.then.49

if.then.49:                                       ; preds = %if.end.46
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %37 = load i32, i32* %Sorts.addr, align 4
  %38 = load i32, i32* %Conclause.addr, align 4
  %39 = load i32*, i32** %Flags.addr, align 8
  %40 = load i32*, i32** %Precedence.addr, align 8
  %call50 = call %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP* %36, i32 %37, i32 %38, i32 1, i32* %39, i32* %40)
  store %struct.CLAUSE_HELP* %call50, %struct.CLAUSE_HELP** %clause, align 8
  call void @term_StartMinRenaming()
  store i32 0, i32* %j, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc, %if.then.49
  %41 = load i32, i32* %j, align 4
  %42 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call52 = call i32 @clause_Length(%struct.CLAUSE_HELP* %42)
  %cmp = icmp slt i32 %41, %call52
  br i1 %cmp, label %for.body.53, label %for.end

for.body.53:                                      ; preds = %for.cond.51
  %43 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %44 = load i32, i32* %j, align 4
  %call54 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %43, i32 %44)
  %call55 = call %struct.term* @term_Rename(%struct.term* %call54)
  br label %for.inc

for.inc:                                          ; preds = %for.body.53
  %45 = load i32, i32* %j, align 4
  %inc = add nsw i32 %45, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.51

for.end:                                          ; preds = %for.cond.51
  %46 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %47 = bitcast %struct.CLAUSE_HELP* %46 to i8*
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call56 = call %struct.LIST_HELP* @list_Cons(i8* %47, %struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %clauselist, align 8
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %49)
  br label %if.end.57

if.end.57:                                        ; preds = %for.end, %if.end.46
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  br label %if.end.92

if.else.61:                                       ; preds = %if.end.16
  %51 = load %struct.term*, %struct.term** %term.addr, align 8
  %call62 = call %struct.term* @cnf_MakeOneOrTerm(%struct.term* %51)
  store %struct.term* %call62, %struct.term** %term.addr, align 8
  %52 = load %struct.term*, %struct.term** %term.addr, align 8
  %call63 = call i32 @term_TopSymbol(%struct.term* %52)
  %call64 = call i32 @symbol_IsPredicate(i32 %call63)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.else.73, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.else.61
  %53 = load %struct.term*, %struct.term** %term.addr, align 8
  %call67 = call i32 @fol_IsNegativeLiteral(%struct.term* %53)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.else.73, label %if.then.69

if.then.69:                                       ; preds = %lor.lhs.false.66
  %54 = load %struct.term*, %struct.term** %term.addr, align 8
  %call70 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %54)
  %call71 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call70)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %termlist, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call72 = call %struct.LIST_HELP* @term_DestroyDuplicatesInList(%struct.LIST_HELP* %55)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %termlist, align 8
  br label %if.end.76

if.else.73:                                       ; preds = %lor.lhs.false.66, %if.else.61
  %56 = load %struct.term*, %struct.term** %term.addr, align 8
  %call74 = call %struct.term* @term_Copy(%struct.term* %56)
  %57 = bitcast %struct.term* %call74 to i8*
  %call75 = call %struct.LIST_HELP* @list_List(i8* %57)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %termlist, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.73, %if.then.69
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %call77 = call i32 @list_Empty(%struct.LIST_HELP* %58)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.end.91, label %if.then.79

if.then.79:                                       ; preds = %if.end.76
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  %60 = load i32, i32* %Sorts.addr, align 4
  %61 = load i32, i32* %Conclause.addr, align 4
  %62 = load i32*, i32** %Flags.addr, align 8
  %63 = load i32*, i32** %Precedence.addr, align 8
  %call80 = call %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP* %59, i32 %60, i32 %61, i32 1, i32* %62, i32* %63)
  store %struct.CLAUSE_HELP* %call80, %struct.CLAUSE_HELP** %clause, align 8
  call void @term_StartMinRenaming()
  store i32 0, i32* %j, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.87, %if.then.79
  %64 = load i32, i32* %j, align 4
  %65 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %call82 = call i32 @clause_Length(%struct.CLAUSE_HELP* %65)
  %cmp83 = icmp slt i32 %64, %call82
  br i1 %cmp83, label %for.body.84, label %for.end.89

for.body.84:                                      ; preds = %for.cond.81
  %66 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %67 = load i32, i32* %j, align 4
  %call85 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %66, i32 %67)
  %call86 = call %struct.term* @term_Rename(%struct.term* %call85)
  br label %for.inc.87

for.inc.87:                                       ; preds = %for.body.84
  %68 = load i32, i32* %j, align 4
  %inc88 = add nsw i32 %68, 1
  store i32 %inc88, i32* %j, align 4
  br label %for.cond.81

for.end.89:                                       ; preds = %for.cond.81
  %69 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %70 = bitcast %struct.CLAUSE_HELP* %69 to i8*
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call90 = call %struct.LIST_HELP* @list_Cons(i8* %70, %struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %clauselist, align 8
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %72)
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.89, %if.end.76
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.end.60
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  store %struct.LIST_HELP* %73, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc.105, %if.end.92
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call94 = call i32 @list_Empty(%struct.LIST_HELP* %74)
  %tobool95 = icmp ne i32 %call94, 0
  %lnot96 = xor i1 %tobool95, true
  br i1 %lnot96, label %for.body.97, label %for.end.107

for.body.97:                                      ; preds = %for.cond.93
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call98 = call i8* @list_Car(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call98 to %struct.CLAUSE_HELP*
  %call99 = call %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP* %76)
  store %struct.LIST_HELP* %call99, %struct.LIST_HELP** %condlist, align 8
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %condlist, align 8
  %call100 = call i32 @list_Empty(%struct.LIST_HELP* %77)
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %if.end.104, label %if.then.102

if.then.102:                                      ; preds = %for.body.97
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call103 = call i8* @list_Car(%struct.LIST_HELP* %78)
  %79 = bitcast i8* %call103 to %struct.CLAUSE_HELP*
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %condlist, align 8
  %81 = load i32*, i32** %Flags.addr, align 8
  %82 = load i32*, i32** %Precedence.addr, align 8
  call void @clause_DeleteLiterals(%struct.CLAUSE_HELP* %79, %struct.LIST_HELP* %80, i32* %81, i32* %82)
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %for.body.97
  %83 = load %struct.LIST_HELP*, %struct.LIST_HELP** %condlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %83)
  br label %for.inc.105

for.inc.105:                                      ; preds = %if.end.104
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call106 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %84)
  store %struct.LIST_HELP* %call106, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.93

for.end.107:                                      ; preds = %for.cond.93
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call108 = call %struct.LIST_HELP* @cnf_SubsumeClauseList(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call108, %struct.LIST_HELP** %clauselist, align 8
  %call109 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %newclauselist, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.end.107
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call110 = call i32 @list_Empty(%struct.LIST_HELP* %86)
  %tobool111 = icmp ne i32 %call110, 0
  %lnot112 = xor i1 %tobool111, true
  br i1 %lnot112, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %call113 = call %struct.CLAUSE_HELP* @res_SelectLightestClause(%struct.LIST_HELP* %87)
  store %struct.CLAUSE_HELP* %call113, %struct.CLAUSE_HELP** %clause, align 8
  %88 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauselist, align 8
  %89 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %90 = bitcast %struct.CLAUSE_HELP* %89 to i8*
  %call114 = call %struct.LIST_HELP* @list_List(i8* %90)
  %call115 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %88, %struct.LIST_HELP* %call114)
  store %struct.LIST_HELP* %call115, %struct.LIST_HELP** %newclauselist, align 8
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  %92 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %clause, align 8
  %93 = bitcast %struct.CLAUSE_HELP* %92 to i8*
  %call116 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %91, i8* %93)
  store %struct.LIST_HELP* %call116, %struct.LIST_HELP** %clauselist, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %94 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist, align 8
  call void @list_Delete(%struct.LIST_HELP* %94)
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauselist, align 8
  store %struct.LIST_HELP* %95, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.129, %while.end
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call118 = call i32 @list_Empty(%struct.LIST_HELP* %96)
  %tobool119 = icmp ne i32 %call118, 0
  %lnot120 = xor i1 %tobool119, true
  br i1 %lnot120, label %for.body.121, label %for.end.131

for.body.121:                                     ; preds = %for.cond.117
  %97 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call122 = call i8* @list_Car(%struct.LIST_HELP* %97)
  %98 = bitcast i8* %call122 to %struct.CLAUSE_HELP*
  %call123 = call i32 @res_HasTautology(%struct.CLAUSE_HELP* %98)
  %tobool124 = icmp ne i32 %call123, 0
  br i1 %tobool124, label %if.then.125, label %if.end.128

if.then.125:                                      ; preds = %for.body.121
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call126 = call i8* @list_Car(%struct.LIST_HELP* %99)
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delclauselist, align 8
  %call127 = call %struct.LIST_HELP* @list_Cons(i8* %call126, %struct.LIST_HELP* %100)
  store %struct.LIST_HELP* %call127, %struct.LIST_HELP** %delclauselist, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.125, %for.body.121
  br label %for.inc.129

for.inc.129:                                      ; preds = %if.end.128
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call130 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %101)
  store %struct.LIST_HELP* %call130, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.117

for.end.131:                                      ; preds = %for.cond.117
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delclauselist, align 8
  store %struct.LIST_HELP* %102, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.132

for.cond.132:                                     ; preds = %for.inc.139, %for.end.131
  %103 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call133 = call i32 @list_Empty(%struct.LIST_HELP* %103)
  %tobool134 = icmp ne i32 %call133, 0
  %lnot135 = xor i1 %tobool134, true
  br i1 %lnot135, label %for.body.136, label %for.end.141

for.body.136:                                     ; preds = %for.cond.132
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauselist, align 8
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call137 = call i8* @list_Car(%struct.LIST_HELP* %105)
  %call138 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %104, i8* %call137)
  store %struct.LIST_HELP* %call138, %struct.LIST_HELP** %newclauselist, align 8
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.136
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call140 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %106)
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.132

for.end.141:                                      ; preds = %for.cond.132
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %delclauselist, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %107)
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newclauselist, align 8
  store %struct.LIST_HELP* %108, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.141, %if.then.8, %if.then
  %109 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %109
}

declare void @term_AddFatherLinks(%struct.term*) #2

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
define internal %struct.LIST_HELP* @cnf_SatUnit(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %ClauseList) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %ClauseList.addr = alloca %struct.LIST_HELP*, align 8
  %Given = alloca %struct.CLAUSE_HELP*, align 8
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

while.cond:                                       ; preds = %if.end.37, %entry
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
  %10 = load i32, i32* @red_ALL, align 4
  %call9 = call %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP* %8, %struct.CLAUSE_HELP* %9, i32 %10)
  store %struct.CLAUSE_HELP* %call9, %struct.CLAUSE_HELP** %Given, align 8
  %11 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %tobool10 = icmp ne %struct.CLAUSE_HELP* %11, null
  br i1 %tobool10, label %if.then, label %if.end.37

if.then:                                          ; preds = %while.body
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %call11 = call i32 @clause_IsEmptyClause(%struct.CLAUSE_HELP* %12)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %13 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %14 = bitcast %struct.CLAUSE_HELP* %13 to i8*
  %call14 = call %struct.LIST_HELP* @list_List(i8* %14)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %EmptyClauses, align 8
  br label %if.end.36

if.else:                                          ; preds = %if.then
  %15 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %17 = load i32, i32* @red_USABLE, align 4
  %call15 = call %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP* %15, %struct.CLAUSE_HELP* %16, i32 %17)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %BackReduced, align 8
  %18 = load i32, i32* %Derived, align 4
  %cmp = icmp ne i32 %18, 0
  br i1 %cmp, label %if.then.16, label %if.else.26

if.then.16:                                       ; preds = %if.else
  %19 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %20 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call17 = call %struct.SHARED_INDEX_NODE* @prfs_UsableSharingIndex(%struct.PROOFSEARCH_HELP* %20)
  %21 = load i32*, i32** %Flags, align 8
  %22 = load i32*, i32** %Precedence, align 8
  %call18 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %19, %struct.SHARED_INDEX_NODE* %call17, i32 0, i32* %21, i32* %22)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %Derivables, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %24 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  %25 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call19 = call %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %25)
  %26 = load i32*, i32** %Flags, align 8
  %27 = load i32*, i32** %Precedence, align 8
  %call20 = call %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP* %24, %struct.SHARED_INDEX_NODE* %call19, i32 0, i32* %26, i32* %27)
  %call21 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %23, %struct.LIST_HELP* %call20)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Derivables, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call22 = call i32 @list_Length(%struct.LIST_HELP* %28)
  store i32 %call22, i32* %n, align 4
  %29 = load i32, i32* %n, align 4
  %30 = load i32, i32* %Derived, align 4
  %cmp23 = icmp ugt i32 %29, %30
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %if.then.16
  store i32 0, i32* %Derived, align 4
  br label %if.end

if.else.25:                                       ; preds = %if.then.16
  %31 = load i32, i32* %n, align 4
  %32 = load i32, i32* %Derived, align 4
  %sub = sub i32 %32, %31
  store i32 %sub, i32* %Derived, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.25, %if.then.24
  br label %if.end.28

if.else.26:                                       ; preds = %if.else
  %call27 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Derivables, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.26, %if.end
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %BackReduced, align 8
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %33, %struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Derivables, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  %call30 = call %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP* %35, %struct.LIST_HELP** %EmptyClauses)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %Derivables, align 8
  %36 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %37 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Given, align 8
  call void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP* %36, %struct.CLAUSE_HELP* %37)
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  store %struct.LIST_HELP* %38, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.28
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %39)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot = xor i1 %tobool32, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call33 to %struct.CLAUSE_HELP*
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  %43 = load i32*, i32** %Flags, align 8
  %44 = load i32*, i32** %Precedence, align 8
  %call34 = call %struct.LIST_HELP* @clause_InsertWeighed(%struct.CLAUSE_HELP* %41, %struct.LIST_HELP* %42, i32* %43, i32* %44)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %ClauseList.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Derivables, align 8
  call void @list_Delete(%struct.LIST_HELP* %46)
  br label %if.end.36

if.end.36:                                        ; preds = %for.end, %if.then.13
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %while.body
  br label %while.cond

while.end:                                        ; preds = %land.end
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ClauseList.addr, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %47)
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  ret %struct.LIST_HELP* %48
}

declare %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP*) #2

declare void @clause_DeleteClauseList(%struct.LIST_HELP*) #2

declare void @prfs_Clean(%struct.PROOFSEARCH_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_DeleteSymbolList(%struct.LIST_HELP* %Symbols) #1 {
entry:
  %Symbols.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Symbols, %struct.LIST_HELP** %Symbols.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (i32)* @symbol_Delete to void (i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_GetSkolemFunctions(%struct.term* %Term, %struct.LIST_HELP* %ArgList, %struct.LIST_HELP** %SkolToExVar) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %ArgList.addr = alloca %struct.LIST_HELP*, align 8
  %SkolToExVar.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  %found = alloca i32, align 4
  %Var = alloca i32, align 4
  %Arity = alloca i32, align 4
  %i = alloca i32, align 4
  %SkolScan = alloca %struct.LIST_HELP*, align 8
  %Skol = alloca i32, align 4
  %Pair = alloca %struct.LIST_HELP*, align 8
  %i41 = alloca i32, align 4
  %SkolScan42 = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %ArgList, %struct.LIST_HELP** %ArgList.addr, align 8
  store %struct.LIST_HELP** %SkolToExVar, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @fol_IsQuantifier(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList.addr, align 8
  %4 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %call3 = call %struct.LIST_HELP* @cnf_GetSkolemFunctions(%struct.term* %call2, %struct.LIST_HELP* %3, %struct.LIST_HELP** %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %Top, align 4
  %call4 = call i32 @symbol_IsFunction(i32 %5)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.lhs.true, label %if.else.72

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %Top, align 4
  %call6 = call i32 @symbol_HasProperty(i32 %6, i32 1)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else.72

if.then.8:                                        ; preds = %land.lhs.true
  store i32 0, i32* %Var, align 4
  store i32 0, i32* %found, align 4
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  %call10 = call i32 @list_Length(%struct.LIST_HELP* %call9)
  store i32 %call10, i32* %Arity, align 4
  %8 = load i32, i32* %Arity, align 4
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList.addr, align 8
  %call11 = call i32 @list_Length(%struct.LIST_HELP* %9)
  %cmp = icmp ugt i32 %8, %call11
  br i1 %cmp, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList.addr, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %10)
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %ArgList.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.then.8
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  call void @term_DeleteTermList(%struct.LIST_HELP* %call14)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacArgumentList(%struct.term* %13, %struct.LIST_HELP* null)
  %14 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %14, align 8
  %call16 = call i32 @list_Length(%struct.LIST_HELP* %15)
  %16 = load i32, i32* %Arity, align 4
  %cmp17 = icmp ugt i32 %call16, %16
  br i1 %cmp17, label %if.then.18, label %if.end.38

if.then.18:                                       ; preds = %if.end.15
  %17 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %17, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %SkolScan, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.18
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %Arity, align 4
  %cmp19 = icmp ult i32 %19, %20
  br i1 %cmp19, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %SkolScan, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %i, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call21 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %24, %struct.LIST_HELP** %SkolScan, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.35, %for.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call23 = call %struct.LIST_HELP* @list_Nil()
  %cmp24 = icmp ne %struct.LIST_HELP* %25, %call23
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.22
  %26 = load i32, i32* %found, align 4
  %tobool25 = icmp ne i32 %26, 0
  %lnot = xor i1 %tobool25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.22
  %27 = phi i1 [ false, %for.cond.22 ], [ %lnot, %land.rhs ]
  br i1 %27, label %for.body.26, label %for.end.37

for.body.26:                                      ; preds = %land.end
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call27 to %struct.LIST_HELP*
  %call28 = call i8* @list_PairFirst(%struct.LIST_HELP* %29)
  %30 = ptrtoint i8* %call28 to i32
  store i32 %30, i32* %Skol, align 4
  %31 = load i32, i32* %Skol, align 4
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %32)
  %cmp30 = icmp eq i32 %31, %call29
  br i1 %cmp30, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %for.body.26
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call32 to %struct.LIST_HELP*
  %call33 = call i8* @list_PairSecond(%struct.LIST_HELP* %34)
  %35 = ptrtoint i8* %call33 to i32
  store i32 %35, i32* %Var, align 4
  store i32 1, i32* %found, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %for.body.26
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %SkolScan, align 8
  br label %for.cond.22

for.end.37:                                       ; preds = %land.end
  br label %if.end.38

if.end.38:                                        ; preds = %for.end.37, %if.end.15
  %37 = load i32, i32* %found, align 4
  %tobool39 = icmp ne i32 %37, 0
  br i1 %tobool39, label %if.end.71, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %38 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %38, align 8
  store %struct.LIST_HELP* %39, %struct.LIST_HELP** %SkolScan42, align 8
  store i32 0, i32* %i41, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.53, %if.then.40
  %40 = load i32, i32* %i41, align 4
  %41 = load i32, i32* %Arity, align 4
  %cmp44 = icmp ult i32 %40, %41
  br i1 %cmp44, label %for.body.45, label %for.end.55

for.body.45:                                      ; preds = %for.cond.43
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %call46 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  %call47 = call %struct.LIST_HELP* @list_Nil()
  %cmp48 = icmp eq %struct.LIST_HELP* %call46, %call47
  br i1 %cmp48, label %if.then.49, label %if.end.51

if.then.49:                                       ; preds = %for.body.45
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %call50 = call %struct.LIST_HELP* @list_List(i8* null)
  call void @list_Rplacd(%struct.LIST_HELP* %43, %struct.LIST_HELP* %call50)
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.49, %for.body.45
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %call52 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %SkolScan42, align 8
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.51
  %45 = load i32, i32* %i41, align 4
  %inc54 = add i32 %45, 1
  store i32 %inc54, i32* %i41, align 4
  br label %for.cond.43

for.end.55:                                       ; preds = %for.cond.43
  %call56 = call i32 @symbol_CreateStandardVariable()
  store i32 %call56, i32* %Var, align 4
  %46 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call57 = call i32 @term_TopSymbol(%struct.term* %46)
  %conv = sext i32 %call57 to i64
  %47 = inttoptr i64 %conv to i8*
  %48 = load i32, i32* %Var, align 4
  %conv58 = sext i32 %48 to i64
  %49 = inttoptr i64 %conv58 to i8*
  %call59 = call %struct.LIST_HELP* @list_PairCreate(i8* %47, i8* %49)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Pair, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %50)
  %call61 = call %struct.LIST_HELP* @list_Nil()
  %51 = bitcast %struct.LIST_HELP* %call61 to i8*
  %cmp62 = icmp eq i8* %call60, %51
  br i1 %cmp62, label %if.then.64, label %if.else.66

if.then.64:                                       ; preds = %for.end.55
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %54 = bitcast %struct.LIST_HELP* %53 to i8*
  %call65 = call %struct.LIST_HELP* @list_List(i8* %54)
  %55 = bitcast %struct.LIST_HELP* %call65 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %52, i8* %55)
  br label %if.end.70

if.else.66:                                       ; preds = %for.end.55
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolScan42, align 8
  %call67 = call i8* @list_Car(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call67 to %struct.LIST_HELP*
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %60 = bitcast %struct.LIST_HELP* %59 to i8*
  %call68 = call %struct.LIST_HELP* @list_List(i8* %60)
  %call69 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %58, %struct.LIST_HELP* %call68)
  %61 = bitcast %struct.LIST_HELP* %call69 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %56, i8* %61)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.66, %if.then.64
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %if.end.38
  %62 = load %struct.term*, %struct.term** %Term.addr, align 8
  %63 = load i32, i32* %Var, align 4
  call void @term_RplacTop(%struct.term* %62, i32 %63)
  br label %if.end.84

if.else.72:                                       ; preds = %land.lhs.true, %if.end
  %64 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call73 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %64)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.81, %if.else.72
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call75 = call %struct.LIST_HELP* @list_Nil()
  %cmp76 = icmp ne %struct.LIST_HELP* %65, %call75
  br i1 %cmp76, label %for.body.78, label %for.end.83

for.body.78:                                      ; preds = %for.cond.74
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call79 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call79 to %struct.term*
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList.addr, align 8
  %69 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %call80 = call %struct.LIST_HELP* @cnf_GetSkolemFunctions(%struct.term* %67, %struct.LIST_HELP* %68, %struct.LIST_HELP** %69)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %ArgList.addr, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.78
  %70 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %70)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.74

for.end.83:                                       ; preds = %for.cond.74
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %if.end.71
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList.addr, align 8
  store %struct.LIST_HELP* %71, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.end.84, %if.then
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %72
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_IsFunction(i32 %S) #1 {
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
  %cmp = icmp eq i32 %call1, 1
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load i32, i32* %S.addr, align 4
  %call2 = call i32 @symbol_Type(i32 %2)
  %cmp3 = icmp eq i32 %call2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
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

declare i32 @list_Length(%struct.LIST_HELP*) #2

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

; Function Attrs: nounwind uwtable
define void @cnf_ReplaceVariable(%struct.term* %Term, i32 %Old, i32 %New) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Old.addr = alloca i32, align 4
  %New.addr = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32 %Old, i32* %Old.addr, align 4
  store i32 %New, i32* %New.addr, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %1 = load i32, i32* %Old.addr, align 4
  %call1 = call i32 @symbol_Equal(i32 %call, i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %3 = load i32, i32* %New.addr, align 4
  call void @term_RplacTop(%struct.term* %2, i32 %3)
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool4 = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call5 to %struct.term*
  %8 = load i32, i32* %Old.addr, align 4
  %9 = load i32, i32* %New.addr, align 4
  call void @cnf_ReplaceVariable(%struct.term* %7, i32 %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_RemoveSkolemFunctions(%struct.CLAUSE_HELP* %Clause, %struct.LIST_HELP** %SkolToExVar, %struct.LIST_HELP* %Vars) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %SkolToExVar.addr = alloca %struct.LIST_HELP**, align 8
  %Vars.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %TermScan = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  %Term = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %New = alloca i32, align 4
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.LIST_HELP** %SkolToExVar, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  store %struct.LIST_HELP* %Vars, %struct.LIST_HELP** %Vars.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %TermList, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %ArgList, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call2 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp slt i32 %0, %call2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call3 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %2, i32 %3)
  %call4 = call %struct.term* @term_Copy(%struct.term* %call3)
  store %struct.term* %call4, %struct.term** %Term, align 8
  %4 = load %struct.term*, %struct.term** %Term, align 8
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %6 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %SkolToExVar.addr, align 8
  %call5 = call %struct.LIST_HELP* @cnf_GetSkolemFunctions(%struct.term* %4, %struct.LIST_HELP* %5, %struct.LIST_HELP** %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %ArgList, align 8
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %8 = bitcast %struct.term* %7 to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call6 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %TermList, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  store %struct.LIST_HELP* %12, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %for.end
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.32, %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %cmp10 = icmp ne %struct.LIST_HELP* %14, %call9
  br i1 %cmp10, label %for.body.11, label %for.end.34

for.body.11:                                      ; preds = %for.cond.8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  store %struct.LIST_HELP* %15, %struct.LIST_HELP** %TermScan, align 8
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.20, %for.body.11
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermScan, align 8
  %call13 = call %struct.LIST_HELP* @list_Nil()
  %cmp14 = icmp ne %struct.LIST_HELP* %16, %call13
  br i1 %cmp14, label %for.body.15, label %for.end.22

for.body.15:                                      ; preds = %for.cond.12
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermScan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call16 to %struct.term*
  store %struct.term* %18, %struct.term** %Term, align 8
  %19 = load %struct.term*, %struct.term** %Term, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call17 to %struct.term*
  %call18 = call i32 @term_TopSymbol(%struct.term* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars.addr, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = ptrtoint i8* %call19 to i32
  call void @cnf_ReplaceVariable(%struct.term* %19, i32 %call18, i32 %23)
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.15
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermScan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %TermScan, align 8
  br label %for.cond.12

for.end.22:                                       ; preds = %for.cond.12
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars.addr, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  %call24 = call %struct.LIST_HELP* @list_Nil()
  %cmp25 = icmp eq %struct.LIST_HELP* %call23, %call24
  br i1 %cmp25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %for.end.22
  %call27 = call i32 @symbol_CreateStandardVariable()
  store i32 %call27, i32* %New, align 4
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars.addr, align 8
  %27 = load i32, i32* %New, align 4
  %conv = sext i32 %27 to i64
  %28 = inttoptr i64 %conv to i8*
  %call28 = call %struct.LIST_HELP* @list_List(i8* %28)
  %call29 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %26, %struct.LIST_HELP* %call28)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Vars.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %for.end.22
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars.addr, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %29)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %Vars.addr, align 8
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.30
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.8

for.end.34:                                       ; preds = %for.cond.8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %31)
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  store %struct.LIST_HELP* %32, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end.34, %if.then
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %33
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

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_DeSkolemFormula(%struct.LIST_HELP* %Clauses) #0 {
entry:
  %Clauses.addr = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %SkolToExVar = alloca %struct.LIST_HELP*, align 8
  %Vars = alloca %struct.LIST_HELP*, align 8
  %FreeVars = alloca %struct.LIST_HELP*, align 8
  %FreeVarsCopy = alloca %struct.LIST_HELP*, align 8
  %VarScan = alloca %struct.LIST_HELP*, align 8
  %TermList = alloca %struct.LIST_HELP*, align 8
  %VarListTerm = alloca %struct.term*, align 8
  %TopTerm = alloca %struct.term*, align 8
  %Term = alloca %struct.term*, align 8
  %First = alloca i32, align 4
  %ExVarScan = alloca %struct.LIST_HELP*, align 8
  %ExVars = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Clauses, %struct.LIST_HELP** %Clauses.addr, align 8
  %call = call %struct.LIST_HELP* @list_List(i8* null)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %SkolToExVar, align 8
  %call1 = call i32 @symbol_CreateStandardVariable()
  %conv = sext i32 %call1 to i64
  %0 = inttoptr i64 %conv to i8*
  %call2 = call %struct.LIST_HELP* @list_List(i8* %0)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Vars, align 8
  %call3 = call i32 @fol_And()
  %call4 = call %struct.term* @term_Create(i32 %call3, %struct.LIST_HELP* null)
  store %struct.term* %call4, %struct.term** %TopTerm, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  %cmp = icmp ne %struct.LIST_HELP* %2, %call5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call7 to %struct.CLAUSE_HELP*
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  %call8 = call %struct.LIST_HELP* @cnf_RemoveSkolemFunctions(%struct.CLAUSE_HELP* %4, %struct.LIST_HELP** %SkolToExVar, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %TermList, align 8
  %call9 = call i32 @fol_Or()
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TermList, align 8
  %call10 = call %struct.term* @term_Create(i32 %call9, %struct.LIST_HELP* %6)
  store %struct.term* %call10, %struct.term** %Term, align 8
  %7 = load %struct.term*, %struct.term** %Term, align 8
  %call11 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %7)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %FreeVars, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool = icmp ne i32 %call12, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %call13 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %FreeVarsCopy, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  call void @list_Delete(%struct.LIST_HELP* %10)
  %call14 = call i32 @fol_All()
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVarsCopy, align 8
  %12 = load %struct.term*, %struct.term** %Term, align 8
  %13 = bitcast %struct.term* %12 to i8*
  %call15 = call %struct.LIST_HELP* @list_List(i8* %13)
  %call16 = call %struct.term* @fol_CreateQuantifier(i32 %call14, %struct.LIST_HELP* %11, %struct.LIST_HELP* %call15)
  store %struct.term* %call16, %struct.term** %Term, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %14 = load %struct.term*, %struct.term** %TopTerm, align 8
  %15 = load %struct.term*, %struct.term** %Term, align 8
  %16 = bitcast %struct.term* %15 to i8*
  %17 = load %struct.term*, %struct.term** %TopTerm, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  %call18 = call %struct.LIST_HELP* @list_Cons(i8* %16, %struct.LIST_HELP* %call17)
  call void @term_RplacArgumentList(%struct.term* %14, %struct.LIST_HELP* %call18)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %VarScan, align 8
  store i32 1, i32* %First, align 4
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolToExVar, align 8
  store %struct.LIST_HELP* %20, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.104, %for.end
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Nil()
  %cmp22 = icmp ne %struct.LIST_HELP* %21, %call21
  br i1 %cmp22, label %for.body.24, label %for.end.106

for.body.24:                                      ; preds = %for.cond.20
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call25 to %struct.LIST_HELP*
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.body.24
  %24 = load %struct.term*, %struct.term** %TopTerm, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %24)
  %call30 = call i32 @fol_All()
  %cmp31 = icmp eq i32 %call29, %call30
  br i1 %cmp31, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.then.28
  %25 = load %struct.term*, %struct.term** %TopTerm, align 8
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarScan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %26)
  %27 = ptrtoint i8* %call34 to i32
  %call35 = call %struct.term* @term_Create(i32 %27, %struct.LIST_HELP* null)
  %28 = bitcast %struct.term* %call35 to i8*
  %29 = load %struct.term*, %struct.term** %TopTerm, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  %call37 = call %struct.LIST_HELP* @list_Cons(i8* %28, %struct.LIST_HELP* %call36)
  call void @term_RplacArgumentList(%struct.term* %25, %struct.LIST_HELP* %call37)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.then.28
  %30 = load i32, i32* %First, align 4
  %tobool39 = icmp ne i32 %30, 0
  br i1 %tobool39, label %if.end.47, label %if.then.40

if.then.40:                                       ; preds = %if.end.38
  %call41 = call i32 @fol_All()
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarScan, align 8
  %call42 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %32 = ptrtoint i8* %call42 to i32
  %call43 = call %struct.term* @term_Create(i32 %32, %struct.LIST_HELP* null)
  %33 = bitcast %struct.term* %call43 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %33)
  %34 = load %struct.term*, %struct.term** %TopTerm, align 8
  %35 = bitcast %struct.term* %34 to i8*
  %call45 = call %struct.LIST_HELP* @list_List(i8* %35)
  %call46 = call %struct.term* @fol_CreateQuantifier(i32 %call41, %struct.LIST_HELP* %call44, %struct.LIST_HELP* %call45)
  store %struct.term* %call46, %struct.term** %TopTerm, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.40, %if.end.38
  br label %if.end.98

if.else:                                          ; preds = %for.body.24
  %call48 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %ExVars, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %36)
  %37 = bitcast i8* %call49 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %37, %struct.LIST_HELP** %ExVarScan, align 8
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.70, %if.else
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVarScan, align 8
  %call51 = call %struct.LIST_HELP* @list_Nil()
  %cmp52 = icmp ne %struct.LIST_HELP* %38, %call51
  br i1 %cmp52, label %for.body.54, label %for.end.72

for.body.54:                                      ; preds = %for.cond.50
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVars, align 8
  %call55 = call %struct.LIST_HELP* @list_Nil()
  %cmp56 = icmp eq %struct.LIST_HELP* %39, %call55
  br i1 %cmp56, label %if.then.58, label %if.else.63

if.then.58:                                       ; preds = %for.body.54
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVarScan, align 8
  %call59 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call59 to %struct.LIST_HELP*
  %call60 = call i8* @list_PairSecond(%struct.LIST_HELP* %41)
  %42 = ptrtoint i8* %call60 to i32
  %call61 = call %struct.term* @term_Create(i32 %42, %struct.LIST_HELP* null)
  %43 = bitcast %struct.term* %call61 to i8*
  %call62 = call %struct.LIST_HELP* @list_List(i8* %43)
  store %struct.LIST_HELP* %call62, %struct.LIST_HELP** %ExVars, align 8
  br label %if.end.68

if.else.63:                                       ; preds = %for.body.54
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVarScan, align 8
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call64 to %struct.LIST_HELP*
  %call65 = call i8* @list_PairSecond(%struct.LIST_HELP* %45)
  %46 = ptrtoint i8* %call65 to i32
  %call66 = call %struct.term* @term_Create(i32 %46, %struct.LIST_HELP* null)
  %47 = bitcast %struct.term* %call66 to i8*
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVars, align 8
  %call67 = call %struct.LIST_HELP* @list_Cons(i8* %47, %struct.LIST_HELP* %48)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %ExVars, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.63, %if.then.58
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVarScan, align 8
  %call69 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call69 to %struct.LIST_HELP*
  call void @list_PairFree(%struct.LIST_HELP* %50)
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.68
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVarScan, align 8
  %call71 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %ExVarScan, align 8
  br label %for.cond.50

for.end.72:                                       ; preds = %for.cond.50
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call73 = call i8* @list_Car(%struct.LIST_HELP* %52)
  %53 = bitcast i8* %call73 to %struct.LIST_HELP*
  call void @list_Delete(%struct.LIST_HELP* %53)
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %54, i8* null)
  %55 = load %struct.term*, %struct.term** %TopTerm, align 8
  %call74 = call i32 @term_TopSymbol(%struct.term* %55)
  %call75 = call i32 @fol_Exist()
  %cmp76 = icmp eq i32 %call74, %call75
  br i1 %cmp76, label %if.then.78, label %if.else.83

if.then.78:                                       ; preds = %for.end.72
  %56 = load %struct.term*, %struct.term** %TopTerm, align 8
  %call79 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %56)
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %call79)
  %57 = bitcast i8* %call80 to %struct.term*
  store %struct.term* %57, %struct.term** %VarListTerm, align 8
  %58 = load %struct.term*, %struct.term** %VarListTerm, align 8
  %59 = load %struct.term*, %struct.term** %VarListTerm, align 8
  %call81 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %59)
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVars, align 8
  %call82 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call81, %struct.LIST_HELP* %60)
  call void @term_RplacArgumentList(%struct.term* %58, %struct.LIST_HELP* %call82)
  br label %if.end.87

if.else.83:                                       ; preds = %for.end.72
  %call84 = call i32 @fol_Exist()
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ExVars, align 8
  %62 = load %struct.term*, %struct.term** %TopTerm, align 8
  %63 = bitcast %struct.term* %62 to i8*
  %call85 = call %struct.LIST_HELP* @list_List(i8* %63)
  %call86 = call %struct.term* @fol_CreateQuantifier(i32 %call84, %struct.LIST_HELP* %61, %struct.LIST_HELP* %call85)
  store %struct.term* %call86, %struct.term** %TopTerm, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.83, %if.then.78
  %call88 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call88, %struct.LIST_HELP** %ExVars, align 8
  %64 = load i32, i32* %First, align 4
  %tobool89 = icmp ne i32 %64, 0
  br i1 %tobool89, label %if.end.97, label %if.then.90

if.then.90:                                       ; preds = %if.end.87
  %call91 = call i32 @fol_All()
  %65 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarScan, align 8
  %call92 = call i8* @list_Car(%struct.LIST_HELP* %65)
  %66 = ptrtoint i8* %call92 to i32
  %call93 = call %struct.term* @term_Create(i32 %66, %struct.LIST_HELP* null)
  %67 = bitcast %struct.term* %call93 to i8*
  %call94 = call %struct.LIST_HELP* @list_List(i8* %67)
  %68 = load %struct.term*, %struct.term** %TopTerm, align 8
  %69 = bitcast %struct.term* %68 to i8*
  %call95 = call %struct.LIST_HELP* @list_List(i8* %69)
  %call96 = call %struct.term* @fol_CreateQuantifier(i32 %call91, %struct.LIST_HELP* %call94, %struct.LIST_HELP* %call95)
  store %struct.term* %call96, %struct.term** %TopTerm, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.90, %if.end.87
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.47
  %70 = load i32, i32* %First, align 4
  %tobool99 = icmp ne i32 %70, 0
  br i1 %tobool99, label %if.else.102, label %if.then.100

if.then.100:                                      ; preds = %if.end.98
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarScan, align 8
  %call101 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %VarScan, align 8
  br label %if.end.103

if.else.102:                                      ; preds = %if.end.98
  store i32 0, i32* %First, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.102, %if.then.100
  br label %for.inc.104

for.inc.104:                                      ; preds = %if.end.103
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call105 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %72)
  store %struct.LIST_HELP* %call105, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.20

for.end.106:                                      ; preds = %for.cond.20
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolToExVar, align 8
  call void @list_Delete(%struct.LIST_HELP* %73)
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %74)
  %75 = load %struct.term*, %struct.term** %TopTerm, align 8
  ret %struct.term* %75
}

declare %struct.LIST_HELP* @fol_FreeVariables(%struct.term*) #2

declare %struct.term* @fol_CreateQuantifier(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_All() #1 {
entry:
  %0 = load i32, i32* @fol_ALL, align 4
  ret i32 %0
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
define internal i32 @fol_Exist() #1 {
entry:
  %0 = load i32, i32* @fol_EXIST, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define %struct.PROOFSEARCH_HELP* @cnf_Flotter(%struct.LIST_HELP* %AxiomList, %struct.LIST_HELP* %ConjectureList, %struct.LIST_HELP** %AxClauses, %struct.LIST_HELP** %AllLabels, %struct.LIST_HELP** %TermLabelToClauselist, %struct.LIST_HELP** %ClauseToTermLabellist, i32* %InputFlags, i32* %InputPrecedence, %struct.LIST_HELP** %Symblist) #0 {
entry:
  %retval = alloca %struct.PROOFSEARCH_HELP*, align 8
  %AxiomList.addr = alloca %struct.LIST_HELP*, align 8
  %ConjectureList.addr = alloca %struct.LIST_HELP*, align 8
  %AxClauses.addr = alloca %struct.LIST_HELP**, align 8
  %AllLabels.addr = alloca %struct.LIST_HELP**, align 8
  %TermLabelToClauselist.addr = alloca %struct.LIST_HELP**, align 8
  %ClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %InputFlags.addr = alloca i32*, align 8
  %InputPrecedence.addr = alloca i32*, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %FormulaClauses = alloca %struct.LIST_HELP*, align 8
  %SkolemFunctions = alloca %struct.LIST_HELP*, align 8
  %SkolemPredicates = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %AllFormulae = alloca %struct.LIST_HELP*, align 8
  %UsedTerms = alloca %struct.LIST_HELP*, align 8
  %AxTerm = alloca %struct.term*, align 8
  %Formula = alloca %struct.term*, align 8
  %Result = alloca i32, align 4
  %Search = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Precedence = alloca i32*, align 8
  %Flags = alloca i32*, align 8
  %Count = alloca i32, align 4
  %InputClauseToTermLabellist = alloca %struct.LIST_HELP**, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %ConTerm = alloca %struct.term*, align 8
  %Label = alloca i8*, align 8
  %buf = alloca [100 x i8], align 16
  %FormulaClausesTemp = alloca %struct.LIST_HELP*, align 8
  %Ax = alloca %struct.LIST_HELP*, align 8
  %Pair149 = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %Pair209 = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %AxiomList, %struct.LIST_HELP** %AxiomList.addr, align 8
  store %struct.LIST_HELP* %ConjectureList, %struct.LIST_HELP** %ConjectureList.addr, align 8
  store %struct.LIST_HELP** %AxClauses, %struct.LIST_HELP*** %AxClauses.addr, align 8
  store %struct.LIST_HELP** %AllLabels, %struct.LIST_HELP*** %AllLabels.addr, align 8
  store %struct.LIST_HELP** %TermLabelToClauselist, %struct.LIST_HELP*** %TermLabelToClauselist.addr, align 8
  store %struct.LIST_HELP** %ClauseToTermLabellist, %struct.LIST_HELP*** %ClauseToTermLabellist.addr, align 8
  store i32* %InputFlags, i32** %InputFlags.addr, align 8
  store i32* %InputPrecedence, i32** %InputPrecedence.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call = call %struct.PROOFSEARCH_HELP* @prfs_Create()
  store %struct.PROOFSEARCH_HELP* %call, %struct.PROOFSEARCH_HELP** %Search, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %Flags, align 8
  %1 = load i32*, i32** %Flags, align 8
  call void @flag_CleanStore(i32* %1)
  %2 = load i32*, i32** %InputFlags.addr, align 8
  %3 = load i32*, i32** %Flags, align 8
  call void @flag_InitFlotterFlags(i32* %2, i32* %3)
  %4 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %4)
  store i32* %call2, i32** %Precedence, align 8
  %5 = load i32*, i32** %InputPrecedence.addr, align 8
  %6 = load i32*, i32** %Precedence, align 8
  call void @symbol_TransferPrecedence(i32* %5, i32* %6)
  %7 = load i32*, i32** %Flags, align 8
  %call3 = call i32 @flag_GetFlagValue(i32* %7, i32 9)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_AddDocProofSharingIndex(%struct.PROOFSEARCH_HELP* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store %struct.term* null, %struct.term** %AxTerm, align 8
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %SkolemPredicates, align 8
  store i32 0, i32* %Result, align 4
  %9 = load i32*, i32** %Flags, align 8
  %call5 = call i32 @flag_GetFlagValue(i32* %9, i32 9)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end
  %call8 = call %struct.LIST_HELP** @hsh_Create()
  store %struct.LIST_HELP** %call8, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  store %struct.LIST_HELP** null, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.7
  call void @symbol_ReinitGenericNameCounters()
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AxiomList.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.9
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call12 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %Pair, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call13 = call i8* @list_PairSecond(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %15, %struct.term** %AxTerm, align 8
  %16 = load %struct.term*, %struct.term** %AxTerm, align 8
  call void @fol_RemoveImplied(%struct.term* %16)
  %17 = load %struct.term*, %struct.term** %AxTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %17)
  %18 = load %struct.term*, %struct.term** %AxTerm, align 8
  call void @fol_NormalizeVars(%struct.term* %18)
  %19 = load i32*, i32** %Flags, align 8
  %call14 = call i32 @flag_GetFlagValue(i32* %19, i32 58)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %for.body
  %20 = load %struct.term*, %struct.term** %AxTerm, align 8
  %call17 = call i32 @cnf_PropagateSubstEquations(%struct.term* %20)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %for.body
  %21 = load %struct.term*, %struct.term** %AxTerm, align 8
  %call19 = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %21)
  store %struct.term* %call19, %struct.term** %AxTerm, align 8
  %22 = load i32*, i32** %Flags, align 8
  %call20 = call i32 @flag_GetFlagValue(i32* %22, i32 56)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.25

if.then.22:                                       ; preds = %if.end.18
  %23 = load %struct.term*, %struct.term** %AxTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %23)
  %24 = load %struct.term*, %struct.term** %AxTerm, align 8
  %25 = load i32*, i32** %Precedence, align 8
  %26 = load i32*, i32** %Flags, align 8
  %call23 = call i32 @flag_GetFlagValue(i32* %26, i32 57)
  %call24 = call %struct.term* @ren_Rename(%struct.term* %24, i32* %25, %struct.LIST_HELP** %SkolemPredicates, i32 %call23, i32 1)
  store %struct.term* %call24, %struct.term** %AxTerm, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.18
  %27 = load %struct.term*, %struct.term** %AxTerm, align 8
  %call26 = call %struct.term* @cnf_RemoveEquivImplFromFormula(%struct.term* %27)
  store %struct.term* %call26, %struct.term** %AxTerm, align 8
  %28 = load %struct.term*, %struct.term** %AxTerm, align 8
  %call27 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %28)
  store %struct.term* %call27, %struct.term** %AxTerm, align 8
  %29 = load %struct.term*, %struct.term** %AxTerm, align 8
  %call28 = call %struct.term* @cnf_AntiPrenex(%struct.term* %29)
  store %struct.term* %call28, %struct.term** %AxTerm, align 8
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %31 = load %struct.term*, %struct.term** %AxTerm, align 8
  %32 = bitcast %struct.term* %31 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %30, %struct.LIST_HELP* %32)
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AxiomList.addr, align 8
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %AllFormulae, align 8
  store i32 0, i32* %Count, align 4
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConjectureList.addr, align 8
  store %struct.LIST_HELP* %35, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.70, %for.end
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call31 = call i32 @list_Empty(%struct.LIST_HELP* %36)
  %tobool32 = icmp ne i32 %call31, 0
  %lnot33 = xor i1 %tobool32, true
  br i1 %lnot33, label %for.body.34, label %for.end.72

for.body.34:                                      ; preds = %for.cond.30
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call35 to %struct.LIST_HELP*
  %call36 = call i8* @list_PairFirst(%struct.LIST_HELP* %38)
  %cmp = icmp eq i8* %call36, null
  br i1 %cmp, label %if.then.37, label %if.end.51

if.then.37:                                       ; preds = %for.body.34
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %39 = load i32, i32* %Count, align 4
  %call38 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i32 %39) #6
  %arraydecay39 = getelementptr inbounds [100 x i8], [100 x i8]* %buf, i32 0, i32 0
  %call40 = call i8* @string_StringCopy(i8* %arraydecay39)
  store i8* %call40, i8** %Label, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call41 to %struct.LIST_HELP*
  %42 = load i8*, i8** %Label, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %41, i8* %42)
  %43 = load i32*, i32** %Flags, align 8
  %call42 = call i32 @flag_GetFlagValue(i32* %43, i32 9)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %land.lhs.true, label %if.end.50

land.lhs.true:                                    ; preds = %if.then.37
  %44 = load i32*, i32** %Flags, align 8
  %call44 = call i32 @flag_GetFlagValue(i32* %44, i32 25)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %land.lhs.true
  %45 = load i8*, i8** %Label, align 8
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0), i8* %45)
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call48 to %struct.LIST_HELP*
  %call49 = call i8* @list_PairSecond(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call49 to %struct.term*
  call void @fol_PrettyPrintDFG(%struct.term* %48)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %land.lhs.true, %if.then.37
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %for.body.34
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call52 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call52 to %struct.LIST_HELP*
  %call53 = call i8* @list_PairSecond(%struct.LIST_HELP* %50)
  %51 = bitcast i8* %call53 to %struct.term*
  store %struct.term* %51, %struct.term** %ConTerm, align 8
  %52 = load %struct.term*, %struct.term** %ConTerm, align 8
  call void @fol_RemoveImplied(%struct.term* %52)
  %53 = load %struct.term*, %struct.term** %ConTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %53)
  %54 = load %struct.term*, %struct.term** %ConTerm, align 8
  call void @fol_NormalizeVars(%struct.term* %54)
  %55 = load i32*, i32** %Flags, align 8
  %call54 = call i32 @flag_GetFlagValue(i32* %55, i32 58)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.58

if.then.56:                                       ; preds = %if.end.51
  %56 = load %struct.term*, %struct.term** %ConTerm, align 8
  %call57 = call i32 @cnf_PropagateSubstEquations(%struct.term* %56)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.56, %if.end.51
  %57 = load %struct.term*, %struct.term** %ConTerm, align 8
  %call59 = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %57)
  store %struct.term* %call59, %struct.term** %ConTerm, align 8
  %58 = load i32*, i32** %Flags, align 8
  %call60 = call i32 @flag_GetFlagValue(i32* %58, i32 56)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.65

if.then.62:                                       ; preds = %if.end.58
  %59 = load %struct.term*, %struct.term** %ConTerm, align 8
  call void @term_AddFatherLinks(%struct.term* %59)
  %60 = load %struct.term*, %struct.term** %ConTerm, align 8
  %61 = load i32*, i32** %Precedence, align 8
  %62 = load i32*, i32** %Flags, align 8
  %call63 = call i32 @flag_GetFlagValue(i32* %62, i32 57)
  %call64 = call %struct.term* @ren_Rename(%struct.term* %60, i32* %61, %struct.LIST_HELP** %SkolemPredicates, i32 %call63, i32 1)
  store %struct.term* %call64, %struct.term** %ConTerm, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.62, %if.end.58
  %63 = load %struct.term*, %struct.term** %ConTerm, align 8
  %call66 = call %struct.term* @cnf_RemoveEquivImplFromFormula(%struct.term* %63)
  store %struct.term* %call66, %struct.term** %ConTerm, align 8
  %64 = load %struct.term*, %struct.term** %ConTerm, align 8
  %call67 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %64)
  store %struct.term* %call67, %struct.term** %ConTerm, align 8
  %65 = load %struct.term*, %struct.term** %ConTerm, align 8
  %call68 = call %struct.term* @cnf_AntiPrenex(%struct.term* %65)
  store %struct.term* %call68, %struct.term** %ConTerm, align 8
  %66 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call i8* @list_Car(%struct.LIST_HELP* %66)
  %67 = bitcast i8* %call69 to %struct.LIST_HELP*
  %68 = load %struct.term*, %struct.term** %ConTerm, align 8
  %69 = bitcast %struct.term* %68 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %67, %struct.LIST_HELP* %69)
  %70 = load i32, i32* %Count, align 4
  %inc = add i32 %70, 1
  store i32 %inc, i32* %Count, align 4
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.65
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call71 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call71, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.30

for.end.72:                                       ; preds = %for.cond.30
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConjectureList.addr, align 8
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllFormulae, align 8
  %call73 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %72, %struct.LIST_HELP* %73)
  store %struct.LIST_HELP* %call73, %struct.LIST_HELP** %AllFormulae, align 8
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConjectureList.addr, align 8
  store %struct.LIST_HELP* %74, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.81, %for.end.72
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call75 = call i32 @list_Empty(%struct.LIST_HELP* %75)
  %tobool76 = icmp ne i32 %call75, 0
  %lnot77 = xor i1 %tobool76, true
  br i1 %lnot77, label %for.body.78, label %for.end.83

for.body.78:                                      ; preds = %for.cond.74
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call79 = call i8* @list_Car(%struct.LIST_HELP* %77)
  %78 = bitcast i8* %call79 to %struct.LIST_HELP*
  %call80 = call i8* @list_PairSecond(%struct.LIST_HELP* %78)
  call void @list_Rplaca(%struct.LIST_HELP* %76, i8* %call80)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.78
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %79)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.74

for.end.83:                                       ; preds = %for.cond.74
  %call84 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call84, %struct.LIST_HELP** %FormulaClauses, align 8
  %call85 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call85, %struct.LIST_HELP** %SkolemFunctions, align 8
  store i32 0, i32* %Count, align 4
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllFormulae, align 8
  store %struct.LIST_HELP* %80, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.113, %for.end.83
  %81 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call87 = call i32 @list_Empty(%struct.LIST_HELP* %81)
  %tobool88 = icmp ne i32 %call87, 0
  %lnot89 = xor i1 %tobool88, true
  br i1 %lnot89, label %for.body.90, label %for.end.116

for.body.90:                                      ; preds = %for.cond.86
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call91 = call i8* @list_Car(%struct.LIST_HELP* %82)
  %83 = bitcast i8* %call91 to %struct.LIST_HELP*
  %call92 = call i8* @list_PairSecond(%struct.LIST_HELP* %83)
  %84 = bitcast i8* %call92 to %struct.term*
  %call93 = call %struct.term* @term_Copy(%struct.term* %84)
  store %struct.term* %call93, %struct.term** %Formula, align 8
  %85 = load %struct.term*, %struct.term** %Formula, align 8
  %86 = load i32*, i32** %Precedence, align 8
  %call94 = call %struct.term* @cnf_SkolemFormula(%struct.term* %85, i32* %86, %struct.LIST_HELP** %SkolemFunctions)
  store %struct.term* %call94, %struct.term** %Formula, align 8
  %87 = load %struct.term*, %struct.term** %Formula, align 8
  %call95 = call %struct.term* @cnf_DistributiveFormula(%struct.term* %87)
  store %struct.term* %call95, %struct.term** %Formula, align 8
  %88 = load %struct.term*, %struct.term** %Formula, align 8
  %89 = load i32*, i32** %Flags, align 8
  %90 = load i32*, i32** %Precedence, align 8
  %call96 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %88, i32 0, i32 0, i32* %89, i32* %90)
  store %struct.LIST_HELP* %call96, %struct.LIST_HELP** %FormulaClausesTemp, align 8
  %91 = load i32*, i32** %Flags, align 8
  %call97 = call i32 @flag_GetFlagValue(i32* %91, i32 9)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.111

if.then.99:                                       ; preds = %for.body.90
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClausesTemp, align 8
  store %struct.LIST_HELP* %92, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.108, %if.then.99
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call101 = call i32 @list_Empty(%struct.LIST_HELP* %93)
  %tobool102 = icmp ne i32 %call101, 0
  %lnot103 = xor i1 %tobool102, true
  br i1 %lnot103, label %for.body.104, label %for.end.110

for.body.104:                                     ; preds = %for.cond.100
  %94 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  %95 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call105 = call i8* @list_Car(%struct.LIST_HELP* %95)
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call106 = call i8* @list_Car(%struct.LIST_HELP* %96)
  %97 = bitcast i8* %call106 to %struct.LIST_HELP*
  %call107 = call i8* @list_PairFirst(%struct.LIST_HELP* %97)
  call void @hsh_Put(%struct.LIST_HELP** %94, i8* %call105, i8* %call107)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.104
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call109 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %98)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.100

for.end.110:                                      ; preds = %for.cond.100
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %for.body.90
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClauses, align 8
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClausesTemp, align 8
  %call112 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %99, %struct.LIST_HELP* %100)
  store %struct.LIST_HELP* %call112, %struct.LIST_HELP** %FormulaClauses, align 8
  %101 = load %struct.term*, %struct.term** %Formula, align 8
  call void @term_Delete(%struct.term* %101)
  br label %for.inc.113

for.inc.113:                                      ; preds = %if.end.111
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call114 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %102)
  store %struct.LIST_HELP* %call114, %struct.LIST_HELP** %Scan, align 8
  %103 = load i32, i32* %Count, align 4
  %inc115 = add i32 %103, 1
  store i32 %inc115, i32* %Count, align 4
  br label %for.cond.86

for.end.116:                                      ; preds = %for.cond.86
  %104 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClauses, align 8
  store %struct.LIST_HELP* %104, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.123, %for.end.116
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call118 = call i32 @list_Empty(%struct.LIST_HELP* %105)
  %tobool119 = icmp ne i32 %call118, 0
  %lnot120 = xor i1 %tobool119, true
  br i1 %lnot120, label %for.body.121, label %for.end.125

for.body.121:                                     ; preds = %for.cond.117
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call122 = call i8* @list_Car(%struct.LIST_HELP* %106)
  %107 = bitcast i8* %call122 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %107, i32 8)
  br label %for.inc.123

for.inc.123:                                      ; preds = %for.body.121
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call124 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %108)
  store %struct.LIST_HELP* %call124, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.117

for.end.125:                                      ; preds = %for.cond.117
  %109 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %110 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClauses, align 8
  %call126 = call %struct.LIST_HELP* @red_SatUnit(%struct.PROOFSEARCH_HELP* %109, %struct.LIST_HELP* %110)
  store %struct.LIST_HELP* %call126, %struct.LIST_HELP** %EmptyClauses, align 8
  %111 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call127 = call i32 @list_Empty(%struct.LIST_HELP* %111)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.end.130, label %if.then.129

if.then.129:                                      ; preds = %for.end.125
  store i32 1, i32* %Result, align 4
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %112)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %for.end.125
  %113 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %call131 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %113)
  %call132 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call131)
  store %struct.LIST_HELP* %call132, %struct.LIST_HELP** %FormulaClauses, align 8
  %114 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClauses, align 8
  store %struct.LIST_HELP* %114, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.133

for.cond.133:                                     ; preds = %for.inc.139, %if.end.130
  %115 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call134 = call i32 @list_Empty(%struct.LIST_HELP* %115)
  %tobool135 = icmp ne i32 %call134, 0
  %lnot136 = xor i1 %tobool135, true
  br i1 %lnot136, label %for.body.137, label %for.end.141

for.body.137:                                     ; preds = %for.cond.133
  %116 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %117 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call138 = call i8* @list_Car(%struct.LIST_HELP* %117)
  %118 = bitcast i8* %call138 to %struct.CLAUSE_HELP*
  call void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP* %116, %struct.CLAUSE_HELP* %118)
  br label %for.inc.139

for.inc.139:                                      ; preds = %for.body.137
  %119 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call140 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %119)
  store %struct.LIST_HELP* %call140, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.133

for.end.141:                                      ; preds = %for.cond.133
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FormulaClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %120)
  %call142 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call142, %struct.LIST_HELP** %FormulaClauses, align 8
  %call143 = call %struct.LIST_HELP* @list_Nil()
  %121 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  store %struct.LIST_HELP* %call143, %struct.LIST_HELP** %121, align 8
  %122 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllFormulae, align 8
  store %struct.LIST_HELP* %122, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.144

for.cond.144:                                     ; preds = %for.inc.192, %for.end.141
  %123 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call145 = call i32 @list_Empty(%struct.LIST_HELP* %123)
  %tobool146 = icmp ne i32 %call145, 0
  %lnot147 = xor i1 %tobool146, true
  br i1 %lnot147, label %for.body.148, label %for.end.194

for.body.148:                                     ; preds = %for.cond.144
  %call150 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call150, %struct.LIST_HELP** %UsedTerms, align 8
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call151 = call i8* @list_Car(%struct.LIST_HELP* %124)
  %125 = bitcast i8* %call151 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %125, %struct.LIST_HELP** %Pair149, align 8
  %126 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  %127 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair149, align 8
  %call152 = call i8* @list_PairSecond(%struct.LIST_HELP* %127)
  %128 = bitcast i8* %call152 to %struct.term*
  %call153 = call %struct.term* @term_Copy(%struct.term* %128)
  %129 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair149, align 8
  %call154 = call i8* @list_PairFirst(%struct.LIST_HELP* %129)
  %130 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %131 = load i32, i32* %Result, align 4
  %132 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  %call155 = call %struct.LIST_HELP* @cnf_OptimizedSkolemization(%struct.PROOFSEARCH_HELP* %126, %struct.term* %call153, i8* %call154, %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP** %130, i32 %131, i32 0, %struct.LIST_HELP** %132)
  store %struct.LIST_HELP* %call155, %struct.LIST_HELP** %Ax, align 8
  %133 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConjectureList.addr, align 8
  %134 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair149, align 8
  %call156 = call i8* @list_PairSecond(%struct.LIST_HELP* %134)
  %call157 = call i32 @list_PointerMember(%struct.LIST_HELP* %133, i8* %call156)
  %tobool158 = icmp ne i32 %call157, 0
  br i1 %tobool158, label %if.then.159, label %if.end.169

if.then.159:                                      ; preds = %for.body.148
  %135 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ax, align 8
  store %struct.LIST_HELP* %135, %struct.LIST_HELP** %l, align 8
  br label %for.cond.160

for.cond.160:                                     ; preds = %for.inc.166, %if.then.159
  %136 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call161 = call i32 @list_Empty(%struct.LIST_HELP* %136)
  %tobool162 = icmp ne i32 %call161, 0
  %lnot163 = xor i1 %tobool162, true
  br i1 %lnot163, label %for.body.164, label %for.end.168

for.body.164:                                     ; preds = %for.cond.160
  %137 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call165 = call i8* @list_Car(%struct.LIST_HELP* %137)
  %138 = bitcast i8* %call165 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %138, i32 8)
  br label %for.inc.166

for.inc.166:                                      ; preds = %for.body.164
  %139 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call167 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %139)
  store %struct.LIST_HELP* %call167, %struct.LIST_HELP** %l, align 8
  br label %for.cond.160

for.end.168:                                      ; preds = %for.cond.160
  br label %if.end.169

if.end.169:                                       ; preds = %for.end.168, %for.body.148
  %140 = load i32*, i32** %Flags, align 8
  %call170 = call i32 @flag_GetFlagValue(i32* %140, i32 9)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then.172, label %if.end.190

if.then.172:                                      ; preds = %if.end.169
  %141 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %TermLabelToClauselist.addr, align 8
  %142 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair149, align 8
  %call173 = call i8* @list_PairFirst(%struct.LIST_HELP* %142)
  %143 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ax, align 8
  %call174 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %143)
  call void @hsh_PutListWithCompareFunc(%struct.LIST_HELP** %141, i8* %call173, %struct.LIST_HELP* %call174, i32 (i8*, i8*)* @cnf_LabelEqual, i64 (i8*)* @hsh_StringHashKey)
  %144 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair149, align 8
  %call175 = call i8* @list_PairFirst(%struct.LIST_HELP* %144)
  %145 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call176 = call %struct.LIST_HELP* @list_Cons(i8* %call175, %struct.LIST_HELP* %145)
  store %struct.LIST_HELP* %call176, %struct.LIST_HELP** %UsedTerms, align 8
  %146 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call177 = call %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %146)
  store %struct.LIST_HELP* %call177, %struct.LIST_HELP** %UsedTerms, align 8
  %147 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ax, align 8
  store %struct.LIST_HELP* %147, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.187, %if.then.172
  %148 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call179 = call i32 @list_Empty(%struct.LIST_HELP* %148)
  %tobool180 = icmp ne i32 %call179, 0
  %lnot181 = xor i1 %tobool180, true
  br i1 %lnot181, label %for.body.182, label %for.end.189

for.body.182:                                     ; preds = %for.cond.178
  %149 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %ClauseToTermLabellist.addr, align 8
  %150 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call183 = call i8* @list_Car(%struct.LIST_HELP* %150)
  %151 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call184 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %151)
  call void @hsh_PutList(%struct.LIST_HELP** %149, i8* %call183, %struct.LIST_HELP* %call184)
  %152 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  %153 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call185 = call i8* @list_Car(%struct.LIST_HELP* %153)
  %154 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call186 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %154)
  call void @hsh_PutList(%struct.LIST_HELP** %152, i8* %call185, %struct.LIST_HELP* %call186)
  br label %for.inc.187

for.inc.187:                                      ; preds = %for.body.182
  %155 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call188 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %155)
  store %struct.LIST_HELP* %call188, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.178

for.end.189:                                      ; preds = %for.cond.178
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.189, %if.end.169
  %156 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %AxClauses.addr, align 8
  %157 = load %struct.LIST_HELP*, %struct.LIST_HELP** %156, align 8
  %158 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Ax, align 8
  %call191 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %157, %struct.LIST_HELP* %158)
  %159 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %AxClauses.addr, align 8
  store %struct.LIST_HELP* %call191, %struct.LIST_HELP** %159, align 8
  %160 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  call void @list_Delete(%struct.LIST_HELP* %160)
  br label %for.inc.192

for.inc.192:                                      ; preds = %if.end.190
  %161 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call193 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %161)
  store %struct.LIST_HELP* %call193, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.144

for.end.194:                                      ; preds = %for.cond.144
  %162 = load i32*, i32** %Precedence, align 8
  %163 = load i32*, i32** %InputPrecedence.addr, align 8
  call void @symbol_TransferPrecedence(i32* %162, i32* %163)
  %164 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConjectureList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %164)
  %165 = load i32*, i32** %Flags, align 8
  %call195 = call i32 @flag_GetFlagValue(i32* %165, i32 9)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.then.197, label %if.end.198

if.then.197:                                      ; preds = %for.end.194
  %166 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist, align 8
  call void @hsh_Delete(%struct.LIST_HELP** %166)
  br label %if.end.198

if.end.198:                                       ; preds = %if.then.197, %for.end.194
  %167 = load i32*, i32** %Flags, align 8
  %call199 = call i32 @flag_GetFlagValue(i32* %167, i32 2)
  %tobool200 = icmp ne i32 %call199, 0
  br i1 %tobool200, label %if.end.202, label %if.then.201

if.then.201:                                      ; preds = %if.end.198
  %168 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %169 = load %struct.LIST_HELP*, %struct.LIST_HELP** %168, align 8
  call void @list_Delete(%struct.LIST_HELP* %169)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.201, %if.end.198
  %call203 = call %struct.LIST_HELP* @list_Nil()
  %170 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %AllLabels.addr, align 8
  store %struct.LIST_HELP* %call203, %struct.LIST_HELP** %170, align 8
  %171 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllFormulae, align 8
  store %struct.LIST_HELP* %171, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.204

for.cond.204:                                     ; preds = %for.inc.214, %if.end.202
  %172 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call205 = call i32 @list_Empty(%struct.LIST_HELP* %172)
  %tobool206 = icmp ne i32 %call205, 0
  %lnot207 = xor i1 %tobool206, true
  br i1 %lnot207, label %for.body.208, label %for.end.216

for.body.208:                                     ; preds = %for.cond.204
  %173 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call210 = call i8* @list_Car(%struct.LIST_HELP* %173)
  %174 = bitcast i8* %call210 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %174, %struct.LIST_HELP** %Pair209, align 8
  %175 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair209, align 8
  %call211 = call i8* @list_PairSecond(%struct.LIST_HELP* %175)
  %176 = bitcast i8* %call211 to %struct.term*
  call void @term_Delete(%struct.term* %176)
  %177 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair209, align 8
  %call212 = call i8* @list_PairFirst(%struct.LIST_HELP* %177)
  %178 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %AllLabels.addr, align 8
  %179 = load %struct.LIST_HELP*, %struct.LIST_HELP** %178, align 8
  %call213 = call %struct.LIST_HELP* @list_Cons(i8* %call212, %struct.LIST_HELP* %179)
  %180 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %AllLabels.addr, align 8
  store %struct.LIST_HELP* %call213, %struct.LIST_HELP** %180, align 8
  %181 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair209, align 8
  call void @list_PairFree(%struct.LIST_HELP* %181)
  br label %for.inc.214

for.inc.214:                                      ; preds = %for.body.208
  %182 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call215 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %182)
  store %struct.LIST_HELP* %call215, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.204

for.end.216:                                      ; preds = %for.cond.204
  %183 = load %struct.LIST_HELP*, %struct.LIST_HELP** %AllFormulae, align 8
  call void @list_Delete(%struct.LIST_HELP* %183)
  %184 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolemFunctions, align 8
  call void @list_Delete(%struct.LIST_HELP* %184)
  %185 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolemPredicates, align 8
  call void @list_Delete(%struct.LIST_HELP* %185)
  %186 = load i32*, i32** %Flags, align 8
  %call217 = call i32 @flag_GetFlagValue(i32* %186, i32 2)
  %tobool218 = icmp ne i32 %call217, 0
  br i1 %tobool218, label %if.else.220, label %if.then.219

if.then.219:                                      ; preds = %for.end.216
  call void @symbol_ResetSkolemIndex()
  %187 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_Delete(%struct.PROOFSEARCH_HELP* %187)
  store %struct.PROOFSEARCH_HELP* null, %struct.PROOFSEARCH_HELP** %retval
  br label %return

if.else.220:                                      ; preds = %for.end.216
  %188 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  call void @prfs_DeleteDocProof(%struct.PROOFSEARCH_HELP* %188)
  %189 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search, align 8
  store %struct.PROOFSEARCH_HELP* %189, %struct.PROOFSEARCH_HELP** %retval
  br label %return

return:                                           ; preds = %if.else.220, %if.then.219
  %190 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %retval
  ret %struct.PROOFSEARCH_HELP* %190
}

declare void @flag_InitFlotterFlags(i32*, i32*) #2

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

declare %struct.LIST_HELP** @hsh_Create() #2

declare void @symbol_ReinitGenericNameCounters() #2

declare void @fol_RemoveImplied(%struct.term*) #2

declare void @fol_NormalizeVars(%struct.term*) #2

; Function Attrs: nounwind uwtable
define i32 @cnf_PropagateSubstEquations(%struct.term* %StartTerm) #0 {
entry:
  %StartTerm.addr = alloca %struct.term*, align 8
  %Subequ = alloca %struct.LIST_HELP*, align 8
  %QuantorTerm = alloca %struct.term*, align 8
  %Equation = alloca %struct.term*, align 8
  %EquationTerm = alloca %struct.term*, align 8
  %Variable = alloca i32, align 4
  %Hit = alloca i32, align 4
  %Substituted = alloca i32, align 4
  store %struct.term* %StartTerm, %struct.term** %StartTerm.addr, align 8
  store i32 0, i32* %Substituted, align 4
  %0 = load %struct.term*, %struct.term** %StartTerm.addr, align 8
  %call = call %struct.LIST_HELP* @fol_GetSubstEquations(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Subequ, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subequ, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %Hit, align 4
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subequ, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %Equation, align 8
  %call3 = call i32 @symbol_Null()
  store i32 %call3, i32* %Variable, align 4
  %call4 = call %struct.term* @term_Null()
  store %struct.term* %call4, %struct.term** %QuantorTerm, align 8
  %call5 = call %struct.term* @term_Null()
  store %struct.term* %call5, %struct.term** %EquationTerm, align 8
  %4 = load %struct.term*, %struct.term** %Equation, align 8
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %call7 = call i32 @term_IsVariable(%struct.term* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.term*, %struct.term** %Equation, align 8
  %call9 = call %struct.term* @term_SecondArgument(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %Equation, align 8
  %call10 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call11 = call i32 @term_TopSymbol(%struct.term* %call10)
  %call12 = call i32 @term_ContainsVariable(%struct.term* %call9, i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.term*, %struct.term** %Equation, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call15 = call i32 @term_TopSymbol(%struct.term* %call14)
  store i32 %call15, i32* %Variable, align 4
  %8 = load %struct.term*, %struct.term** %Equation, align 8
  %9 = load i32, i32* %Variable, align 4
  %call16 = call %struct.term* @fol_GetBindingQuantifier(%struct.term* %8, i32 %9)
  store %struct.term* %call16, %struct.term** %QuantorTerm, align 8
  %10 = load %struct.term*, %struct.term** %Equation, align 8
  %call17 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  store %struct.term* %call17, %struct.term** %EquationTerm, align 8
  %11 = load %struct.term*, %struct.term** %Equation, align 8
  %12 = load %struct.term*, %struct.term** %QuantorTerm, align 8
  %call18 = call i32 @fol_PolarCheck(%struct.term* %11, %struct.term* %12)
  store i32 %call18, i32* %Hit, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %13 = load i32, i32* %Hit, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %if.end.36, label %land.lhs.true.20

land.lhs.true.20:                                 ; preds = %if.end
  %14 = load %struct.term*, %struct.term** %Equation, align 8
  %call21 = call %struct.term* @term_SecondArgument(%struct.term* %14)
  %call22 = call i32 @term_IsVariable(%struct.term* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.36

land.lhs.true.24:                                 ; preds = %land.lhs.true.20
  %15 = load %struct.term*, %struct.term** %Equation, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %Equation, align 8
  %call26 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  %call27 = call i32 @term_TopSymbol(%struct.term* %call26)
  %call28 = call i32 @term_ContainsVariable(%struct.term* %call25, i32 %call27)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.36, label %if.then.30

if.then.30:                                       ; preds = %land.lhs.true.24
  %17 = load %struct.term*, %struct.term** %Equation, align 8
  %call31 = call %struct.term* @term_SecondArgument(%struct.term* %17)
  %call32 = call i32 @term_TopSymbol(%struct.term* %call31)
  store i32 %call32, i32* %Variable, align 4
  %18 = load %struct.term*, %struct.term** %Equation, align 8
  %19 = load i32, i32* %Variable, align 4
  %call33 = call %struct.term* @fol_GetBindingQuantifier(%struct.term* %18, i32 %19)
  store %struct.term* %call33, %struct.term** %QuantorTerm, align 8
  %20 = load %struct.term*, %struct.term** %Equation, align 8
  %call34 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  store %struct.term* %call34, %struct.term** %EquationTerm, align 8
  %21 = load %struct.term*, %struct.term** %Equation, align 8
  %22 = load %struct.term*, %struct.term** %QuantorTerm, align 8
  %call35 = call i32 @fol_PolarCheck(%struct.term* %21, %struct.term* %22)
  store i32 %call35, i32* %Hit, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.30, %land.lhs.true.24, %land.lhs.true.20, %if.end
  %23 = load i32, i32* %Hit, align 4
  %tobool37 = icmp ne i32 %23, 0
  br i1 %tobool37, label %if.then.38, label %if.end.45

if.then.38:                                       ; preds = %if.end.36
  %24 = load %struct.term*, %struct.term** %QuantorTerm, align 8
  %25 = load i32, i32* %Variable, align 4
  call void @fol_DeleteQuantifierVariable(%struct.term* %24, i32 %25)
  %26 = load %struct.term*, %struct.term** %StartTerm.addr, align 8
  %27 = load i32, i32* %Variable, align 4
  %28 = load %struct.term*, %struct.term** %EquationTerm, align 8
  call void @term_ReplaceVariable(%struct.term* %26, i32 %27, %struct.term* %28)
  %29 = load %struct.term*, %struct.term** %StartTerm.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %29)
  %30 = load %struct.term*, %struct.term** %QuantorTerm, align 8
  %call39 = call i32 @term_TopSymbol(%struct.term* %30)
  %call40 = call i32 @fol_Equality()
  %call41 = call i32 @symbol_Equal(i32 %call39, i32 %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else

if.then.43:                                       ; preds = %if.then.38
  %31 = load %struct.term*, %struct.term** %QuantorTerm, align 8
  call void @fol_SetTrue(%struct.term* %31)
  br label %if.end.44

if.else:                                          ; preds = %if.then.38
  %32 = load %struct.term*, %struct.term** %Equation, align 8
  call void @fol_SetTrue(%struct.term* %32)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.43
  store i32 1, i32* %Substituted, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subequ, align 8
  %call46 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %Subequ, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load i32, i32* %Substituted, align 4
  ret i32 %34
}

declare %struct.term* @ren_Rename(%struct.term*, i32*, %struct.LIST_HELP**, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_RemoveEquivImplFromFormula(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %term1 = alloca %struct.term*, align 8
  %termL = alloca %struct.term*, align 8
  %termR = alloca %struct.term*, align 8
  %termLneg = alloca %struct.term*, align 8
  %termRneg = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  %pol = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.71, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @fol_Implies()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call6 = call i32 @fol_Or()
  call void @term_RplacTop(%struct.term* %5, i32 %call6)
  %6 = load %struct.term*, %struct.term** %term1, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %6)
  %call8 = call i32 @fol_Not()
  %7 = load %struct.term*, %struct.term** %term1, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %call9)
  %call11 = call %struct.LIST_HELP* @list_List(i8* %call10)
  %call12 = call %struct.term* @term_Create(i32 %call8, %struct.LIST_HELP* %call11)
  %8 = bitcast %struct.term* %call12 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call7, i8* %8)
  br label %if.end.61

if.else:                                          ; preds = %while.body
  %9 = load %struct.term*, %struct.term** %term1, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %9)
  %call14 = call i32 @fol_Equiv()
  %call15 = call i32 @symbol_Equal(i32 %call13, i32 %call14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.60

if.then.17:                                       ; preds = %if.else
  %10 = load %struct.term*, %struct.term** %term.addr, align 8
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %call18 = call i32 @cnf_GetFormulaPolarity(%struct.term* %10, %struct.term* %11)
  store i32 %call18, i32* %pol, align 4
  %12 = load %struct.term*, %struct.term** %term1, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %12)
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %call19)
  %13 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %13, %struct.term** %termL, align 8
  %14 = load %struct.term*, %struct.term** %term1, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %call22 = call i8* @list_Second(%struct.LIST_HELP* %call21)
  %15 = bitcast i8* %call22 to %struct.term*
  store %struct.term* %15, %struct.term** %termR, align 8
  %call23 = call i32 @fol_Not()
  %16 = load %struct.term*, %struct.term** %termL, align 8
  %call24 = call %struct.term* @term_Copy(%struct.term* %16)
  %17 = bitcast %struct.term* %call24 to i8*
  %call25 = call %struct.LIST_HELP* @list_List(i8* %17)
  %call26 = call %struct.term* @term_Create(i32 %call23, %struct.LIST_HELP* %call25)
  store %struct.term* %call26, %struct.term** %termLneg, align 8
  %call27 = call i32 @fol_Not()
  %18 = load %struct.term*, %struct.term** %termR, align 8
  %call28 = call %struct.term* @term_Copy(%struct.term* %18)
  %19 = bitcast %struct.term* %call28 to i8*
  %call29 = call %struct.LIST_HELP* @list_List(i8* %19)
  %call30 = call %struct.term* @term_Create(i32 %call27, %struct.LIST_HELP* %call29)
  store %struct.term* %call30, %struct.term** %termRneg, align 8
  %20 = load i32, i32* %pol, align 4
  %cmp31 = icmp eq i32 %20, 1
  br i1 %cmp31, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.17
  %21 = load i32, i32* %pol, align 4
  %cmp32 = icmp eq i32 %21, 0
  br i1 %cmp32, label %if.then.33, label %if.else.45

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.17
  %22 = load %struct.term*, %struct.term** %term1, align 8
  %call34 = call i32 @fol_And()
  call void @term_RplacTop(%struct.term* %22, i32 %call34)
  %23 = load %struct.term*, %struct.term** %term1, align 8
  %call35 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  %call36 = call i32 @fol_Or()
  %24 = load %struct.term*, %struct.term** %termLneg, align 8
  %25 = bitcast %struct.term* %24 to i8*
  %26 = load %struct.term*, %struct.term** %termR, align 8
  %27 = bitcast %struct.term* %26 to i8*
  %call37 = call %struct.LIST_HELP* @list_List(i8* %27)
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %25, %struct.LIST_HELP* %call37)
  %call39 = call %struct.term* @term_Create(i32 %call36, %struct.LIST_HELP* %call38)
  %28 = bitcast %struct.term* %call39 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call35, i8* %28)
  %29 = load %struct.term*, %struct.term** %term1, align 8
  %call40 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  %call41 = call i32 @fol_Or()
  %30 = load %struct.term*, %struct.term** %termRneg, align 8
  %31 = bitcast %struct.term* %30 to i8*
  %32 = load %struct.term*, %struct.term** %termL, align 8
  %33 = bitcast %struct.term* %32 to i8*
  %call42 = call %struct.LIST_HELP* @list_List(i8* %33)
  %call43 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %call42)
  %call44 = call %struct.term* @term_Create(i32 %call41, %struct.LIST_HELP* %call43)
  %34 = bitcast %struct.term* %call44 to i8*
  call void @list_RplacSecond(%struct.LIST_HELP* %call40, i8* %34)
  br label %if.end.59

if.else.45:                                       ; preds = %lor.lhs.false
  %35 = load i32, i32* %pol, align 4
  %cmp46 = icmp eq i32 %35, -1
  br i1 %cmp46, label %if.then.47, label %if.end

if.then.47:                                       ; preds = %if.else.45
  %36 = load %struct.term*, %struct.term** %term1, align 8
  %call48 = call i32 @fol_Or()
  call void @term_RplacTop(%struct.term* %36, i32 %call48)
  %37 = load %struct.term*, %struct.term** %term1, align 8
  %call49 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %37)
  %call50 = call i32 @fol_And()
  %38 = load %struct.term*, %struct.term** %termLneg, align 8
  %39 = bitcast %struct.term* %38 to i8*
  %40 = load %struct.term*, %struct.term** %termRneg, align 8
  %41 = bitcast %struct.term* %40 to i8*
  %call51 = call %struct.LIST_HELP* @list_List(i8* %41)
  %call52 = call %struct.LIST_HELP* @list_Cons(i8* %39, %struct.LIST_HELP* %call51)
  %call53 = call %struct.term* @term_Create(i32 %call50, %struct.LIST_HELP* %call52)
  %42 = bitcast %struct.term* %call53 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call49, i8* %42)
  %43 = load %struct.term*, %struct.term** %term1, align 8
  %call54 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  %call55 = call i32 @fol_And()
  %44 = load %struct.term*, %struct.term** %termL, align 8
  %45 = bitcast %struct.term* %44 to i8*
  %46 = load %struct.term*, %struct.term** %termR, align 8
  %47 = bitcast %struct.term* %46 to i8*
  %call56 = call %struct.LIST_HELP* @list_List(i8* %47)
  %call57 = call %struct.LIST_HELP* @list_Cons(i8* %45, %struct.LIST_HELP* %call56)
  %call58 = call %struct.term* @term_Create(i32 %call55, %struct.LIST_HELP* %call57)
  %48 = bitcast %struct.term* %call58 to i8*
  call void @list_RplacSecond(%struct.LIST_HELP* %call54, i8* %48)
  br label %if.end

if.end:                                           ; preds = %if.then.47, %if.else.45
  br label %if.end.59

if.end.59:                                        ; preds = %if.end, %if.then.33
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.else
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then
  %49 = load %struct.term*, %struct.term** %term1, align 8
  %call62 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %49)
  %call63 = call i32 @list_Empty(%struct.LIST_HELP* %call62)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.71, label %if.then.65

if.then.65:                                       ; preds = %if.end.61
  %50 = load %struct.term*, %struct.term** %term1, align 8
  %call66 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %50)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.65
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call67 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool68 = icmp ne i32 %call67, 0
  %lnot = xor i1 %tobool68, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call69 = call i8* @list_Car(%struct.LIST_HELP* %52)
  call void @vec_Push(i8* %call69)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.71

if.end.71:                                        ; preds = %for.end, %if.end.61
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %54 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %54)
  %55 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_AntiPrenex(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  %Subterm = alloca %struct.term*, align 8
  %Actterm = alloca %struct.term*, align 8
  %DistrSymb = alloca i32, align 4
  %Subtop = alloca i32, align 4
  %Variables = alloca %struct.LIST_HELP*, align 8
  %NewVars = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @fol_IsQuantifier(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.81

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call2, %struct.term** %Subterm, align 8
  %3 = load %struct.term*, %struct.term** %Subterm, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %Subtop, align 4
  %4 = load i32, i32* %Subtop, align 4
  %call4 = call i32 @symbol_IsPredicate(i32 %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.80, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %Subtop, align 4
  %call6 = call i32 @fol_Not()
  %call7 = call i32 @symbol_Equal(i32 %5, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.80, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_All()
  %call11 = call i32 @symbol_Equal(i32 %6, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %call14 = call i32 @fol_And()
  store i32 %call14, i32* %DistrSymb, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.9
  %call15 = call i32 @fol_Or()
  store i32 %call15, i32* %DistrSymb, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %7 = load i32, i32* %Subtop, align 4
  %call16 = call i32 @fol_IsQuantifier(i32 %7)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %8 = load %struct.term*, %struct.term** %Subterm, align 8
  %call19 = call %struct.term* @cnf_AntiPrenex(%struct.term* %8)
  %9 = load %struct.term*, %struct.term** %Subterm, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %9)
  store i32 %call20, i32* %Subtop, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %10 = load i32, i32* %Subtop, align 4
  %11 = load i32, i32* %DistrSymb, align 4
  %call22 = call i32 @symbol_Equal(i32 %10, i32 %11)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.63

if.then.24:                                       ; preds = %if.end.21
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %12)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Variables, align 8
  %13 = load %struct.term*, %struct.term** %Subterm, align 8
  %14 = load i32, i32* %DistrSymb, align 4
  %call26 = call %struct.term* @cnf_Flatten(%struct.term* %13, i32 %14)
  store %struct.term* %call26, %struct.term** %Subterm, align 8
  %15 = load %struct.term*, %struct.term** %Subterm, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call30 to %struct.term*
  store %struct.term* %18, %struct.term** %Actterm, align 8
  %19 = load %struct.term*, %struct.term** %Actterm, align 8
  %call31 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call32 = call %struct.LIST_HELP* @list_NIntersect(%struct.LIST_HELP* %call31, %struct.LIST_HELP* %20, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %NewVars, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.47, label %if.then.35

if.then.35:                                       ; preds = %for.body
  %22 = load i32, i32* %Top, align 4
  %23 = load %struct.term*, %struct.term** %Actterm, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %23)
  %call37 = call i32 @symbol_Equal(i32 %22, i32 %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.then.35
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %24)
  %25 = load %struct.term*, %struct.term** %Actterm, align 8
  %call40 = call %struct.term* @term_FirstArgument(%struct.term* %25)
  %26 = load %struct.term*, %struct.term** %Actterm, align 8
  %call41 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %call42 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call41, %struct.LIST_HELP* %27)
  call void @term_RplacArgumentList(%struct.term* %call40, %struct.LIST_HELP* %call42)
  br label %if.end.46

if.else.43:                                       ; preds = %if.then.35
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %28)
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %30 = load i32, i32* %Top, align 4
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %32 = load %struct.term*, %struct.term** %Actterm, align 8
  %33 = bitcast %struct.term* %32 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %33)
  %call45 = call %struct.term* @fol_CreateQuantifier(i32 %30, %struct.LIST_HELP* %31, %struct.LIST_HELP* %call44)
  %34 = bitcast %struct.term* %call45 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %29, i8* %34)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %36)
  call void @term_Delete(%struct.term* %call49)
  %37 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call50 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %37)
  call void @list_Delete(%struct.LIST_HELP* %call50)
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  %39 = load i32, i32* %DistrSymb, align 4
  call void @term_RplacTop(%struct.term* %38, i32 %39)
  %40 = load %struct.term*, %struct.term** %Term.addr, align 8
  %41 = load %struct.term*, %struct.term** %Subterm, align 8
  %call51 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %41)
  call void @term_RplacArgumentList(%struct.term* %40, %struct.LIST_HELP* %call51)
  %42 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %42)
  %43 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.60, %for.end
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call54 = call i32 @list_Empty(%struct.LIST_HELP* %44)
  %tobool55 = icmp ne i32 %call54, 0
  %lnot56 = xor i1 %tobool55, true
  br i1 %lnot56, label %for.body.57, label %for.end.62

for.body.57:                                      ; preds = %for.cond.53
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i8* @list_Car(%struct.LIST_HELP* %46)
  %47 = bitcast i8* %call58 to %struct.term*
  %call59 = call %struct.term* @cnf_AntiPrenex(%struct.term* %47)
  %48 = bitcast %struct.term* %call59 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %45, i8* %48)
  br label %for.inc.60

for.inc.60:                                       ; preds = %for.body.57
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %49)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.53

for.end.62:                                       ; preds = %for.cond.53
  br label %if.end.79

if.else.63:                                       ; preds = %if.end.21
  %50 = load i32, i32* %Subtop, align 4
  %call64 = call i32 @fol_IsQuantifier(i32 %50)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.end.78, label %if.then.66

if.then.66:                                       ; preds = %if.else.63
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @cnf_DistrQuantorNoVarSub(%struct.term* %51)
  %52 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call67 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %52)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.68

for.cond.68:                                      ; preds = %for.inc.75, %if.then.66
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call i32 @list_Empty(%struct.LIST_HELP* %53)
  %tobool70 = icmp ne i32 %call69, 0
  %lnot71 = xor i1 %tobool70, true
  br i1 %lnot71, label %for.body.72, label %for.end.77

for.body.72:                                      ; preds = %for.cond.68
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call73 = call i8* @list_Car(%struct.LIST_HELP* %54)
  %55 = bitcast i8* %call73 to %struct.term*
  %call74 = call %struct.term* @cnf_AntiPrenex(%struct.term* %55)
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.72
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.68

for.end.77:                                       ; preds = %for.cond.68
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %if.else.63
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %for.end.62
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %land.lhs.true, %if.then
  br label %if.end.101

if.else.81:                                       ; preds = %entry
  %57 = load i32, i32* %Top, align 4
  %call82 = call i32 @fol_Not()
  %call83 = call i32 @symbol_Equal(i32 %57, i32 %call82)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.100, label %land.lhs.true.85

land.lhs.true.85:                                 ; preds = %if.else.81
  %58 = load i32, i32* %Top, align 4
  %call86 = call i32 @symbol_IsPredicate(i32 %58)
  %tobool87 = icmp ne i32 %call86, 0
  br i1 %tobool87, label %if.end.100, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.85
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call89 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %59)
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.97, %if.then.88
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call91 = call i32 @list_Empty(%struct.LIST_HELP* %60)
  %tobool92 = icmp ne i32 %call91, 0
  %lnot93 = xor i1 %tobool92, true
  br i1 %lnot93, label %for.body.94, label %for.end.99

for.body.94:                                      ; preds = %for.cond.90
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call95 = call i8* @list_Car(%struct.LIST_HELP* %61)
  %62 = bitcast i8* %call95 to %struct.term*
  %call96 = call %struct.term* @cnf_AntiPrenex(%struct.term* %62)
  br label %for.inc.97

for.inc.97:                                       ; preds = %for.body.94
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call98 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call98, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.90

for.end.99:                                       ; preds = %for.cond.90
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %land.lhs.true.85, %if.else.81
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end.80
  %64 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %64
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i8* @string_StringCopy(i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @fol_PrettyPrintDFG(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #1 {
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

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_SkolemFormula(%struct.term* %Term, i32* %Precedence, %struct.LIST_HELP** %Symblist) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Precedence.addr = alloca i32*, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %Top = alloca i32, align 4
  %SkolemSymbol = alloca i32, align 4
  %Subterm = alloca %struct.term*, align 8
  %SkolemTerm = alloca %struct.term*, align 8
  %Varlist = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Arity = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @term_TopSymbol(%struct.term* %1)
  %call2 = call i32 @fol_IsQuantifier(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.31

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %Top, align 4
  %call3 = call i32 @fol_All()
  %call4 = call i32 @symbol_Equal(i32 %2, i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %3)
  call void @term_Delete(%struct.term* %call7)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %4)
  store %struct.term* %call8, %struct.term** %Subterm, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  call void @list_Delete(%struct.LIST_HELP* %call9)
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %Subterm, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %7)
  call void @term_RplacTop(%struct.term* %6, i32 %call10)
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %9 = load %struct.term*, %struct.term** %Subterm, align 8
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %call11)
  %10 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  %12 = load i32*, i32** %Precedence.addr, align 8
  %13 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call12 = call %struct.term* @cnf_SkolemFormula(%struct.term* %11, i32* %12, %struct.LIST_HELP** %13)
  store %struct.term* %call12, %struct.term** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %14 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %14)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %Varlist, align 8
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Varlist, align 8
  %call14 = call i32 @list_Length(%struct.LIST_HELP* %15)
  store i32 %call14, i32* %Arity, align 4
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %16)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot = xor i1 %tobool17, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load i32, i32* %Arity, align 4
  %19 = load i32*, i32** %Precedence.addr, align 8
  %call18 = call i32 @symbol_CreateSkolemFunction(i32 %18, i32* %19)
  store i32 %call18, i32* %SkolemSymbol, align 4
  %20 = load i32, i32* %SkolemSymbol, align 4
  %conv = sext i32 %20 to i64
  %21 = inttoptr i64 %conv to i8*
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %22, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %21, %struct.LIST_HELP* %23)
  %24 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %24, align 8
  %25 = load i32, i32* %SkolemSymbol, align 4
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Varlist, align 8
  %call20 = call %struct.term* @term_Create(i32 %25, %struct.LIST_HELP* %26)
  store %struct.term* %call20, %struct.term** %SkolemTerm, align 8
  %27 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call21 = call %struct.term* @term_SecondArgument(%struct.term* %27)
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call22 to %struct.term*
  %call23 = call i32 @term_TopSymbol(%struct.term* %29)
  %30 = load %struct.term*, %struct.term** %SkolemTerm, align 8
  call void @fol_ReplaceVariable(%struct.term* %call21, i32 %call23, %struct.term* %30)
  %31 = load %struct.term*, %struct.term** %SkolemTerm, align 8
  call void @term_Free(%struct.term* %31)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Varlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %33)
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call %struct.term* @term_FirstArgument(%struct.term* %34)
  call void @term_Delete(%struct.term* %call25)
  %35 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call26 = call %struct.term* @term_SecondArgument(%struct.term* %35)
  store %struct.term* %call26, %struct.term** %Subterm, align 8
  %36 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %36)
  call void @list_Delete(%struct.LIST_HELP* %call27)
  %37 = load %struct.term*, %struct.term** %Term.addr, align 8
  %38 = load %struct.term*, %struct.term** %Subterm, align 8
  %call28 = call i32 @term_TopSymbol(%struct.term* %38)
  call void @term_RplacTop(%struct.term* %37, i32 %call28)
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %40 = load %struct.term*, %struct.term** %Subterm, align 8
  %call29 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %40)
  call void @term_RplacArgumentList(%struct.term* %39, %struct.LIST_HELP* %call29)
  %41 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %41)
  %42 = load %struct.term*, %struct.term** %Term.addr, align 8
  %43 = load i32*, i32** %Precedence.addr, align 8
  %44 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call30 = call %struct.term* @cnf_SkolemFormula(%struct.term* %42, i32* %43, %struct.LIST_HELP** %44)
  store %struct.term* %call30, %struct.term** %retval
  br label %return

if.else.31:                                       ; preds = %entry
  %45 = load i32, i32* %Top, align 4
  %call32 = call i32 @fol_And()
  %call33 = call i32 @symbol_Equal(i32 %45, i32 %call32)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.31
  %46 = load i32, i32* %Top, align 4
  %call35 = call i32 @fol_Or()
  %call36 = call i32 @symbol_Equal(i32 %46, i32 %call35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.then.38, label %if.end

if.then.38:                                       ; preds = %lor.lhs.false, %if.else.31
  %47 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call39 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %47)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %if.then.38
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %48)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot43 = xor i1 %tobool42, true
  br i1 %lnot43, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.40
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call i8* @list_Car(%struct.LIST_HELP* %49)
  %50 = bitcast i8* %call45 to %struct.term*
  %51 = load i32*, i32** %Precedence.addr, align 8
  %52 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call46 = call %struct.term* @cnf_SkolemFormula(%struct.term* %50, i32* %51, %struct.LIST_HELP** %52)
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  br label %if.end

if.end:                                           ; preds = %for.end.49, %lor.lhs.false
  br label %if.end.50

if.end.50:                                        ; preds = %if.end
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %54, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.50, %for.end, %if.then.6
  %55 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_DistributiveFormula(%struct.term* %Formula) #0 {
entry:
  %Formula.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Lists = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Formula, %struct.term** %Formula.addr, align 8
  %0 = load %struct.term*, %struct.term** %Formula.addr, align 8
  %call = call %struct.LIST_HELP* @cnf_ComputeLiteralLists(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Lists, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lists, align 8
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
  %call2 = call i32 @fol_Or()
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call3 to %struct.LIST_HELP*
  %call4 = call %struct.term* @term_Create(i32 %call2, %struct.LIST_HELP* %5)
  %6 = bitcast %struct.term* %call4 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %3, i8* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call6 = call i32 @fol_And()
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Lists, align 8
  %call7 = call %struct.term* @term_Create(i32 %call6, %struct.LIST_HELP* %8)
  store %struct.term* %call7, %struct.term** %Result, align 8
  %9 = load %struct.term*, %struct.term** %Formula.addr, align 8
  call void @term_Delete(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @hsh_Put(%struct.LIST_HELP** %H, i8* %Key, i8* %Value) #1 {
entry:
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %Value.addr = alloca i8*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %HashKey = alloca i64, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store i8* %Value, i8** %Value.addr, align 8
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
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call4 = call i8* @list_PairSecond(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call4 to %struct.LIST_HELP*
  %11 = load i8*, i8** %Value.addr, align 8
  %call5 = call i32 @list_PointerMember(%struct.LIST_HELP* %10, i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end, label %if.then.7

if.then.7:                                        ; preds = %if.then
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %13 = load i8*, i8** %Value.addr, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call8 = call i8* @list_PairSecond(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call8 to %struct.LIST_HELP*
  %call9 = call %struct.LIST_HELP* @list_Cons(i8* %13, %struct.LIST_HELP* %15)
  call void @list_Rplacd(%struct.LIST_HELP* %12, %struct.LIST_HELP* %call9)
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  br label %return

if.end.10:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call11 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load i8*, i8** %Key.addr, align 8
  %18 = load i8*, i8** %Value.addr, align 8
  %call12 = call %struct.LIST_HELP* @list_List(i8* %18)
  %19 = bitcast %struct.LIST_HELP* %call12 to i8*
  %call13 = call %struct.LIST_HELP* @list_PairCreate(i8* %17, i8* %19)
  %20 = bitcast %struct.LIST_HELP* %call13 to i8*
  %21 = load i64, i64* %HashKey, align 8
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %22, i64 %21
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx14, align 8
  %call15 = call %struct.LIST_HELP* @list_Cons(i8* %20, %struct.LIST_HELP* %23)
  %24 = load i64, i64* %HashKey, align 8
  %25 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx16 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %25, i64 %24
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %arrayidx16, align 8
  br label %return

return:                                           ; preds = %for.end, %if.end
  ret void
}

declare %struct.LIST_HELP* @red_SatUnit(%struct.PROOFSEARCH_HELP*, %struct.LIST_HELP*) #2

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

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

declare void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_OptimizedSkolemization(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %Term, i8* %Label, %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP** %Symblist, i32 %result, i32 %Conjecture, %struct.LIST_HELP** %InputClauseToTermLabellist) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Label.addr = alloca i8*, align 8
  %UsedTerms.addr = alloca %struct.LIST_HELP**, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %result.addr = alloca i32, align 4
  %Conjecture.addr = alloca i32, align 4
  %InputClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %Clauses = alloca %struct.LIST_HELP*, align 8
  %FirstArg = alloca %struct.term*, align 8
  %i = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %Symbols = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store i8* %Label, i8** %Label.addr, align 8
  store %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  store i32 %result, i32* %result.addr, align 4
  store i32 %Conjecture, i32* %Conjecture.addr, align 4
  store %struct.LIST_HELP** %InputClauseToTermLabellist, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %2, %struct.term** %FirstArg, align 8
  %3 = load i32*, i32** %Flags, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %3, i32 54)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %cmp = icmp sle i32 %4, 2000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  store i32 -1, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %8 = load i32*, i32** %Flags, align 8
  %call3 = call i32 @flag_GetFlagValue(i32* %8, i32 33)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32*, i32** %Flags, align 8
  %call5 = call i32 @flag_GetFlagValue(i32* %9, i32 34)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %lor.lhs.false, %if.end
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %10)
  %11 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_PrettyPrintDFG(%struct.term* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %lor.lhs.false
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call10 = call i32 @fol_IsLiteral(%struct.term* %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.29, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %13 = load i32*, i32** %Flags, align 8
  %call13 = call i32 @flag_GetFlagValue(i32* %13, i32 53)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.then.12
  %14 = load i32*, i32** %Flags, align 8
  %call16 = call i32 @flag_GetFlagValue(i32* %14, i32 54)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %lor.lhs.false.15, %if.then.12
  %15 = load i32*, i32** %Flags, align 8
  %call19 = call i32 @flag_GetFlagValue(i32* %15, i32 53)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.18
  %call22 = call i32 @fol_And()
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %17 = bitcast %struct.term* %16 to i8*
  %call23 = call %struct.LIST_HELP* @list_List(i8* %17)
  %call24 = call %struct.term* @term_Create(i32 %call22, %struct.LIST_HELP* %call23)
  store %struct.term* %call24, %struct.term** %Term.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.then.18
  %18 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %20 = load i8*, i8** %Label.addr, align 8
  %21 = load %struct.term*, %struct.term** %FirstArg, align 8
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %23 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %24 = load i32, i32* %result.addr, align 4
  %25 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %18, %struct.term* %19, i8* %20, i32 1, %struct.term* %21, %struct.LIST_HELP** %22, %struct.LIST_HELP** %23, i32 %24, %struct.LIST_HELP** %25, i32 0)
  br label %if.end.28

if.else:                                          ; preds = %lor.lhs.false.15
  %call26 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %Symbols, align 8
  %26 = load %struct.term*, %struct.term** %Term.addr, align 8
  %27 = load i32*, i32** %Precedence, align 8
  %call27 = call %struct.term* @cnf_SkolemFormula(%struct.term* %26, i32* %27, %struct.LIST_HELP** %Symbols)
  store %struct.term* %call27, %struct.term** %Term.addr, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols, align 8
  call void @list_Delete(%struct.LIST_HELP* %28)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.25
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.9
  %29 = load i32*, i32** %Flags, align 8
  %call30 = call i32 @flag_GetFlagValue(i32* %29, i32 33)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.35, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.29
  %30 = load i32*, i32** %Flags, align 8
  %call33 = call i32 @flag_GetFlagValue(i32* %30, i32 34)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %lor.lhs.false.32, %if.end.29
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %31)
  %32 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Print(%struct.term* %32)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %lor.lhs.false.32
  %33 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call38 = call %struct.term* @cnf_DistributiveFormula(%struct.term* %33)
  store %struct.term* %call38, %struct.term** %Term.addr, align 8
  %34 = load %struct.term*, %struct.term** %Term.addr, align 8
  %35 = load i32, i32* %Conjecture.addr, align 4
  %36 = load i32*, i32** %Flags, align 8
  %37 = load i32*, i32** %Precedence, align 8
  %call39 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %34, i32 0, i32 %35, i32* %36, i32* %37)
  store %struct.LIST_HELP* %call39, %struct.LIST_HELP** %Clauses, align 8
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Delete(%struct.term* %38)
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Clauses, align 8
  ret %struct.LIST_HELP* %39
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
define internal void @hsh_PutListWithCompareFunc(%struct.LIST_HELP** %H, i8* %Key, %struct.LIST_HELP* %List, i32 (i8*, i8*)* %Test, i64 (i8*)* %HashFunc) #1 {
entry:
  %H.addr = alloca %struct.LIST_HELP**, align 8
  %Key.addr = alloca i8*, align 8
  %List.addr = alloca %struct.LIST_HELP*, align 8
  %Test.addr = alloca i32 (i8*, i8*)*, align 8
  %HashFunc.addr = alloca i64 (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Pair = alloca %struct.LIST_HELP*, align 8
  %HashKey = alloca i64, align 8
  store %struct.LIST_HELP** %H, %struct.LIST_HELP*** %H.addr, align 8
  store i8* %Key, i8** %Key.addr, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  store i32 (i8*, i8*)* %Test, i32 (i8*, i8*)** %Test.addr, align 8
  store i64 (i8*)* %HashFunc, i64 (i8*)** %HashFunc.addr, align 8
  %0 = load i64 (i8*)*, i64 (i8*)** %HashFunc.addr, align 8
  %1 = load i8*, i8** %Key.addr, align 8
  %call = call i64 %0(i8* %1)
  store i64 %call, i64* %HashKey, align 8
  %2 = load i64, i64* %HashKey, align 8
  %3 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %3, i64 %2
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx, align 8
  store %struct.LIST_HELP* %4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call2 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %Pair, align 8
  %8 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %Test.addr, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %9)
  %10 = load i8*, i8** %Key.addr, align 8
  %call4 = call i32 %8(i8* %call3, i8* %10)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair, align 8
  %call6 = call i8* @list_PairSecond(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call6 to %struct.LIST_HELP*
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %13, %struct.LIST_HELP* %14)
  call void @list_Rplacd(%struct.LIST_HELP* %11, %struct.LIST_HELP* %call7)
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call8 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load i8*, i8** %Key.addr, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %18 = bitcast %struct.LIST_HELP* %17 to i8*
  %call9 = call %struct.LIST_HELP* @list_PairCreate(i8* %16, i8* %18)
  %19 = bitcast %struct.LIST_HELP* %call9 to i8*
  %20 = load i64, i64* %HashKey, align 8
  %21 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx10 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %21, i64 %20
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arrayidx10, align 8
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %19, %struct.LIST_HELP* %22)
  %23 = load i64, i64* %HashKey, align 8
  %24 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %H.addr, align 8
  %arrayidx12 = getelementptr inbounds %struct.LIST_HELP*, %struct.LIST_HELP** %24, i64 %23
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %arrayidx12, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cnf_LabelEqual(i8* %l1, i8* %l2) #1 {
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
define internal i64 @hsh_StringHashKey(i8* %Label) #1 {
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
  %call = call i64 @strlen(i8* %1) #8
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

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %Labels) #1 {
entry:
  %Labels.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %Labels, %struct.LIST_HELP** %Labels.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Labels.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %0, i32 (i8*, i8*)* @cnf_LabelEqual)
  ret %struct.LIST_HELP* %call
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @hsh_PutList(%struct.LIST_HELP** %H, i8* %Key, %struct.LIST_HELP* %List) #1 {
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

declare void @hsh_Delete(%struct.LIST_HELP**) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @symbol_ResetSkolemIndex() #1 {
entry:
  store i32 0, i32* @symbol_ACTSKOLEMFINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMCINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMPINDEX, align 4
  store i32 0, i32* @symbol_ACTSKOLEMAINDEX, align 4
  ret void
}

declare void @prfs_DeleteDocProof(%struct.PROOFSEARCH_HELP*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_QueryFlotter(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %Term, %struct.LIST_HELP** %Symblist) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %SkolemPredicates = alloca %struct.LIST_HELP*, align 8
  %SkolemFunctions = alloca %struct.LIST_HELP*, align 8
  %IndexedClauses = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %ResultClauses = alloca %struct.LIST_HELP*, align 8
  %Dummy = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %TermCopy = alloca %struct.term*, align 8
  %Formulae2Clause = alloca i32, align 4
  %Result = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %SubProofFlags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %call2 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %2)
  store i32* %call2, i32** %SubProofFlags, align 8
  %3 = load i32*, i32** %SubProofFlags, align 8
  call void @flag_InitStoreByDefaults(i32* %3)
  %4 = load i32*, i32** %Flags, align 8
  %5 = load i32*, i32** %SubProofFlags, align 8
  call void @flag_TransferFlag(i32* %4, i32* %5, i32 9)
  %6 = load i32*, i32** %Precedence, align 8
  %7 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %call3 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %7)
  call void @symbol_TransferPrecedence(i32* %6, i32* %call3)
  %call4 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %SkolemFunctions, align 8
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %SkolemPredicates, align 8
  store i32 0, i32* %Result, align 4
  %8 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %9 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  call void @prfs_CopyIndices(%struct.PROOFSEARCH_HELP* %8, %struct.PROOFSEARCH_HELP* %9)
  %call5 = call i32 @fol_Not()
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %11 = bitcast %struct.term* %10 to i8*
  %call6 = call %struct.LIST_HELP* @list_List(i8* %11)
  %call7 = call %struct.term* @term_Create(i32 %call5, %struct.LIST_HELP* %call6)
  store %struct.term* %call7, %struct.term** %Term.addr, align 8
  %12 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @fol_NormalizeVars(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @cnf_ObviousSimplifications(%struct.term* %13)
  store %struct.term* %call8, %struct.term** %Term.addr, align 8
  %14 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %14, i32 56)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %15 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %15)
  %16 = load %struct.term*, %struct.term** %Term.addr, align 8
  %17 = load i32*, i32** %Precedence, align 8
  %18 = load i32*, i32** %Flags, align 8
  %call10 = call i32 @flag_GetFlagValue(i32* %18, i32 57)
  %call11 = call %struct.term* @ren_Rename(%struct.term* %16, i32* %17, %struct.LIST_HELP** %SkolemPredicates, i32 %call10, i32 1)
  store %struct.term* %call11, %struct.term** %Term.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call12 = call %struct.term* @cnf_RemoveEquivImplFromFormula(%struct.term* %19)
  store %struct.term* %call12, %struct.term** %Term.addr, align 8
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %20)
  store %struct.term* %call13, %struct.term** %Term.addr, align 8
  %21 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call14 = call %struct.term* @cnf_AntiPrenex(%struct.term* %21)
  store %struct.term* %call14, %struct.term** %Term.addr, align 8
  %22 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call15 = call %struct.term* @term_Copy(%struct.term* %22)
  store %struct.term* %call15, %struct.term** %TermCopy, align 8
  %23 = load %struct.term*, %struct.term** %TermCopy, align 8
  %24 = load i32*, i32** %Precedence, align 8
  %call16 = call %struct.term* @cnf_SkolemFormula(%struct.term* %23, i32* %24, %struct.LIST_HELP** %SkolemFunctions)
  store %struct.term* %call16, %struct.term** %TermCopy, align 8
  %25 = load %struct.term*, %struct.term** %TermCopy, align 8
  %call17 = call %struct.term* @cnf_DistributiveFormula(%struct.term* %25)
  store %struct.term* %call17, %struct.term** %TermCopy, align 8
  %26 = load %struct.term*, %struct.term** %TermCopy, align 8
  %27 = load i32*, i32** %Flags, align 8
  %28 = load i32*, i32** %Precedence, align 8
  %call18 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %26, i32 0, i32 0, i32* %27, i32* %28)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %IndexedClauses, align 8
  %29 = load %struct.term*, %struct.term** %TermCopy, align 8
  call void @term_Delete(%struct.term* %29)
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexedClauses, align 8
  store %struct.LIST_HELP* %30, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot = xor i1 %tobool20, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call21 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %33, i32 8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %IndexedClauses, align 8
  %call23 = call %struct.LIST_HELP* @red_SatUnit(%struct.PROOFSEARCH_HELP* %35, %struct.LIST_HELP* %36)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %EmptyClauses, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %for.end
  store i32 1, i32* %Result, align 4
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %38)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %for.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.27
  %39 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %call28 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %39)
  %call29 = call i32 @list_Empty(%struct.LIST_HELP* %call28)
  %tobool30 = icmp ne i32 %call29, 0
  %lnot31 = xor i1 %tobool30, true
  br i1 %lnot31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %40 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %41 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %call32 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %41)
  %call33 = call i8* @list_Car(%struct.LIST_HELP* %call32)
  %42 = bitcast i8* %call33 to %struct.CLAUSE_HELP*
  call void @prfs_MoveUsableWorkedOff(%struct.PROOFSEARCH_HELP* %40, %struct.CLAUSE_HELP* %42)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call34 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %Dummy, align 8
  %43 = load i32*, i32** %SubProofFlags, align 8
  %call35 = call i32 @flag_GetFlagValue(i32* %43, i32 9)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.then.37, label %if.else

if.then.37:                                       ; preds = %while.end
  store i32 1, i32* %Formulae2Clause, align 4
  br label %if.end.38

if.else:                                          ; preds = %while.end
  store i32 0, i32* %Formulae2Clause, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else, %if.then.37
  %44 = load i32*, i32** %SubProofFlags, align 8
  call void @flag_SetFlagValue(i32* %44, i32 9, i32 0)
  %45 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  %46 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call39 = call %struct.term* @term_Copy(%struct.term* %46)
  %47 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %48 = load i32, i32* %Result, align 4
  %call40 = call %struct.LIST_HELP* @cnf_OptimizedSkolemization(%struct.PROOFSEARCH_HELP* %45, %struct.term* %call39, i8* null, %struct.LIST_HELP** %Dummy, %struct.LIST_HELP** %47, i32 %48, i32 0, %struct.LIST_HELP** null)
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %ResultClauses, align 8
  %49 = load i32, i32* %Formulae2Clause, align 4
  %tobool41 = icmp ne i32 %49, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.38
  %50 = load i32*, i32** %SubProofFlags, align 8
  call void @flag_SetFlagValue(i32* %50, i32 9, i32 1)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end.38
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_Delete(%struct.term* %51)
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolemPredicates, align 8
  call void @list_Delete(%struct.LIST_HELP* %52)
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %SkolemFunctions, align 8
  call void @list_Delete(%struct.LIST_HELP* %53)
  %54 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** @cnf_SEARCHCOPY, align 8
  call void @prfs_Clean(%struct.PROOFSEARCH_HELP* %54)
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ResultClauses, align 8
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.50, %if.end.43
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call45 = call i32 @list_Empty(%struct.LIST_HELP* %56)
  %tobool46 = icmp ne i32 %call45, 0
  %lnot47 = xor i1 %tobool46, true
  br i1 %lnot47, label %for.body.48, label %for.end.52

for.body.48:                                      ; preds = %for.cond.44
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call49 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %58, i32 8)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.48
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %59)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.44

for.end.52:                                       ; preds = %for.cond.44
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ResultClauses, align 8
  ret %struct.LIST_HELP* %60
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @flag_TransferFlag(i32* %Source, i32* %Destination, i32 %FlagId) #1 {
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

declare void @prfs_CopyIndices(%struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP*) #2

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
define %struct.term* @cnf_DefTargetConvert(%struct.term* %Target, %struct.term* %ToTopLevel, %struct.term* %ToProveDef, %struct.LIST_HELP* %DefPredArgs, %struct.LIST_HELP* %TargetPredArgs, %struct.LIST_HELP* %TargetPredVars, %struct.LIST_HELP* %VarsForTopLevel, i32* %Flags, i32* %Precedence, i32* %LocallyTrue) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Target.addr = alloca %struct.term*, align 8
  %ToTopLevel.addr = alloca %struct.term*, align 8
  %ToProveDef.addr = alloca %struct.term*, align 8
  %DefPredArgs.addr = alloca %struct.LIST_HELP*, align 8
  %TargetPredArgs.addr = alloca %struct.LIST_HELP*, align 8
  %TargetPredVars.addr = alloca %struct.LIST_HELP*, align 8
  %VarsForTopLevel.addr = alloca %struct.LIST_HELP*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %LocallyTrue.addr = alloca i32*, align 8
  %orterm = alloca %struct.term*, align 8
  %targettoprove = alloca %struct.term*, align 8
  %maxvar = alloca i32, align 4
  %l1 = alloca %struct.LIST_HELP*, align 8
  %l2 = alloca %struct.LIST_HELP*, align 8
  %freevars = alloca %struct.LIST_HELP*, align 8
  %vars = alloca %struct.LIST_HELP*, align 8
  %arglist = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Target, %struct.term** %Target.addr, align 8
  store %struct.term* %ToTopLevel, %struct.term** %ToTopLevel.addr, align 8
  store %struct.term* %ToProveDef, %struct.term** %ToProveDef.addr, align 8
  store %struct.LIST_HELP* %DefPredArgs, %struct.LIST_HELP** %DefPredArgs.addr, align 8
  store %struct.LIST_HELP* %TargetPredArgs, %struct.LIST_HELP** %TargetPredArgs.addr, align 8
  store %struct.LIST_HELP* %TargetPredVars, %struct.LIST_HELP** %TargetPredVars.addr, align 8
  store %struct.LIST_HELP* %VarsForTopLevel, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32* %LocallyTrue, i32** %LocallyTrue.addr, align 8
  %0 = load i32*, i32** %Flags.addr, align 8
  %call = call i32 @flag_GetFlagValue(i32* %0, i32 37)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0))
  %1 = load %struct.term*, %struct.term** %Target.addr, align 8
  call void @fol_PrettyPrint(%struct.term* %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32*, i32** %LocallyTrue.addr, align 8
  store i32 0, i32* %2, align 4
  %3 = load %struct.term*, %struct.term** %Target.addr, align 8
  %4 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %call2 = call %struct.term* @cnf_RemoveImplFromFormulaPath(%struct.term* %3, %struct.term* %4)
  store %struct.term* %call2, %struct.term** %Target.addr, align 8
  %5 = load %struct.term*, %struct.term** %Target.addr, align 8
  %6 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %call3 = call %struct.term* @cnf_NegationNormalFormulaPath(%struct.term* %5, %struct.term* %6)
  store %struct.term* %call3, %struct.term** %Target.addr, align 8
  %7 = load %struct.term*, %struct.term** %Target.addr, align 8
  %8 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %call4 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %7, %struct.term* %8)
  store %struct.term* %call4, %struct.term** %Target.addr, align 8
  %9 = load %struct.term*, %struct.term** %Target.addr, align 8
  %10 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  %call5 = call %struct.term* @cnf_MovePredicateVariablesUp(%struct.term* %9, %struct.term* %10, %struct.LIST_HELP* %11)
  store %struct.term* %call5, %struct.term** %Target.addr, align 8
  %12 = load %struct.term*, %struct.term** %Target.addr, align 8
  %13 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %call6 = call %struct.term* @cnf_FlattenPath(%struct.term* %12, %struct.term* %13)
  store %struct.term* %call6, %struct.term** %Target.addr, align 8
  %14 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %14)
  %call8 = call i32 @fol_All()
  %call9 = call i32 @symbol_Equal(i32 %call7, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %15 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %15)
  %call13 = call %struct.term* @term_Copy(%struct.term* %call12)
  store %struct.term* %call13, %struct.term** %targettoprove, align 8
  %16 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call14 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  store %struct.term* %call14, %struct.term** %orterm, align 8
  br label %if.end.16

if.else:                                          ; preds = %if.end
  %17 = load %struct.term*, %struct.term** %Target.addr, align 8
  %call15 = call %struct.term* @term_Copy(%struct.term* %17)
  store %struct.term* %call15, %struct.term** %targettoprove, align 8
  %18 = load %struct.term*, %struct.term** %Target.addr, align 8
  store %struct.term* %18, %struct.term** %orterm, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.11
  %19 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call17 = call i32 @term_TopSymbol(%struct.term* %19)
  %call18 = call i32 @fol_Or()
  %call19 = call i32 @symbol_Equal(i32 %call17, i32 %call18)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.then.21, label %if.else.41

if.then.21:                                       ; preds = %if.end.16
  %20 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call22 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %arglist, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arglist, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %l1, align 8
  %22 = load %struct.term*, %struct.term** %orterm, align 8
  %call23 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.21
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot = xor i1 %tobool25, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call26 to %struct.term*
  %call27 = call i32 @term_HasProperSuperterm(%struct.term* %24, %struct.term* %26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %27 = load %struct.term*, %struct.term** %ToTopLevel.addr, align 8
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %28)
  %29 = bitcast i8* %call29 to %struct.term*
  %cmp = icmp eq %struct.term* %27, %29
  br i1 %cmp, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false, %for.body
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arglist, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %31)
  %call32 = call %struct.LIST_HELP* @list_PointerDeleteElementFree(%struct.LIST_HELP* %30, i8* %call31, void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %arglist, align 8
  br label %for.end

if.end.33:                                        ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %32)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %l1, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call35 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %l2, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %for.cond
  %34 = load %struct.term*, %struct.term** %targettoprove, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %arglist, align 8
  call void @term_RplacArgumentList(%struct.term* %34, %struct.LIST_HELP* %35)
  %36 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call36 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %36)
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  %37 = load %struct.term*, %struct.term** %targettoprove, align 8
  call void @term_Delete(%struct.term* %37)
  %38 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  call void @term_Delete(%struct.term* %38)
  %39 = load %struct.term*, %struct.term** %Target.addr, align 8
  store %struct.term* %39, %struct.term** %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  br label %if.end.42

if.else.41:                                       ; preds = %if.end.16
  %40 = load %struct.term*, %struct.term** %targettoprove, align 8
  call void @term_Delete(%struct.term* %40)
  %41 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  call void @term_Delete(%struct.term* %41)
  %42 = load %struct.term*, %struct.term** %Target.addr, align 8
  store %struct.term* %42, %struct.term** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.40
  %43 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call43 = call i32 @term_MaxVar(%struct.term* %43)
  store i32 %call43, i32* %maxvar, align 4
  %44 = load i32, i32* %maxvar, align 4
  call void @symbol_SetStandardVarCounter(i32 %44)
  %45 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  %call44 = call %struct.LIST_HELP* @fol_BoundVariables(%struct.term* %45)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %vars, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  %call45 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %vars, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  store %struct.LIST_HELP* %47, %struct.LIST_HELP** %l1, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.54, %if.end.42
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call47 = call i32 @list_Empty(%struct.LIST_HELP* %48)
  %tobool48 = icmp ne i32 %call47, 0
  %lnot49 = xor i1 %tobool48, true
  br i1 %lnot49, label %for.body.50, label %for.end.56

for.body.50:                                      ; preds = %for.cond.46
  %49 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call51 = call i8* @list_Car(%struct.LIST_HELP* %50)
  %51 = bitcast i8* %call51 to %struct.term*
  %call52 = call i32 @term_TopSymbol(%struct.term* %51)
  %call53 = call i32 @symbol_CreateStandardVariable()
  call void @term_ExchangeVariable(%struct.term* %49, i32 %call52, i32 %call53)
  br label %for.inc.54

for.inc.54:                                       ; preds = %for.body.50
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call55 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %52)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %l1, align 8
  br label %for.cond.46

for.end.56:                                       ; preds = %for.cond.46
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  call void @list_Delete(%struct.LIST_HELP* %53)
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %DefPredArgs.addr, align 8
  store %struct.LIST_HELP* %54, %struct.LIST_HELP** %l1, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %TargetPredArgs.addr, align 8
  store %struct.LIST_HELP* %55, %struct.LIST_HELP** %l2, align 8
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.65, %for.end.56
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %56)
  %tobool59 = icmp ne i32 %call58, 0
  %lnot60 = xor i1 %tobool59, true
  br i1 %lnot60, label %for.body.61, label %for.end.68

for.body.61:                                      ; preds = %for.cond.57
  %57 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call62 = call i8* @list_Car(%struct.LIST_HELP* %58)
  %59 = bitcast i8* %call62 to %struct.term*
  %call63 = call i32 @term_TopSymbol(%struct.term* %59)
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %60)
  %61 = bitcast i8* %call64 to %struct.term*
  call void @term_ReplaceVariable(%struct.term* %57, i32 %call63, %struct.term* %61)
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.body.61
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l1, align 8
  %call66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %l1, align 8
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l2, align 8
  %call67 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %63)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %l2, align 8
  br label %for.cond.57

for.end.68:                                       ; preds = %for.cond.57
  %call69 = call i32 @fol_Not()
  %64 = load %struct.term*, %struct.term** %targettoprove, align 8
  %65 = bitcast %struct.term* %64 to i8*
  %call70 = call %struct.LIST_HELP* @list_List(i8* %65)
  %call71 = call %struct.term* @term_Create(i32 %call69, %struct.LIST_HELP* %call70)
  store %struct.term* %call71, %struct.term** %targettoprove, align 8
  %66 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call72 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %66)
  store %struct.term* %call72, %struct.term** %targettoprove, align 8
  %call73 = call i32 @fol_Implies()
  %67 = load %struct.term*, %struct.term** %targettoprove, align 8
  %68 = bitcast %struct.term* %67 to i8*
  %69 = load %struct.term*, %struct.term** %ToProveDef.addr, align 8
  %70 = bitcast %struct.term* %69 to i8*
  %call74 = call %struct.LIST_HELP* @list_List(i8* %70)
  %call75 = call %struct.LIST_HELP* @list_Cons(i8* %68, %struct.LIST_HELP* %call74)
  %call76 = call %struct.term* @term_Create(i32 %call73, %struct.LIST_HELP* %call75)
  store %struct.term* %call76, %struct.term** %targettoprove, align 8
  %71 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call77 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %71)
  store %struct.LIST_HELP* %call77, %struct.LIST_HELP** %freevars, align 8
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %72)
  %call78 = call i32 @fol_All()
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  %74 = load %struct.term*, %struct.term** %targettoprove, align 8
  %75 = bitcast %struct.term* %74 to i8*
  %call79 = call %struct.LIST_HELP* @list_List(i8* %75)
  %call80 = call %struct.term* @fol_CreateQuantifier(i32 %call78, %struct.LIST_HELP* %73, %struct.LIST_HELP* %call79)
  store %struct.term* %call80, %struct.term** %targettoprove, align 8
  %76 = load i32*, i32** %Flags.addr, align 8
  %call81 = call i32 @flag_GetFlagValue(i32* %76, i32 37)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %for.end.68
  %call84 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0))
  %77 = load %struct.term*, %struct.term** %Target.addr, align 8
  call void @fol_PrettyPrint(%struct.term* %77)
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %for.end.68
  %78 = load %struct.term*, %struct.term** %targettoprove, align 8
  %call86 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %78)
  store %struct.term* %call86, %struct.term** %targettoprove, align 8
  %79 = load i32*, i32** %Flags.addr, align 8
  %call87 = call i32 @flag_GetFlagValue(i32* %79, i32 37)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.end.85
  %call90 = call i32 @puts(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  %80 = load %struct.term*, %struct.term** %targettoprove, align 8
  call void @fol_PrettyPrint(%struct.term* %80)
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.end.85
  %call92 = call %struct.LIST_HELP* @list_Nil()
  %81 = load %struct.term*, %struct.term** %targettoprove, align 8
  %82 = load i32*, i32** %Flags.addr, align 8
  %83 = load i32*, i32** %Precedence.addr, align 8
  %call93 = call i32 @cnf_HaveProof(%struct.LIST_HELP* %call92, %struct.term* %81, i32* %82, i32* %83)
  %84 = load i32*, i32** %LocallyTrue.addr, align 8
  store i32 %call93, i32* %84, align 4
  %85 = load %struct.term*, %struct.term** %targettoprove, align 8
  call void @term_Delete(%struct.term* %85)
  %86 = load %struct.term*, %struct.term** %Target.addr, align 8
  store %struct.term* %86, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.91, %if.else.41, %if.then.39
  %87 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %87
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_RemoveImplFromFormulaPath(%struct.term* %Term, %struct.term* %PredicateTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %PredicateTerm.addr = alloca %struct.term*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  %newterm = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %PredicateTerm, %struct.term** %PredicateTerm.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.26, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_HasProperSuperterm(%struct.term* %4, %struct.term* %5)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.26

if.then:                                          ; preds = %while.body
  %6 = load %struct.term*, %struct.term** %term1, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %6)
  %call5 = call i32 @fol_Implies()
  %call6 = call i32 @symbol_Equal(i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %7 = load %struct.term*, %struct.term** %term1, align 8
  %call9 = call i32 @fol_Or()
  call void @term_RplacTop(%struct.term* %7, i32 %call9)
  %call10 = call i32 @fol_Not()
  %8 = load %struct.term*, %struct.term** %term1, align 8
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %call11)
  %call13 = call %struct.LIST_HELP* @list_List(i8* %call12)
  %call14 = call %struct.term* @term_CreateAddFather(i32 %call10, %struct.LIST_HELP* %call13)
  store %struct.term* %call14, %struct.term** %newterm, align 8
  %9 = load %struct.term*, %struct.term** %term1, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %newterm, align 8
  %11 = bitcast %struct.term* %10 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %call15, i8* %11)
  %12 = load %struct.term*, %struct.term** %newterm, align 8
  %13 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_RplacSuperterm(%struct.term* %12, %struct.term* %13)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %14 = load %struct.term*, %struct.term** %term1, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %14)
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %call16)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.end.25, label %if.then.19

if.then.19:                                       ; preds = %if.end
  %15 = load %struct.term*, %struct.term** %term1, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %15)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot = xor i1 %tobool22, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %17)
  call void @vec_Push(i8* %call23)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %19)
  %20 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %20
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_NegationNormalFormulaPath(%struct.term* %Term, %struct.term* %PredicateTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %PredicateTerm.addr = alloca %struct.term*, align 8
  %subterm = alloca %struct.term*, align 8
  %termL = alloca %struct.term*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %symbol = alloca i32, align 4
  %set = alloca i32, align 4
  %l = alloca %struct.LIST_HELP*, align 8
  %l25 = alloca %struct.LIST_HELP*, align 8
  %l56 = alloca %struct.LIST_HELP*, align 8
  %new = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %PredicateTerm, %struct.term** %PredicateTerm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %term1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.113, %entry
  %1 = load %struct.term*, %struct.term** %term1, align 8
  %cmp = icmp ne %struct.term* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %set, align 4
  %2 = load %struct.term*, %struct.term** %term1, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %2)
  %call1 = call i32 @fol_Not()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.87

if.then:                                          ; preds = %while.body
  %3 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %3)
  store %struct.term* %call3, %struct.term** %subterm, align 8
  %4 = load %struct.term*, %struct.term** %subterm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %4)
  %call5 = call i32 @fol_Not()
  %call6 = call i32 @symbol_Equal(i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %6 = load %struct.term*, %struct.term** %subterm, align 8
  %call9 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call10 = call i32 @term_TopSymbol(%struct.term* %call9)
  call void @term_RplacTop(%struct.term* %5, i32 %call10)
  %7 = load %struct.term*, %struct.term** %term1, align 8
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  call void @list_Delete(%struct.LIST_HELP* %call11)
  %8 = load %struct.term*, %struct.term** %term1, align 8
  %9 = load %struct.term*, %struct.term** %subterm, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call12)
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %call13)
  %10 = load %struct.term*, %struct.term** %subterm, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %10)
  call void @term_Free(%struct.term* %call14)
  %11 = load %struct.term*, %struct.term** %subterm, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  call void @list_Delete(%struct.LIST_HELP* %call15)
  %12 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Free(%struct.term* %12)
  %13 = load %struct.term*, %struct.term** %term1, align 8
  %call16 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool18, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call19 to %struct.term*
  %17 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_RplacSuperterm(%struct.term* %16, %struct.term* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %set, align 4
  br label %if.end.86

if.else:                                          ; preds = %if.then
  %19 = load %struct.term*, %struct.term** %subterm, align 8
  %call21 = call i32 @term_TopSymbol(%struct.term* %19)
  %call22 = call i32 @fol_IsQuantifier(i32 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.46

if.then.24:                                       ; preds = %if.else
  %20 = load %struct.term*, %struct.term** %subterm, align 8
  %call26 = call i32 @term_TopSymbol(%struct.term* %20)
  %call27 = call i32 @cnf_GetDualSymbol(i32 %call26)
  store i32 %call27, i32* %symbol, align 4
  %call28 = call i32 @fol_Not()
  %21 = load %struct.term*, %struct.term** %subterm, align 8
  %call29 = call %struct.term* @term_SecondArgument(%struct.term* %21)
  %22 = bitcast %struct.term* %call29 to i8*
  %call30 = call %struct.LIST_HELP* @list_List(i8* %22)
  %call31 = call %struct.term* @term_CreateAddFather(i32 %call28, %struct.LIST_HELP* %call30)
  store %struct.term* %call31, %struct.term** %termL, align 8
  %23 = load %struct.term*, %struct.term** %subterm, align 8
  %call32 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  %24 = load %struct.term*, %struct.term** %termL, align 8
  %25 = bitcast %struct.term* %24 to i8*
  call void @list_RplacSecond(%struct.LIST_HELP* %call32, i8* %25)
  %26 = load %struct.term*, %struct.term** %termL, align 8
  %27 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_RplacSuperterm(%struct.term* %26, %struct.term* %27)
  %28 = load %struct.term*, %struct.term** %term1, align 8
  %29 = load i32, i32* %symbol, align 4
  call void @term_RplacTop(%struct.term* %28, i32 %29)
  %30 = load %struct.term*, %struct.term** %term1, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %30)
  call void @list_Delete(%struct.LIST_HELP* %call33)
  %31 = load %struct.term*, %struct.term** %term1, align 8
  %32 = load %struct.term*, %struct.term** %subterm, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %32)
  call void @term_RplacArgumentList(%struct.term* %31, %struct.LIST_HELP* %call34)
  %33 = load %struct.term*, %struct.term** %term1, align 8
  %call35 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %33)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %l25, align 8
  br label %for.cond.36

for.cond.36:                                      ; preds = %for.inc.42, %if.then.24
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l25, align 8
  %call37 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool38 = icmp ne i32 %call37, 0
  %lnot39 = xor i1 %tobool38, true
  br i1 %lnot39, label %for.body.40, label %for.end.44

for.body.40:                                      ; preds = %for.cond.36
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l25, align 8
  %call41 = call i8* @list_Car(%struct.LIST_HELP* %35)
  %36 = bitcast i8* %call41 to %struct.term*
  %37 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_RplacSuperterm(%struct.term* %36, %struct.term* %37)
  br label %for.inc.42

for.inc.42:                                       ; preds = %for.body.40
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l25, align 8
  %call43 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %38)
  store %struct.LIST_HELP* %call43, %struct.LIST_HELP** %l25, align 8
  br label %for.cond.36

for.end.44:                                       ; preds = %for.cond.36
  %39 = load %struct.term*, %struct.term** %subterm, align 8
  %call45 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %39, %struct.LIST_HELP* %call45)
  %40 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Delete(%struct.term* %40)
  %41 = load %struct.term*, %struct.term** %termL, align 8
  store %struct.term* %41, %struct.term** %term1, align 8
  store i32 1, i32* %set, align 4
  br label %if.end.85

if.else.46:                                       ; preds = %if.else
  %42 = load %struct.term*, %struct.term** %subterm, align 8
  %call47 = call i32 @term_TopSymbol(%struct.term* %42)
  %call48 = call i32 @fol_Or()
  %call49 = call i32 @symbol_Equal(i32 %call47, i32 %call48)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.46
  %43 = load %struct.term*, %struct.term** %subterm, align 8
  %call51 = call i32 @term_TopSymbol(%struct.term* %43)
  %call52 = call i32 @fol_And()
  %call53 = call i32 @symbol_Equal(i32 %call51, i32 %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end

if.then.55:                                       ; preds = %lor.lhs.false, %if.else.46
  %44 = load %struct.term*, %struct.term** %subterm, align 8
  %call57 = call i32 @term_TopSymbol(%struct.term* %44)
  %call58 = call i32 @cnf_GetDualSymbol(i32 %call57)
  store i32 %call58, i32* %symbol, align 4
  %45 = load %struct.term*, %struct.term** %subterm, align 8
  %call59 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %45)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.69, %if.then.55
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call61 = call i32 @list_Empty(%struct.LIST_HELP* %46)
  %tobool62 = icmp ne i32 %call61, 0
  %lnot63 = xor i1 %tobool62, true
  br i1 %lnot63, label %for.body.64, label %for.end.71

for.body.64:                                      ; preds = %for.cond.60
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call65 = call i8* @list_Car(%struct.LIST_HELP* %47)
  %48 = bitcast i8* %call65 to %struct.term*
  store %struct.term* %48, %struct.term** %termL, align 8
  %call66 = call i32 @fol_Not()
  %49 = load %struct.term*, %struct.term** %termL, align 8
  %50 = bitcast %struct.term* %49 to i8*
  %call67 = call %struct.LIST_HELP* @list_List(i8* %50)
  %call68 = call %struct.term* @term_CreateAddFather(i32 %call66, %struct.LIST_HELP* %call67)
  store %struct.term* %call68, %struct.term** %new, align 8
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %52 = load %struct.term*, %struct.term** %new, align 8
  %53 = bitcast %struct.term* %52 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %51, i8* %53)
  %54 = load %struct.term*, %struct.term** %new, align 8
  %55 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_RplacSuperterm(%struct.term* %54, %struct.term* %55)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.64
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call70 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %56)
  store %struct.LIST_HELP* %call70, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.60

for.end.71:                                       ; preds = %for.cond.60
  %57 = load %struct.term*, %struct.term** %term1, align 8
  %58 = load i32, i32* %symbol, align 4
  call void @term_RplacTop(%struct.term* %57, i32 %58)
  %59 = load %struct.term*, %struct.term** %term1, align 8
  %call72 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %59)
  call void @list_Delete(%struct.LIST_HELP* %call72)
  %60 = load %struct.term*, %struct.term** %term1, align 8
  %61 = load %struct.term*, %struct.term** %subterm, align 8
  %call73 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %61)
  call void @term_RplacArgumentList(%struct.term* %60, %struct.LIST_HELP* %call73)
  %62 = load %struct.term*, %struct.term** %term1, align 8
  %call74 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %62)
  store %struct.LIST_HELP* %call74, %struct.LIST_HELP** %l56, align 8
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.81, %for.end.71
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l56, align 8
  %call76 = call i32 @list_Empty(%struct.LIST_HELP* %63)
  %tobool77 = icmp ne i32 %call76, 0
  %lnot78 = xor i1 %tobool77, true
  br i1 %lnot78, label %for.body.79, label %for.end.83

for.body.79:                                      ; preds = %for.cond.75
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l56, align 8
  %call80 = call i8* @list_Car(%struct.LIST_HELP* %64)
  %65 = bitcast i8* %call80 to %struct.term*
  %66 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_RplacSuperterm(%struct.term* %65, %struct.term* %66)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.79
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l56, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %67)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %l56, align 8
  br label %for.cond.75

for.end.83:                                       ; preds = %for.cond.75
  %68 = load %struct.term*, %struct.term** %subterm, align 8
  %call84 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %68, %struct.LIST_HELP* %call84)
  %69 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Delete(%struct.term* %69)
  br label %if.end

if.end:                                           ; preds = %for.end.83, %lor.lhs.false
  br label %if.end.85

if.end.85:                                        ; preds = %if.end, %for.end.44
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %for.end
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86, %while.body
  %70 = load i32, i32* %set, align 4
  %tobool88 = icmp ne i32 %70, 0
  br i1 %tobool88, label %if.end.113, label %if.then.89

if.then.89:                                       ; preds = %if.end.87
  %71 = load %struct.term*, %struct.term** %term1, align 8
  %call90 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %71)
  %call91 = call i32 @list_Empty(%struct.LIST_HELP* %call90)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %if.end.109, label %if.then.93

if.then.93:                                       ; preds = %if.then.89
  %72 = load %struct.term*, %struct.term** %term1, align 8
  %call94 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %72)
  store %struct.LIST_HELP* %call94, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.95

for.cond.95:                                      ; preds = %for.inc.106, %if.then.93
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call96 = call i32 @list_Empty(%struct.LIST_HELP* %73)
  %tobool97 = icmp ne i32 %call96, 0
  %lnot98 = xor i1 %tobool97, true
  br i1 %lnot98, label %for.body.99, label %for.end.108

for.body.99:                                      ; preds = %for.cond.95
  %74 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call100 = call i8* @list_Car(%struct.LIST_HELP* %75)
  %76 = bitcast i8* %call100 to %struct.term*
  %call101 = call i32 @term_HasProperSuperterm(%struct.term* %74, %struct.term* %76)
  %tobool102 = icmp ne i32 %call101, 0
  br i1 %tobool102, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %for.body.99
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call104 = call i8* @list_Car(%struct.LIST_HELP* %77)
  %78 = bitcast i8* %call104 to %struct.term*
  store %struct.term* %78, %struct.term** %term1, align 8
  store i32 1, i32* %set, align 4
  br label %for.end.108

if.end.105:                                       ; preds = %for.body.99
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call107 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %79)
  store %struct.LIST_HELP* %call107, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.95

for.end.108:                                      ; preds = %if.then.103, %for.cond.95
  br label %if.end.109

if.end.109:                                       ; preds = %for.end.108, %if.then.89
  %80 = load i32, i32* %set, align 4
  %tobool110 = icmp ne i32 %80, 0
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %if.end.109
  store %struct.term* null, %struct.term** %term1, align 8
  br label %if.end.112

if.end.112:                                       ; preds = %if.then.111, %if.end.109
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.end.87
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %81 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %81
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_AntiPrenexPath(%struct.term* %Term, %struct.term* %PredicateTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %PredicateTerm.addr = alloca %struct.term*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Top = alloca i32, align 4
  %Subterm = alloca %struct.term*, align 8
  %Actterm = alloca %struct.term*, align 8
  %DistrSymb = alloca i32, align 4
  %Subtop = alloca i32, align 4
  %Variables = alloca %struct.LIST_HELP*, align 8
  %NewVars = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %PredicateTerm, %struct.term** %PredicateTerm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load i32, i32* %Top, align 4
  %call1 = call i32 @fol_IsQuantifier(i32 %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else.94

if.then:                                          ; preds = %entry
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call2, %struct.term** %Subterm, align 8
  %3 = load %struct.term*, %struct.term** %Subterm, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call3, i32* %Subtop, align 4
  %4 = load i32, i32* %Subtop, align 4
  %call4 = call i32 @fol_Not()
  %call5 = call i32 @symbol_Equal(i32 %4, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.93, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %5 = load i32, i32* %Subtop, align 4
  %call7 = call i32 @symbol_IsPredicate(i32 %5)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.93, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  %6 = load i32, i32* %Top, align 4
  %call10 = call i32 @fol_All()
  %call11 = call i32 @symbol_Equal(i32 %6, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.9
  %call14 = call i32 @fol_And()
  store i32 %call14, i32* %DistrSymb, align 4
  br label %if.end

if.else:                                          ; preds = %if.then.9
  %call15 = call i32 @fol_Or()
  store i32 %call15, i32* %DistrSymb, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %7 = load i32, i32* %Subtop, align 4
  %call16 = call i32 @fol_IsQuantifier(i32 %7)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %8 = load %struct.term*, %struct.term** %Subterm, align 8
  %9 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call19 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %8, %struct.term* %9)
  %10 = load %struct.term*, %struct.term** %Subterm, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %10)
  store i32 %call20, i32* %Subtop, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %11 = load i32, i32* %Subtop, align 4
  %12 = load i32, i32* %DistrSymb, align 4
  %call22 = call i32 @symbol_Equal(i32 %11, i32 %12)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.else.71

if.then.24:                                       ; preds = %if.end.21
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call25 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %13)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Variables, align 8
  %14 = load %struct.term*, %struct.term** %Subterm, align 8
  %15 = load i32, i32* %DistrSymb, align 4
  %call26 = call %struct.term* @cnf_Flatten(%struct.term* %14, i32 %15)
  store %struct.term* %call26, %struct.term** %Subterm, align 8
  %16 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_AddFatherLinks(%struct.term* %16)
  %17 = load %struct.term*, %struct.term** %Subterm, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.24
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call28 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool29 = icmp ne i32 %call28, 0
  %lnot = xor i1 %tobool29, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call30 to %struct.term*
  store %struct.term* %20, %struct.term** %Actterm, align 8
  %21 = load %struct.term*, %struct.term** %Actterm, align 8
  %call31 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  %call32 = call %struct.LIST_HELP* @list_NIntersect(%struct.LIST_HELP* %call31, %struct.LIST_HELP* %22, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %NewVars, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %call33 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.47, label %if.then.35

if.then.35:                                       ; preds = %for.body
  %24 = load i32, i32* %Top, align 4
  %25 = load %struct.term*, %struct.term** %Actterm, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %25)
  %call37 = call i32 @symbol_Equal(i32 %24, i32 %call36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.43

if.then.39:                                       ; preds = %if.then.35
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %26)
  %27 = load %struct.term*, %struct.term** %Actterm, align 8
  %call40 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %Actterm, align 8
  %call41 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %28)
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %call42 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call41, %struct.LIST_HELP* %29)
  call void @term_RplacArgumentList(%struct.term* %call40, %struct.LIST_HELP* %call42)
  br label %if.end.46

if.else.43:                                       ; preds = %if.then.35
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %32 = load i32, i32* %Top, align 4
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NewVars, align 8
  %34 = load %struct.term*, %struct.term** %Actterm, align 8
  %35 = bitcast %struct.term* %34 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %35)
  %call45 = call %struct.term* @fol_CreateQuantifierAddFather(i32 %32, %struct.LIST_HELP* %33, %struct.LIST_HELP* %call44)
  %36 = bitcast %struct.term* %call45 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %31, i8* %36)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.39
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.47
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %37)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %38 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %38)
  call void @term_Delete(%struct.term* %call49)
  %39 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call50 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %39)
  call void @list_Delete(%struct.LIST_HELP* %call50)
  %40 = load %struct.term*, %struct.term** %Term.addr, align 8
  %41 = load i32, i32* %DistrSymb, align 4
  call void @term_RplacTop(%struct.term* %40, i32 %41)
  %42 = load %struct.term*, %struct.term** %Term.addr, align 8
  %43 = load %struct.term*, %struct.term** %Subterm, align 8
  %call51 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  call void @term_RplacArgumentList(%struct.term* %42, %struct.LIST_HELP* %call51)
  %44 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %44)
  %45 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %45)
  %46 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call52 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %46)
  store %struct.LIST_HELP* %call52, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.68, %for.end
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call54 = call i32 @list_Empty(%struct.LIST_HELP* %47)
  %tobool55 = icmp ne i32 %call54, 0
  %lnot56 = xor i1 %tobool55, true
  br i1 %lnot56, label %for.body.57, label %for.end.70

for.body.57:                                      ; preds = %for.cond.53
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call58 = call i8* @list_Car(%struct.LIST_HELP* %48)
  %49 = bitcast i8* %call58 to %struct.term*
  %50 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %49, %struct.term* %50)
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call59 = call i8* @list_Car(%struct.LIST_HELP* %51)
  %52 = bitcast i8* %call59 to %struct.term*
  %53 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call60 = call i32 @term_HasPointerSubterm(%struct.term* %52, %struct.term* %53)
  %tobool61 = icmp ne i32 %call60, 0
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %for.body.57
  %call63 = call i32 @puts(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0))
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call64 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call64 to %struct.term*
  %57 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call65 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %56, %struct.term* %57)
  %58 = bitcast %struct.term* %call65 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %54, i8* %58)
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call66 = call i8* @list_Car(%struct.LIST_HELP* %59)
  %60 = bitcast i8* %call66 to %struct.term*
  %61 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %60, %struct.term* %61)
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.62, %for.body.57
  br label %for.inc.68

for.inc.68:                                       ; preds = %if.end.67
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %62)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.53

for.end.70:                                       ; preds = %for.cond.53
  br label %if.end.92

if.else.71:                                       ; preds = %if.end.21
  %63 = load i32, i32* %Subtop, align 4
  %call72 = call i32 @fol_IsQuantifier(i32 %63)
  %tobool73 = icmp ne i32 %call72, 0
  br i1 %tobool73, label %if.end.91, label %if.then.74

if.then.74:                                       ; preds = %if.else.71
  %64 = load %struct.term*, %struct.term** %Term.addr, align 8
  %65 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  call void @cnf_DistrQuantorNoVarSubPath(%struct.term* %64, %struct.term* %65)
  %66 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call75 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %66)
  store %struct.LIST_HELP* %call75, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.88, %if.then.74
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call77 = call i32 @list_Empty(%struct.LIST_HELP* %67)
  %tobool78 = icmp ne i32 %call77, 0
  %lnot79 = xor i1 %tobool78, true
  br i1 %lnot79, label %for.body.80, label %for.end.90

for.body.80:                                      ; preds = %for.cond.76
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call81 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call81 to %struct.term*
  %70 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call82 = call i32 @term_HasPointerSubterm(%struct.term* %69, %struct.term* %70)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.then.84, label %if.end.87

if.then.84:                                       ; preds = %for.body.80
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call85 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = bitcast i8* %call85 to %struct.term*
  %73 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call86 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %72, %struct.term* %73)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.84, %for.body.80
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call89 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %74)
  store %struct.LIST_HELP* %call89, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.76

for.end.90:                                       ; preds = %for.cond.76
  br label %if.end.91

if.end.91:                                        ; preds = %for.end.90, %if.else.71
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %for.end.70
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true, %if.then
  br label %if.end.119

if.else.94:                                       ; preds = %entry
  %75 = load i32, i32* %Top, align 4
  %call95 = call i32 @fol_Not()
  %call96 = call i32 @symbol_Equal(i32 %75, i32 %call95)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.118, label %land.lhs.true.98

land.lhs.true.98:                                 ; preds = %if.else.94
  %76 = load i32, i32* %Top, align 4
  %call99 = call i32 @symbol_IsPredicate(i32 %76)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.118, label %if.then.101

if.then.101:                                      ; preds = %land.lhs.true.98
  %77 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call102 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %77)
  store %struct.LIST_HELP* %call102, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.115, %if.then.101
  %78 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call104 = call i32 @list_Empty(%struct.LIST_HELP* %78)
  %tobool105 = icmp ne i32 %call104, 0
  %lnot106 = xor i1 %tobool105, true
  br i1 %lnot106, label %for.body.107, label %for.end.117

for.body.107:                                     ; preds = %for.cond.103
  %79 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %80 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call108 = call i8* @list_Car(%struct.LIST_HELP* %80)
  %81 = bitcast i8* %call108 to %struct.term*
  %call109 = call i32 @term_HasProperSuperterm(%struct.term* %79, %struct.term* %81)
  %tobool110 = icmp ne i32 %call109, 0
  br i1 %tobool110, label %if.then.111, label %if.end.114

if.then.111:                                      ; preds = %for.body.107
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call112 = call i8* @list_Car(%struct.LIST_HELP* %82)
  %83 = bitcast i8* %call112 to %struct.term*
  %84 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call113 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %83, %struct.term* %84)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.111, %for.body.107
  br label %for.inc.115

for.inc.115:                                      ; preds = %if.end.114
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call116 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %85)
  store %struct.LIST_HELP* %call116, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.103

for.end.117:                                      ; preds = %for.cond.103
  br label %if.end.118

if.end.118:                                       ; preds = %for.end.117, %land.lhs.true.98, %if.else.94
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %if.end.93
  %86 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %86)
  %87 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %87
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MovePredicateVariablesUp(%struct.term* %Term, %struct.term* %TargetPredicateTerm, %struct.LIST_HELP* %VarsForTopLevel) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %TargetPredicateTerm.addr = alloca %struct.term*, align 8
  %VarsForTopLevel.addr = alloca %struct.LIST_HELP*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  %arg = alloca %struct.term*, align 8
  %predicatevarscan = alloca %struct.LIST_HELP*, align 8
  %quantifiervars = alloca %struct.LIST_HELP*, align 8
  %subterm = alloca %struct.term*, align 8
  %vars = alloca %struct.LIST_HELP*, align 8
  %newtop = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %TargetPredicateTerm, %struct.term** %TargetPredicateTerm.addr, align 8
  store %struct.LIST_HELP* %VarsForTopLevel, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %call3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.end.39, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.36, %if.then
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool7, true
  br i1 %lnot, label %for.body, label %for.end.38

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %8, %struct.term** %arg, align 8
  %9 = load %struct.term*, %struct.term** %TargetPredicateTerm.addr, align 8
  %10 = load %struct.term*, %struct.term** %arg, align 8
  %call9 = call i32 @term_HasProperSuperterm(%struct.term* %9, %struct.term* %10)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.35

if.then.11:                                       ; preds = %for.body
  %11 = load %struct.term*, %struct.term** %arg, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %11)
  %call13 = call i32 @fol_All()
  %call14 = call i32 @symbol_Equal(i32 %call12, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.33

if.then.16:                                       ; preds = %if.then.11
  %12 = load %struct.term*, %struct.term** %arg, align 8
  %call17 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %12)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %quantifiervars, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %predicatevarscan, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then.16
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevarscan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %quantifiervars, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevarscan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = bitcast i8* %call23 to %struct.term*
  %18 = bitcast %struct.term* %17 to i8*
  %call24 = call %struct.LIST_HELP* @list_DeleteElementFree(%struct.LIST_HELP* %15, i8* %18, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*), void (i8*)* bitcast (void (%struct.term*)* @term_Delete to void (i8*)*))
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %quantifiervars, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevarscan, align 8
  %call25 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %predicatevarscan, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %quantifiervars, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %20)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.else, label %if.then.28

if.then.28:                                       ; preds = %for.end
  %21 = load %struct.term*, %struct.term** %arg, align 8
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %21)
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %quantifiervars, align 8
  call void @term_RplacArgumentList(%struct.term* %call29, %struct.LIST_HELP* %22)
  br label %if.end

if.else:                                          ; preds = %for.end
  %23 = load %struct.term*, %struct.term** %arg, align 8
  %call30 = call %struct.term* @term_SecondArgument(%struct.term* %23)
  store %struct.term* %call30, %struct.term** %subterm, align 8
  %24 = load %struct.term*, %struct.term** %arg, align 8
  %call31 = call %struct.term* @term_FirstArgument(%struct.term* %24)
  call void @term_Free(%struct.term* %call31)
  %25 = load %struct.term*, %struct.term** %arg, align 8
  %call32 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %25)
  call void @list_Delete(%struct.LIST_HELP* %call32)
  %26 = load %struct.term*, %struct.term** %arg, align 8
  call void @term_Free(%struct.term* %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %28 = load %struct.term*, %struct.term** %subterm, align 8
  %29 = bitcast %struct.term* %28 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %27, i8* %29)
  %30 = load %struct.term*, %struct.term** %subterm, align 8
  %31 = load %struct.term*, %struct.term** %term1, align 8
  call void @term_RplacSuperterm(%struct.term* %30, %struct.term* %31)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.28
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then.11
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call34 to %struct.term*
  %34 = bitcast %struct.term* %33 to i8*
  call void @vec_Push(i8* %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.33, %for.body
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call37 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call37, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end.38:                                       ; preds = %for.cond
  br label %if.end.39

if.end.39:                                        ; preds = %for.end.38, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %36 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  store %struct.LIST_HELP* %36, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.47, %while.end
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call41 = call i32 @list_Empty(%struct.LIST_HELP* %37)
  %tobool42 = icmp ne i32 %call41, 0
  %lnot43 = xor i1 %tobool42, true
  br i1 %lnot43, label %for.body.44, label %for.end.49

for.body.44:                                      ; preds = %for.cond.40
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call45 = call i8* @list_Car(%struct.LIST_HELP* %39)
  %40 = bitcast i8* %call45 to %struct.term*
  %call46 = call %struct.term* @term_Copy(%struct.term* %40)
  %41 = bitcast %struct.term* %call46 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %38, i8* %41)
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.body.44
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.40

for.end.49:                                       ; preds = %for.cond.40
  %43 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call50 = call i32 @term_TopSymbol(%struct.term* %43)
  %call51 = call i32 @fol_All()
  %call52 = call i32 @symbol_Equal(i32 %call50, i32 %call51)
  %tobool53 = icmp ne i32 %call52, 0
  br i1 %tobool53, label %if.then.54, label %if.else.60

if.then.54:                                       ; preds = %for.end.49
  %44 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call55 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %44)
  store %struct.LIST_HELP* %call55, %struct.LIST_HELP** %vars, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  %call56 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %46)
  %call57 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %45, %struct.LIST_HELP* %call56)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %vars, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  %call58 = call %struct.LIST_HELP* @term_DestroyDuplicatesInList(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call58, %struct.LIST_HELP** %vars, align 8
  %48 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call59 = call %struct.term* @term_FirstArgument(%struct.term* %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %vars, align 8
  call void @term_RplacArgumentList(%struct.term* %call59, %struct.LIST_HELP* %49)
  br label %if.end.65

if.else.60:                                       ; preds = %for.end.49
  %call61 = call i32 @fol_All()
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarsForTopLevel.addr, align 8
  %call62 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %50)
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  %52 = bitcast %struct.term* %51 to i8*
  %call63 = call %struct.LIST_HELP* @list_List(i8* %52)
  %call64 = call %struct.term* @fol_CreateQuantifier(i32 %call61, %struct.LIST_HELP* %call62, %struct.LIST_HELP* %call63)
  store %struct.term* %call64, %struct.term** %newtop, align 8
  %53 = load %struct.term*, %struct.term** %Term.addr, align 8
  %54 = load %struct.term*, %struct.term** %newtop, align 8
  call void @term_RplacSuperterm(%struct.term* %53, %struct.term* %54)
  %55 = load %struct.term*, %struct.term** %newtop, align 8
  store %struct.term* %55, %struct.term** %Term.addr, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.60, %if.then.54
  %56 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %56)
  %57 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %57
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_FlattenPath(%struct.term* %Term, %struct.term* %PredicateTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %PredicateTerm.addr = alloca %struct.term*, align 8
  %subterm = alloca %struct.term*, align 8
  %Argterm = alloca %struct.term*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %PredicateTerm, %struct.term** %PredicateTerm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  store %struct.term* %0, %struct.term** %subterm, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct.term*, %struct.term** %subterm, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %1)
  %call1 = call i32 @fol_All()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.term*, %struct.term** %subterm, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call3, %struct.term** %subterm, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %3 = load %struct.term*, %struct.term** %subterm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  %call5 = call i32 @fol_Or()
  %call6 = call i32 @symbol_Equal(i32 %call4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then, label %if.end.38

if.then:                                          ; preds = %while.end
  %4 = load %struct.term*, %struct.term** %subterm, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %scan1, align 8
  br label %while.cond.9

while.cond.9:                                     ; preds = %if.end.36, %if.then
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call10 = call i32 @list_Empty(%struct.LIST_HELP* %5)
  %tobool11 = icmp ne i32 %call10, 0
  %lnot = xor i1 %tobool11, true
  br i1 %lnot, label %while.body.12, label %while.end.37

while.body.12:                                    ; preds = %while.cond.9
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call13 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call13 to %struct.term*
  store %struct.term* %7, %struct.term** %Argterm, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %scan2, align 8
  %9 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %10 = load %struct.term*, %struct.term** %Argterm, align 8
  %call15 = call i32 @term_HasProperSuperterm(%struct.term* %9, %struct.term* %10)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %while.body.12
  %11 = load %struct.term*, %struct.term** %Argterm, align 8
  %call18 = call i32 @term_TopSymbol(%struct.term* %11)
  %call19 = call i32 @fol_Or()
  %call20 = call i32 @symbol_Equal(i32 %call18, i32 %call19)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.17
  %12 = load %struct.term*, %struct.term** %Argterm, align 8
  %call23 = call i32 @fol_Or()
  %call24 = call %struct.term* @cnf_Flatten(%struct.term* %12, i32 %call23)
  %13 = load %struct.term*, %struct.term** %Argterm, align 8
  %call25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.22
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call26 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool27 = icmp ne i32 %call26, 0
  %lnot28 = xor i1 %tobool27, true
  br i1 %lnot28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call29 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call29 to %struct.term*
  %17 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_RplacSuperterm(%struct.term* %16, %struct.term* %17)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %20 = load %struct.term*, %struct.term** %Argterm, align 8
  %call31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call31)
  call void @list_NInsert(%struct.LIST_HELP* %19, %struct.LIST_HELP* %call32)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %22 = load %struct.term*, %struct.term** %Argterm, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %call33)
  call void @list_Rplaca(%struct.LIST_HELP* %21, i8* %call34)
  %23 = load %struct.term*, %struct.term** %Argterm, align 8
  %call35 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  call void @list_Free(%struct.LIST_HELP* %call35)
  %24 = load %struct.term*, %struct.term** %Argterm, align 8
  call void @term_Free(%struct.term* %24)
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.17
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %while.body.12
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %scan1, align 8
  br label %while.cond.9

while.end.37:                                     ; preds = %while.cond.9
  br label %if.end.38

if.end.38:                                        ; preds = %while.end.37, %while.end
  %26 = load %struct.term*, %struct.term** %Term.addr, align 8
  ret %struct.term* %26
}

declare i32 @term_HasProperSuperterm(%struct.term*, %struct.term*) #2

declare %struct.LIST_HELP* @list_PointerDeleteElementFree(%struct.LIST_HELP*, i8*, void (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  %call = call %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP* %0, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  ret %struct.LIST_HELP* %call
}

declare void @term_ReplaceVariable(%struct.term*, i32, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_CopyTermsInList(%struct.LIST_HELP* %List) #1 {
entry:
  %List.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %List, %struct.LIST_HELP** %List.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List.addr, align 8
  call void @list_NMapCar(%struct.LIST_HELP* %0, i8* (i8*)* bitcast (%struct.term* (%struct.term*)* @term_Copy to i8* (i8*)*))
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.term* @cnf_DefConvert(%struct.term* %Def, %struct.term* %FoundPredicate, %struct.term** %ToProve) #0 {
entry:
  %Def.addr = alloca %struct.term*, align 8
  %FoundPredicate.addr = alloca %struct.term*, align 8
  %ToProve.addr = alloca %struct.term**, align 8
  %orterm = alloca %struct.term*, align 8
  %t = alloca %struct.term*, align 8
  %t31 = alloca %struct.term*, align 8
  %equiv = alloca %struct.term*, align 8
  %args = alloca %struct.LIST_HELP*, align 8
  %t45 = alloca %struct.term*, align 8
  store %struct.term* %Def, %struct.term** %Def.addr, align 8
  store %struct.term* %FoundPredicate, %struct.term** %FoundPredicate.addr, align 8
  store %struct.term** %ToProve, %struct.term*** %ToProve.addr, align 8
  %0 = load %struct.term*, %struct.term** %Def.addr, align 8
  %1 = load %struct.term*, %struct.term** %FoundPredicate.addr, align 8
  %call = call %struct.term* @cnf_RemoveImplFromFormulaPath(%struct.term* %0, %struct.term* %1)
  store %struct.term* %call, %struct.term** %Def.addr, align 8
  %2 = load %struct.term*, %struct.term** %Def.addr, align 8
  %3 = load %struct.term*, %struct.term** %FoundPredicate.addr, align 8
  %call1 = call %struct.term* @cnf_NegationNormalFormulaPath(%struct.term* %2, %struct.term* %3)
  store %struct.term* %call1, %struct.term** %Def.addr, align 8
  %4 = load %struct.term*, %struct.term** %Def.addr, align 8
  %5 = load %struct.term*, %struct.term** %FoundPredicate.addr, align 8
  %call2 = call %struct.term* @term_Superterm(%struct.term* %5)
  %call3 = call %struct.term* @cnf_RemoveQuantFromPathAndFlatten(%struct.term* %4, %struct.term* %call2)
  store %struct.term* %call3, %struct.term** %Def.addr, align 8
  %6 = load %struct.term*, %struct.term** %Def.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %6)
  %7 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %7)
  %call5 = call i32 @fol_All()
  %call6 = call i32 @symbol_Equal(i32 %call4, i32 %call5)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then, label %if.else.21

if.then:                                          ; preds = %entry
  %8 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call7 = call %struct.term* @term_SecondArgument(%struct.term* %8)
  %call8 = call i32 @term_TopSymbol(%struct.term* %call7)
  %call9 = call i32 @fol_Or()
  %call10 = call i32 @symbol_Equal(i32 %call8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %9)
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call12)
  %call14 = call i32 @list_Length(%struct.LIST_HELP* %call13)
  %cmp = icmp eq i32 %call14, 1
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %land.lhs.true
  %10 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call16 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  store %struct.term* %call16, %struct.term** %t, align 8
  %11 = load %struct.term*, %struct.term** %Def.addr, align 8
  %12 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call17 = call %struct.term* @term_SecondArgument(%struct.term* %12)
  %call18 = call %struct.term* @term_FirstArgument(%struct.term* %call17)
  call void @term_RplacSecondArgument(%struct.term* %11, %struct.term* %call18)
  %13 = load %struct.term*, %struct.term** %t, align 8
  call void @term_Free(%struct.term* %13)
  store %struct.term* null, %struct.term** %orterm, align 8
  %14 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call19 = call %struct.term* @term_SecondArgument(%struct.term* %14)
  %15 = load %struct.term*, %struct.term** %Def.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %call19, %struct.term* %15)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %if.then
  %16 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call20 = call %struct.term* @term_SecondArgument(%struct.term* %16)
  store %struct.term* %call20, %struct.term** %orterm, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.15
  br label %if.end.36

if.else.21:                                       ; preds = %entry
  %17 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call22 = call i32 @term_TopSymbol(%struct.term* %17)
  %call23 = call i32 @fol_Or()
  %call24 = call i32 @symbol_Equal(i32 %call22, i32 %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.34

land.lhs.true.26:                                 ; preds = %if.else.21
  %18 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call27 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %call28 = call i32 @list_Length(%struct.LIST_HELP* %call27)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %land.lhs.true.26
  %19 = load %struct.term*, %struct.term** %Def.addr, align 8
  store %struct.term* %19, %struct.term** %t31, align 8
  %20 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call32 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  store %struct.term* %call32, %struct.term** %Def.addr, align 8
  %21 = load %struct.term*, %struct.term** %t31, align 8
  call void @term_Free(%struct.term* %21)
  store %struct.term* null, %struct.term** %orterm, align 8
  %22 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call33 = call %struct.term* @term_SecondArgument(%struct.term* %22)
  %23 = load %struct.term*, %struct.term** %Def.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %call33, %struct.term* %23)
  br label %if.end.35

if.else.34:                                       ; preds = %land.lhs.true.26, %if.else.21
  %24 = load %struct.term*, %struct.term** %Def.addr, align 8
  store %struct.term* %24, %struct.term** %orterm, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.34, %if.then.30
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.end
  %25 = load %struct.term*, %struct.term** %orterm, align 8
  %cmp37 = icmp ne %struct.term* %25, null
  br i1 %cmp37, label %if.then.38, label %if.end.65

if.then.38:                                       ; preds = %if.end.36
  store %struct.term* null, %struct.term** %equiv, align 8
  %26 = load %struct.term*, %struct.term** %orterm, align 8
  %call39 = call i32 @term_TopSymbol(%struct.term* %26)
  %call40 = call i32 @fol_Equiv()
  %call41 = call i32 @symbol_Equal(i32 %call39, i32 %call40)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.then.38
  %27 = load %struct.term*, %struct.term** %orterm, align 8
  store %struct.term* %27, %struct.term** %equiv, align 8
  %28 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  store %struct.term* null, %struct.term** %28, align 8
  br label %if.end.64

if.else.44:                                       ; preds = %if.then.38
  %29 = load %struct.term*, %struct.term** %orterm, align 8
  %call46 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  store %struct.LIST_HELP* %call46, %struct.LIST_HELP** %args, align 8
  %30 = load %struct.term*, %struct.term** %FoundPredicate.addr, align 8
  %call47 = call %struct.term* @term_Superterm(%struct.term* %30)
  store %struct.term* %call47, %struct.term** %equiv, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %32 = load %struct.term*, %struct.term** %equiv, align 8
  %33 = bitcast %struct.term* %32 to i8*
  %call48 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %31, i8* %33)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %args, align 8
  %34 = load %struct.term*, %struct.term** %orterm, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  call void @term_RplacArgumentList(%struct.term* %34, %struct.LIST_HELP* %35)
  %36 = load %struct.term*, %struct.term** %orterm, align 8
  %call49 = call %struct.term* @term_Copy(%struct.term* %36)
  %37 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  store %struct.term* %call49, %struct.term** %37, align 8
  %call50 = call i32 @fol_Not()
  %38 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  %39 = load %struct.term*, %struct.term** %38, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %call51 = call %struct.LIST_HELP* @list_List(i8* %40)
  %call52 = call %struct.term* @term_Create(i32 %call50, %struct.LIST_HELP* %call51)
  %41 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  store %struct.term* %call52, %struct.term** %41, align 8
  %42 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  %43 = load %struct.term*, %struct.term** %42, align 8
  %call53 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %43)
  %44 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  store %struct.term* %call53, %struct.term** %44, align 8
  %45 = load %struct.term**, %struct.term*** %ToProve.addr, align 8
  %46 = load %struct.term*, %struct.term** %45, align 8
  call void @term_AddFatherLinks(%struct.term* %46)
  %47 = load %struct.term*, %struct.term** %orterm, align 8
  %call54 = call i32 @fol_Implies()
  call void @term_RplacTop(%struct.term* %47, i32 %call54)
  %call55 = call i32 @fol_Not()
  %call56 = call i32 @fol_Or()
  %48 = load %struct.term*, %struct.term** %orterm, align 8
  %call57 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %48)
  %call58 = call %struct.term* @term_Create(i32 %call56, %struct.LIST_HELP* %call57)
  %49 = bitcast %struct.term* %call58 to i8*
  %call59 = call %struct.LIST_HELP* @list_List(i8* %49)
  %call60 = call %struct.term* @term_Create(i32 %call55, %struct.LIST_HELP* %call59)
  store %struct.term* %call60, %struct.term** %t45, align 8
  %50 = load %struct.term*, %struct.term** %orterm, align 8
  %51 = load %struct.term*, %struct.term** %t45, align 8
  %52 = bitcast %struct.term* %51 to i8*
  %53 = load %struct.term*, %struct.term** %equiv, align 8
  %54 = bitcast %struct.term* %53 to i8*
  %call61 = call %struct.LIST_HELP* @list_List(i8* %54)
  %call62 = call %struct.LIST_HELP* @list_Cons(i8* %52, %struct.LIST_HELP* %call61)
  call void @term_RplacArgumentList(%struct.term* %50, %struct.LIST_HELP* %call62)
  %55 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call63 = call %struct.term* @cnf_NegationNormalFormula(%struct.term* %55)
  store %struct.term* %call63, %struct.term** %Def.addr, align 8
  %56 = load %struct.term*, %struct.term** %Def.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %56)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.end.36
  %57 = load %struct.term*, %struct.term** %Def.addr, align 8
  ret %struct.term* %57
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_RemoveQuantFromPathAndFlatten(%struct.term* %TopTerm, %struct.term* %SubTerm) #0 {
entry:
  %TopTerm.addr = alloca %struct.term*, align 8
  %SubTerm.addr = alloca %struct.term*, align 8
  %Term1 = alloca %struct.term*, align 8
  %Term2 = alloca %struct.term*, align 8
  %Flat = alloca %struct.term*, align 8
  %Variable = alloca %struct.term*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %FreeVars = alloca %struct.LIST_HELP*, align 8
  %ArgList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %TopTerm, %struct.term** %TopTerm.addr, align 8
  store %struct.term* %SubTerm, %struct.term** %SubTerm.addr, align 8
  %0 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  %call = call %struct.term* @cnf_SimplifyQuantors(%struct.term* %0)
  store %struct.term* %call, %struct.term** %TopTerm.addr, align 8
  %1 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %1)
  %2 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call1 = call %struct.term* @term_Superterm(%struct.term* %2)
  store %struct.term* %call1, %struct.term** %Term1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.55, %entry
  %3 = load %struct.term*, %struct.term** %Term1, align 8
  %4 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  %cmp = icmp ne %struct.term* %3, %4
  br i1 %cmp, label %while.body, label %while.end.56

while.body:                                       ; preds = %while.cond
  br label %while.cond.2

while.cond.2:                                     ; preds = %while.body.7, %while.body
  %call3 = call i32 @fol_Or()
  %5 = load %struct.term*, %struct.term** %Term1, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %5)
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.2
  %6 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  %7 = load %struct.term*, %struct.term** %Term1, align 8
  %cmp6 = icmp ne %struct.term* %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.2
  %8 = phi i1 [ false, %while.cond.2 ], [ %cmp6, %land.rhs ]
  br i1 %8, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %land.end
  %9 = load %struct.term*, %struct.term** %Term1, align 8
  %call8 = call %struct.term* @term_Superterm(%struct.term* %9)
  store %struct.term* %call8, %struct.term** %Term1, align 8
  br label %while.cond.2

while.end:                                        ; preds = %land.end
  %10 = load %struct.term*, %struct.term** %Term1, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %10)
  %call10 = call i32 @fol_IsQuantifier(i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then, label %if.else.52

if.then:                                          ; preds = %while.end
  %11 = load %struct.term*, %struct.term** %Term1, align 8
  %call12 = call %struct.term* @term_SecondArgument(%struct.term* %11)
  store %struct.term* %call12, %struct.term** %Flat, align 8
  %12 = load %struct.term*, %struct.term** %Flat, align 8
  %call13 = call i32 @fol_Or()
  %call14 = call %struct.term* @cnf_Flatten(%struct.term* %12, i32 %call13)
  store %struct.term* %call14, %struct.term** %Flat, align 8
  %13 = load %struct.term*, %struct.term** %Term1, align 8
  %call15 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %13)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.16

while.cond.16:                                    ; preds = %if.end, %if.then
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool18, true
  br i1 %lnot, label %while.body.19, label %while.end.28

while.body.19:                                    ; preds = %while.cond.16
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call20 to %struct.term*
  store %struct.term* %16, %struct.term** %Variable, align 8
  %17 = load %struct.term*, %struct.term** %Variable, align 8
  %18 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %call21 = call i32 @fol_VarOccursFreely(%struct.term* %17, %struct.term* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %while.body.19
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %Scan2, align 8
  %20 = load %struct.term*, %struct.term** %Term1, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %22 = bitcast i8* %call25 to %struct.term*
  %call26 = call i32 @term_TopSymbol(%struct.term* %22)
  call void @fol_DeleteQuantifierVariable(%struct.term* %20, i32 %call26)
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  store %struct.LIST_HELP* %23, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end

if.else:                                          ; preds = %while.body.19
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %Scan1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.23
  br label %while.cond.16

while.end.28:                                     ; preds = %while.cond.16
  %25 = load %struct.term*, %struct.term** %Term1, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %25)
  %call30 = call i32 @fol_IsQuantifier(i32 %call29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.then.32, label %if.end.51

if.then.32:                                       ; preds = %while.end.28
  %26 = load %struct.term*, %struct.term** %Flat, align 8
  %27 = load %struct.term*, %struct.term** %Flat, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %29 = bitcast %struct.term* %28 to i8*
  %call34 = call %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP* %call33, i8* %29)
  call void @term_RplacArgumentList(%struct.term* %26, %struct.LIST_HELP* %call34)
  %30 = load %struct.term*, %struct.term** %Term1, align 8
  %call35 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %30)
  store %struct.LIST_HELP* %call35, %struct.LIST_HELP** %ArgList, align 8
  %31 = load %struct.term*, %struct.term** %Term1, align 8
  %call36 = call %struct.LIST_HELP* @list_Nil()
  call void @term_RplacArgumentList(%struct.term* %31, %struct.LIST_HELP* %call36)
  %32 = load %struct.term*, %struct.term** %Term1, align 8
  %call37 = call i32 @term_TopSymbol(%struct.term* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ArgList, align 8
  %call38 = call %struct.term* @term_Create(i32 %call37, %struct.LIST_HELP* %33)
  store %struct.term* %call38, %struct.term** %Term2, align 8
  %34 = load %struct.term*, %struct.term** %Term1, align 8
  %35 = load %struct.term*, %struct.term** %SubTerm.addr, align 8
  %36 = bitcast %struct.term* %35 to i8*
  %37 = load %struct.term*, %struct.term** %Term2, align 8
  %38 = bitcast %struct.term* %37 to i8*
  %call39 = call %struct.LIST_HELP* @list_List(i8* %38)
  %call40 = call %struct.LIST_HELP* @list_Cons(i8* %36, %struct.LIST_HELP* %call39)
  call void @term_RplacArgumentList(%struct.term* %34, %struct.LIST_HELP* %call40)
  %39 = load %struct.term*, %struct.term** %Term1, align 8
  %call41 = call i32 @fol_Or()
  call void @term_RplacTop(%struct.term* %39, i32 %call41)
  %40 = load %struct.term*, %struct.term** %Term1, align 8
  %call42 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %40)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.43

while.cond.43:                                    ; preds = %while.body.47, %if.then.32
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %41)
  %tobool45 = icmp ne i32 %call44, 0
  %lnot46 = xor i1 %tobool45, true
  br i1 %lnot46, label %while.body.47, label %while.end.50

while.body.47:                                    ; preds = %while.cond.43
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call48 = call i8* @list_Car(%struct.LIST_HELP* %42)
  %43 = bitcast i8* %call48 to %struct.term*
  %44 = load %struct.term*, %struct.term** %Term1, align 8
  call void @term_RplacSuperterm(%struct.term* %43, %struct.term* %44)
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %45)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %Scan1, align 8
  br label %while.cond.43

while.end.50:                                     ; preds = %while.cond.43
  br label %if.end.51

if.end.51:                                        ; preds = %while.end.50, %while.end.28
  br label %if.end.55

if.else.52:                                       ; preds = %while.end
  %46 = load %struct.term*, %struct.term** %Term1, align 8
  %call53 = call i32 @fol_Or()
  %call54 = call %struct.term* @cnf_Flatten(%struct.term* %46, i32 %call53)
  store %struct.term* %call54, %struct.term** %Term1, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.end.51
  br label %while.cond

while.end.56:                                     ; preds = %while.cond
  %47 = load %struct.term*, %struct.term** %Term1, align 8
  %call57 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %47)
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %FreeVars, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %call58 = call i32 @list_Empty(%struct.LIST_HELP* %48)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.end.64, label %if.then.60

if.then.60:                                       ; preds = %while.end.56
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  call void @term_CopyTermsInList(%struct.LIST_HELP* %49)
  %call61 = call i32 @fol_All()
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeVars, align 8
  %51 = load %struct.term*, %struct.term** %Term1, align 8
  %52 = bitcast %struct.term* %51 to i8*
  %call62 = call %struct.LIST_HELP* @list_List(i8* %52)
  %call63 = call %struct.term* @fol_CreateQuantifier(i32 %call61, %struct.LIST_HELP* %50, %struct.LIST_HELP* %call62)
  store %struct.term* %call63, %struct.term** %TopTerm.addr, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.60, %while.end.56
  %53 = load %struct.term*, %struct.term** %TopTerm.addr, align 8
  ret %struct.term* %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Superterm(%struct.term* %T) #1 {
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
define internal void @term_RplacSecondArgument(%struct.term* %T1, %struct.term* %T2) #1 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  call void @list_RplacSecond(%struct.LIST_HELP* %1, i8* %3)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @term_RplacSuperterm(%struct.term* %T1, %struct.term* %T2) #1 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T2.addr, align 8
  %1 = load %struct.term*, %struct.term** %T1.addr, align 8
  %super = getelementptr inbounds %struct.term, %struct.term* %1, i32 0, i32 1
  %term = bitcast %union.anon* %super to %struct.term**
  store %struct.term* %0, %struct.term** %term, align 8
  ret void
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_HandleDefinition(%struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP* %Pair, %struct.LIST_HELP* %Axioms, %struct.LIST_HELP* %Sorts, %struct.LIST_HELP* %Conjectures) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Pair.addr = alloca %struct.LIST_HELP*, align 8
  %Axioms.addr = alloca %struct.LIST_HELP*, align 8
  %Sorts.addr = alloca %struct.LIST_HELP*, align 8
  %Conjectures.addr = alloca %struct.LIST_HELP*, align 8
  %definition = alloca %struct.term*, align 8
  %defpredicate = alloca %struct.term*, align 8
  %equivterm = alloca %struct.term*, align 8
  %alwaysapplicable = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %toprove = alloca %struct.term*, align 8
  %allformulae = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %localfound = alloca i32, align 4
  %pair = alloca %struct.LIST_HELP*, align 8
  %targettermvars = alloca %struct.LIST_HELP*, align 8
  %target = alloca %struct.term*, align 8
  %targetpredicate = alloca %struct.term*, align 8
  %totoplevel = alloca %struct.term*, align 8
  %varsfortoplevel = alloca %struct.LIST_HELP*, align 8
  %toprovecopy = alloca %struct.term*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP* %Pair, %struct.LIST_HELP** %Pair.addr, align 8
  store %struct.LIST_HELP* %Axioms, %struct.LIST_HELP** %Axioms.addr, align 8
  store %struct.LIST_HELP* %Sorts, %struct.LIST_HELP** %Sorts.addr, align 8
  store %struct.LIST_HELP* %Conjectures, %struct.LIST_HELP** %Conjectures.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %call2 = call i8* @list_PairSecond(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %definition, align 8
  store %struct.term* null, %struct.term** %defpredicate, align 8
  %4 = load %struct.term*, %struct.term** %definition, align 8
  %call3 = call i32 @cnf_ContainsDefinition(%struct.term* %4, %struct.term** %defpredicate)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end.74

if.then:                                          ; preds = %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Axioms.addr, align 8
  %call4 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %allformulae, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allformulae, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Sorts.addr, align 8
  %call5 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %7)
  %call6 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %6, %struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %allformulae, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allformulae, align 8
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Conjectures.addr, align 8
  %call7 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %9)
  %call8 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %8, %struct.LIST_HELP* %call7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %allformulae, align 8
  %10 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %10, i32 37)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call12 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %11)
  %12 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call13 = call i32 @term_TopSymbol(%struct.term* %12)
  call void @symbol_Print(i32 %call13)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %if.then
  %13 = load %struct.term*, %struct.term** %definition, align 8
  %14 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call14 = call %struct.term* @cnf_DefConvert(%struct.term* %13, %struct.term* %14, %struct.term** %toprove)
  store %struct.term* %call14, %struct.term** %definition, align 8
  %15 = load %struct.term*, %struct.term** %toprove, align 8
  %cmp = icmp eq %struct.term* %15, null
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end
  store i32 1, i32* %alwaysapplicable, align 4
  br label %if.end.16

if.else:                                          ; preds = %if.end
  store i32 0, i32* %alwaysapplicable, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %17 = load %struct.term*, %struct.term** %definition, align 8
  %call17 = call %struct.term* @term_Copy(%struct.term* %17)
  %18 = bitcast %struct.term* %call17 to i8*
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call18 = call %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %19)
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %18, %struct.LIST_HELP* %call18)
  call void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %16, %struct.LIST_HELP* %call19)
  %20 = load i32*, i32** %Flags, align 8
  %call20 = call i32 @flag_GetFlagValue(i32* %20, i32 37)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end.16
  %21 = load i32, i32* %alwaysapplicable, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %if.then.22
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call25 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %22)
  %23 = load %struct.term*, %struct.term** %definition, align 8
  call void @fol_PrettyPrint(%struct.term* %23)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %if.then.22
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.16
  %24 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call28 = call %struct.term* @term_Superterm(%struct.term* %24)
  %call29 = call %struct.term* @term_SecondArgument(%struct.term* %call28)
  store %struct.term* %call29, %struct.term** %equivterm, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allformulae, align 8
  store %struct.LIST_HELP* %25, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.70, %if.end.27
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot = xor i1 %tobool31, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call32 = call i8* @list_Car(%struct.LIST_HELP* %27)
  %28 = bitcast i8* %call32 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %28, %struct.LIST_HELP** %pair, align 8
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %cmp33 = icmp ne %struct.LIST_HELP* %29, null
  br i1 %cmp33, label %land.lhs.true, label %if.else.68

land.lhs.true:                                    ; preds = %while.body
  %30 = load %struct.term*, %struct.term** %definition, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call34 = call i8* @list_PairSecond(%struct.LIST_HELP* %31)
  %32 = bitcast i8* %call34 to %struct.term*
  %cmp35 = icmp ne %struct.term* %30, %32
  br i1 %cmp35, label %if.then.36, label %if.else.68

if.then.36:                                       ; preds = %land.lhs.true
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call37 = call i8* @list_PairSecond(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call37 to %struct.term*
  store %struct.term* %34, %struct.term** %target, align 8
  %call38 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %varsfortoplevel, align 8
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %targettermvars, align 8
  store i32 0, i32* %localfound, align 4
  %35 = load i32, i32* %alwaysapplicable, align 4
  %tobool39 = icmp ne i32 %35, 0
  br i1 %tobool39, label %if.else.56, label %if.then.40

if.then.40:                                       ; preds = %if.then.36
  %36 = load %struct.term*, %struct.term** %target, align 8
  %37 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call41 = call i32 @term_TopSymbol(%struct.term* %37)
  %call42 = call i32 @cnf_ContainsPredicate(%struct.term* %36, i32 %call41, %struct.term** %targetpredicate, %struct.term** %totoplevel, %struct.LIST_HELP** %targettermvars, %struct.LIST_HELP** %varsfortoplevel)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.55

if.then.44:                                       ; preds = %if.then.40
  %38 = load %struct.term*, %struct.term** %toprove, align 8
  %call45 = call %struct.term* @term_Copy(%struct.term* %38)
  store %struct.term* %call45, %struct.term** %toprovecopy, align 8
  %39 = load %struct.term*, %struct.term** %target, align 8
  %40 = load %struct.term*, %struct.term** %totoplevel, align 8
  %41 = load %struct.term*, %struct.term** %toprovecopy, align 8
  %42 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call46 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %42)
  %43 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %call47 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  %46 = load i32*, i32** %Flags, align 8
  %47 = load i32*, i32** %Precedence, align 8
  %call48 = call %struct.term* @cnf_DefTargetConvert(%struct.term* %39, %struct.term* %40, %struct.term* %41, %struct.LIST_HELP* %call46, %struct.LIST_HELP* %call47, %struct.LIST_HELP* %44, %struct.LIST_HELP* %45, i32* %46, i32* %47, i32* %localfound)
  store %struct.term* %call48, %struct.term** %target, align 8
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %48)
  %49 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  call void @list_Delete(%struct.LIST_HELP* %49)
  %call49 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %varsfortoplevel, align 8
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %targettermvars, align 8
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %51 = load %struct.term*, %struct.term** %target, align 8
  %52 = bitcast %struct.term* %51 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %50, %struct.LIST_HELP* %52)
  %53 = load i32, i32* %localfound, align 4
  %tobool50 = icmp ne i32 %53, 0
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.44
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %55 = load %struct.term*, %struct.term** %defpredicate, align 8
  %56 = load %struct.term*, %struct.term** %equivterm, align 8
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call52 = call i8* @list_PairSecond(%struct.LIST_HELP* %57)
  %58 = bitcast i8* %call52 to %struct.term*
  %59 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %60 = load i32*, i32** %Flags, align 8
  %call53 = call %struct.term* @cnf_ApplyDefinitionOnce(%struct.term* %55, %struct.term* %56, %struct.term* %58, %struct.term* %59, i32* %60)
  %61 = bitcast %struct.term* %call53 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %54, %struct.LIST_HELP* %61)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.44
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.40
  br label %if.end.67

if.else.56:                                       ; preds = %if.then.36
  %62 = load %struct.term*, %struct.term** %target, align 8
  %63 = load %struct.term*, %struct.term** %defpredicate, align 8
  %call57 = call i32 @term_TopSymbol(%struct.term* %63)
  %call58 = call i32 @cnf_ContainsPredicate(%struct.term* %62, i32 %call57, %struct.term** %targetpredicate, %struct.term** %totoplevel, %struct.LIST_HELP** %targettermvars, %struct.LIST_HELP** %varsfortoplevel)
  %tobool59 = icmp ne i32 %call58, 0
  br i1 %tobool59, label %if.then.60, label %if.else.63

if.then.60:                                       ; preds = %if.else.56
  %64 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %65 = load %struct.term*, %struct.term** %defpredicate, align 8
  %66 = load %struct.term*, %struct.term** %equivterm, align 8
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call61 = call i8* @list_PairSecond(%struct.LIST_HELP* %67)
  %68 = bitcast i8* %call61 to %struct.term*
  %69 = load %struct.term*, %struct.term** %targetpredicate, align 8
  %70 = load i32*, i32** %Flags, align 8
  %call62 = call %struct.term* @cnf_ApplyDefinitionOnce(%struct.term* %65, %struct.term* %66, %struct.term* %68, %struct.term* %69, i32* %70)
  %71 = bitcast %struct.term* %call62 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %64, %struct.LIST_HELP* %71)
  br label %if.end.65

if.else.63:                                       ; preds = %if.else.56
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call64 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %72)
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %scan, align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.63, %if.then.60
  %73 = load %struct.LIST_HELP*, %struct.LIST_HELP** %targettermvars, align 8
  call void @list_Delete(%struct.LIST_HELP* %73)
  %74 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varsfortoplevel, align 8
  call void @list_Delete(%struct.LIST_HELP* %74)
  %call66 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %varsfortoplevel, align 8
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %targettermvars, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.65, %if.end.55
  br label %if.end.70

if.else.68:                                       ; preds = %land.lhs.true, %while.body
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call69 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %scan, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.68, %if.end.67
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allformulae, align 8
  call void @list_Delete(%struct.LIST_HELP* %76)
  %77 = load %struct.term*, %struct.term** %toprove, align 8
  %cmp71 = icmp ne %struct.term* %77, null
  br i1 %cmp71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %while.end
  %78 = load %struct.term*, %struct.term** %toprove, align 8
  call void @term_Delete(%struct.term* %78)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %while.end
  %79 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  %80 = load %struct.term*, %struct.term** %definition, align 8
  %81 = bitcast %struct.term* %80 to %struct.LIST_HELP*
  call void @list_Rplacd(%struct.LIST_HELP* %79, %struct.LIST_HELP* %81)
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %entry
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Pair.addr, align 8
  ret %struct.LIST_HELP* %82
}

declare void @symbol_Print(i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @prfs_SetDefinitions(%struct.PROOFSEARCH_HELP* %Prf, %struct.LIST_HELP* %Definitions) #1 {
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
define internal %struct.LIST_HELP* @prfs_Definitions(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %definitions = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 0
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %definitions, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @cnf_ApplyDefinitionToClause(%struct.CLAUSE_HELP* %Clause, %struct.term* %Predicate, %struct.term* %Expansion, i32* %Flags, i32* %Precedence) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Predicate.addr = alloca %struct.term*, align 8
  %Expansion.addr = alloca %struct.term*, align 8
  %Flags.addr = alloca i32*, align 8
  %Precedence.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %changed = alloca i32, align 4
  %args = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %symblist = alloca %struct.LIST_HELP*, align 8
  %clauseterm = alloca %struct.term*, align 8
  %argument = alloca %struct.term*, align 8
  %isneg = alloca i32, align 4
  %subst = alloca %struct.subst*, align 8
  %newargument = alloca %struct.term*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  store %struct.term* %Predicate, %struct.term** %Predicate.addr, align 8
  store %struct.term* %Expansion, %struct.term** %Expansion.addr, align 8
  store i32* %Flags, i32** %Flags.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  store i32 0, i32* %changed, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %args, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %call1 = call i32 @clause_Length(%struct.CLAUSE_HELP* %1)
  %cmp = icmp ult i32 %0, %call1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %3 = load i32, i32* %i, align 4
  %call2 = call %struct.term* @clause_GetLiteralTerm(%struct.CLAUSE_HELP* %2, i32 %3)
  store %struct.term* %call2, %struct.term** %argument, align 8
  %4 = load %struct.term*, %struct.term** %argument, align 8
  %call3 = call %struct.term* @term_Copy(%struct.term* %4)
  %5 = bitcast %struct.term* %call3 to i8*
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %5, %struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %args, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call5 = call i32 @fol_Or()
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %call6 = call %struct.term* @term_Create(i32 %call5, %struct.LIST_HELP* %8)
  store %struct.term* %call6, %struct.term** %clauseterm, align 8
  %9 = load %struct.term*, %struct.term** %clauseterm, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.33, %for.end
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %10)
  %tobool = icmp ne i32 %call9, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body.10, label %for.end.35

for.body.10:                                      ; preds = %for.cond.8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call11 to %struct.term*
  store %struct.term* %12, %struct.term** %argument, align 8
  %13 = load %struct.term*, %struct.term** %argument, align 8
  %call12 = call i32 @term_TopSymbol(%struct.term* %13)
  %call13 = call i32 @fol_Not()
  %call14 = call i32 @symbol_Equal(i32 %call12, i32 %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.10
  %14 = load %struct.term*, %struct.term** %argument, align 8
  %call16 = call %struct.term* @term_FirstArgument(%struct.term* %14)
  store %struct.term* %call16, %struct.term** %argument, align 8
  store i32 1, i32* %isneg, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.10
  store i32 0, i32* %isneg, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @cont_StartBinding()
  %call17 = call %struct.binding* @cont_LeftContext()
  %15 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  %16 = load %struct.term*, %struct.term** %argument, align 8
  %call18 = call i32 @unify_Match(%struct.binding* %call17, %struct.term* %15, %struct.term* %16)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.31

if.then.20:                                       ; preds = %if.end
  %call21 = call %struct.subst* @subst_ExtractMatcher()
  store %struct.subst* %call21, %struct.subst** %subst, align 8
  %17 = load %struct.subst*, %struct.subst** %subst, align 8
  %18 = load %struct.term*, %struct.term** %Expansion.addr, align 8
  %call22 = call %struct.term* @term_Copy(%struct.term* %18)
  %call23 = call %struct.term* @subst_Apply(%struct.subst* %17, %struct.term* %call22)
  store %struct.term* %call23, %struct.term** %newargument, align 8
  %19 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Free(%struct.subst* %19)
  %20 = load i32, i32* %isneg, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.then.25, label %if.end.29

if.then.25:                                       ; preds = %if.then.20
  %call26 = call i32 @fol_Not()
  %21 = load %struct.term*, %struct.term** %newargument, align 8
  %22 = bitcast %struct.term* %21 to i8*
  %call27 = call %struct.LIST_HELP* @list_List(i8* %22)
  %call28 = call %struct.term* @term_Create(i32 %call26, %struct.LIST_HELP* %call27)
  store %struct.term* %call28, %struct.term** %newargument, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.25, %if.then.20
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call30 to %struct.term*
  call void @term_Delete(%struct.term* %24)
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %26 = load %struct.term*, %struct.term** %newargument, align 8
  %27 = bitcast %struct.term* %26 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %25, i8* %27)
  store i32 1, i32* %changed, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.29, %if.end
  %call32 = call i32 @cont_BackTrack()
  br label %for.inc.33

for.inc.33:                                       ; preds = %if.end.31
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.8

for.end.35:                                       ; preds = %for.cond.8
  %29 = load i32, i32* %changed, align 4
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.63

if.then.37:                                       ; preds = %for.end.35
  %30 = load i32*, i32** %Flags.addr, align 8
  %call38 = call i32 @flag_GetFlagValue(i32* %30, i32 37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.44

if.then.40:                                       ; preds = %if.then.37
  %call41 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  %31 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  call void @clause_Print(%struct.CLAUSE_HELP* %31)
  %call42 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0))
  %32 = load %struct.term*, %struct.term** %Predicate.addr, align 8
  call void @fol_PrettyPrint(%struct.term* %32)
  %call43 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  %33 = load %struct.term*, %struct.term** %Expansion.addr, align 8
  call void @fol_PrettyPrint(%struct.term* %33)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.40, %if.then.37
  %call45 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call45, %struct.LIST_HELP** %symblist, align 8
  %34 = load %struct.term*, %struct.term** %clauseterm, align 8
  %35 = load i32*, i32** %Precedence.addr, align 8
  %call46 = call %struct.term* @cnf_Cnf(%struct.term* %34, i32* %35, %struct.LIST_HELP** %symblist)
  store %struct.term* %call46, %struct.term** %clauseterm, align 8
  %36 = load %struct.term*, %struct.term** %clauseterm, align 8
  %37 = load i32*, i32** %Flags.addr, align 8
  %38 = load i32*, i32** %Precedence.addr, align 8
  %call47 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %36, i32 0, i32 0, i32* %37, i32* %38)
  store %struct.LIST_HELP* %call47, %struct.LIST_HELP** %result, align 8
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symblist, align 8
  call void @list_Delete(%struct.LIST_HELP* %39)
  %40 = load %struct.term*, %struct.term** %clauseterm, align 8
  call void @term_Delete(%struct.term* %40)
  %41 = load i32*, i32** %Flags.addr, align 8
  %call48 = call i32 @flag_GetFlagValue(i32* %41, i32 37)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.62

if.then.50:                                       ; preds = %if.end.44
  %call51 = call i32 @puts(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i32 0, i32 0))
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %42, %struct.LIST_HELP** %l, align 8
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.59, %if.then.50
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call53 = call i32 @list_Empty(%struct.LIST_HELP* %43)
  %tobool54 = icmp ne i32 %call53, 0
  %lnot55 = xor i1 %tobool54, true
  br i1 %lnot55, label %for.body.56, label %for.end.61

for.body.56:                                      ; preds = %for.cond.52
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call57 = call i8* @list_Car(%struct.LIST_HELP* %44)
  %45 = bitcast i8* %call57 to %struct.CLAUSE_HELP*
  call void @clause_Print(%struct.CLAUSE_HELP* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._IO_FILE* %46)
  br label %for.inc.59

for.inc.59:                                       ; preds = %for.body.56
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call60 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %47)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %l, align 8
  br label %for.cond.52

for.end.61:                                       ; preds = %for.cond.52
  br label %if.end.62

if.end.62:                                        ; preds = %for.end.61, %if.end.44
  %48 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %48, %struct.LIST_HELP** %retval
  br label %return

if.else.63:                                       ; preds = %for.end.35
  %49 = load %struct.term*, %struct.term** %clauseterm, align 8
  call void @term_Delete(%struct.term* %49)
  %call64 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call64, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %if.else.63, %if.end.62
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %50
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #1 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @unify_Match(%struct.binding*, %struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_LeftContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LEFTCONTEXT, align 8
  ret %struct.binding* %0
}

declare %struct.subst* @subst_ExtractMatcher() #2

declare %struct.term* @subst_Apply(%struct.subst*, %struct.term*) #2

declare void @subst_Free(%struct.subst*) #2

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

declare void @clause_Print(%struct.CLAUSE_HELP*) #2

declare %struct.LIST_HELP* @fol_GetSubstEquations(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_Null() #1 {
entry:
  ret i32 0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.term* @term_Null() #1 {
entry:
  ret %struct.term* null
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

declare i32 @term_ContainsVariable(%struct.term*, i32) #2

declare %struct.term* @fol_GetBindingQuantifier(%struct.term*, i32) #2

declare i32 @fol_PolarCheck(%struct.term*, %struct.term*) #2

declare void @fol_DeleteQuantifierVariable(%struct.term*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_Equality() #1 {
entry:
  %0 = load i32, i32* @fol_EQUALITY, align 4
  ret i32 %0
}

declare void @fol_SetTrue(%struct.term*) #2

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
define internal void @flag_CheckFlagIdInRange(i32 %FlagId) #1 {
entry:
  %FlagId.addr = alloca i32, align 4
  store i32 %FlagId, i32* %FlagId.addr, align 4
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

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_IsDefinition(%struct.term* %Def) #0 {
entry:
  %retval = alloca %struct.term*, align 8
  %Def.addr = alloca %struct.term*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  %freevars = alloca %struct.LIST_HELP*, align 8
  %predicatevars = alloca %struct.LIST_HELP*, align 8
  %arg1 = alloca %struct.term*, align 8
  store %struct.term* %Def, %struct.term** %Def.addr, align 8
  %0 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  %call1 = call i32 @term_TopSymbol(%struct.term* %call)
  %call2 = call i32 @symbol_IsPredicate(i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call3 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  store %struct.term* %call3, %struct.term** %arg1, align 8
  %2 = load %struct.term*, %struct.term** %Def.addr, align 8
  %3 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call4 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  call void @term_RplacFirstArgument(%struct.term* %2, %struct.term* %call4)
  %4 = load %struct.term*, %struct.term** %Def.addr, align 8
  %5 = load %struct.term*, %struct.term** %arg1, align 8
  call void @term_RplacSecondArgument(%struct.term* %4, %struct.term* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call5 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call6 = call i32 @term_TopSymbol(%struct.term* %call5)
  %call7 = call i32 @symbol_IsPredicate(i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  store %struct.term* null, %struct.term** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %7 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call11 = call %struct.term* @term_SecondArgument(%struct.term* %7)
  %call12 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %call11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %freevars, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  %call13 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %freevars, align 8
  %9 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call14 = call %struct.term* @term_FirstArgument(%struct.term* %9)
  %call15 = call %struct.LIST_HELP* @term_ListOfVariables(%struct.term* %call14)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %predicatevars, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevars, align 8
  %call16 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %10)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %predicatevars, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevars, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.10
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call17 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool18 = icmp ne i32 %call17, 0
  %lnot = xor i1 %tobool18, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call19 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %call20 = call %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP* %13, i8* %call19, i32 (i8*, i8*)* bitcast (i32 (%struct.term*, %struct.term*)* @term_Equal to i32 (i8*, i8*)*))
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %freevars, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %l, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %16)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %for.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevars, align 8
  call void @list_Delete(%struct.LIST_HELP* %17)
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevars, align 8
  call void @list_Delete(%struct.LIST_HELP* %18)
  store %struct.term* null, %struct.term** %retval
  br label %return

if.end.25:                                        ; preds = %for.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predicatevars, align 8
  call void @list_Delete(%struct.LIST_HELP* %19)
  %20 = load %struct.term*, %struct.term** %Def.addr, align 8
  %call26 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  store %struct.term* %call26, %struct.term** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.24, %if.then.9
  %21 = load %struct.term*, %struct.term** %retval
  ret %struct.term* %21
}

declare %struct.LIST_HELP* @term_ListOfVariables(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call)
  ret %struct.LIST_HELP* %call1
}

declare %struct.LIST_HELP* @list_DeleteElement(%struct.LIST_HELP*, i8*, i32 (i8*, i8*)*) #2

declare i32 @term_Equal(%struct.term*, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @list_DeletePairList(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %0, void (i8*)* bitcast (void (%struct.LIST_HELP*)* @list_PairFree to void (i8*)*))
  ret void
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
define internal void @term_RplacFirstArgument(%struct.term* %T1, %struct.term* %T2) #1 {
entry:
  %T1.addr = alloca %struct.term*, align 8
  %T2.addr = alloca %struct.term*, align 8
  store %struct.term* %T1, %struct.term** %T1.addr, align 8
  store %struct.term* %T2, %struct.term** %T2.addr, align 8
  %0 = load %struct.term*, %struct.term** %T1.addr, align 8
  %args = getelementptr inbounds %struct.term, %struct.term* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %args, align 8
  %2 = load %struct.term*, %struct.term** %T2.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %1, i8* %3)
  ret void
}

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

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

declare %struct.term* @term_FindSubterm(%struct.term*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsJunctor(i32 %S) #1 {
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

; Function Attrs: nounwind uwtable
define internal void @cnf_RplacVar(%struct.term* %Term, %struct.LIST_HELP* %Varlist, %struct.LIST_HELP* %Termlist) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Varlist.addr = alloca %struct.LIST_HELP*, align 8
  %Termlist.addr = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan2 = alloca %struct.LIST_HELP*, align 8
  %done = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %Varlist, %struct.LIST_HELP** %Varlist.addr, align 8
  store %struct.LIST_HELP* %Termlist, %struct.LIST_HELP** %Termlist.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.36, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @symbol_IsVariable(i32 %call3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  store i32 0, i32* %done, align 4
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Varlist.addr, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %scan, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Termlist.addr, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %for.cond
  %8 = load i32, i32* %done, align 4
  %tobool7 = icmp ne i32 %8, 0
  %lnot = xor i1 %tobool7, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %9, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %10 = load %struct.term*, %struct.term** %term1, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %10)
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call9 to %struct.term*
  %call10 = call i32 @term_TopSymbol(%struct.term* %12)
  %call11 = call i32 @symbol_Equal(i32 %call8, i32 %call10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %for.body
  %13 = load %struct.term*, %struct.term** %term1, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call14 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = bitcast i8* %call14 to %struct.term*
  %call15 = call i32 @term_TopSymbol(%struct.term* %15)
  call void @term_RplacTop(%struct.term* %13, i32 %call15)
  %16 = load %struct.term*, %struct.term** %term1, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %17)
  %18 = bitcast i8* %call16 to %struct.term*
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %18)
  %call18 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call17)
  call void @term_RplacArgumentList(%struct.term* %16, %struct.LIST_HELP* %call18)
  store i32 1, i32* %done, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.13, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan2, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %scan2, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  br label %if.end.36

if.else:                                          ; preds = %while.body
  %21 = load %struct.term*, %struct.term** %term1, align 8
  %call21 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %21)
  %call22 = call i32 @list_Empty(%struct.LIST_HELP* %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.35, label %if.then.24

if.then.24:                                       ; preds = %if.else
  %22 = load %struct.term*, %struct.term** %term1, align 8
  %call25 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %22)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.32, %if.then.24
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end.34

for.body.30:                                      ; preds = %for.cond.26
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %24)
  call void @vec_Push(i8* %call31)
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.body.30
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call33 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.26

for.end.34:                                       ; preds = %for.cond.26
  br label %if.end.35

if.end.35:                                        ; preds = %for.end.34, %if.else
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %26)
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

declare %struct.LIST_HELP* @list_CopyWithElement(%struct.LIST_HELP*, i8* (i8*)*) #2

declare %struct.LIST_HELP* @list_DeleteDuplicatesFree(%struct.LIST_HELP*, i32 (i8*, i8*)*, void (i8*)*) #2

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

; Function Attrs: noreturn nounwind
declare void @abort() #4

declare %struct.LIST_HELP* @list_DeleteElementIfFree(%struct.LIST_HELP*, i32 (i8*)*, void (i8*)*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsTrue(%struct.term* %S) #1 {
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
define internal i32 @fol_IsFalse(%struct.term* %S) #1 {
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
define internal i32 @fol_Varlist() #1 {
entry:
  %0 = load i32, i32* @fol_VARLIST, align 4
  ret i32 %0
}

declare i32 @fol_VarOccursFreely(%struct.term*, %struct.term*) #2

declare %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare %struct.CLAUSE_HELP* @clause_CreateFromLiterals(%struct.LIST_HELP*, i32, i32, i32, i32*, i32*) #2

declare void @term_StartMinRenaming() #2

declare %struct.term* @term_Rename(%struct.term*) #2

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneAndTerm(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.term* @cnf_MakeOneAnd(%struct.term* %0)
  %call1 = call %struct.term* @cnf_MakeOneAndPredicate(%struct.term* %call)
  ret %struct.term* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneOrTerm(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.term* @cnf_MakeOneOr(%struct.term* %0)
  %call1 = call %struct.term* @cnf_MakeOneOrPredicate(%struct.term* %call)
  ret %struct.term* %call1
}

declare %struct.LIST_HELP* @cond_CondFast(%struct.CLAUSE_HELP*) #2

declare void @clause_DeleteLiterals(%struct.CLAUSE_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_SubsumeClauseList(%struct.LIST_HELP* %clauselist) #0 {
entry:
  %clauselist.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  %stindex = alloca %struct.st*, align 8
  %actclause = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.LIST_HELP* %clauselist, %struct.LIST_HELP** %clauselist.addr, align 8
  %call = call %struct.st* @st_IndexCreate()
  store %struct.st* %call, %struct.st** %stindex, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
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
  %4 = load %struct.st*, %struct.st** %stindex, align 8
  call void @res_InsertClauseIndex(%struct.CLAUSE_HELP* %3, %struct.st* %4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.14, %for.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool7 = icmp ne i32 %call6, 0
  %lnot8 = xor i1 %tobool7, true
  br i1 %lnot8, label %for.body.9, label %for.end.16

for.body.9:                                       ; preds = %for.cond.5
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call10 to %struct.CLAUSE_HELP*
  store %struct.CLAUSE_HELP* %9, %struct.CLAUSE_HELP** %actclause, align 8
  %10 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actclause, align 8
  %11 = load %struct.st*, %struct.st** %stindex, align 8
  call void @res_DeleteClauseIndex(%struct.CLAUSE_HELP* %10, %struct.st* %11)
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actclause, align 8
  %13 = load %struct.st*, %struct.st** %stindex, align 8
  %call11 = call i32 @res_BackSubWithLength(%struct.CLAUSE_HELP* %12, %struct.st* %13)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.9
  %14 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actclause, align 8
  %15 = load %struct.st*, %struct.st** %stindex, align 8
  call void @res_InsertClauseIndex(%struct.CLAUSE_HELP* %14, %struct.st* %15)
  %16 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %actclause, align 8
  %17 = bitcast %struct.CLAUSE_HELP* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call13 = call %struct.LIST_HELP* @list_Cons(i8* %17, %struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.9
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  store %struct.LIST_HELP* %call15, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.5

for.end.16:                                       ; preds = %for.cond.5
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call17 = call i32 @list_Length(%struct.LIST_HELP* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  %call18 = call i32 @list_Length(%struct.LIST_HELP* %21)
  %cmp = icmp ne i32 %call17, %call18
  br i1 %cmp, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %for.end.16
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %if.then.19
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br i1 %lnot23, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.20
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %call26 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %24, i8* %call25)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %clauselist.addr, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call28 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call28, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.end.29:                                       ; preds = %for.cond.20
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.33, label %if.then.32

if.then.32:                                       ; preds = %for.end.29
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %28)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %for.end.29
  br label %if.end.34

if.else:                                          ; preds = %for.end.16
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %clauselist.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %29)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else, %if.end.33
  %30 = load %struct.st*, %struct.st** %stindex, align 8
  call void @st_IndexDelete(%struct.st* %30)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %31
}

declare %struct.CLAUSE_HELP* @res_SelectLightestClause(%struct.LIST_HELP*) #2

declare i32 @res_HasTautology(%struct.CLAUSE_HELP*) #2

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneAndPredicate(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %predlist = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.term*
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %call4 = call i32 @fol_Or()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool6 = icmp ne i32 %call5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %4 = phi i1 [ true, %for.cond ], [ %tobool6, %lor.rhs ]
  %lnot = xor i1 %4, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call7 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call8 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.46, label %if.then

if.then:                                          ; preds = %for.end
  %call10 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %predlist, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.26, %if.then
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool13 = icmp ne i32 %call12, 0
  %lnot14 = xor i1 %tobool13, true
  br i1 %lnot14, label %for.body.15, label %for.end.28

for.body.15:                                      ; preds = %for.cond.11
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %9)
  %10 = bitcast i8* %call16 to %struct.term*
  %call17 = call i32 @term_TopSymbol(%struct.term* %10)
  %call18 = call i32 @symbol_IsPredicate(i32 %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.15
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %11)
  %12 = bitcast i8* %call20 to %struct.term*
  %call21 = call i32 @fol_IsNegativeLiteral(%struct.term* %12)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %land.lhs.true
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %call25 = call %struct.LIST_HELP* @list_Cons(i8* %call24, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %predlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.23, %land.lhs.true, %for.body.15
  br label %for.inc.26

for.inc.26:                                       ; preds = %if.end
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.11

for.end.28:                                       ; preds = %for.cond.11
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  store %struct.LIST_HELP* %16, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.end.28
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool31 = icmp ne i32 %call30, 0
  %lnot32 = xor i1 %tobool31, true
  br i1 %lnot32, label %for.body.33, label %for.end.39

for.body.33:                                      ; preds = %for.cond.29
  %18 = load %struct.term*, %struct.term** %term.addr, align 8
  %19 = load %struct.term*, %struct.term** %term.addr, align 8
  %call34 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %call36 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call34, i8* %call35)
  call void @term_RplacArgumentList(%struct.term* %18, %struct.LIST_HELP* %call36)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.33
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %call40 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %for.end.39
  %23 = load %struct.term*, %struct.term** %term.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %25 = load %struct.term*, %struct.term** %term.addr, align 8
  %call43 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %25)
  %call44 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %24, %struct.LIST_HELP* %call43)
  call void @term_RplacArgumentList(%struct.term* %23, %struct.LIST_HELP* %call44)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %for.end.39
  br label %if.end.46

if.end.46:                                        ; preds = %if.end.45, %for.end
  %26 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %26
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneAnd(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %argterm = alloca %struct.term*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_And()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %4, %struct.term** %argterm, align 8
  %5 = load %struct.term*, %struct.term** %argterm, align 8
  %call7 = call %struct.term* @cnf_MakeOneAnd(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %argterm, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %6)
  %call9 = call i32 @fol_And()
  %call10 = call i32 @symbol_Equal(i32 %call8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  %8 = load %struct.term*, %struct.term** %term.addr, align 8
  %9 = load %struct.term*, %struct.term** %argterm, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %term.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %argterm, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %call16 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call15, i8* %12)
  %call17 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call14, %struct.LIST_HELP* %call16)
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %call17)
  %13 = load %struct.term*, %struct.term** %argterm, align 8
  call void @term_Free(%struct.term* %13)
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.32

if.else.19:                                       ; preds = %entry
  %15 = load %struct.term*, %struct.term** %term.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %15)
  %call21 = call i32 @symbol_IsPredicate(i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %if.else.19
  %16 = load %struct.term*, %struct.term** %term.addr, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call28 to %struct.term*
  %call29 = call %struct.term* @cnf_MakeOneAnd(%struct.term* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.else.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %while.end
  %21 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %21
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneOrPredicate(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %predlist = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %0)
  %call1 = call i32 @cnf_TopIsAnd(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.51

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %term.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call5 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call5 to %struct.term*
  %call6 = call i32 @term_TopSymbol(%struct.term* %4)
  %call7 = call i32 @fol_And()
  %call8 = call i32 @symbol_Equal(i32 %call6, i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.cond
  %5 = phi i1 [ true, %for.cond ], [ %tobool9, %lor.rhs ]
  %lnot = xor i1 %5, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.50, label %if.then.13

if.then.13:                                       ; preds = %for.end
  %call14 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %predlist, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.30, %if.then.13
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool17 = icmp ne i32 %call16, 0
  %lnot18 = xor i1 %tobool17, true
  br i1 %lnot18, label %for.body.19, label %for.end.32

for.body.19:                                      ; preds = %for.cond.15
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call20 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call20 to %struct.term*
  %call21 = call i32 @term_TopSymbol(%struct.term* %11)
  %call22 = call i32 @symbol_IsPredicate(i32 %call21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.19
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call24 to %struct.term*
  %call25 = call i32 @fol_IsNegativeLiteral(%struct.term* %13)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false, %for.body.19
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %14)
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %call29 = call %struct.LIST_HELP* @list_Cons(i8* %call28, %struct.LIST_HELP* %15)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %predlist, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %lor.lhs.false
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call31 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.15

for.end.32:                                       ; preds = %for.cond.15
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.41, %for.end.32
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool35 = icmp ne i32 %call34, 0
  %lnot36 = xor i1 %tobool35, true
  br i1 %lnot36, label %for.body.37, label %for.end.43

for.body.37:                                      ; preds = %for.cond.33
  %19 = load %struct.term*, %struct.term** %term.addr, align 8
  %20 = load %struct.term*, %struct.term** %term.addr, align 8
  %call38 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call39 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %call40 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call38, i8* %call39)
  call void @term_RplacArgumentList(%struct.term* %19, %struct.LIST_HELP* %call40)
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.body.37
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.33

for.end.43:                                       ; preds = %for.cond.33
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %call44 = call i32 @list_Empty(%struct.LIST_HELP* %23)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %if.end.49, label %if.then.46

if.then.46:                                       ; preds = %for.end.43
  %24 = load %struct.term*, %struct.term** %term.addr, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %predlist, align 8
  %26 = load %struct.term*, %struct.term** %term.addr, align 8
  %call47 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %26)
  %call48 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %25, %struct.LIST_HELP* %call47)
  call void @term_RplacArgumentList(%struct.term* %24, %struct.LIST_HELP* %call48)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.46, %for.end.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %for.end
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %entry
  %27 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %27
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeOneOr(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %argterm = alloca %struct.term*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @fol_Or()
  %call2 = call i32 @symbol_Equal(i32 %call, i32 %call1)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %1)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %scan, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool5 = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool5, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call6 to %struct.term*
  store %struct.term* %4, %struct.term** %argterm, align 8
  %5 = load %struct.term*, %struct.term** %argterm, align 8
  %call7 = call %struct.term* @cnf_MakeOneOr(%struct.term* %5)
  %6 = load %struct.term*, %struct.term** %argterm, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %6)
  %call9 = call i32 @fol_Or()
  %call10 = call i32 @symbol_Equal(i32 %call8, i32 %call9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %while.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  %8 = load %struct.term*, %struct.term** %term.addr, align 8
  %9 = load %struct.term*, %struct.term** %argterm, align 8
  %call14 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  %10 = load %struct.term*, %struct.term** %term.addr, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  %11 = load %struct.term*, %struct.term** %argterm, align 8
  %12 = bitcast %struct.term* %11 to i8*
  %call16 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call15, i8* %12)
  %call17 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call14, %struct.LIST_HELP* %call16)
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %call17)
  %13 = load %struct.term*, %struct.term** %argterm, align 8
  call void @term_Free(%struct.term* %13)
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.32

if.else.19:                                       ; preds = %entry
  %15 = load %struct.term*, %struct.term** %term.addr, align 8
  %call20 = call i32 @term_TopSymbol(%struct.term* %15)
  %call21 = call i32 @symbol_IsPredicate(i32 %call20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.31, label %if.then.23

if.then.23:                                       ; preds = %if.else.19
  %16 = load %struct.term*, %struct.term** %term.addr, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.23
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i32 @list_Empty(%struct.LIST_HELP* %17)
  %tobool26 = icmp ne i32 %call25, 0
  %lnot27 = xor i1 %tobool26, true
  br i1 %lnot27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call28 to %struct.term*
  %call29 = call %struct.term* @cnf_MakeOneOr(%struct.term* %19)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call30 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call30, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %if.else.19
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %while.end
  %21 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %21
}

; Function Attrs: nounwind uwtable
define internal i32 @cnf_TopIsAnd(%struct.LIST_HELP* %termlist) #0 {
entry:
  %retval = alloca i32, align 4
  %termlist.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %termlist, %struct.LIST_HELP** %termlist.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %termlist.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.term*
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  %call3 = call i32 @fol_And()
  %cmp = icmp eq i32 %call2, %call3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call4 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %4)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare %struct.st* @st_IndexCreate() #2

declare void @res_InsertClauseIndex(%struct.CLAUSE_HELP*, %struct.st*) #2

declare void @res_DeleteClauseIndex(%struct.CLAUSE_HELP*, %struct.st*) #2

declare i32 @res_BackSubWithLength(%struct.CLAUSE_HELP*, %struct.st*) #2

declare void @st_IndexDelete(%struct.st*) #2

declare void @symbol_Delete(i32) #2

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

declare %struct.SHARED_INDEX_NODE* @sharing_IndexCreate() #2

; Function Attrs: nounwind uwtable
define internal i32 @cnf_GetFormulaPolarity(%struct.term* %term, %struct.term* %subterm) #0 {
entry:
  %retval = alloca i32, align 4
  %term.addr = alloca %struct.term*, align 8
  %subterm.addr = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %term1 = alloca %struct.term*, align 8
  %polterm1 = alloca i32, align 4
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.term* %subterm, %struct.term** %subterm.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  call void @vec_Push(i8* inttoptr (i64 1 to i8*))
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call1 = call i8* @vec_PopResult()
  %2 = bitcast i8* %call1 to %struct.term*
  store %struct.term* %2, %struct.term** %term1, align 8
  %call2 = call i8* @vec_PopResult()
  %3 = ptrtoint i8* %call2 to i32
  store i32 %3, i32* %polterm1, align 4
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %5 = load %struct.term*, %struct.term** %subterm.addr, align 8
  %cmp = icmp eq %struct.term* %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %6 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %6)
  %7 = load i32, i32* %polterm1, align 4
  store i32 %7, i32* %retval
  br label %return

if.else:                                          ; preds = %do.body
  %8 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %8)
  %call4 = call i32 @fol_Not()
  %call5 = call i32 @symbol_Equal(i32 %call3, i32 %call4)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.else
  %9 = load i32, i32* %polterm1, align 4
  %sub = sub nsw i32 0, %9
  %conv = sext i32 %sub to i64
  %10 = inttoptr i64 %conv to i8*
  call void @vec_Push(i8* %10)
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %call7)
  call void @vec_Push(i8* %call8)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.else
  br label %if.end.9

if.end.9:                                         ; preds = %if.end
  %12 = load %struct.term*, %struct.term** %term1, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %12)
  %call11 = call i32 @fol_Exist()
  %call12 = call i32 @symbol_Equal(i32 %call10, i32 %call11)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.9
  %13 = load %struct.term*, %struct.term** %term1, align 8
  %call14 = call i32 @term_TopSymbol(%struct.term* %13)
  %call15 = call i32 @fol_All()
  %call16 = call i32 @symbol_Equal(i32 %call14, i32 %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else.22

if.then.18:                                       ; preds = %lor.lhs.false, %if.end.9
  %14 = load i32, i32* %polterm1, align 4
  %conv19 = sext i32 %14 to i64
  %15 = inttoptr i64 %conv19 to i8*
  call void @vec_Push(i8* %15)
  %16 = load %struct.term*, %struct.term** %term1, align 8
  %call20 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  %call21 = call i8* @list_Second(%struct.LIST_HELP* %call20)
  call void @vec_Push(i8* %call21)
  br label %if.end.65

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct.term*, %struct.term** %term1, align 8
  %call23 = call i32 @term_TopSymbol(%struct.term* %17)
  %call24 = call i32 @fol_Implies()
  %call25 = call i32 @symbol_Equal(i32 %call23, i32 %call24)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.else.35

if.then.27:                                       ; preds = %if.else.22
  %18 = load i32, i32* %polterm1, align 4
  %sub28 = sub nsw i32 0, %18
  %conv29 = sext i32 %sub28 to i64
  %19 = inttoptr i64 %conv29 to i8*
  call void @vec_Push(i8* %19)
  %20 = load %struct.term*, %struct.term** %term1, align 8
  %call30 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %call30)
  call void @vec_Push(i8* %call31)
  %21 = load i32, i32* %polterm1, align 4
  %conv32 = sext i32 %21 to i64
  %22 = inttoptr i64 %conv32 to i8*
  call void @vec_Push(i8* %22)
  %23 = load %struct.term*, %struct.term** %term1, align 8
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %23)
  %call34 = call i8* @list_Second(%struct.LIST_HELP* %call33)
  call void @vec_Push(i8* %call34)
  br label %if.end.64

if.else.35:                                       ; preds = %if.else.22
  %24 = load %struct.term*, %struct.term** %term1, align 8
  %call36 = call i32 @term_TopSymbol(%struct.term* %24)
  %call37 = call i32 @fol_Equiv()
  %call38 = call i32 @symbol_Equal(i32 %call36, i32 %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.45

if.then.40:                                       ; preds = %if.else.35
  call void @vec_Push(i8* null)
  %25 = load %struct.term*, %struct.term** %term1, align 8
  %call41 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %25)
  %call42 = call i8* @list_Car(%struct.LIST_HELP* %call41)
  call void @vec_Push(i8* %call42)
  call void @vec_Push(i8* null)
  %26 = load %struct.term*, %struct.term** %term1, align 8
  %call43 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %26)
  %call44 = call i8* @list_Second(%struct.LIST_HELP* %call43)
  call void @vec_Push(i8* %call44)
  br label %if.end.63

if.else.45:                                       ; preds = %if.else.35
  %27 = load %struct.term*, %struct.term** %term1, align 8
  %call46 = call i32 @term_TopSymbol(%struct.term* %27)
  %call47 = call i32 @fol_And()
  %call48 = call i32 @symbol_Equal(i32 %call46, i32 %call47)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %if.else.45
  %28 = load %struct.term*, %struct.term** %term1, align 8
  %call51 = call i32 @term_TopSymbol(%struct.term* %28)
  %call52 = call i32 @fol_Or()
  %call53 = call i32 @symbol_Equal(i32 %call51, i32 %call52)
  %tobool54 = icmp ne i32 %call53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.62

if.then.55:                                       ; preds = %lor.lhs.false.50, %if.else.45
  %29 = load %struct.term*, %struct.term** %term1, align 8
  %call56 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %29)
  store %struct.LIST_HELP* %call56, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.55
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %30)
  %tobool58 = icmp ne i32 %call57, 0
  %lnot = xor i1 %tobool58, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %polterm1, align 4
  %conv59 = sext i32 %31 to i64
  %32 = inttoptr i64 %conv59 to i8*
  call void @vec_Push(i8* %32)
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %33)
  call void @vec_Push(i8* %call60)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call61 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %34)
  store %struct.LIST_HELP* %call61, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.62

if.end.62:                                        ; preds = %for.end, %lor.lhs.false.50
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.40
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.27
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.18
  br label %do.cond

do.cond:                                          ; preds = %if.end.65
  %35 = load i32, i32* %bottom, align 4
  %call66 = call i32 @vec_ActMax()
  %cmp67 = icmp ne i32 %35, %call66
  br i1 %cmp67, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %36 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call69 = call i32 @fflush(%struct._IO_FILE* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i32 0, i32 0), i32 176)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call71 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %39)
  call void @misc_DumpCore()
  store i32 -2, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

declare %struct.LIST_HELP* @list_NIntersect(%struct.LIST_HELP*, %struct.LIST_HELP*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal void @cnf_DistrQuantorNoVarSub(%struct.term* %Term) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Subformulas = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Rest = alloca %struct.LIST_HELP*, align 8
  %Subterm = alloca %struct.term*, align 8
  %Var = alloca %struct.term*, align 8
  %NewForm = alloca %struct.term*, align 8
  %Subtop = alloca i32, align 4
  %Top = alloca i32, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %1)
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Variables, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call3, %struct.term** %Subterm, align 8
  %3 = load %struct.term*, %struct.term** %Subterm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call4, i32* %Subtop, align 4
  %4 = load %struct.term*, %struct.term** %Subterm, align 8
  %5 = load i32, i32* %Subtop, align 4
  %call5 = call %struct.term* @cnf_Flatten(%struct.term* %4, i32 %5)
  store %struct.term* %call5, %struct.term** %Subterm, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.53, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.55

for.body:                                         ; preds = %for.cond
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Subformulas, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %9, %struct.term** %Var, align 8
  %10 = load %struct.term*, %struct.term** %Subterm, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %12 = load %struct.term*, %struct.term** %Var, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @fol_VarOccursFreely(%struct.term* %12, %struct.term* %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.14
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %call18, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Subformulas, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.52, label %if.then.23

if.then.23:                                       ; preds = %for.end
  %19 = load %struct.term*, %struct.term** %Subterm, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call25 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %call24, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Rest, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %if.then.23
  %22 = load i32, i32* %Top, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call30 to %struct.term*
  %call31 = call i32 @term_TopSymbol(%struct.term* %24)
  %call32 = call i32 @symbol_Equal(i32 %22, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.29
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call35 to %struct.term*
  store %struct.term* %26, %struct.term** %NewForm, align 8
  %27 = load %struct.term*, %struct.term** %NewForm, align 8
  %call36 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %Var, align 8
  %29 = bitcast %struct.term* %28 to i8*
  %30 = load %struct.term*, %struct.term** %NewForm, align 8
  %call37 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %30)
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %29, %struct.LIST_HELP* %call37)
  call void @term_RplacArgumentList(%struct.term* %call36, %struct.LIST_HELP* %call38)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  br label %if.end.41

if.else:                                          ; preds = %if.then.29
  %32 = load i32, i32* %Top, align 4
  %33 = load %struct.term*, %struct.term** %Var, align 8
  %34 = bitcast %struct.term* %33 to i8*
  %call39 = call %struct.LIST_HELP* @list_List(i8* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call40 = call %struct.term* @fol_CreateQuantifier(i32 %32, %struct.LIST_HELP* %call39, %struct.LIST_HELP* %35)
  store %struct.term* %call40, %struct.term** %NewForm, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.34
  br label %if.end.47

if.else.42:                                       ; preds = %if.then.23
  %36 = load i32, i32* %Top, align 4
  %37 = load %struct.term*, %struct.term** %Var, align 8
  %38 = bitcast %struct.term* %37 to i8*
  %call43 = call %struct.LIST_HELP* @list_List(i8* %38)
  %39 = load i32, i32* %Subtop, align 4
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call44 = call %struct.term* @term_Create(i32 %39, %struct.LIST_HELP* %40)
  %41 = bitcast %struct.term* %call44 to i8*
  %call45 = call %struct.LIST_HELP* @list_List(i8* %41)
  %call46 = call %struct.term* @fol_CreateQuantifier(i32 %36, %struct.LIST_HELP* %call43, %struct.LIST_HELP* %call45)
  store %struct.term* %call46, %struct.term** %NewForm, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.42, %if.end.41
  %42 = load %struct.term*, %struct.term** %Subterm, align 8
  %43 = load %struct.term*, %struct.term** %NewForm, align 8
  %44 = bitcast %struct.term* %43 to i8*
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call48 = call %struct.LIST_HELP* @list_Cons(i8* %44, %struct.LIST_HELP* %45)
  call void @term_RplacArgumentList(%struct.term* %42, %struct.LIST_HELP* %call48)
  %46 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call49 = call %struct.term* @term_FirstArgument(%struct.term* %46)
  %47 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call50 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %47)
  %48 = load %struct.term*, %struct.term** %Var, align 8
  %49 = bitcast %struct.term* %48 to i8*
  %call51 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call50, i8* %49)
  call void @term_RplacArgumentList(%struct.term* %call49, %struct.LIST_HELP* %call51)
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.47, %for.end
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call54 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %50)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.55:                                       ; preds = %for.cond
  %51 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call56 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %51)
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %call56)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.end.63

if.then.59:                                       ; preds = %for.end.55
  %52 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call60 = call %struct.term* @term_FirstArgument(%struct.term* %52)
  call void @term_Free(%struct.term* %call60)
  %53 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call61 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %53)
  call void @list_Delete(%struct.LIST_HELP* %call61)
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  %55 = load i32, i32* %Subtop, align 4
  call void @term_RplacTop(%struct.term* %54, i32 %55)
  %56 = load %struct.term*, %struct.term** %Term.addr, align 8
  %57 = load %struct.term*, %struct.term** %Subterm, align 8
  %call62 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %57)
  call void @term_RplacArgumentList(%struct.term* %56, %struct.LIST_HELP* %call62)
  %58 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %58)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.59, %for.end.55
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  call void @list_Delete(%struct.LIST_HELP* %59)
  ret void
}

declare i32 @symbol_CreateSkolemFunction(i32, i32*) #2

declare void @fol_ReplaceVariable(%struct.term*, i32, %struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @hsh_Index(i8* %Key) #1 {
entry:
  %Key.addr = alloca i8*, align 8
  store i8* %Key, i8** %Key.addr, align 8
  %0 = load i8*, i8** %Key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  %rem = urem i64 %1, 29
  ret i64 %rem
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fol_IsLiteral(%struct.term* %T) #1 {
entry:
  %T.addr = alloca %struct.term*, align 8
  store %struct.term* %T, %struct.term** %T.addr, align 8
  %0 = load %struct.term*, %struct.term** %T.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  %call1 = call i32 @symbol_IsPredicate(i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.term*, %struct.term** %T.addr, align 8
  %call2 = call i32 @term_TopSymbol(%struct.term* %1)
  %call3 = call i32 @fol_Not()
  %call4 = call i32 @symbol_Equal(i32 %call2, i32 %call3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %2 = load %struct.term*, %struct.term** %T.addr, align 8
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %2)
  %call7 = call i32 @term_TopSymbol(%struct.term* %call6)
  %call8 = call i32 @symbol_IsPredicate(i32 %call7)
  %tobool9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %3 = phi i1 [ false, %lor.rhs ], [ %tobool9, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %4 = phi i1 [ true, %entry ], [ %3, %land.end ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %topterm, i8* %toplabel, i32 %TopAnd, %struct.term* %term, %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP** %Symblist, i32 %Result1, %struct.LIST_HELP** %InputClauseToTermLabellist, i32 %Depth) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %topterm.addr = alloca %struct.term*, align 8
  %toplabel.addr = alloca i8*, align 8
  %TopAnd.addr = alloca i32, align 4
  %term.addr = alloca %struct.term*, align 8
  %UsedTerms.addr = alloca %struct.LIST_HELP**, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %Result1.addr = alloca i32, align 4
  %InputClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %Depth.addr = alloca i32, align 4
  %termL2 = alloca %struct.term*, align 8
  %provedterm = alloca %struct.term*, align 8
  %freevariables = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %varlist = alloca %struct.LIST_HELP*, align 8
  %top = alloca i32, align 4
  %result2 = alloca i32, align 4
  %optimized = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %variables = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %topterm, %struct.term** %topterm.addr, align 8
  store i8* %toplabel, i8** %toplabel.addr, align 8
  store i32 %TopAnd, i32* %TopAnd.addr, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  store i32 %Result1, i32* %Result1.addr, align 4
  store %struct.LIST_HELP** %InputClauseToTermLabellist, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  store i32 %Depth, i32* %Depth.addr, align 4
  store i32 0, i32* %result2, align 4
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %freevariables, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call1, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call2 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call2, i32** %Precedence, align 8
  %2 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %2)
  store i32 %call3, i32* %top, align 4
  %3 = load i32, i32* %top, align 4
  %call4 = call i32 @fol_IsQuantifier(i32 %3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else.87

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %top, align 4
  %call5 = call i32 @fol_All()
  %call6 = call i32 @symbol_Equal(i32 %4, i32 %call5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.19

if.then.8:                                        ; preds = %if.then
  %5 = load i32*, i32** %Flags, align 8
  %call9 = call i32 @flag_GetFlagValue(i32* %5, i32 54)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then.8
  %6 = load %struct.term*, %struct.term** %term.addr, align 8
  %call12 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call12)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %variables, align 8
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %variables, align 8
  store %struct.LIST_HELP* %7, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %8)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %Depth.addr, align 4
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call16 to %struct.term*
  %call17 = call i32 @term_TopSymbol(%struct.term* %11)
  %idxprom = sext i32 %call17 to i64
  %12 = load i32*, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %idxprom
  store i32 %9, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %Depth.addr, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %Depth.addr, align 4
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then.8
  %15 = load %struct.term*, %struct.term** %term.addr, align 8
  call void @cnf_PopAllQuantifier(%struct.term* %15)
  %16 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %17 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %18 = load i8*, i8** %toplabel.addr, align 8
  %19 = load i32, i32* %TopAnd.addr, align 4
  %20 = load %struct.term*, %struct.term** %term.addr, align 8
  %21 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %22 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %23 = load i32, i32* %Result1.addr, align 4
  %24 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %25 = load i32, i32* %Depth.addr, align 4
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %16, %struct.term* %17, i8* %18, i32 %19, %struct.term* %20, %struct.LIST_HELP** %21, %struct.LIST_HELP** %22, i32 %23, %struct.LIST_HELP** %24, i32 %25)
  br label %return

if.end.19:                                        ; preds = %if.then
  %26 = load %struct.term*, %struct.term** %term.addr, align 8
  %call20 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %26)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %freevariables, align 8
  store i32 0, i32* %optimized, align 4
  %27 = load %struct.term*, %struct.term** %term.addr, align 8
  %call21 = call %struct.term* @term_SecondArgument(%struct.term* %27)
  %call22 = call i32 @term_TopSymbol(%struct.term* %call21)
  %call23 = call i32 @fol_And()
  %call24 = call i32 @symbol_Equal(i32 %call22, i32 %call23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then.26, label %if.else.82

if.then.26:                                       ; preds = %if.end.19
  %28 = load i32*, i32** %Flags, align 8
  %call27 = call i32 @flag_GetFlagValue(i32* %28, i32 53)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.74

if.then.29:                                       ; preds = %if.then.26
  %29 = load %struct.term*, %struct.term** %term.addr, align 8
  %call30 = call %struct.term* @term_SecondArgument(%struct.term* %29)
  %call31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call30)
  store %struct.LIST_HELP* %call31, %struct.LIST_HELP** %scan, align 8
  %30 = load %struct.term*, %struct.term** %term.addr, align 8
  %call32 = call %struct.term* @term_FirstArgument(%struct.term* %30)
  %call33 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call32)
  store %struct.LIST_HELP* %call33, %struct.LIST_HELP** %varlist, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.73, %if.then.29
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call i32 @list_Empty(%struct.LIST_HELP* %31)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %32 = load i32, i32* %optimized, align 4
  %tobool36 = icmp ne i32 %32, 0
  %lnot37 = xor i1 %tobool36, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %33 = phi i1 [ false, %while.cond ], [ %lnot37, %land.rhs ]
  br i1 %33, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %34 = load i32, i32* %Result1.addr, align 4
  %tobool38 = icmp ne i32 %34, 0
  br i1 %tobool38, label %if.end.51, label %if.then.39

if.then.39:                                       ; preds = %while.body
  %35 = load i32, i32* %TopAnd.addr, align 4
  %tobool40 = icmp ne i32 %35, 0
  br i1 %tobool40, label %if.then.41, label %if.else

if.then.41:                                       ; preds = %if.then.39
  %36 = load i32*, i32** %Flags, align 8
  %call42 = call i32 @flag_GetFlagValue(i32* %36, i32 33)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.then.41
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call45 = call i32 @fputs(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %37)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.44, %if.then.41
  store i32 1, i32* %result2, align 4
  br label %if.end.50

if.else:                                          ; preds = %if.then.39
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call47 to %struct.term*
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevariables, align 8
  %call48 = call %struct.term* @cnf_QuantifyAndNegate(%struct.term* %39, %struct.LIST_HELP* %40, %struct.LIST_HELP* %41)
  store %struct.term* %call48, %struct.term** %termL2, align 8
  %42 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %43 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %44 = load i8*, i8** %toplabel.addr, align 8
  %45 = load %struct.term*, %struct.term** %termL2, align 8
  %46 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %47 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %48 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %call49 = call i32 @cnf_HaveProofOptSkolem(%struct.PROOFSEARCH_HELP* %42, %struct.term* %43, i8* %44, %struct.term* %45, %struct.LIST_HELP** %46, %struct.LIST_HELP** %47, %struct.LIST_HELP** %48)
  store i32 %call49, i32* %result2, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.end.46
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %while.body
  %49 = load i32, i32* %Result1.addr, align 4
  %tobool52 = icmp ne i32 %49, 0
  br i1 %tobool52, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.51
  %50 = load i32, i32* %result2, align 4
  %tobool53 = icmp ne i32 %50, 0
  br i1 %tobool53, label %if.then.54, label %if.else.71

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.51
  store i32 1, i32* %optimized, align 4
  %51 = load i32*, i32** %Flags, align 8
  %call55 = call i32 @flag_GetFlagValue(i32* %51, i32 33)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %if.then.54
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call58 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %52)
  %53 = load %struct.term*, %struct.term** %topterm.addr, align 8
  call void @term_Print(%struct.term* %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call59 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %54)
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call60 = call i8* @list_Car(%struct.LIST_HELP* %55)
  %56 = bitcast i8* %call60 to %struct.term*
  call void @term_Print(%struct.term* %56)
  %call61 = call i32 @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.57, %if.then.54
  %57 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %58 = load %struct.term*, %struct.term** %term.addr, align 8
  %59 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call63 = call i8* @list_Car(%struct.LIST_HELP* %59)
  %60 = bitcast i8* %call63 to %struct.term*
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevariables, align 8
  %63 = load i32*, i32** %Precedence, align 8
  %call64 = call %struct.term* @cnf_MoveProvedTermToTopLevel(%struct.term* %57, %struct.term* %58, %struct.term* %60, %struct.LIST_HELP* %61, %struct.LIST_HELP* %62, i32* %63)
  store %struct.term* %call64, %struct.term** %provedterm, align 8
  %64 = load i32*, i32** %Flags, align 8
  %call65 = call i32 @flag_GetFlagValue(i32* %64, i32 33)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.then.67, label %if.end.70

if.then.67:                                       ; preds = %if.end.62
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call68 = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), %struct._IO_FILE* %65)
  %66 = load %struct.term*, %struct.term** %topterm.addr, align 8
  call void @term_Print(%struct.term* %66)
  %call69 = call i32 @putchar(i32 10)
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.67, %if.end.62
  %67 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %68 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %69 = load i8*, i8** %toplabel.addr, align 8
  %70 = load %struct.term*, %struct.term** %provedterm, align 8
  %71 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %72 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %73 = load i32, i32* %Result1.addr, align 4
  %74 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %75 = load i32, i32* %Depth.addr, align 4
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %67, %struct.term* %68, i8* %69, i32 1, %struct.term* %70, %struct.LIST_HELP** %71, %struct.LIST_HELP** %72, i32 %73, %struct.LIST_HELP** %74, i32 %75)
  br label %if.end.73

if.else.71:                                       ; preds = %lor.lhs.false
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call72 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call72, %struct.LIST_HELP** %scan, align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.end.70
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %if.end.74

if.end.74:                                        ; preds = %while.end, %if.then.26
  %77 = load i32, i32* %optimized, align 4
  %tobool75 = icmp ne i32 %77, 0
  br i1 %tobool75, label %if.end.81, label %if.then.76

if.then.76:                                       ; preds = %if.end.74
  %78 = load i32*, i32** %Flags, align 8
  %call77 = call i32 @flag_GetFlagValue(i32* %78, i32 54)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %if.then.76
  store i32 1, i32* %optimized, align 4
  %79 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %80 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %81 = load i8*, i8** %toplabel.addr, align 8
  %82 = load i32, i32* %TopAnd.addr, align 4
  %83 = load %struct.term*, %struct.term** %term.addr, align 8
  %84 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %85 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %86 = load i32, i32* %Result1.addr, align 4
  %87 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %88 = load i32, i32* %Depth.addr, align 4
  call void @cnf_StrongSkolemization(%struct.PROOFSEARCH_HELP* %79, %struct.term* %80, i8* %81, i32 %82, %struct.term* %83, %struct.LIST_HELP** %84, %struct.LIST_HELP** %85, i32 %86, %struct.LIST_HELP** %87, i32 %88)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.79, %if.then.76
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.end.74
  br label %if.end.83

if.else.82:                                       ; preds = %if.end.19
  store i32 0, i32* %TopAnd.addr, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.end.81
  %89 = load i32, i32* %optimized, align 4
  %tobool84 = icmp ne i32 %89, 0
  br i1 %tobool84, label %if.end.86, label %if.then.85

if.then.85:                                       ; preds = %if.end.83
  %90 = load %struct.term*, %struct.term** %term.addr, align 8
  %91 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevariables, align 8
  %92 = load i32*, i32** %Precedence, align 8
  call void @cnf_Skolemize(%struct.term* %90, %struct.LIST_HELP* %91, i32* %92)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.83
  %93 = load %struct.LIST_HELP*, %struct.LIST_HELP** %freevariables, align 8
  call void @list_Delete(%struct.LIST_HELP* %93)
  %94 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %95 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %96 = load i8*, i8** %toplabel.addr, align 8
  %97 = load i32, i32* %TopAnd.addr, align 4
  %98 = load %struct.term*, %struct.term** %term.addr, align 8
  %99 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %100 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %101 = load i32, i32* %Result1.addr, align 4
  %102 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %103 = load i32, i32* %Depth.addr, align 4
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %94, %struct.term* %95, i8* %96, i32 %97, %struct.term* %98, %struct.LIST_HELP** %99, %struct.LIST_HELP** %100, i32 %101, %struct.LIST_HELP** %102, i32 %103)
  br label %return

if.else.87:                                       ; preds = %entry
  %104 = load i32, i32* %top, align 4
  %call88 = call i32 @fol_And()
  %call89 = call i32 @symbol_Equal(i32 %104, i32 %call88)
  %tobool90 = icmp ne i32 %call89, 0
  br i1 %tobool90, label %if.then.95, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %if.else.87
  %105 = load i32, i32* %top, align 4
  %call92 = call i32 @fol_Or()
  %call93 = call i32 @symbol_Equal(i32 %105, i32 %call92)
  %tobool94 = icmp ne i32 %call93, 0
  br i1 %tobool94, label %if.then.95, label %if.end.111

if.then.95:                                       ; preds = %lor.lhs.false.91, %if.else.87
  %106 = load i32, i32* %top, align 4
  %call96 = call i32 @fol_Or()
  %call97 = call i32 @symbol_Equal(i32 %106, i32 %call96)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.95
  store i32 0, i32* %TopAnd.addr, align 4
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.99, %if.then.95
  %107 = load %struct.term*, %struct.term** %term.addr, align 8
  %call101 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %107)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.102

for.cond.102:                                     ; preds = %for.inc.108, %if.end.100
  %108 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call103 = call i32 @list_Empty(%struct.LIST_HELP* %108)
  %tobool104 = icmp ne i32 %call103, 0
  %lnot105 = xor i1 %tobool104, true
  br i1 %lnot105, label %for.body.106, label %for.end.110

for.body.106:                                     ; preds = %for.cond.102
  %109 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %110 = load %struct.term*, %struct.term** %topterm.addr, align 8
  %111 = load i8*, i8** %toplabel.addr, align 8
  %112 = load i32, i32* %TopAnd.addr, align 4
  %113 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call107 = call i8* @list_Car(%struct.LIST_HELP* %113)
  %114 = bitcast i8* %call107 to %struct.term*
  %115 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %116 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %117 = load i32, i32* %Result1.addr, align 4
  %118 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %119 = load i32, i32* %Depth.addr, align 4
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %109, %struct.term* %110, i8* %111, i32 %112, %struct.term* %114, %struct.LIST_HELP** %115, %struct.LIST_HELP** %116, i32 %117, %struct.LIST_HELP** %118, i32 %119)
  br label %for.inc.108

for.inc.108:                                      ; preds = %for.body.106
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call109 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %120)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.102

for.end.110:                                      ; preds = %for.cond.102
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %lor.lhs.false.91
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111
  br label %return

return:                                           ; preds = %if.end.112, %if.end.86, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cnf_PopAllQuantifier(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %SubTerm = alloca %struct.term*, align 8
  %VarList = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.term* @term_FirstArgument(%struct.term* %0)
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %VarList, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarList, align 8
  call void @term_DeleteTermList(%struct.LIST_HELP* %1)
  %2 = load %struct.term*, %struct.term** %term.addr, align 8
  %call2 = call %struct.term* @term_FirstArgument(%struct.term* %2)
  call void @term_Free(%struct.term* %call2)
  %3 = load %struct.term*, %struct.term** %term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %3)
  store %struct.term* %call3, %struct.term** %SubTerm, align 8
  %4 = load %struct.term*, %struct.term** %term.addr, align 8
  %call4 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %4)
  call void @list_Delete(%struct.LIST_HELP* %call4)
  %5 = load %struct.term*, %struct.term** %term.addr, align 8
  %6 = load %struct.term*, %struct.term** %SubTerm, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %6)
  call void @term_RplacTop(%struct.term* %5, i32 %call5)
  %7 = load %struct.term*, %struct.term** %term.addr, align 8
  %8 = load %struct.term*, %struct.term** %SubTerm, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %8)
  call void @term_RplacArgumentList(%struct.term* %7, %struct.LIST_HELP* %call6)
  %9 = load %struct.term*, %struct.term** %SubTerm, align 8
  call void @term_Free(%struct.term* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_QuantifyAndNegate(%struct.term* %term, %struct.LIST_HELP* %VarList, %struct.LIST_HELP* %FreeList) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %VarList.addr = alloca %struct.LIST_HELP*, align 8
  %FreeList.addr = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.term*, align 8
  %TermCopy = alloca %struct.term*, align 8
  %VarListCopy = alloca %struct.LIST_HELP*, align 8
  %FreeListCopy = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.LIST_HELP* %VarList, %struct.LIST_HELP** %VarList.addr, align 8
  store %struct.LIST_HELP* %FreeList, %struct.LIST_HELP** %FreeList.addr, align 8
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %call = call %struct.term* @term_Copy(%struct.term* %0)
  store %struct.term* %call, %struct.term** %TermCopy, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarList.addr, align 8
  %call1 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %1)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %VarListCopy, align 8
  %call2 = call i32 @fol_Exist()
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarListCopy, align 8
  %3 = load %struct.term*, %struct.term** %TermCopy, align 8
  %4 = bitcast %struct.term* %3 to i8*
  %call3 = call %struct.LIST_HELP* @list_List(i8* %4)
  %call4 = call %struct.term* @fol_CreateQuantifier(i32 %call2, %struct.LIST_HELP* %2, %struct.LIST_HELP* %call3)
  store %struct.term* %call4, %struct.term** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %FreeListCopy, align 8
  %5 = load %struct.term*, %struct.term** %Result, align 8
  %call6 = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %FreeList.addr, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %call7 = call i32 @list_Empty(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %call8 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %7)
  store %struct.LIST_HELP* %call8, %struct.LIST_HELP** %FreeListCopy, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  call void @list_Delete(%struct.LIST_HELP* %8)
  %call9 = call i32 @fol_All()
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeListCopy, align 8
  %10 = load %struct.term*, %struct.term** %Result, align 8
  %11 = bitcast %struct.term* %10 to i8*
  %call10 = call %struct.LIST_HELP* @list_List(i8* %11)
  %call11 = call %struct.term* @fol_CreateQuantifier(i32 %call9, %struct.LIST_HELP* %9, %struct.LIST_HELP* %call10)
  store %struct.term* %call11, %struct.term** %Result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call12 = call i32 @fol_Not()
  %12 = load %struct.term*, %struct.term** %Result, align 8
  %13 = bitcast %struct.term* %12 to i8*
  %call13 = call %struct.LIST_HELP* @list_List(i8* %13)
  %call14 = call %struct.term* @term_Create(i32 %call12, %struct.LIST_HELP* %call13)
  store %struct.term* %call14, %struct.term** %Result, align 8
  %14 = load %struct.term*, %struct.term** %Result, align 8
  ret %struct.term* %14
}

; Function Attrs: nounwind uwtable
define internal i32 @cnf_HaveProofOptSkolem(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %topterm, i8* %toplabel, %struct.term* %term2, %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP** %Symblist, %struct.LIST_HELP** %InputClauseToTermLabellist) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %topterm.addr = alloca %struct.term*, align 8
  %toplabel.addr = alloca i8*, align 8
  %term2.addr = alloca %struct.term*, align 8
  %UsedTerms.addr = alloca %struct.LIST_HELP**, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %InputClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %ConClauses = alloca %struct.LIST_HELP*, align 8
  %EmptyClauses = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %found = alloca i32, align 4
  %Usables = alloca %struct.LIST_HELP*, align 8
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %topterm, %struct.term** %topterm.addr, align 8
  store i8* %toplabel, i8** %toplabel.addr, align 8
  store %struct.term* %term2, %struct.term** %term2.addr, align 8
  store %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  store %struct.LIST_HELP** %InputClauseToTermLabellist, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %ConClauses, align 8
  store i32 0, i32* %found, align 4
  %2 = load %struct.term*, %struct.term** %term2.addr, align 8
  call void @term_AddFatherLinks(%struct.term* %2)
  %3 = load %struct.term*, %struct.term** %term2.addr, align 8
  %4 = load i32*, i32** %Precedence, align 8
  %5 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %call3 = call %struct.term* @cnf_Cnf(%struct.term* %3, i32* %4, %struct.LIST_HELP** %5)
  store %struct.term* %call3, %struct.term** %term2.addr, align 8
  %6 = load %struct.term*, %struct.term** %term2.addr, align 8
  %7 = load i32*, i32** %Flags, align 8
  %8 = load i32*, i32** %Precedence, align 8
  %call4 = call %struct.LIST_HELP* @cnf_MakeClauseList(%struct.term* %6, i32 0, i32 0, i32* %7, i32* %8)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Usables, align 8
  %9 = load %struct.term*, %struct.term** %term2.addr, align 8
  call void @term_Delete(%struct.term* %9)
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Usables, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call6 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call6 to %struct.CLAUSE_HELP*
  call void @clause_SetFlag(%struct.CLAUSE_HELP* %13, i32 8)
  %14 = load i32*, i32** %Flags, align 8
  %call7 = call i32 @flag_GetFlagValue(i32* %14, i32 9)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %16)
  %17 = load i8*, i8** %toplabel.addr, align 8
  call void @hsh_Put(%struct.LIST_HELP** %15, i8* %call9, i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Usables, align 8
  %call11 = call %struct.LIST_HELP* @cnf_SatUnit(%struct.PROOFSEARCH_HELP* %19, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %EmptyClauses, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call12 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.end.23, label %if.then.14

if.then.14:                                       ; preds = %for.end
  store i32 1, i32* %found, align 4
  %22 = load i32*, i32** %Flags, align 8
  %call15 = call i32 @flag_GetFlagValue(i32* %22, i32 9)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.21

if.then.17:                                       ; preds = %if.then.14
  %23 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %23, align 8
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call18 to %struct.CLAUSE_HELP*
  %27 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %28 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %call19 = call %struct.LIST_HELP* @cnf_GetUsedTerms(%struct.CLAUSE_HELP* %26, %struct.PROOFSEARCH_HELP* %27, %struct.LIST_HELP** %28)
  %call20 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %24, %struct.LIST_HELP* %call19)
  %29 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %29, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.17, %if.then.14
  %30 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  %call22 = call %struct.LIST_HELP* @list_PointerDeleteDuplicates(%struct.LIST_HELP* %30)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %EmptyClauses, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %EmptyClauses, align 8
  call void @clause_DeleteClauseList(%struct.LIST_HELP* %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.21, %for.end
  %32 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call24 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %32)
  %call25 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call24)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %ConClauses, align 8
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConClauses, align 8
  store %struct.LIST_HELP* %33, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.37, %if.end.23
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %34)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %for.body.30, label %for.end.39

for.body.30:                                      ; preds = %for.cond.26
  %35 = load i32*, i32** %Flags, align 8
  %call31 = call i32 @flag_GetFlagValue(i32* %35, i32 9)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.else

if.then.33:                                       ; preds = %for.body.30
  %36 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %37)
  %38 = bitcast i8* %call34 to %struct.CLAUSE_HELP*
  call void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP* %36, %struct.CLAUSE_HELP* %38)
  br label %if.end.36

if.else:                                          ; preds = %for.body.30
  %39 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %40)
  %41 = bitcast i8* %call35 to %struct.CLAUSE_HELP*
  call void @prfs_DeleteUsable(%struct.PROOFSEARCH_HELP* %39, %struct.CLAUSE_HELP* %41)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.33
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end.36
  %42 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call38 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %42)
  store %struct.LIST_HELP* %call38, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.26

for.end.39:                                       ; preds = %for.cond.26
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %ConClauses, align 8
  call void @list_Delete(%struct.LIST_HELP* %43)
  %44 = load i32, i32* %found, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MoveProvedTermToTopLevel(%struct.term* %Term, %struct.term* %Term1, %struct.term* %Proved, %struct.LIST_HELP* %VarList, %struct.LIST_HELP* %FreeList, i32* %Precedence) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Term1.addr = alloca %struct.term*, align 8
  %Proved.addr = alloca %struct.term*, align 8
  %VarList.addr = alloca %struct.LIST_HELP*, align 8
  %FreeList.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %termR = alloca %struct.term*, align 8
  %skolemfunction = alloca %struct.term*, align 8
  %varsymb = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %termRL = alloca %struct.term*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %Term1, %struct.term** %Term1.addr, align 8
  store %struct.term* %Proved, %struct.term** %Proved.addr, align 8
  store %struct.LIST_HELP* %VarList, %struct.LIST_HELP** %VarList.addr, align 8
  store %struct.LIST_HELP* %FreeList, %struct.LIST_HELP** %FreeList.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call = call %struct.term* @term_SecondArgument(%struct.term* %0)
  store %struct.term* %call, %struct.term** %termR, align 8
  %1 = load %struct.term*, %struct.term** %termR, align 8
  %2 = load %struct.term*, %struct.term** %termR, align 8
  %call1 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %2)
  %3 = load %struct.term*, %struct.term** %Proved.addr, align 8
  %4 = bitcast %struct.term* %3 to i8*
  %call2 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call1, i8* %4)
  call void @term_RplacArgumentList(%struct.term* %1, %struct.LIST_HELP* %call2)
  %5 = load %struct.term*, %struct.term** %termR, align 8
  %call3 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %5)
  %call4 = call i32 @list_Length(%struct.LIST_HELP* %call3)
  %cmp = icmp ult i32 %call4, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.term*, %struct.term** %termR, align 8
  %call5 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  store %struct.term* %call5, %struct.term** %termRL, align 8
  %7 = load %struct.term*, %struct.term** %termR, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  %8 = load %struct.term*, %struct.term** %termR, align 8
  %9 = load %struct.term*, %struct.term** %termRL, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %9)
  call void @term_RplacTop(%struct.term* %8, i32 %call7)
  %10 = load %struct.term*, %struct.term** %termR, align 8
  %11 = load %struct.term*, %struct.term** %termRL, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  call void @term_RplacArgumentList(%struct.term* %10, %struct.LIST_HELP* %call8)
  %12 = load %struct.term*, %struct.term** %termRL, align 8
  call void @term_Free(%struct.term* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %VarList.addr, align 8
  store %struct.LIST_HELP* %13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call9 = call %struct.LIST_HELP* @list_Nil()
  %cmp10 = icmp ne %struct.LIST_HELP* %14, %call9
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call11 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call11 to %struct.term*
  %call12 = call i32 @term_TopSymbol(%struct.term* %16)
  store i32 %call12, i32* %varsymb, align 4
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %18 = load i32*, i32** %Precedence.addr, align 8
  %call13 = call %struct.term* @cnf_MakeSkolemFunction(%struct.LIST_HELP* %17, i32* %18)
  store %struct.term* %call13, %struct.term** %skolemfunction, align 8
  %19 = load %struct.term*, %struct.term** %termR, align 8
  %20 = load i32, i32* %varsymb, align 4
  %21 = load %struct.term*, %struct.term** %skolemfunction, align 8
  call void @cnf_RplacVarsymbFunction(%struct.term* %19, i32 %20, %struct.term* %21)
  %22 = load %struct.term*, %struct.term** %Proved.addr, align 8
  %23 = load i32, i32* %varsymb, align 4
  %24 = load %struct.term*, %struct.term** %skolemfunction, align 8
  call void @cnf_RplacVarsymbFunction(%struct.term* %22, i32 %23, %struct.term* %24)
  %25 = load %struct.term*, %struct.term** %skolemfunction, align 8
  call void @term_Delete(%struct.term* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %26)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %27)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.end.26, label %if.then.16

if.then.16:                                       ; preds = %for.end
  %call17 = call i32 @fol_All()
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %call18 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %28)
  %29 = load %struct.term*, %struct.term** %Proved.addr, align 8
  %30 = bitcast %struct.term* %29 to i8*
  %call19 = call %struct.LIST_HELP* @list_List(i8* %30)
  %call20 = call %struct.term* @fol_CreateQuantifier(i32 %call17, %struct.LIST_HELP* %call18, %struct.LIST_HELP* %call19)
  store %struct.term* %call20, %struct.term** %Proved.addr, align 8
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %call21 = call i32 @list_Length(%struct.LIST_HELP* %31)
  %cmp22 = icmp ugt i32 %call21, 1
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.then.16
  %32 = load %struct.term*, %struct.term** %Proved.addr, align 8
  %call24 = call %struct.term* @cnf_QuantMakeOneVar(%struct.term* %32)
  store %struct.term* %call24, %struct.term** %Proved.addr, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.end
  %33 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call27 = call %struct.term* @term_FirstArgument(%struct.term* %33)
  call void @term_Delete(%struct.term* %call27)
  %34 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %call28 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %34)
  call void @list_Delete(%struct.LIST_HELP* %call28)
  %35 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %36 = load %struct.term*, %struct.term** %termR, align 8
  %call29 = call i32 @term_TopSymbol(%struct.term* %36)
  call void @term_RplacTop(%struct.term* %35, i32 %call29)
  %37 = load %struct.term*, %struct.term** %Term1.addr, align 8
  %38 = load %struct.term*, %struct.term** %termR, align 8
  %call30 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %38)
  call void @term_RplacArgumentList(%struct.term* %37, %struct.LIST_HELP* %call30)
  %39 = load %struct.term*, %struct.term** %termR, align 8
  call void @term_Free(%struct.term* %39)
  %40 = load %struct.term*, %struct.term** %Term.addr, align 8
  %41 = load %struct.term*, %struct.term** %Proved.addr, align 8
  %42 = bitcast %struct.term* %41 to i8*
  %43 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call31 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %43)
  %call32 = call %struct.LIST_HELP* @list_Cons(i8* %42, %struct.LIST_HELP* %call31)
  call void @term_RplacArgumentList(%struct.term* %40, %struct.LIST_HELP* %call32)
  %44 = load %struct.term*, %struct.term** %Proved.addr, align 8
  ret %struct.term* %44
}

declare i32 @putchar(i32) #2

; Function Attrs: nounwind uwtable
define internal void @cnf_StrongSkolemization(%struct.PROOFSEARCH_HELP* %Search, %struct.term* %Topterm, i8* %Toplabel, i32 %TopAnd, %struct.term* %Term, %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP** %Symblist, i32 %Result1, %struct.LIST_HELP** %InputClauseToTermLabellist, i32 %Depth) #0 {
entry:
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %Topterm.addr = alloca %struct.term*, align 8
  %Toplabel.addr = alloca i8*, align 8
  %TopAnd.addr = alloca i32, align 4
  %Term.addr = alloca %struct.term*, align 8
  %UsedTerms.addr = alloca %struct.LIST_HELP**, align 8
  %Symblist.addr = alloca %struct.LIST_HELP**, align 8
  %Result1.addr = alloca i32, align 4
  %InputClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %Depth.addr = alloca i32, align 4
  %exlist = alloca %struct.LIST_HELP*, align 8
  %pairlist = alloca %struct.LIST_HELP*, align 8
  %allfreevariables = alloca %struct.LIST_HELP*, align 8
  %newvariables = alloca %struct.LIST_HELP*, align 8
  %mapping = alloca %struct.LIST_HELP*, align 8
  %numberofallfreevariables = alloca i32, align 4
  %acc_length = alloca i32, align 4
  %i = alloca i32, align 4
  %pair = alloca %struct.LIST_HELP*, align 8
  %pairscan = alloca %struct.LIST_HELP*, align 8
  %pairscan_pred = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %accumulatedvariables = alloca %struct.LIST_HELP*, align 8
  %subterm = alloca %struct.term*, align 8
  %w = alloca %struct.term*, align 8
  %strskolemsuccess = alloca i32, align 4
  %Flags = alloca i32*, align 8
  %Precedence = alloca i32*, align 8
  %pairlength = alloca i32, align 4
  %currentlength = alloca i32, align 4
  %skolem = alloca i32, align 4
  %allist = alloca %struct.LIST_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.term* %Topterm, %struct.term** %Topterm.addr, align 8
  store i8* %Toplabel, i8** %Toplabel.addr, align 8
  store i32 %TopAnd, i32* %TopAnd.addr, align 4
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP** %UsedTerms, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  store %struct.LIST_HELP** %Symblist, %struct.LIST_HELP*** %Symblist.addr, align 8
  store i32 %Result1, i32* %Result1.addr, align 4
  store %struct.LIST_HELP** %InputClauseToTermLabellist, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  store i32 %Depth, i32* %Depth.addr, align 4
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call = call i32* @prfs_Store(%struct.PROOFSEARCH_HELP* %0)
  store i32* %call, i32** %Flags, align 8
  %1 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call1 = call i32* @prfs_Precedence(%struct.PROOFSEARCH_HELP* %1)
  store i32* %call1, i32** %Precedence, align 8
  %2 = load i32*, i32** %Flags, align 8
  %call2 = call i32 @flag_GetFlagValue(i32* %2, i32 54)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.term*, %struct.term** %Topterm.addr, align 8
  %call3 = call i32 @term_MaxVar(%struct.term* %3)
  call void @symbol_SetStandardVarCounter(i32 %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %4)
  %call5 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call4)
  %call6 = call %struct.LIST_HELP* @cnf_GetSymbolList(%struct.LIST_HELP* %call5)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %exlist, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call7 = call %struct.term* @term_FirstArgument(%struct.term* %5)
  call void @term_Delete(%struct.term* %call7)
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call8 = call %struct.term* @term_SecondArgument(%struct.term* %6)
  store %struct.term* %call8, %struct.term** %subterm, align 8
  %7 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  call void @list_Delete(%struct.LIST_HELP* %call9)
  %8 = load %struct.term*, %struct.term** %Term.addr, align 8
  %9 = load %struct.term*, %struct.term** %subterm, align 8
  %call10 = call i32 @term_TopSymbol(%struct.term* %9)
  call void @term_RplacTop(%struct.term* %8, i32 %call10)
  %10 = load %struct.term*, %struct.term** %Term.addr, align 8
  %11 = load %struct.term*, %struct.term** %subterm, align 8
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  call void @term_RplacArgumentList(%struct.term* %10, %struct.LIST_HELP* %call11)
  %12 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Free(%struct.term* %12)
  %call12 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %pairlist, align 8
  %13 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %13)
  store %struct.LIST_HELP* %call13, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %14)
  %tobool15 = icmp ne i32 %call14, 0
  %lnot = xor i1 %tobool15, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = bitcast i8* %call16 to %struct.term*
  %17 = bitcast %struct.term* %16 to i8*
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %18)
  %19 = bitcast i8* %call17 to %struct.term*
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  %call18 = call %struct.LIST_HELP* @cnf_FreeVariablesBut(%struct.term* %19, %struct.LIST_HELP* %20)
  %21 = bitcast %struct.LIST_HELP* %call18 to i8*
  %call19 = call %struct.LIST_HELP* @list_PairCreate(i8* %17, i8* %21)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %pair, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairlist, align 8
  %call20 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool21 = icmp ne i32 %call20, 0
  br i1 %tobool21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %for.body
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %24 = bitcast %struct.LIST_HELP* %23 to i8*
  %call23 = call %struct.LIST_HELP* @list_List(i8* %24)
  store %struct.LIST_HELP* %call23, %struct.LIST_HELP** %pairlist, align 8
  br label %if.end.65

if.else:                                          ; preds = %for.body
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call24 = call i8* @list_PairSecond(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call24 to %struct.LIST_HELP*
  %call25 = call i32 @list_Length(%struct.LIST_HELP* %26)
  store i32 %call25, i32* %pairlength, align 4
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairlist, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %pairscan, align 8
  %call26 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %pairscan_pred, align 8
  store i32 0, i32* %currentlength, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.49, %if.else
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %28)
  %tobool28 = icmp ne i32 %call27, 0
  %lnot29 = xor i1 %tobool28, true
  br i1 %lnot29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call30 to %struct.LIST_HELP*
  %call31 = call i8* @list_PairSecond(%struct.LIST_HELP* %30)
  %31 = bitcast i8* %call31 to %struct.LIST_HELP*
  %call32 = call i32 @list_Length(%struct.LIST_HELP* %31)
  store i32 %call32, i32* %currentlength, align 4
  %32 = load i32, i32* %currentlength, align 4
  %33 = load i32, i32* %pairlength, align 4
  %cmp = icmp slt i32 %32, %33
  br i1 %cmp, label %if.then.33, label %if.else.35

if.then.33:                                       ; preds = %while.body
  %34 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  store %struct.LIST_HELP* %34, %struct.LIST_HELP** %pairscan_pred, align 8
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %35)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %pairscan, align 8
  br label %if.end.49

if.else.35:                                       ; preds = %while.body
  %36 = load i32, i32* %currentlength, align 4
  %37 = load i32, i32* %pairlength, align 4
  %cmp36 = icmp eq i32 %36, %37
  br i1 %cmp36, label %if.then.37, label %if.else.47

if.then.37:                                       ; preds = %if.else.35
  %38 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call38 = call i8* @list_Car(%struct.LIST_HELP* %38)
  %39 = bitcast i8* %call38 to %struct.LIST_HELP*
  %call39 = call i8* @list_PairSecond(%struct.LIST_HELP* %39)
  %40 = bitcast i8* %call39 to %struct.LIST_HELP*
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %call40 = call i8* @list_PairSecond(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call40 to %struct.LIST_HELP*
  %call41 = call i32 @cnf_HasDeeperVariable(%struct.LIST_HELP* %40, %struct.LIST_HELP* %42)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.45

if.then.43:                                       ; preds = %if.then.37
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  store %struct.LIST_HELP* %43, %struct.LIST_HELP** %pairscan_pred, align 8
  %44 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call44 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %44)
  store %struct.LIST_HELP* %call44, %struct.LIST_HELP** %pairscan, align 8
  br label %if.end.46

if.else.45:                                       ; preds = %if.then.37
  br label %while.end

if.end.46:                                        ; preds = %if.then.43
  br label %if.end.48

if.else.47:                                       ; preds = %if.else.35
  br label %while.end

if.end.48:                                        ; preds = %if.end.46
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.then.33
  br label %while.cond

while.end:                                        ; preds = %if.else.47, %if.else.45, %while.cond
  %45 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call50 = call i32 @list_Empty(%struct.LIST_HELP* %45)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %while.end
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan_pred, align 8
  %47 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %48 = bitcast %struct.LIST_HELP* %47 to i8*
  %call53 = call %struct.LIST_HELP* @list_List(i8* %48)
  call void @list_Rplacd(%struct.LIST_HELP* %46, %struct.LIST_HELP* %call53)
  br label %if.end.64

if.else.54:                                       ; preds = %while.end
  %49 = load i32, i32* %currentlength, align 4
  %50 = load i32, i32* %pairlength, align 4
  %cmp55 = icmp sge i32 %49, %50
  br i1 %cmp55, label %if.then.56, label %if.end.63

if.then.56:                                       ; preds = %if.else.54
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan_pred, align 8
  %call57 = call i32 @list_Empty(%struct.LIST_HELP* %51)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.then.59, label %if.else.61

if.then.59:                                       ; preds = %if.then.56
  %52 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %53 = bitcast %struct.LIST_HELP* %52 to i8*
  %54 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairlist, align 8
  %call60 = call %struct.LIST_HELP* @list_Cons(i8* %53, %struct.LIST_HELP* %54)
  store %struct.LIST_HELP* %call60, %struct.LIST_HELP** %pairlist, align 8
  br label %if.end.62

if.else.61:                                       ; preds = %if.then.56
  %55 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan_pred, align 8
  %56 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pair, align 8
  %57 = bitcast %struct.LIST_HELP* %56 to i8*
  call void @list_InsertNext(%struct.LIST_HELP* %55, i8* %57)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.61, %if.then.59
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.else.54
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.52
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64, %if.then.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.65
  %58 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call66 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %58)
  store %struct.LIST_HELP* %call66, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %60 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  %call67 = call %struct.LIST_HELP* @cnf_FreeVariablesBut(%struct.term* %59, %struct.LIST_HELP* %60)
  store %struct.LIST_HELP* %call67, %struct.LIST_HELP** %allfreevariables, align 8
  %61 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allfreevariables, align 8
  %call68 = call i32 @list_Length(%struct.LIST_HELP* %61)
  store i32 %call68, i32* %numberofallfreevariables, align 4
  %call69 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call69, %struct.LIST_HELP** %mapping, align 8
  %62 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  store %struct.LIST_HELP* %62, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.81, %for.end
  %63 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call71 = call i32 @list_Empty(%struct.LIST_HELP* %63)
  %tobool72 = icmp ne i32 %call71, 0
  %lnot73 = xor i1 %tobool72, true
  br i1 %lnot73, label %for.body.74, label %for.end.83

for.body.74:                                      ; preds = %for.cond.70
  %64 = load i32, i32* %numberofallfreevariables, align 4
  %65 = load i32*, i32** %Precedence, align 8
  %call75 = call i32 @symbol_CreateSkolemFunction(i32 %64, i32* %65)
  store i32 %call75, i32* %skolem, align 4
  %66 = load i32, i32* %skolem, align 4
  %conv = sext i32 %66 to i64
  %67 = inttoptr i64 %conv to i8*
  %68 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %69 = load %struct.LIST_HELP*, %struct.LIST_HELP** %68, align 8
  %call76 = call %struct.LIST_HELP* @list_Cons(i8* %67, %struct.LIST_HELP* %69)
  %70 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %70, align 8
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call77 = call i8* @list_Car(%struct.LIST_HELP* %71)
  %72 = load i32, i32* %skolem, align 4
  %conv78 = sext i32 %72 to i64
  %73 = inttoptr i64 %conv78 to i8*
  %call79 = call %struct.LIST_HELP* @list_PairCreate(i8* %call77, i8* %73)
  %74 = bitcast %struct.LIST_HELP* %call79 to i8*
  %75 = load %struct.LIST_HELP*, %struct.LIST_HELP** %mapping, align 8
  %call80 = call %struct.LIST_HELP* @list_Cons(i8* %74, %struct.LIST_HELP* %75)
  store %struct.LIST_HELP* %call80, %struct.LIST_HELP** %mapping, align 8
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.74
  %76 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call82 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %76)
  store %struct.LIST_HELP* %call82, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.70

for.end.83:                                       ; preds = %for.cond.70
  %77 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allfreevariables, align 8
  call void @list_Delete(%struct.LIST_HELP* %77)
  %call84 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call84, %struct.LIST_HELP** %newvariables, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.91, %for.end.83
  %78 = load i32, i32* %i, align 4
  %79 = load i32, i32* %numberofallfreevariables, align 4
  %cmp86 = icmp slt i32 %78, %79
  br i1 %cmp86, label %for.body.88, label %for.end.92

for.body.88:                                      ; preds = %for.cond.85
  %call89 = call %struct.term* @term_CreateStandardVariable()
  store %struct.term* %call89, %struct.term** %w, align 8
  %80 = load %struct.term*, %struct.term** %w, align 8
  %81 = bitcast %struct.term* %80 to i8*
  %82 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call90 = call %struct.LIST_HELP* @list_Cons(i8* %81, %struct.LIST_HELP* %82)
  store %struct.LIST_HELP* %call90, %struct.LIST_HELP** %newvariables, align 8
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.body.88
  %83 = load i32, i32* %i, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.85

for.end.92:                                       ; preds = %for.cond.85
  %call93 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call93, %struct.LIST_HELP** %accumulatedvariables, align 8
  store i32 0, i32* %acc_length, align 4
  store i32 0, i32* %strskolemsuccess, align 4
  %84 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairlist, align 8
  store %struct.LIST_HELP* %84, %struct.LIST_HELP** %pairscan, align 8
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.125, %for.end.92
  %85 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call95 = call i32 @list_Empty(%struct.LIST_HELP* %85)
  %tobool96 = icmp ne i32 %call95, 0
  %lnot97 = xor i1 %tobool96, true
  br i1 %lnot97, label %for.body.98, label %for.end.127

for.body.98:                                      ; preds = %for.cond.94
  %86 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  %87 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call99 = call i8* @list_Car(%struct.LIST_HELP* %87)
  %88 = bitcast i8* %call99 to %struct.LIST_HELP*
  %call100 = call i8* @list_PairSecond(%struct.LIST_HELP* %88)
  %89 = bitcast i8* %call100 to %struct.LIST_HELP*
  %call101 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %86, %struct.LIST_HELP* %89)
  store %struct.LIST_HELP* %call101, %struct.LIST_HELP** %accumulatedvariables, align 8
  %90 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  %call102 = call %struct.LIST_HELP* @term_DeleteDuplicatesFromList(%struct.LIST_HELP* %90)
  store %struct.LIST_HELP* %call102, %struct.LIST_HELP** %accumulatedvariables, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.103

for.cond.103:                                     ; preds = %for.inc.110, %for.body.98
  %91 = load i32, i32* %i, align 4
  %92 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  %call104 = call i32 @list_Length(%struct.LIST_HELP* %92)
  %93 = load i32, i32* %acc_length, align 4
  %sub = sub i32 %call104, %93
  %cmp105 = icmp ult i32 %91, %sub
  br i1 %cmp105, label %for.body.107, label %for.end.112

for.body.107:                                     ; preds = %for.cond.103
  %94 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call108 = call i8* @list_Top(%struct.LIST_HELP* %94)
  %95 = bitcast i8* %call108 to %struct.term*
  call void @term_Delete(%struct.term* %95)
  %96 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call109 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %96)
  store %struct.LIST_HELP* %call109, %struct.LIST_HELP** %newvariables, align 8
  br label %for.inc.110

for.inc.110:                                      ; preds = %for.body.107
  %97 = load i32, i32* %i, align 4
  %inc111 = add nsw i32 %97, 1
  store i32 %inc111, i32* %i, align 4
  br label %for.cond.103

for.end.112:                                      ; preds = %for.cond.103
  %98 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  %call113 = call i32 @list_Length(%struct.LIST_HELP* %98)
  store i32 %call113, i32* %acc_length, align 4
  %99 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call114 = call i32 @list_Empty(%struct.LIST_HELP* %99)
  %tobool115 = icmp ne i32 %call114, 0
  br i1 %tobool115, label %if.end.117, label %if.then.116

if.then.116:                                      ; preds = %for.end.112
  store i32 1, i32* %strskolemsuccess, align 4
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.116, %for.end.112
  %100 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  %call118 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %100)
  %101 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call119 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %101)
  %call120 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %call118, %struct.LIST_HELP* %call119)
  store %struct.LIST_HELP* %call120, %struct.LIST_HELP** %allist, align 8
  %102 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call121 = call i8* @list_Car(%struct.LIST_HELP* %102)
  %103 = bitcast i8* %call121 to %struct.LIST_HELP*
  %call122 = call i8* @list_PairFirst(%struct.LIST_HELP* %103)
  %104 = bitcast i8* %call122 to %struct.term*
  %105 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allist, align 8
  %106 = load %struct.LIST_HELP*, %struct.LIST_HELP** %mapping, align 8
  call void @cnf_SkolemFunctionFormulaMapped(%struct.term* %104, %struct.LIST_HELP* %105, %struct.LIST_HELP* %106)
  %107 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allist, align 8
  call void @list_Delete(%struct.LIST_HELP* %107)
  %108 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %109 = load %struct.term*, %struct.term** %Topterm.addr, align 8
  %110 = load i8*, i8** %Toplabel.addr, align 8
  %111 = load i32, i32* %TopAnd.addr, align 4
  %112 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call123 = call i8* @list_Car(%struct.LIST_HELP* %112)
  %113 = bitcast i8* %call123 to %struct.LIST_HELP*
  %call124 = call i8* @list_PairFirst(%struct.LIST_HELP* %113)
  %114 = bitcast i8* %call124 to %struct.term*
  %115 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %UsedTerms.addr, align 8
  %116 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %Symblist.addr, align 8
  %117 = load i32, i32* %Result1.addr, align 4
  %118 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %119 = load i32, i32* %Depth.addr, align 4
  call void @cnf_OptimizedSkolemFormula(%struct.PROOFSEARCH_HELP* %108, %struct.term* %109, i8* %110, i32 %111, %struct.term* %114, %struct.LIST_HELP** %115, %struct.LIST_HELP** %116, i32 %117, %struct.LIST_HELP** %118, i32 %119)
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.117
  %120 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairscan, align 8
  %call126 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %120)
  store %struct.LIST_HELP* %call126, %struct.LIST_HELP** %pairscan, align 8
  br label %for.cond.94

for.end.127:                                      ; preds = %for.cond.94
  br label %while.cond.128

while.cond.128:                                   ; preds = %while.body.132, %for.end.127
  %121 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call129 = call i32 @list_Empty(%struct.LIST_HELP* %121)
  %tobool130 = icmp ne i32 %call129, 0
  %lnot131 = xor i1 %tobool130, true
  br i1 %lnot131, label %while.body.132, label %while.end.135

while.body.132:                                   ; preds = %while.cond.128
  %122 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call133 = call i8* @list_Top(%struct.LIST_HELP* %122)
  %123 = bitcast i8* %call133 to %struct.term*
  call void @term_Delete(%struct.term* %123)
  %124 = load %struct.LIST_HELP*, %struct.LIST_HELP** %newvariables, align 8
  %call134 = call %struct.LIST_HELP* @list_Pop(%struct.LIST_HELP* %124)
  store %struct.LIST_HELP* %call134, %struct.LIST_HELP** %newvariables, align 8
  br label %while.cond.128

while.end.135:                                    ; preds = %while.cond.128
  %125 = load %struct.LIST_HELP*, %struct.LIST_HELP** %accumulatedvariables, align 8
  call void @list_Delete(%struct.LIST_HELP* %125)
  %126 = load %struct.LIST_HELP*, %struct.LIST_HELP** %pairlist, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %126)
  %127 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %127)
  %128 = load %struct.LIST_HELP*, %struct.LIST_HELP** %mapping, align 8
  call void @list_DeletePairList(%struct.LIST_HELP* %128)
  %129 = load i32*, i32** %Flags, align 8
  %call136 = call i32 @flag_GetFlagValue(i32* %129, i32 34)
  %tobool137 = icmp ne i32 %call136, 0
  br i1 %tobool137, label %land.lhs.true, label %if.end.141

land.lhs.true:                                    ; preds = %while.end.135
  %130 = load i32, i32* %strskolemsuccess, align 4
  %tobool138 = icmp ne i32 %130, 0
  br i1 %tobool138, label %if.then.139, label %if.end.141

if.then.139:                                      ; preds = %land.lhs.true
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call140 = call i32 @fputs(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), %struct._IO_FILE* %131)
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.139, %land.lhs.true, %while.end.135
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @cnf_Skolemize(%struct.term* %Term, %struct.LIST_HELP* %FreeList, i32* %Precedence) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %FreeList.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %exlist = alloca %struct.LIST_HELP*, align 8
  %subterm = alloca %struct.term*, align 8
  %symblist = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %FreeList, %struct.LIST_HELP** %FreeList.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %symblist, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.term* @term_FirstArgument(%struct.term* %0)
  %call2 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call1)
  %call3 = call %struct.LIST_HELP* @cnf_GetSymbolList(%struct.LIST_HELP* %call2)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %exlist, align 8
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call %struct.term* @term_FirstArgument(%struct.term* %1)
  call void @term_Delete(%struct.term* %call4)
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call5 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call5, %struct.term** %subterm, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %3)
  call void @list_Delete(%struct.LIST_HELP* %call6)
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %5 = load %struct.term*, %struct.term** %subterm, align 8
  %call7 = call i32 @term_TopSymbol(%struct.term* %5)
  call void @term_RplacTop(%struct.term* %4, i32 %call7)
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %7 = load %struct.term*, %struct.term** %subterm, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %7)
  call void @term_RplacArgumentList(%struct.term* %6, %struct.LIST_HELP* %call8)
  %8 = load %struct.term*, %struct.term** %subterm, align 8
  call void @term_Free(%struct.term* %8)
  %9 = load %struct.term*, %struct.term** %Term.addr, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %FreeList.addr, align 8
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  %12 = load i32*, i32** %Precedence.addr, align 8
  %call9 = call %struct.LIST_HELP* @cnf_SkolemFunctionFormula(%struct.term* %9, %struct.LIST_HELP* %10, %struct.LIST_HELP* %11, i32* %12)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %symblist, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %13)
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %symblist, align 8
  call void @list_Delete(%struct.LIST_HELP* %14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_GetUsedTerms(%struct.CLAUSE_HELP* %C, %struct.PROOFSEARCH_HELP* %Search, %struct.LIST_HELP** %InputClauseToTermLabellist) #0 {
entry:
  %retval = alloca %struct.LIST_HELP*, align 8
  %C.addr = alloca %struct.CLAUSE_HELP*, align 8
  %Search.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  %InputClauseToTermLabellist.addr = alloca %struct.LIST_HELP**, align 8
  %UsedTerms = alloca %struct.LIST_HELP*, align 8
  %Used2 = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  %P = alloca %struct.CLAUSE_HELP*, align 8
  %ClauseNumber = alloca i32, align 4
  store %struct.CLAUSE_HELP* %C, %struct.CLAUSE_HELP** %C.addr, align 8
  store %struct.PROOFSEARCH_HELP* %Search, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  store %struct.LIST_HELP** %InputClauseToTermLabellist, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %0 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %1 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %2 = bitcast %struct.CLAUSE_HELP* %1 to i8*
  %call = call %struct.LIST_HELP* @hsh_Get(%struct.LIST_HELP** %0, i8* %2)
  %call1 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call)
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %UsedTerms, align 8
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call2 = call %struct.LIST_HELP* @cnf_DeleteDuplicateLabelsFromList(%struct.LIST_HELP* %3)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %UsedTerms, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %C.addr, align 8
  %call4 = call %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %6)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot = xor i1 %tobool6, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call7 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = ptrtoint i8* %call7 to i32
  store i32 %9, i32* %ClauseNumber, align 4
  %10 = load i32, i32* %ClauseNumber, align 4
  %11 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call8 = call %struct.LIST_HELP* @prfs_WorkedOffClauses(%struct.PROOFSEARCH_HELP* %11)
  %call9 = call %struct.CLAUSE_HELP* @clause_GetNumberedCl(i32 %10, %struct.LIST_HELP* %call8)
  store %struct.CLAUSE_HELP* %call9, %struct.CLAUSE_HELP** %P, align 8
  %12 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %P, align 8
  %cmp = icmp eq %struct.CLAUSE_HELP* %12, null
  br i1 %cmp, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %for.body
  %13 = load i32, i32* %ClauseNumber, align 4
  %14 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call11 = call %struct.LIST_HELP* @prfs_UsableClauses(%struct.PROOFSEARCH_HELP* %14)
  %call12 = call %struct.CLAUSE_HELP* @clause_GetNumberedCl(i32 %13, %struct.LIST_HELP* %call11)
  store %struct.CLAUSE_HELP* %call12, %struct.CLAUSE_HELP** %P, align 8
  %15 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %P, align 8
  %cmp13 = icmp eq %struct.CLAUSE_HELP* %15, null
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.then.10
  %16 = load i32, i32* %ClauseNumber, align 4
  %17 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %call15 = call %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %17)
  %call16 = call %struct.CLAUSE_HELP* @clause_GetNumberedCl(i32 %16, %struct.LIST_HELP* %call15)
  store %struct.CLAUSE_HELP* %call16, %struct.CLAUSE_HELP** %P, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %for.body
  %18 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %P, align 8
  %19 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Search.addr, align 8
  %20 = load %struct.LIST_HELP**, %struct.LIST_HELP*** %InputClauseToTermLabellist.addr, align 8
  %call19 = call %struct.LIST_HELP* @cnf_GetUsedTerms(%struct.CLAUSE_HELP* %18, %struct.PROOFSEARCH_HELP* %19, %struct.LIST_HELP** %20)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Used2, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Used2, align 8
  %call20 = call %struct.LIST_HELP* @list_Nconc(%struct.LIST_HELP* %21, %struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %UsedTerms, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %UsedTerms, align 8
  store %struct.LIST_HELP* %24, %struct.LIST_HELP** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %retval
  ret %struct.LIST_HELP* %25
}

declare void @prfs_MoveUsableDocProof(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

declare void @prfs_DeleteUsable(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @hsh_Get(%struct.LIST_HELP** %H, i8* %Key) #1 {
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
define internal %struct.LIST_HELP* @clause_ParentClauses(%struct.CLAUSE_HELP* %Clause) #1 {
entry:
  %Clause.addr = alloca %struct.CLAUSE_HELP*, align 8
  store %struct.CLAUSE_HELP* %Clause, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %0 = load %struct.CLAUSE_HELP*, %struct.CLAUSE_HELP** %Clause.addr, align 8
  %parentCls = getelementptr inbounds %struct.CLAUSE_HELP, %struct.CLAUSE_HELP* %0, i32 0, i32 6
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %parentCls, align 8
  ret %struct.LIST_HELP* %1
}

declare %struct.CLAUSE_HELP* @clause_GetNumberedCl(i32, %struct.LIST_HELP*) #2

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
define internal %struct.LIST_HELP* @prfs_DocProofClauses(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %dplist = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 12
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %dplist, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_MakeSkolemFunction(%struct.LIST_HELP* %varlist, i32* %Precedence) #0 {
entry:
  %varlist.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %term = alloca %struct.term*, align 8
  %skolem = alloca i32, align 4
  store %struct.LIST_HELP* %varlist, %struct.LIST_HELP** %varlist.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist.addr, align 8
  %call = call i32 @list_Length(%struct.LIST_HELP* %0)
  %1 = load i32*, i32** %Precedence.addr, align 8
  %call1 = call i32 @symbol_CreateSkolemFunction(i32 %call, i32* %1)
  store i32 %call1, i32* %skolem, align 4
  %2 = load i32, i32* %skolem, align 4
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist.addr, align 8
  %call2 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %3)
  %call3 = call %struct.term* @term_Create(i32 %2, %struct.LIST_HELP* %call2)
  store %struct.term* %call3, %struct.term** %term, align 8
  %4 = load %struct.term*, %struct.term** %term, align 8
  ret %struct.term* %4
}

; Function Attrs: nounwind uwtable
define internal void @cnf_RplacVarsymbFunction(%struct.term* %term, i32 %varsymb, %struct.term* %function) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %varsymb.addr = alloca i32, align 4
  %function.addr = alloca %struct.term*, align 8
  %bottom = alloca i32, align 4
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store i32 %varsymb, i32* %varsymb.addr, align 4
  store %struct.term* %function, %struct.term** %function.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %5 = load i32, i32* %varsymb.addr, align 4
  %call4 = call i32 @symbol_Equal(i32 %call3, i32 %5)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load %struct.term*, %struct.term** %term1, align 8
  %7 = load %struct.term*, %struct.term** %function.addr, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %7)
  call void @term_RplacTop(%struct.term* %6, i32 %call5)
  %8 = load %struct.term*, %struct.term** %term1, align 8
  %9 = load %struct.term*, %struct.term** %function.addr, align 8
  %call6 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %9)
  %call7 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %call6)
  call void @term_RplacArgumentList(%struct.term* %8, %struct.LIST_HELP* %call7)
  br label %if.end.17

if.else:                                          ; preds = %while.body
  %10 = load %struct.term*, %struct.term** %term1, align 8
  %call8 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  %call9 = call i32 @list_Empty(%struct.LIST_HELP* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end, label %if.then.11

if.then.11:                                       ; preds = %if.else
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %11)
  store %struct.LIST_HELP* %call12, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.11
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call13 = call i32 @list_Empty(%struct.LIST_HELP* %12)
  %tobool14 = icmp ne i32 %call13, 0
  %lnot = xor i1 %tobool14, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %13)
  call void @vec_Push(i8* %call15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %15)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.term* @cnf_QuantMakeOneVar(%struct.term* %term) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %term1 = alloca %struct.term*, align 8
  %termL = alloca %struct.term*, align 8
  %quantor = alloca i32, align 4
  %scan = alloca %struct.LIST_HELP*, align 8
  %varlist = alloca %struct.LIST_HELP*, align 8
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.term*, %struct.term** %term.addr, align 8
  %1 = bitcast %struct.term* %0 to i8*
  call void @vec_Push(i8* %1)
  br label %while.cond

while.cond:                                       ; preds = %if.end.51, %entry
  %2 = load i32, i32* %bottom, align 4
  %call1 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %2, %call1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i8* @vec_PopResult()
  %3 = bitcast i8* %call2 to %struct.term*
  store %struct.term* %3, %struct.term** %term1, align 8
  %4 = load %struct.term*, %struct.term** %term1, align 8
  %call3 = call i32 @term_TopSymbol(%struct.term* %4)
  %call4 = call i32 @fol_IsQuantifier(i32 %call3)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %while.body
  %5 = load %struct.term*, %struct.term** %term1, align 8
  %call5 = call i32 @term_TopSymbol(%struct.term* %5)
  store i32 %call5, i32* %quantor, align 4
  %6 = load %struct.term*, %struct.term** %term1, align 8
  %call6 = call %struct.term* @term_FirstArgument(%struct.term* %6)
  %call7 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call6)
  %call8 = call i32 @list_Length(%struct.LIST_HELP* %call7)
  %cmp9 = icmp ugt i32 %call8, 1
  br i1 %cmp9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then
  %7 = load %struct.term*, %struct.term** %term1, align 8
  %call11 = call %struct.term* @term_FirstArgument(%struct.term* %7)
  %call12 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call11)
  %call13 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %call12)
  %call14 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call13)
  store %struct.LIST_HELP* %call14, %struct.LIST_HELP** %varlist, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  store %struct.LIST_HELP* %8, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.10
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call15 = call i32 @list_Empty(%struct.LIST_HELP* %9)
  %tobool16 = icmp ne i32 %call15, 0
  %lnot = xor i1 %tobool16, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.term*, %struct.term** %term1, align 8
  %call17 = call %struct.term* @term_SecondArgument(%struct.term* %10)
  store %struct.term* %call17, %struct.term** %termL, align 8
  %11 = load %struct.term*, %struct.term** %term1, align 8
  %12 = load i32, i32* %quantor, align 4
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %call19 = call %struct.LIST_HELP* @list_List(i8* %call18)
  %14 = load %struct.term*, %struct.term** %termL, align 8
  %15 = bitcast %struct.term* %14 to i8*
  %call20 = call %struct.LIST_HELP* @list_List(i8* %15)
  %call21 = call %struct.term* @fol_CreateQuantifier(i32 %12, %struct.LIST_HELP* %call19, %struct.LIST_HELP* %call20)
  call void @term_RplacSecondArgument(%struct.term* %11, %struct.term* %call21)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call22, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  store %struct.LIST_HELP* %17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.33, %for.end
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool25 = icmp ne i32 %call24, 0
  %lnot26 = xor i1 %tobool25, true
  br i1 %lnot26, label %for.body.27, label %for.end.35

for.body.27:                                      ; preds = %for.cond.23
  %19 = load %struct.term*, %struct.term** %term1, align 8
  %call28 = call %struct.term* @term_FirstArgument(%struct.term* %19)
  %20 = load %struct.term*, %struct.term** %term1, align 8
  %call29 = call %struct.term* @term_FirstArgument(%struct.term* %20)
  %call30 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %call29)
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call31 = call i8* @list_Car(%struct.LIST_HELP* %21)
  %call32 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call30, i8* %call31)
  call void @term_RplacArgumentList(%struct.term* %call28, %struct.LIST_HELP* %call32)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.27
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call34 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call34, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.23

for.end.35:                                       ; preds = %for.cond.23
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist, align 8
  call void @list_Delete(%struct.LIST_HELP* %23)
  br label %if.end

if.end:                                           ; preds = %for.end.35, %if.then
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %while.body
  %24 = load %struct.term*, %struct.term** %term1, align 8
  %call37 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %24)
  %call38 = call i32 @list_Empty(%struct.LIST_HELP* %call37)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end.51, label %if.then.40

if.then.40:                                       ; preds = %if.end.36
  %25 = load %struct.term*, %struct.term** %term1, align 8
  %call41 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %25)
  store %struct.LIST_HELP* %call41, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.48, %if.then.40
  %26 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call43 = call i32 @list_Empty(%struct.LIST_HELP* %26)
  %tobool44 = icmp ne i32 %call43, 0
  %lnot45 = xor i1 %tobool44, true
  br i1 %lnot45, label %for.body.46, label %for.end.50

for.body.46:                                      ; preds = %for.cond.42
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call47 = call i8* @list_Car(%struct.LIST_HELP* %27)
  call void @vec_Push(i8* %call47)
  br label %for.inc.48

for.inc.48:                                       ; preds = %for.body.46
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call49 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  store %struct.LIST_HELP* %call49, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.42

for.end.50:                                       ; preds = %for.cond.42
  br label %if.end.51

if.end.51:                                        ; preds = %for.end.50, %if.end.36
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %29)
  %30 = load %struct.term*, %struct.term** %term.addr, align 8
  ret %struct.term* %30
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_GetSymbolList(%struct.LIST_HELP* %varlist) #0 {
entry:
  %varlist.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %result = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %varlist, %struct.LIST_HELP** %varlist.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %result, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %varlist.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call2 to %struct.term*
  %call3 = call i32 @term_TopSymbol(%struct.term* %3)
  %conv = sext i32 %call3 to i64
  %4 = inttoptr i64 %conv to i8*
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  %call4 = call %struct.LIST_HELP* @list_Cons(i8* %4, %struct.LIST_HELP* %5)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %result, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %6)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %result, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_FreeVariablesBut(%struct.term* %Term, %struct.LIST_HELP* %Symbols) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %Symbols.addr = alloca %struct.LIST_HELP*, align 8
  %follist = alloca %struct.LIST_HELP*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.LIST_HELP* %Symbols, %struct.LIST_HELP** %Symbols.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call %struct.LIST_HELP* @fol_FreeVariables(%struct.term* %0)
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %follist, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %follist, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Symbols.addr, align 8
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.term*
  %call3 = call i32 @term_TopSymbol(%struct.term* %5)
  %conv = sext i32 %call3 to i64
  %6 = inttoptr i64 %conv to i8*
  %call4 = call i32 @list_Member(%struct.LIST_HELP* %3, i8* %6, i32 (i8*, i8*)* bitcast (i32 (i32, i32)* @symbol_Equal to i32 (i8*, i8*)*))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  call void @list_Rplaca(%struct.LIST_HELP* %7, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call6 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  store %struct.LIST_HELP* %call6, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %follist, align 8
  %call7 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %9, i8* null)
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %follist, align 8
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %follist, align 8
  ret %struct.LIST_HELP* %10
}

; Function Attrs: nounwind uwtable
define internal i32 @cnf_HasDeeperVariable(%struct.LIST_HELP* %List1, %struct.LIST_HELP* %List2) #0 {
entry:
  %retval = alloca i32, align 4
  %List1.addr = alloca %struct.LIST_HELP*, align 8
  %List2.addr = alloca %struct.LIST_HELP*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %maxdepth1 = alloca i32, align 4
  %i = alloca i32, align 4
  %i9 = alloca i32, align 4
  store %struct.LIST_HELP* %List1, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %List2, %struct.LIST_HELP** %List2.addr, align 8
  store i32 0, i32* %maxdepth1, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List1.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.term*
  %call2 = call i32 @term_TopSymbol(%struct.term* %3)
  %idxprom = sext i32 %call2 to i64
  %4 = load i32*, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %i, align 4
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %maxdepth1, align 4
  %cmp = icmp sgt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  store i32 %8, i32* %maxdepth1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call3 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %List2.addr, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.17, %for.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call5 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool6 = icmp ne i32 %call5, 0
  %lnot7 = xor i1 %tobool6, true
  br i1 %lnot7, label %for.body.8, label %for.end.19

for.body.8:                                       ; preds = %for.cond.4
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %12)
  %13 = bitcast i8* %call10 to %struct.term*
  %call11 = call i32 @term_TopSymbol(%struct.term* %13)
  %idxprom12 = sext i32 %call11 to i64
  %14 = load i32*, i32** @cnf_VARIABLEDEPTHARRAY, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %14, i64 %idxprom12
  %15 = load i32, i32* %arrayidx13, align 4
  store i32 %15, i32* %i9, align 4
  %16 = load i32, i32* %i9, align 4
  %17 = load i32, i32* %maxdepth1, align 4
  %cmp14 = icmp sge i32 %16, %17
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body.8
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %for.body.8
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.end.16
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call18 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  store %struct.LIST_HELP* %call18, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.4

for.end.19:                                       ; preds = %for.cond.4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.19, %if.then.15
  %19 = load i32, i32* %retval
  ret i32 %19
}

declare void @list_InsertNext(%struct.LIST_HELP*, i8*) #2

declare %struct.term* @term_CreateStandardVariable() #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_Top(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %0)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @cnf_SkolemFunctionFormulaMapped(%struct.term* %term, %struct.LIST_HELP* %allist, %struct.LIST_HELP* %map) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %allist.addr = alloca %struct.LIST_HELP*, align 8
  %map.addr = alloca %struct.LIST_HELP*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %skolem = alloca i32, align 4
  %symbol = alloca i32, align 4
  %bottom = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.LIST_HELP* %allist, %struct.LIST_HELP** %allist.addr, align 8
  store %struct.LIST_HELP* %map, %struct.LIST_HELP** %map.addr, align 8
  %call = call i32 @vec_ActMax()
  store i32 %call, i32* %bottom, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %map.addr, align 8
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.26, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.28

for.body:                                         ; preds = %for.cond
  %2 = load %struct.term*, %struct.term** %term.addr, align 8
  %3 = bitcast %struct.term* %2 to i8*
  call void @vec_Push(i8* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call2 = call i8* @list_Car(%struct.LIST_HELP* %4)
  %5 = bitcast i8* %call2 to %struct.LIST_HELP*
  %call3 = call i8* @list_PairFirst(%struct.LIST_HELP* %5)
  %6 = ptrtoint i8* %call3 to i32
  store i32 %6, i32* %symbol, align 4
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call4 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call4 to %struct.LIST_HELP*
  %call5 = call i8* @list_PairSecond(%struct.LIST_HELP* %8)
  %9 = ptrtoint i8* %call5 to i32
  store i32 %9, i32* %skolem, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.25, %for.body
  %10 = load i32, i32* %bottom, align 4
  %call6 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %10, %call6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call7 = call i8* @vec_PopResult()
  %11 = bitcast i8* %call7 to %struct.term*
  store %struct.term* %11, %struct.term** %term1, align 8
  %12 = load %struct.term*, %struct.term** %term1, align 8
  %call8 = call i32 @term_TopSymbol(%struct.term* %12)
  %13 = load i32, i32* %symbol, align 4
  %call9 = call i32 @symbol_Equal(i32 %call8, i32 %13)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %14 = load %struct.term*, %struct.term** %term1, align 8
  %15 = load i32, i32* %skolem, align 4
  call void @term_RplacTop(%struct.term* %14, i32 %15)
  %16 = load %struct.term*, %struct.term** %term1, align 8
  %call11 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %16)
  call void @list_Delete(%struct.LIST_HELP* %call11)
  %17 = load %struct.term*, %struct.term** %term1, align 8
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allist.addr, align 8
  %call12 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %18)
  call void @term_RplacArgumentList(%struct.term* %17, %struct.LIST_HELP* %call12)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.term*, %struct.term** %term1, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %call14 = call i32 @list_Empty(%struct.LIST_HELP* %call13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.25, label %if.then.16

if.then.16:                                       ; preds = %if.end
  %20 = load %struct.term*, %struct.term** %term1, align 8
  %call17 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %if.then.16
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call19 = call i32 @list_Empty(%struct.LIST_HELP* %21)
  %tobool20 = icmp ne i32 %call19, 0
  %lnot21 = xor i1 %tobool20, true
  br i1 %lnot21, label %for.body.22, label %for.end

for.body.22:                                      ; preds = %for.cond.18
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %22)
  call void @vec_Push(i8* %call23)
  br label %for.inc

for.inc:                                          ; preds = %for.body.22
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call24, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.26

for.inc.26:                                       ; preds = %while.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end.28:                                       ; preds = %for.cond
  %25 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %25)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @cnf_SkolemFunctionFormula(%struct.term* %term, %struct.LIST_HELP* %allist, %struct.LIST_HELP* %exlist, i32* %Precedence) #0 {
entry:
  %term.addr = alloca %struct.term*, align 8
  %allist.addr = alloca %struct.LIST_HELP*, align 8
  %exlist.addr = alloca %struct.LIST_HELP*, align 8
  %Precedence.addr = alloca i32*, align 8
  %term1 = alloca %struct.term*, align 8
  %scan = alloca %struct.LIST_HELP*, align 8
  %scan1 = alloca %struct.LIST_HELP*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %skolem = alloca i32, align 4
  %bottom = alloca i32, align 4
  %n = alloca i32, align 4
  store %struct.term* %term, %struct.term** %term.addr, align 8
  store %struct.LIST_HELP* %allist, %struct.LIST_HELP** %allist.addr, align 8
  store %struct.LIST_HELP* %exlist, %struct.LIST_HELP** %exlist.addr, align 8
  store i32* %Precedence, i32** %Precedence.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @vec_ActMax()
  store i32 %call1, i32* %bottom, align 4
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allist.addr, align 8
  %call2 = call i32 @list_Length(%struct.LIST_HELP* %0)
  store i32 %call2, i32* %n, align 4
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %exlist.addr, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call3 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call3, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %3 = load %struct.term*, %struct.term** %term.addr, align 8
  %4 = bitcast %struct.term* %3 to i8*
  call void @vec_Push(i8* %4)
  %5 = load i32, i32* %n, align 4
  %6 = load i32*, i32** %Precedence.addr, align 8
  %call4 = call i32 @symbol_CreateSkolemFunction(i32 %5, i32* %6)
  store i32 %call4, i32* %skolem, align 4
  %7 = load i32, i32* %skolem, align 4
  %conv = sext i32 %7 to i64
  %8 = inttoptr i64 %conv to i8*
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call5 = call %struct.LIST_HELP* @list_Cons(i8* %8, %struct.LIST_HELP* %9)
  store %struct.LIST_HELP* %call5, %struct.LIST_HELP** %Result, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %for.body
  %10 = load i32, i32* %bottom, align 4
  %call6 = call i32 @vec_ActMax()
  %cmp = icmp ne i32 %10, %call6
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call8 = call i8* @vec_PopResult()
  %11 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %11, %struct.term** %term1, align 8
  %12 = load %struct.term*, %struct.term** %term1, align 8
  %call9 = call i32 @term_TopSymbol(%struct.term* %12)
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call10 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = ptrtoint i8* %call10 to i32
  %call11 = call i32 @symbol_Equal(i32 %call9, i32 %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %15 = load %struct.term*, %struct.term** %term1, align 8
  %16 = load i32, i32* %skolem, align 4
  call void @term_RplacTop(%struct.term* %15, i32 %16)
  %17 = load %struct.term*, %struct.term** %term1, align 8
  %call13 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %17)
  call void @list_Delete(%struct.LIST_HELP* %call13)
  %18 = load %struct.term*, %struct.term** %term1, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %allist.addr, align 8
  %call14 = call %struct.LIST_HELP* @term_CopyTermList(%struct.LIST_HELP* %19)
  call void @term_RplacArgumentList(%struct.term* %18, %struct.LIST_HELP* %call14)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %20 = load %struct.term*, %struct.term** %term1, align 8
  %call15 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %20)
  %call16 = call i32 @list_Empty(%struct.LIST_HELP* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.27, label %if.then.18

if.then.18:                                       ; preds = %if.end
  %21 = load %struct.term*, %struct.term** %term1, align 8
  %call19 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %21)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc, %if.then.18
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %22)
  %tobool22 = icmp ne i32 %call21, 0
  %lnot23 = xor i1 %tobool22, true
  br i1 %lnot23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.20
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %23)
  call void @vec_Push(i8* %call25)
  br label %for.inc

for.inc:                                          ; preds = %for.body.24
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %scan, align 8
  br label %for.cond.20

for.end:                                          ; preds = %for.cond.20
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %if.end
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.28

for.inc.28:                                       ; preds = %while.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %scan1, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %scan1, align 8
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  %26 = load i32, i32* %bottom, align 4
  call void @vec_SetMax(i32 %26)
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %27
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
  %call = call i32 @strcmp(i8* %0, i8* %1) #8
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct.LIST_HELP* @list_DeleteDuplicates(%struct.LIST_HELP*, i32 (i8*, i8*)*) #2

declare i32* @flag_DefaultStore() #2

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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i32 0, i32 0), i32 %4, i8* %call2)
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
  call void (i8*, ...) @misc_UserErrorReport(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i32 0, i32 0), i32 %9, i8* %call7)
  call void @misc_Error()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  ret void
}

declare i32 @flag_Minimum(i32) #2

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
  call void @exit(i32 1) #7
  unreachable

return:                                           ; No predecessors!
  ret void
}

declare i32 @flag_Maximum(i32) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct.LIST_HELP* @clause_ListSortWeighed(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @list_NCar(%struct.LIST_HELP** %L) #1 {
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

declare %struct.CLAUSE_HELP* @red_CompleteReductionOnDerivedClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #2

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

declare %struct.LIST_HELP* @red_BackReduction(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*, i32) #2

declare %struct.LIST_HELP* @inf_BoundedDepthUnitResolution(%struct.CLAUSE_HELP*, %struct.SHARED_INDEX_NODE*, i32, i32*, i32*) #2

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
define internal %struct.SHARED_INDEX_NODE* @prfs_WorkedOffSharingIndex(%struct.PROOFSEARCH_HELP* %Prf) #1 {
entry:
  %Prf.addr = alloca %struct.PROOFSEARCH_HELP*, align 8
  store %struct.PROOFSEARCH_HELP* %Prf, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %0 = load %struct.PROOFSEARCH_HELP*, %struct.PROOFSEARCH_HELP** %Prf.addr, align 8
  %woindex = getelementptr inbounds %struct.PROOFSEARCH_HELP, %struct.PROOFSEARCH_HELP* %0, i32 0, i32 4
  %1 = load %struct.SHARED_INDEX_NODE*, %struct.SHARED_INDEX_NODE** %woindex, align 8
  ret %struct.SHARED_INDEX_NODE* %1
}

declare %struct.LIST_HELP* @split_ExtractEmptyClauses(%struct.LIST_HELP*, %struct.LIST_HELP**) #2

declare void @prfs_InsertUsableClause(%struct.PROOFSEARCH_HELP*, %struct.CLAUSE_HELP*) #2

declare %struct.LIST_HELP* @clause_InsertWeighed(%struct.CLAUSE_HELP*, %struct.LIST_HELP*, i32*, i32*) #2

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

declare %struct.term* @term_CreateAddFather(i32, %struct.LIST_HELP*) #2

declare %struct.term* @fol_CreateQuantifierAddFather(i32, %struct.LIST_HELP*, %struct.LIST_HELP*) #2

declare i32 @term_HasPointerSubterm(%struct.term*, %struct.term*) #2

; Function Attrs: nounwind uwtable
define internal void @cnf_DistrQuantorNoVarSubPath(%struct.term* %Term, %struct.term* %PredicateTerm) #0 {
entry:
  %Term.addr = alloca %struct.term*, align 8
  %PredicateTerm.addr = alloca %struct.term*, align 8
  %Variables = alloca %struct.LIST_HELP*, align 8
  %Subformulas = alloca %struct.LIST_HELP*, align 8
  %Scan1 = alloca %struct.LIST_HELP*, align 8
  %Scan2 = alloca %struct.LIST_HELP*, align 8
  %Rest = alloca %struct.LIST_HELP*, align 8
  %Subterm = alloca %struct.term*, align 8
  %Var = alloca %struct.term*, align 8
  %NewForm = alloca %struct.term*, align 8
  %Subtop = alloca i32, align 4
  %Top = alloca i32, align 4
  %t = alloca %struct.term*, align 8
  %l = alloca %struct.LIST_HELP*, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.term* %PredicateTerm, %struct.term** %PredicateTerm.addr, align 8
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_TopSymbol(%struct.term* %0)
  store i32 %call, i32* %Top, align 4
  %1 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %1)
  %call2 = call %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP* %call1)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Variables, align 8
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call %struct.term* @term_SecondArgument(%struct.term* %2)
  store %struct.term* %call3, %struct.term** %Subterm, align 8
  %3 = load %struct.term*, %struct.term** %Subterm, align 8
  %call4 = call i32 @term_TopSymbol(%struct.term* %3)
  store i32 %call4, i32* %Subtop, align 4
  %4 = load %struct.term*, %struct.term** %Subterm, align 8
  %5 = load i32, i32* %Subtop, align 4
  %call5 = call %struct.term* @cnf_Flatten(%struct.term* %4, i32 %5)
  store %struct.term* %call5, %struct.term** %Subterm, align 8
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %entry
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call6 = call i32 @list_Empty(%struct.LIST_HELP* %7)
  %tobool = icmp ne i32 %call6, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %call7 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %Subformulas, align 8
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %8)
  %9 = bitcast i8* %call8 to %struct.term*
  store %struct.term* %9, %struct.term** %Var, align 8
  %10 = load %struct.term*, %struct.term** %Subterm, align 8
  %call9 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %10)
  store %struct.LIST_HELP* %call9, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %for.body
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call11 = call i32 @list_Empty(%struct.LIST_HELP* %11)
  %tobool12 = icmp ne i32 %call11, 0
  %lnot13 = xor i1 %tobool12, true
  br i1 %lnot13, label %for.body.14, label %for.end

for.body.14:                                      ; preds = %for.cond.10
  %12 = load %struct.term*, %struct.term** %Var, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call15 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call15 to %struct.term*
  %call16 = call i32 @fol_VarOccursFreely(%struct.term* %12, %struct.term* %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.14
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call18 = call i8* @list_Car(%struct.LIST_HELP* %15)
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call19 = call %struct.LIST_HELP* @list_Cons(i8* %call18, %struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Subformulas, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan2, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call20, %struct.LIST_HELP** %Scan2, align 8
  br label %for.cond.10

for.end:                                          ; preds = %for.cond.10
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call21 = call i32 @list_Empty(%struct.LIST_HELP* %18)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.57, label %if.then.23

if.then.23:                                       ; preds = %for.end
  %19 = load %struct.term*, %struct.term** %Subterm, align 8
  %call24 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %19)
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call25 = call %struct.LIST_HELP* @list_NPointerDifference(%struct.LIST_HELP* %call24, %struct.LIST_HELP* %20)
  store %struct.LIST_HELP* %call25, %struct.LIST_HELP** %Rest, align 8
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  %call27 = call i32 @list_Empty(%struct.LIST_HELP* %call26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.else.42

if.then.29:                                       ; preds = %if.then.23
  %22 = load i32, i32* %Top, align 4
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call30 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call30 to %struct.term*
  %call31 = call i32 @term_TopSymbol(%struct.term* %24)
  %call32 = call i32 @symbol_Equal(i32 %22, i32 %call31)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.then.29
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call35 = call i8* @list_Car(%struct.LIST_HELP* %25)
  %26 = bitcast i8* %call35 to %struct.term*
  store %struct.term* %26, %struct.term** %NewForm, align 8
  %27 = load %struct.term*, %struct.term** %NewForm, align 8
  %call36 = call %struct.term* @term_FirstArgument(%struct.term* %27)
  %28 = load %struct.term*, %struct.term** %Var, align 8
  %29 = bitcast %struct.term* %28 to i8*
  %30 = load %struct.term*, %struct.term** %NewForm, align 8
  %call37 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %30)
  %call38 = call %struct.LIST_HELP* @list_Cons(i8* %29, %struct.LIST_HELP* %call37)
  call void @term_RplacArgumentList(%struct.term* %call36, %struct.LIST_HELP* %call38)
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  call void @list_Delete(%struct.LIST_HELP* %31)
  br label %if.end.41

if.else:                                          ; preds = %if.then.29
  %32 = load i32, i32* %Top, align 4
  %33 = load %struct.term*, %struct.term** %Var, align 8
  %34 = bitcast %struct.term* %33 to i8*
  %call39 = call %struct.LIST_HELP* @list_List(i8* %34)
  %35 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call40 = call %struct.term* @fol_CreateQuantifierAddFather(i32 %32, %struct.LIST_HELP* %call39, %struct.LIST_HELP* %35)
  store %struct.term* %call40, %struct.term** %NewForm, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %if.then.34
  br label %if.end.47

if.else.42:                                       ; preds = %if.then.23
  %36 = load i32, i32* %Subtop, align 4
  %37 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Rest, align 8
  %call43 = call %struct.term* @term_CreateAddFather(i32 %36, %struct.LIST_HELP* %37)
  store %struct.term* %call43, %struct.term** %t, align 8
  %38 = load i32, i32* %Top, align 4
  %39 = load %struct.term*, %struct.term** %Var, align 8
  %40 = bitcast %struct.term* %39 to i8*
  %call44 = call %struct.LIST_HELP* @list_List(i8* %40)
  %41 = load %struct.term*, %struct.term** %t, align 8
  %42 = bitcast %struct.term* %41 to i8*
  %call45 = call %struct.LIST_HELP* @list_List(i8* %42)
  %call46 = call %struct.term* @fol_CreateQuantifierAddFather(i32 %38, %struct.LIST_HELP* %call44, %struct.LIST_HELP* %call45)
  store %struct.term* %call46, %struct.term** %NewForm, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.42, %if.end.41
  %43 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %44 = load %struct.term*, %struct.term** %NewForm, align 8
  %call48 = call i32 @term_HasProperSuperterm(%struct.term* %43, %struct.term* %44)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %if.end.47
  %45 = load %struct.term*, %struct.term** %NewForm, align 8
  %46 = load %struct.term*, %struct.term** %PredicateTerm.addr, align 8
  %call51 = call %struct.term* @cnf_AntiPrenexPath(%struct.term* %45, %struct.term* %46)
  store %struct.term* %call51, %struct.term** %NewForm, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %if.end.47
  %47 = load %struct.term*, %struct.term** %Subterm, align 8
  %48 = load %struct.term*, %struct.term** %NewForm, align 8
  %49 = bitcast %struct.term* %48 to i8*
  %50 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subformulas, align 8
  %call53 = call %struct.LIST_HELP* @list_Cons(i8* %49, %struct.LIST_HELP* %50)
  call void @term_RplacArgumentList(%struct.term* %47, %struct.LIST_HELP* %call53)
  %51 = load %struct.term*, %struct.term** %NewForm, align 8
  %52 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_RplacSuperterm(%struct.term* %51, %struct.term* %52)
  %53 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call54 = call %struct.term* @term_FirstArgument(%struct.term* %53)
  %54 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call55 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %54)
  %55 = load %struct.term*, %struct.term** %Var, align 8
  %56 = bitcast %struct.term* %55 to i8*
  %call56 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %call55, i8* %56)
  call void @term_RplacArgumentList(%struct.term* %call54, %struct.LIST_HELP* %call56)
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.52, %for.end
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.57
  %57 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan1, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %57)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Scan1, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %58 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call61 = call %struct.LIST_HELP* @fol_QuantifierVariables(%struct.term* %58)
  %call62 = call i32 @list_Empty(%struct.LIST_HELP* %call61)
  %tobool63 = icmp ne i32 %call62, 0
  br i1 %tobool63, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %for.end.60
  %59 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call65 = call %struct.term* @term_FirstArgument(%struct.term* %59)
  call void @term_Free(%struct.term* %call65)
  %60 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call66 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %60)
  call void @list_Delete(%struct.LIST_HELP* %call66)
  %61 = load %struct.term*, %struct.term** %Term.addr, align 8
  %62 = load i32, i32* %Subtop, align 4
  call void @term_RplacTop(%struct.term* %61, i32 %62)
  %63 = load %struct.term*, %struct.term** %Term.addr, align 8
  %64 = load %struct.term*, %struct.term** %Subterm, align 8
  %call67 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %64)
  call void @term_RplacArgumentList(%struct.term* %63, %struct.LIST_HELP* %call67)
  %65 = load %struct.term*, %struct.term** %Subterm, align 8
  call void @term_Free(%struct.term* %65)
  %66 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call68 = call %struct.LIST_HELP* @term_ArgumentList(%struct.term* %66)
  store %struct.LIST_HELP* %call68, %struct.LIST_HELP** %l, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc.75, %if.then.64
  %67 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call70 = call i32 @list_Empty(%struct.LIST_HELP* %67)
  %tobool71 = icmp ne i32 %call70, 0
  %lnot72 = xor i1 %tobool71, true
  br i1 %lnot72, label %for.body.73, label %for.end.77

for.body.73:                                      ; preds = %for.cond.69
  %68 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call74 = call i8* @list_Car(%struct.LIST_HELP* %68)
  %69 = bitcast i8* %call74 to %struct.term*
  %70 = load %struct.term*, %struct.term** %Term.addr, align 8
  call void @term_RplacSuperterm(%struct.term* %69, %struct.term* %70)
  br label %for.inc.75

for.inc.75:                                       ; preds = %for.body.73
  %71 = load %struct.LIST_HELP*, %struct.LIST_HELP** %l, align 8
  %call76 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %71)
  store %struct.LIST_HELP* %call76, %struct.LIST_HELP** %l, align 8
  br label %for.cond.69

for.end.77:                                       ; preds = %for.cond.69
  br label %if.end.78

if.end.78:                                        ; preds = %for.end.77, %for.end.60
  %72 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Variables, align 8
  call void @list_Delete(%struct.LIST_HELP* %72)
  ret void
}

declare %struct.LIST_HELP* @list_DeleteElementFree(%struct.LIST_HELP*, i8*, i32 (i8*, i8*)*, void (i8*)*) #2

declare void @list_NMapCar(%struct.LIST_HELP*, i8* (i8*)*) #2

declare %struct.LIST_HELP* @list_PointerDeleteOneElement(%struct.LIST_HELP*, i8*) #2

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
define internal void @cont_BackTrackLastBinding() #1 {
entry:
  call void @cont_BackTrackLastBindingHelp()
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
define internal %struct.binding* @cont_LastBinding() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_LASTBINDING, align 8
  ret %struct.binding* %0
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

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
