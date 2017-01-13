; ModuleID = './MultiSource.Applications.SPASS/31.st.bc'
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
%struct.st = type { %struct.subst*, %struct.LIST_HELP*, %struct.LIST_HELP*, i16, i16 }
%struct.subst = type { %struct.subst*, i32, %struct.term* }

@st_CURRENT_RETRIEVAL = internal global i32 0, align 4
@st_STACKSAVE = common global i32 0, align 4
@st_WHICH_CONTEXTS = internal global i32 0, align 4
@stdout = external global %struct._IO_FILE*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [31 x i8] c"\0A\09Error in file %s at line %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/home/juneyoung.lee/undef/llvm-test-suite/MultiSource/Applications/SPASS/st.c\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"\0A In st_CancelExistRetrieval: Unknown context type.\0A\00", align 1
@.str.3 = private unnamed_addr constant [133 x i8] c"\0A Please report this error via email to spass@mpi-sb.mpg.de including\0A the SPASS version, input problem, options, operating system.\0A\00", align 1
@st_INDEX_CONTEXT = internal global %struct.binding* null, align 8
@st_EXIST_MINMAX = internal global i16 0, align 2
@.str.4 = private unnamed_addr constant [48 x i8] c"\0A In st_NextCandidate: Unknown retrieval type.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"\0A In st_NextCandidate: Unknown context type.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"\0A\0AIndex empty.\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A\0Aroot: \00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c" Max: %d, Min: %d, \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"  =>\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c" %d Entries\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@st_STACK = common global [1000 x i8*] zeroinitializer, align 16
@st_STACKPOINTER = common global i32 0, align 4
@cont_INDEXVARSCANNER = external global i32, align 4
@symbol_INDEXVARCOUNTER = external global i32, align 4
@cont_BINDINGS = external global i32, align 4
@cont_CURRENTBINDING = external global %struct.binding*, align 8
@cont_LASTBINDING = external global %struct.binding*, align 8
@cont_STACKPOINTER = external global i32, align 4
@memory_OFFSET = external global i32, align 4
@memory_BIGBLOCKS = external global %struct.MEMORY_BIGBLOCKHEADERHELP*, align 8
@memory_MARKSIZE = external global i32, align 4
@memory_FREEDBYTES = external global i64, align 8
@memory_MAXMEM = external global i64, align 8
@memory_ARRAY = external global [0 x %struct.MEMORY_RESOURCEHELP*], align 8
@memory_ALIGN = external constant i32, align 4
@cont_STACK = external global [1000 x i32], align 16
@stack_POINTER = external global i32, align 4
@stack_STACK = external global [10000 x i8*], align 16
@cont_INSTANCECONTEXT = external global %struct.binding*, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"+-\00", align 1

; Function Attrs: nounwind uwtable
define %struct.st* @st_IndexCreate() #0 {
entry:
  %StIndex = alloca %struct.st*, align 8
  %call = call %struct.st* @st_Get()
  store %struct.st* %call, %struct.st** %StIndex, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %0 = load %struct.st*, %struct.st** %StIndex, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %subnodes, align 8
  %call2 = call %struct.LIST_HELP* @list_Nil()
  %1 = load %struct.st*, %struct.st** %StIndex, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %1, i32 0, i32 2
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %entries, align 8
  %call3 = call %struct.subst* @subst_Nil()
  %2 = load %struct.st*, %struct.st** %StIndex, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %2, i32 0, i32 0
  store %struct.subst* %call3, %struct.subst** %subst, align 8
  %3 = load %struct.st*, %struct.st** %StIndex, align 8
  call void @st_SetMax(%struct.st* %3, i16 zeroext 0)
  %4 = load %struct.st*, %struct.st** %StIndex, align 8
  call void @st_SetMin(%struct.st* %4, i16 zeroext 0)
  %5 = load %struct.st*, %struct.st** %StIndex, align 8
  ret %struct.st* %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.st* @st_Get() #1 {
entry:
  %call = call i8* @memory_Malloc(i32 32)
  %0 = bitcast i8* %call to %struct.st*
  ret %struct.st* %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @list_Nil() #1 {
entry:
  ret %struct.LIST_HELP* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.subst* @subst_Nil() #1 {
entry:
  ret %struct.subst* null
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @st_SetMax(%struct.st* %ST, i16 zeroext %Value) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  %Value.addr = alloca i16, align 2
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  store i16 %Value, i16* %Value.addr, align 2
  %0 = load i16, i16* %Value.addr, align 2
  %1 = load %struct.st*, %struct.st** %ST.addr, align 8
  %max = getelementptr inbounds %struct.st, %struct.st* %1, i32 0, i32 3
  store i16 %0, i16* %max, align 2
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @st_SetMin(%struct.st* %ST, i16 zeroext %Value) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  %Value.addr = alloca i16, align 2
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  store i16 %Value, i16* %Value.addr, align 2
  %0 = load i16, i16* %Value.addr, align 2
  %1 = load %struct.st*, %struct.st** %ST.addr, align 8
  %min = getelementptr inbounds %struct.st, %struct.st* %1, i32 0, i32 4
  store i16 %0, i16* %min, align 2
  ret void
}

; Function Attrs: nounwind uwtable
define void @st_EntryCreate(%struct.st* %StIndex, i8* %Pointer, %struct.term* %Term, %struct.binding* %Context) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  %Pointer.addr = alloca i8*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %Current = alloca %struct.st*, align 8
  %BestNonVariant = alloca %struct.st*, align 8
  %FirstDomain = alloca i32, align 4
  %MinMax = alloca i16, align 2
  %ComGen = alloca %struct.subst*, align 8
  %SubstOld = alloca %struct.subst*, align 8
  %SubstNew = alloca %struct.subst*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store i8* %Pointer, i8** %Pointer.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  call void @cont_Check()
  %0 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call = call i32 @term_ComputeSize(%struct.term* %0)
  %conv = trunc i32 %call to i16
  store i16 %conv, i16* %MinMax, align 2
  %1 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %call1 = call i32 @cont_NextIndexVariable(%struct.binding* %1)
  store i32 %call1, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load i32, i32* %FirstDomain, align 4
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @cont_CreateBinding(%struct.binding* %2, i32 %3, %struct.binding* %4, %struct.term* %5)
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  store %struct.st* %6, %struct.st** %Current, align 8
  %7 = load %struct.st*, %struct.st** %Current, align 8
  %call3 = call zeroext i16 @st_Max(%struct.st* %7)
  %conv4 = zext i16 %call3 to i32
  %8 = load i16, i16* %MinMax, align 2
  %conv5 = zext i16 %8 to i32
  %cmp = icmp slt i32 %conv4, %conv5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = load %struct.st*, %struct.st** %Current, align 8
  %10 = load i16, i16* %MinMax, align 2
  call void @st_SetMax(%struct.st* %9, i16 zeroext %10)
  br label %if.end.13

if.else:                                          ; preds = %entry
  %11 = load %struct.st*, %struct.st** %Current, align 8
  %call7 = call zeroext i16 @st_Min(%struct.st* %11)
  %conv8 = zext i16 %call7 to i32
  %12 = load i16, i16* %MinMax, align 2
  %conv9 = zext i16 %12 to i32
  %cmp10 = icmp sgt i32 %conv8, %conv9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.else
  %13 = load %struct.st*, %struct.st** %Current, align 8
  %14 = load i16, i16* %MinMax, align 2
  call void @st_SetMin(%struct.st* %13, i16 zeroext %14)
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.31, %if.end.13
  %15 = load %struct.st*, %struct.st** %Current, align 8
  %call14 = call i32 @st_IsLeaf(%struct.st* %15)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %16 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %17 = load %struct.st*, %struct.st** %Current, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 1
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %call15 = call %struct.st* @st_FirstVariant(%struct.binding* %16, %struct.LIST_HELP* %18, %struct.st** %BestNonVariant)
  store %struct.st* %call15, %struct.st** %Current, align 8
  %tobool16 = icmp ne %struct.st* %call15, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %19 = phi i1 [ false, %while.cond ], [ %tobool16, %land.rhs ]
  br i1 %19, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %20 = load %struct.st*, %struct.st** %Current, align 8
  %call17 = call zeroext i16 @st_Max(%struct.st* %20)
  %conv18 = zext i16 %call17 to i32
  %21 = load i16, i16* %MinMax, align 2
  %conv19 = zext i16 %21 to i32
  %cmp20 = icmp slt i32 %conv18, %conv19
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %while.body
  %22 = load %struct.st*, %struct.st** %Current, align 8
  %23 = load i16, i16* %MinMax, align 2
  call void @st_SetMax(%struct.st* %22, i16 zeroext %23)
  br label %if.end.31

if.else.23:                                       ; preds = %while.body
  %24 = load %struct.st*, %struct.st** %Current, align 8
  %call24 = call zeroext i16 @st_Min(%struct.st* %24)
  %conv25 = zext i16 %call24 to i32
  %25 = load i16, i16* %MinMax, align 2
  %conv26 = zext i16 %25 to i32
  %cmp27 = icmp sgt i32 %conv25, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.else.23
  %26 = load %struct.st*, %struct.st** %Current, align 8
  %27 = load i16, i16* %MinMax, align 2
  call void @st_SetMin(%struct.st* %26, i16 zeroext %27)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %if.else.23
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.22
  %28 = load %struct.st*, %struct.st** %Current, align 8
  store %struct.st* %28, %struct.st** %StIndex.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %call32 = call i32 @cont_BindingsSinceLastStart()
  %cmp33 = icmp eq i32 %call32, 0
  br i1 %cmp33, label %land.lhs.true, label %if.else.42

land.lhs.true:                                    ; preds = %while.end
  %29 = load %struct.st*, %struct.st** %Current, align 8
  %tobool35 = icmp ne %struct.st* %29, null
  br i1 %tobool35, label %land.lhs.true.36, label %if.else.42

land.lhs.true.36:                                 ; preds = %land.lhs.true
  %30 = load %struct.st*, %struct.st** %Current, align 8
  %call37 = call i32 @st_IsLeaf(%struct.st* %30)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then.39, label %if.else.42

if.then.39:                                       ; preds = %land.lhs.true.36
  %31 = load i8*, i8** %Pointer.addr, align 8
  %32 = load %struct.st*, %struct.st** %Current, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %32, i32 0, i32 2
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call40 = call %struct.LIST_HELP* @list_Cons(i8* %31, %struct.LIST_HELP* %33)
  %34 = load %struct.st*, %struct.st** %Current, align 8
  %entries41 = getelementptr inbounds %struct.st, %struct.st* %34, i32 0, i32 2
  store %struct.LIST_HELP* %call40, %struct.LIST_HELP** %entries41, align 8
  br label %if.end.60

if.else.42:                                       ; preds = %land.lhs.true.36, %land.lhs.true, %while.end
  %35 = load %struct.st*, %struct.st** %BestNonVariant, align 8
  %tobool43 = icmp ne %struct.st* %35, null
  br i1 %tobool43, label %if.then.44, label %if.else.52

if.then.44:                                       ; preds = %if.else.42
  %36 = load %struct.st*, %struct.st** %BestNonVariant, align 8
  %call45 = call i32 @st_IsLeaf(%struct.st* %36)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.then.44
  %37 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %38 = load %struct.st*, %struct.st** %BestNonVariant, align 8
  %subnodes48 = getelementptr inbounds %struct.st, %struct.st* %38, i32 0, i32 1
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes48, align 8
  call void @st_CloseUsedVariables(%struct.binding* %37, %struct.LIST_HELP* %39)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.then.44
  %40 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %41 = load %struct.st*, %struct.st** %BestNonVariant, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %41, i32 0, i32 0
  %42 = load %struct.subst*, %struct.subst** %subst, align 8
  %call50 = call %struct.subst* @subst_ComGen(%struct.binding* %40, %struct.subst* %42, %struct.subst** %SubstOld, %struct.subst** %SubstNew)
  store %struct.subst* %call50, %struct.subst** %ComGen, align 8
  %43 = load %struct.st*, %struct.st** %BestNonVariant, align 8
  %44 = load %struct.subst*, %struct.subst** %SubstOld, align 8
  %45 = load %struct.subst*, %struct.subst** %SubstNew, align 8
  %call51 = call %struct.subst* @subst_CloseOpenVariables(%struct.subst* %45)
  %46 = load %struct.subst*, %struct.subst** %ComGen, align 8
  %47 = load i16, i16* %MinMax, align 2
  %48 = load i8*, i8** %Pointer.addr, align 8
  call void @st_NodeAddInner(%struct.st* %43, %struct.subst* %44, %struct.subst* %call51, %struct.subst* %46, i16 zeroext %47, i8* %48)
  br label %if.end.59

if.else.52:                                       ; preds = %if.else.42
  %call53 = call %struct.subst* @subst_Nil()
  %call54 = call %struct.subst* @subst_CloseOpenVariables(%struct.subst* %call53)
  %49 = load i16, i16* %MinMax, align 2
  %50 = load i8*, i8** %Pointer.addr, align 8
  %call55 = call %struct.st* @st_NodeAddLeaf(%struct.subst* %call54, i16 zeroext %49, i8* %50)
  %51 = bitcast %struct.st* %call55 to i8*
  %52 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes56 = getelementptr inbounds %struct.st, %struct.st* %52, i32 0, i32 1
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes56, align 8
  %call57 = call %struct.LIST_HELP* @list_Cons(i8* %51, %struct.LIST_HELP* %53)
  %54 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes58 = getelementptr inbounds %struct.st, %struct.st* %54, i32 0, i32 1
  store %struct.LIST_HELP* %call57, %struct.LIST_HELP** %subnodes58, align 8
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.end.49
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.39
  call void @cont_Reset()
  ret void
}

declare void @cont_Check() #2

declare i32 @term_ComputeSize(%struct.term*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_NextIndexVariable(%struct.binding* %IndexContext) #1 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %0 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call = call i32 @symbol_LastIndexVariable()
  %call1 = call i32 @symbol_Equal(i32 %0, i32 %call)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call2 = call i32 @symbol_CreateIndexVariable()
  store i32 %call2, i32* @cont_INDEXVARSCANNER, align 4
  br label %if.end.14

if.else:                                          ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.13, %if.else
  %1 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call3 = call i32 @symbol_NextIndexVariable(i32 %1)
  store i32 %call3, i32* @cont_INDEXVARSCANNER, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call4 = call i32 @cont_VarIsUsed(%struct.binding* %2, i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.else.7, label %if.then.6

if.then.6:                                        ; preds = %for.cond
  br label %for.end

if.else.7:                                        ; preds = %for.cond
  %4 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  %call8 = call i32 @symbol_LastIndexVariable()
  %call9 = call i32 @symbol_Equal(i32 %4, i32 %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.else.7
  %call12 = call i32 @symbol_CreateIndexVariable()
  store i32 %call12, i32* @cont_INDEXVARSCANNER, align 4
  br label %for.end

if.end:                                           ; preds = %if.else.7
  br label %if.end.13

if.end.13:                                        ; preds = %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then.11, %if.then.6
  br label %if.end.14

if.end.14:                                        ; preds = %for.end, %if.then
  %5 = load i32, i32* @cont_INDEXVARSCANNER, align 4
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_CreateBinding(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #1 {
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
define internal zeroext i16 @st_Max(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %max = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 3
  %1 = load i16, i16* %max, align 2
  ret i16 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal zeroext i16 @st_Min(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %min = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 4
  %1 = load i16, i16* %min, align 2
  ret i16 %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_IsLeaf(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call = call %struct.LIST_HELP* @st_Entries(%struct.st* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind uwtable
define internal %struct.st* @st_FirstVariant(%struct.binding* %Context, %struct.LIST_HELP* %Subnodes, %struct.st** %BestNonVariant) #0 {
entry:
  %retval = alloca %struct.st*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %Subnodes.addr = alloca %struct.LIST_HELP*, align 8
  %BestNonVariant.addr = alloca %struct.st**, align 8
  %EmptyVariant = alloca %struct.st*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.LIST_HELP* %Subnodes, %struct.LIST_HELP** %Subnodes.addr, align 8
  store %struct.st** %BestNonVariant, %struct.st*** %BestNonVariant.addr, align 8
  store %struct.st* null, %struct.st** %EmptyVariant, align 8
  %0 = load %struct.st**, %struct.st*** %BestNonVariant.addr, align 8
  store %struct.st* null, %struct.st** %0, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes.addr, align 8
  %call = call i32 @list_Exist(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %2)
  %3 = bitcast i8* %call1 to %struct.st*
  store %struct.st* %3, %struct.st** %CurrentNode, align 8
  call void @cont_StartBinding()
  %4 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %5 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %5, i32 0, i32 0
  %6 = load %struct.subst*, %struct.subst** %subst, align 8
  %call2 = call i32 @subst_Variation(%struct.binding* %4, %struct.subst* %6)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else.9

if.then:                                          ; preds = %for.body
  %7 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst4 = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 0
  %8 = load %struct.subst*, %struct.subst** %subst4, align 8
  %call5 = call i32 @subst_Exist(%struct.subst* %8)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.then
  %9 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %10 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst8 = getelementptr inbounds %struct.st, %struct.st* %10, i32 0, i32 0
  %11 = load %struct.subst*, %struct.subst** %subst8, align 8
  call void @subst_CloseVariables(%struct.binding* %9, %struct.subst* %11)
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  store %struct.st* %12, %struct.st** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %13 = load %struct.st*, %struct.st** %CurrentNode, align 8
  store %struct.st* %13, %struct.st** %EmptyVariant, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.17

if.else.9:                                        ; preds = %for.body
  %14 = load %struct.st**, %struct.st*** %BestNonVariant.addr, align 8
  %15 = load %struct.st*, %struct.st** %14, align 8
  %cmp = icmp eq %struct.st* %15, null
  br i1 %cmp, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.else.9
  %16 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %17 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst11 = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 0
  %18 = load %struct.subst*, %struct.subst** %subst11, align 8
  %call12 = call i32 @subst_MatchTops(%struct.binding* %16, %struct.subst* %18)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  %19 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %20 = load %struct.st**, %struct.st*** %BestNonVariant.addr, align 8
  store %struct.st* %19, %struct.st** %20, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.then.10
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.else.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end
  %call18 = call i32 @cont_BackTrack()
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes.addr, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Subnodes.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct.st*, %struct.st** %EmptyVariant, align 8
  store %struct.st* %22, %struct.st** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %23 = load %struct.st*, %struct.st** %retval
  ret %struct.st* %23
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BindingsSinceLastStart() #1 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  ret i32 %0
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
define internal void @st_CloseUsedVariables(%struct.binding* %Context, %struct.LIST_HELP* %NodeList) #0 {
entry:
  %Context.addr = alloca %struct.binding*, align 8
  %NodeList.addr = alloca %struct.LIST_HELP*, align 8
  %Subst = alloca %struct.subst*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.LIST_HELP* %NodeList, %struct.LIST_HELP** %NodeList.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.18, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NodeList.addr, align 8
  %call = call i32 @list_Exist(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %for.body, label %for.end.20

for.body:                                         ; preds = %for.cond
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NodeList.addr, align 8
  %call1 = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call1 to %struct.st*
  %subst = getelementptr inbounds %struct.st, %struct.st* %2, i32 0, i32 0
  %3 = load %struct.subst*, %struct.subst** %subst, align 8
  store %struct.subst* %3, %struct.subst** %Subst, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call3 = call i32 @subst_Exist(%struct.subst* %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.2
  %5 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %6 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call6 = call i32 @subst_Dom(%struct.subst* %6)
  %call7 = call i32 @cont_VarIsUsed(%struct.binding* %5, i32 %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %for.body.5
  %7 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %8 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call9 = call i32 @subst_Dom(%struct.subst* %8)
  %call10 = call i32 @cont_CreateClosedBinding(%struct.binding* %7, i32 %call9)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.subst*, %struct.subst** %Subst, align 8
  %call11 = call %struct.subst* @subst_Next(%struct.subst* %9)
  store %struct.subst* %call11, %struct.subst** %Subst, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NodeList.addr, align 8
  %call12 = call i8* @list_Car(%struct.LIST_HELP* %10)
  %11 = bitcast i8* %call12 to %struct.st*
  %call13 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %for.end
  %12 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NodeList.addr, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call16 to %struct.st*
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %14, i32 0, i32 1
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  call void @st_CloseUsedVariables(%struct.binding* %12, %struct.LIST_HELP* %15)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.15, %for.end
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.end.17
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %NodeList.addr, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %NodeList.addr, align 8
  br label %for.cond

for.end.20:                                       ; preds = %for.cond
  ret void
}

declare %struct.subst* @subst_ComGen(%struct.binding*, %struct.subst*, %struct.subst**, %struct.subst**) #2

; Function Attrs: nounwind uwtable
define internal void @st_NodeAddInner(%struct.st* %StIndex, %struct.subst* %SubstOld, %struct.subst* %SubstNew, %struct.subst* %ComGen, i16 zeroext %MinMax, i8* %Pointer) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  %SubstOld.addr = alloca %struct.subst*, align 8
  %SubstNew.addr = alloca %struct.subst*, align 8
  %ComGen.addr = alloca %struct.subst*, align 8
  %MinMax.addr = alloca i16, align 2
  %Pointer.addr = alloca i8*, align 8
  %OldIndexNode = alloca %struct.st*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.subst* %SubstOld, %struct.subst** %SubstOld.addr, align 8
  store %struct.subst* %SubstNew, %struct.subst** %SubstNew.addr, align 8
  store %struct.subst* %ComGen, %struct.subst** %ComGen.addr, align 8
  store i16 %MinMax, i16* %MinMax.addr, align 2
  store i8* %Pointer, i8** %Pointer.addr, align 8
  %call = call %struct.st* @st_Get()
  store %struct.st* %call, %struct.st** %OldIndexNode, align 8
  %0 = load %struct.subst*, %struct.subst** %SubstOld.addr, align 8
  %1 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %1, i32 0, i32 0
  store %struct.subst* %0, %struct.subst** %subst, align 8
  %2 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %2, i32 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %4 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %entries1 = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 2
  store %struct.LIST_HELP* %3, %struct.LIST_HELP** %entries1, align 8
  %5 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %5, i32 0, i32 1
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %7 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %subnodes2 = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 1
  store %struct.LIST_HELP* %6, %struct.LIST_HELP** %subnodes2, align 8
  %8 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %9 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call3 = call zeroext i16 @st_Max(%struct.st* %9)
  call void @st_SetMax(%struct.st* %8, i16 zeroext %call3)
  %10 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %11 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call4 = call zeroext i16 @st_Min(%struct.st* %11)
  call void @st_SetMin(%struct.st* %10, i16 zeroext %call4)
  %12 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst5 = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 0
  %13 = load %struct.subst*, %struct.subst** %subst5, align 8
  call void @subst_Delete(%struct.subst* %13)
  %14 = load %struct.subst*, %struct.subst** %ComGen.addr, align 8
  %15 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst6 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 0
  store %struct.subst* %14, %struct.subst** %subst6, align 8
  %call7 = call %struct.LIST_HELP* @list_Nil()
  %16 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries8 = getelementptr inbounds %struct.st, %struct.st* %16, i32 0, i32 2
  store %struct.LIST_HELP* %call7, %struct.LIST_HELP** %entries8, align 8
  %17 = load %struct.subst*, %struct.subst** %SubstNew.addr, align 8
  %18 = load i16, i16* %MinMax.addr, align 2
  %19 = load i8*, i8** %Pointer.addr, align 8
  %call9 = call %struct.st* @st_NodeAddLeaf(%struct.subst* %17, i16 zeroext %18, i8* %19)
  %20 = bitcast %struct.st* %call9 to i8*
  %21 = load %struct.st*, %struct.st** %OldIndexNode, align 8
  %22 = bitcast %struct.st* %21 to i8*
  %call10 = call %struct.LIST_HELP* @list_List(i8* %22)
  %call11 = call %struct.LIST_HELP* @list_Cons(i8* %20, %struct.LIST_HELP* %call10)
  %23 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes12 = getelementptr inbounds %struct.st, %struct.st* %23, i32 0, i32 1
  store %struct.LIST_HELP* %call11, %struct.LIST_HELP** %subnodes12, align 8
  %24 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call13 = call zeroext i16 @st_Max(%struct.st* %24)
  %conv = zext i16 %call13 to i32
  %25 = load i16, i16* %MinMax.addr, align 2
  %conv14 = zext i16 %25 to i32
  %cmp = icmp slt i32 %conv, %conv14
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %26 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %27 = load i16, i16* %MinMax.addr, align 2
  call void @st_SetMax(%struct.st* %26, i16 zeroext %27)
  br label %if.end.22

if.else:                                          ; preds = %entry
  %28 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call16 = call zeroext i16 @st_Min(%struct.st* %28)
  %conv17 = zext i16 %call16 to i32
  %29 = load i16, i16* %MinMax.addr, align 2
  %conv18 = zext i16 %29 to i32
  %cmp19 = icmp sgt i32 %conv17, %conv18
  br i1 %cmp19, label %if.then.21, label %if.end

if.then.21:                                       ; preds = %if.else
  %30 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %31 = load i16, i16* %MinMax.addr, align 2
  call void @st_SetMin(%struct.st* %30, i16 zeroext %31)
  br label %if.end

if.end:                                           ; preds = %if.then.21, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then
  ret void
}

declare %struct.subst* @subst_CloseOpenVariables(%struct.subst*) #2

; Function Attrs: nounwind uwtable
define internal %struct.st* @st_NodeAddLeaf(%struct.subst* %Subst, i16 zeroext %MinMax, i8* %Pointer) #0 {
entry:
  %Subst.addr = alloca %struct.subst*, align 8
  %MinMax.addr = alloca i16, align 2
  %Pointer.addr = alloca i8*, align 8
  %NewLeaf = alloca %struct.st*, align 8
  store %struct.subst* %Subst, %struct.subst** %Subst.addr, align 8
  store i16 %MinMax, i16* %MinMax.addr, align 2
  store i8* %Pointer, i8** %Pointer.addr, align 8
  %call = call %struct.st* @st_Get()
  store %struct.st* %call, %struct.st** %NewLeaf, align 8
  %call1 = call %struct.LIST_HELP* @list_Nil()
  %0 = load %struct.st*, %struct.st** %NewLeaf, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %subnodes, align 8
  %1 = load i8*, i8** %Pointer.addr, align 8
  %call2 = call %struct.LIST_HELP* @list_List(i8* %1)
  %2 = load %struct.st*, %struct.st** %NewLeaf, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %2, i32 0, i32 2
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %entries, align 8
  %3 = load %struct.subst*, %struct.subst** %Subst.addr, align 8
  %4 = load %struct.st*, %struct.st** %NewLeaf, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 0
  store %struct.subst* %3, %struct.subst** %subst, align 8
  %5 = load %struct.st*, %struct.st** %NewLeaf, align 8
  %6 = load i16, i16* %MinMax.addr, align 2
  call void @st_SetMax(%struct.st* %5, i16 zeroext %6)
  %7 = load %struct.st*, %struct.st** %NewLeaf, align 8
  %8 = load i16, i16* %MinMax.addr, align 2
  call void @st_SetMin(%struct.st* %7, i16 zeroext %8)
  %9 = load %struct.st*, %struct.st** %NewLeaf, align 8
  ret %struct.st* %9
}

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
define void @st_IndexDelete(%struct.st* %StIndex) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %cmp = icmp eq %struct.st* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_IsLeaf(%struct.st* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  %2 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %2, i32 0, i32 2
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  call void @list_Delete(%struct.LIST_HELP* %3)
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 1
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  call void @list_DeleteWithElement(%struct.LIST_HELP* %5, void (i8*)* bitcast (void (%struct.st*)* @st_IndexDelete to void (i8*)*))
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 0
  %7 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Delete(%struct.subst* %7)
  %8 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  call void @st_Free(%struct.st* %8)
  br label %return

return:                                           ; preds = %if.end.3, %if.then
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

declare void @list_DeleteWithElement(%struct.LIST_HELP*, void (i8*)*) #2

declare void @subst_Delete(%struct.subst*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @st_Free(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %1 = bitcast %struct.st* %0 to i8*
  call void @memory_Free(i8* %1, i32 32)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @st_EntryDelete(%struct.st* %StIndex, i8* %Pointer, %struct.term* %Term, %struct.binding* %Context) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  %Pointer.addr = alloca i8*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %Found = alloca i32, align 4
  %Subnodes = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store i8* %Pointer, i8** %Pointer.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  store i32 0, i32* %Found, align 4
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 1
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %entry
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call2 = call i32 @list_Exist(%struct.LIST_HELP* %6)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %for.body, label %for.end.49

for.body:                                         ; preds = %for.cond
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %7)
  %8 = bitcast i8* %call3 to %struct.st*
  store %struct.st* %8, %struct.st** %CurrentNode, align 8
  call void @cont_StartBinding()
  %9 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %10 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %10, i32 0, i32 0
  %11 = load %struct.subst*, %struct.subst** %subst, align 8
  %call4 = call i32 @subst_Variation(%struct.binding* %9, %struct.subst* %11)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then, label %if.end.45

if.then:                                          ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %13 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %14 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %15 = load i8*, i8** %Pointer.addr, align 8
  %call6 = call %struct.st* @st_EntryDeleteHelp(%struct.binding* %13, %struct.st* %14, i8* %15, i32* %Found)
  %16 = bitcast %struct.st* %call6 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %12, i8* %16)
  %17 = load i32, i32* %Found, align 4
  %tobool7 = icmp ne i32 %17, 0
  br i1 %tobool7, label %if.then.8, label %if.end.44

if.then.8:                                        ; preds = %if.then
  %18 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes9 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 1
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes9, align 8
  %call10 = call %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP* %19, i8* null)
  %20 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes11 = getelementptr inbounds %struct.st, %struct.st* %20, i32 0, i32 1
  store %struct.LIST_HELP* %call10, %struct.LIST_HELP** %subnodes11, align 8
  %21 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes12 = getelementptr inbounds %struct.st, %struct.st* %21, i32 0, i32 1
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes12, align 8
  %call13 = call i32 @list_Exist(%struct.LIST_HELP* %22)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.then.8
  %23 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes16 = getelementptr inbounds %struct.st, %struct.st* %23, i32 0, i32 1
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes16, align 8
  %call17 = call i8* @list_Car(%struct.LIST_HELP* %24)
  %25 = bitcast i8* %call17 to %struct.st*
  store %struct.st* %25, %struct.st** %CurrentNode, align 8
  %26 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %27 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call18 = call zeroext i16 @st_Max(%struct.st* %27)
  call void @st_SetMax(%struct.st* %26, i16 zeroext %call18)
  %28 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %29 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call19 = call zeroext i16 @st_Min(%struct.st* %29)
  call void @st_SetMin(%struct.st* %28, i16 zeroext %call19)
  %30 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes20 = getelementptr inbounds %struct.st, %struct.st* %30, i32 0, i32 1
  %31 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes20, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %31)
  store %struct.LIST_HELP* %call21, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.15
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call23 = call i32 @list_Exist(%struct.LIST_HELP* %32)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %for.body.25, label %for.end

for.body.25:                                      ; preds = %for.cond.22
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %33)
  %34 = bitcast i8* %call26 to %struct.st*
  store %struct.st* %34, %struct.st** %CurrentNode, align 8
  %35 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call27 = call zeroext i16 @st_Max(%struct.st* %35)
  %conv = zext i16 %call27 to i32
  %36 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call28 = call zeroext i16 @st_Max(%struct.st* %36)
  %conv29 = zext i16 %call28 to i32
  %cmp = icmp sgt i32 %conv, %conv29
  br i1 %cmp, label %if.then.31, label %if.end

if.then.31:                                       ; preds = %for.body.25
  %37 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %38 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call32 = call zeroext i16 @st_Max(%struct.st* %38)
  call void @st_SetMax(%struct.st* %37, i16 zeroext %call32)
  br label %if.end

if.end:                                           ; preds = %if.then.31, %for.body.25
  %39 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call33 = call zeroext i16 @st_Min(%struct.st* %39)
  %conv34 = zext i16 %call33 to i32
  %40 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call35 = call zeroext i16 @st_Min(%struct.st* %40)
  %conv36 = zext i16 %call35 to i32
  %cmp37 = icmp slt i32 %conv34, %conv36
  br i1 %cmp37, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.end
  %41 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %42 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call40 = call zeroext i16 @st_Min(%struct.st* %42)
  call void @st_SetMin(%struct.st* %41, i16 zeroext %call40)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %43 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call42 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %43)
  store %struct.LIST_HELP* %call42, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.43

if.else:                                          ; preds = %if.then.8
  %44 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  call void @st_SetMax(%struct.st* %44, i16 zeroext 0)
  %45 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  call void @st_SetMin(%struct.st* %45, i16 zeroext 0)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %for.end
  br label %for.end.49

if.end.44:                                        ; preds = %if.then
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %for.body
  %call46 = call i32 @cont_BackTrack()
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.45
  %46 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call48 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %46)
  store %struct.LIST_HELP* %call48, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond

for.end.49:                                       ; preds = %if.end.43, %for.cond
  call void @cont_Reset()
  %47 = load i32, i32* %Found, align 4
  ret i32 %47
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_FirstIndexVariable() #1 {
entry:
  ret i32 2001
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @list_Exist(%struct.LIST_HELP* %L) #1 {
entry:
  %L.addr = alloca %struct.LIST_HELP*, align 8
  store %struct.LIST_HELP* %L, %struct.LIST_HELP** %L.addr, align 8
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %L.addr, align 8
  %cmp = icmp ne %struct.LIST_HELP* %0, null
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

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StartBinding() #1 {
entry:
  %0 = load i32, i32* @cont_BINDINGS, align 4
  call void @cont_StackPush(i32 %0)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

declare i32 @subst_Variation(%struct.binding*, %struct.subst*) #2

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

; Function Attrs: nounwind uwtable
define internal %struct.st* @st_EntryDeleteHelp(%struct.binding* %Context, %struct.st* %StIndex, i8* %Pointer, i32* %Found) #0 {
entry:
  %retval = alloca %struct.st*, align 8
  %Context.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Pointer.addr = alloca i8*, align 8
  %Found.addr = alloca i32*, align 8
  %Subnodes = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %Context, %struct.binding** %Context.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store i8* %Pointer, i8** %Pointer.addr, align 8
  store i32* %Found, i32** %Found.addr, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_IsLeaf(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.6

if.then:                                          ; preds = %entry
  %1 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %1, i32 0, i32 2
  %2 = load i8*, i8** %Pointer.addr, align 8
  %call1 = call i32 @list_DeleteFromList(%struct.LIST_HELP** %entries, i8* %2)
  %3 = load i32*, i32** %Found.addr, align 8
  store i32 %call1, i32* %3, align 4
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries2 = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 2
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries2, align 8
  %call3 = call i32 @list_Exist(%struct.LIST_HELP* %5)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  store %struct.st* %6, %struct.st** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %7 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 0
  %8 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Delete(%struct.subst* %8)
  %9 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  call void @st_Free(%struct.st* %9)
  store %struct.st* null, %struct.st** %retval
  br label %return

if.else.6:                                        ; preds = %entry
  %10 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %10, i32 0, i32 1
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.58, %if.else.6
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call7 = call i32 @list_Exist(%struct.LIST_HELP* %12)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %13)
  %14 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %14, %struct.st** %CurrentNode, align 8
  call void @cont_StartBinding()
  %15 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %16 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst10 = getelementptr inbounds %struct.st, %struct.st* %16, i32 0, i32 0
  %17 = load %struct.subst*, %struct.subst** %subst10, align 8
  %call11 = call i32 @subst_Variation(%struct.binding* %15, %struct.subst* %17)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.13, label %if.end.56

if.then.13:                                       ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %19 = load %struct.binding*, %struct.binding** %Context.addr, align 8
  %20 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %21 = load i8*, i8** %Pointer.addr, align 8
  %22 = load i32*, i32** %Found.addr, align 8
  %call14 = call %struct.st* @st_EntryDeleteHelp(%struct.binding* %19, %struct.st* %20, i8* %21, i32* %22)
  %23 = bitcast %struct.st* %call14 to i8*
  call void @list_Rplaca(%struct.LIST_HELP* %18, i8* %23)
  %24 = load i32*, i32** %Found.addr, align 8
  %25 = load i32, i32* %24, align 4
  %tobool15 = icmp ne i32 %25, 0
  br i1 %tobool15, label %if.then.16, label %if.end.55

if.then.16:                                       ; preds = %if.then.13
  %26 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes17 = getelementptr inbounds %struct.st, %struct.st* %26, i32 0, i32 1
  %call18 = call i32 @list_DeleteFromList(%struct.LIST_HELP** %subnodes17, i8* null)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.then.16
  %27 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes21 = getelementptr inbounds %struct.st, %struct.st* %27, i32 0, i32 1
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes21, align 8
  %call22 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %28)
  %call23 = call i32 @list_Empty(%struct.LIST_HELP* %call22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then.25, label %if.end

if.then.25:                                       ; preds = %if.then.20
  %29 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  call void @st_NodeMergeWithSon(%struct.st* %29)
  %30 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  store %struct.st* %30, %struct.st** %retval
  br label %return

if.end:                                           ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end, %if.then.16
  %31 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes27 = getelementptr inbounds %struct.st, %struct.st* %31, i32 0, i32 1
  %32 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes27, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %32)
  %33 = bitcast i8* %call28 to %struct.st*
  store %struct.st* %33, %struct.st** %CurrentNode, align 8
  %34 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %35 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call29 = call zeroext i16 @st_Max(%struct.st* %35)
  call void @st_SetMax(%struct.st* %34, i16 zeroext %call29)
  %36 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %37 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call30 = call zeroext i16 @st_Min(%struct.st* %37)
  call void @st_SetMin(%struct.st* %36, i16 zeroext %call30)
  %38 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes31 = getelementptr inbounds %struct.st, %struct.st* %38, i32 0, i32 1
  %39 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes31, align 8
  %call32 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %39)
  store %struct.LIST_HELP* %call32, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc, %if.end.26
  %40 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call34 = call i32 @list_Exist(%struct.LIST_HELP* %40)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %for.body.36, label %for.end

for.body.36:                                      ; preds = %for.cond.33
  %41 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call37 = call i8* @list_Car(%struct.LIST_HELP* %41)
  %42 = bitcast i8* %call37 to %struct.st*
  store %struct.st* %42, %struct.st** %CurrentNode, align 8
  %43 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call38 = call zeroext i16 @st_Max(%struct.st* %43)
  %conv = zext i16 %call38 to i32
  %44 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call39 = call zeroext i16 @st_Max(%struct.st* %44)
  %conv40 = zext i16 %call39 to i32
  %cmp = icmp sgt i32 %conv, %conv40
  br i1 %cmp, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.body.36
  %45 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %46 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call43 = call zeroext i16 @st_Max(%struct.st* %46)
  call void @st_SetMax(%struct.st* %45, i16 zeroext %call43)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.body.36
  %47 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call45 = call zeroext i16 @st_Min(%struct.st* %47)
  %conv46 = zext i16 %call45 to i32
  %48 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call47 = call zeroext i16 @st_Min(%struct.st* %48)
  %conv48 = zext i16 %call47 to i32
  %cmp49 = icmp slt i32 %conv46, %conv48
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.44
  %49 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %50 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call52 = call zeroext i16 @st_Min(%struct.st* %50)
  call void @st_SetMin(%struct.st* %49, i16 zeroext %call52)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.51, %if.end.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %51 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call54 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %51)
  store %struct.LIST_HELP* %call54, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond.33

for.end:                                          ; preds = %for.cond.33
  %52 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  store %struct.st* %52, %struct.st** %retval
  br label %return

if.end.55:                                        ; preds = %if.then.13
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %for.body
  %call57 = call i32 @cont_BackTrack()
  br label %for.inc.58

for.inc.58:                                       ; preds = %if.end.56
  %53 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Subnodes, align 8
  %call59 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %53)
  store %struct.LIST_HELP* %call59, %struct.LIST_HELP** %Subnodes, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %54 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  store %struct.st* %54, %struct.st** %retval
  br label %return

return:                                           ; preds = %for.end.60, %for.end, %if.then.25, %if.else, %if.then.5
  %55 = load %struct.st*, %struct.st** %retval
  ret %struct.st* %55
}

declare %struct.LIST_HELP* @list_PointerDeleteElement(%struct.LIST_HELP*, i8*) #2

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
define %struct.LIST_HELP* @st_GetUnifier(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.binding* %TermContext, %struct.term* %Term) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %TermContext.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.binding* %TermContext, %struct.binding** %TermContext.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  %4 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %5 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call2 = call %struct.LIST_HELP* @st_TraverseTreeUnifier(%struct.binding* %4, %struct.st* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  call void @cont_Reset()
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %6
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @st_TraverseTreeUnifier(%struct.binding* %IndexContext, %struct.st* %StIndex) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Save = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Save, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %CurrentList, align 8
  call void @cont_StartBinding()
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %call3 = call i32 @cont_StopAndBackTrack()
  %3 = load i32, i32* %Save, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %4

if.end:                                           ; preds = %if.then
  %call7 = call i8* @stack_PopResult()
  %5 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %7, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %8 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %9 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %9, i32 0, i32 0
  %10 = load %struct.subst*, %struct.subst** %subst, align 8
  %call11 = call i32 @subst_Unify(%struct.binding* %8, %struct.subst* %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call13 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call16 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  %call18 = call i32 @list_Exist(%struct.LIST_HELP* %call17)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.else
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @stack_Push(i8* %17)
  call void @cont_StartBinding()
  br label %if.end.23

if.else.22:                                       ; preds = %if.else
  call void @cont_StopAndStartBinding()
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.22, %if.then.20
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %18 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes25 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 1
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes25, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %CurrentList, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call26 to %struct.st*
  store %struct.st* %21, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.15, %for.cond.10
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call27, %struct.LIST_HELP** %CurrentList, align 8
  %call28 = call i32 @cont_BackTrackAndStart()
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @st_GetGen(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %call1 = call %struct.binding* @cont_InstanceContext()
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %call1, %struct.term* %2)
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call3 = call %struct.LIST_HELP* @st_TraverseTreeGen(%struct.binding* %3, %struct.st* %4)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  call void @cont_Reset()
  %5 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_InstanceContext() #1 {
entry:
  %0 = load %struct.binding*, %struct.binding** @cont_INSTANCECONTEXT, align 8
  ret %struct.binding* %0
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @st_TraverseTreeGen(%struct.binding* %IndexContext, %struct.st* %StIndex) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Save = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Save, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %CurrentList, align 8
  call void @cont_StartBinding()
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %call3 = call i32 @cont_StopAndBackTrack()
  %3 = load i32, i32* %Save, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %4

if.end:                                           ; preds = %if.then
  %call7 = call i8* @stack_PopResult()
  %5 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %7, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %8 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %9 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %9, i32 0, i32 0
  %10 = load %struct.subst*, %struct.subst** %subst, align 8
  %call11 = call i32 @subst_Match(%struct.binding* %8, %struct.subst* %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call13 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call16 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  %tobool18 = icmp ne %struct.LIST_HELP* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_Push(i8* %17)
  call void @cont_StartBinding()
  br label %if.end.22

if.else.21:                                       ; preds = %if.else
  call void @cont_StopAndStartBinding()
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %18 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes24 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 1
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes24, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %CurrentList, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call25 to %struct.st*
  store %struct.st* %21, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.15, %for.cond.10
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call i32 @cont_BackTrackAndStart()
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @st_GetGenPreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %call1 = call %struct.binding* @cont_InstanceContext()
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %call1, %struct.term* %2)
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_ComputeSize(%struct.term* %5)
  %conv = trunc i32 %call3 to i16
  %call4 = call %struct.LIST_HELP* @st_TraverseTreeGenPreTest(%struct.binding* %3, %struct.st* %4, i16 zeroext %conv)
  store %struct.LIST_HELP* %call4, %struct.LIST_HELP** %Result, align 8
  call void @cont_Reset()
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %6
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @st_TraverseTreeGenPreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, i16 zeroext %MinMax) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %MinMax.addr = alloca i16, align 2
  %Save = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store i16 %MinMax, i16* %MinMax.addr, align 2
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Save, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %CurrentList, align 8
  call void @cont_StartBinding()
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %call3 = call i32 @cont_StopAndBackTrack()
  %3 = load i32, i32* %Save, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %4

if.end:                                           ; preds = %if.then
  %call7 = call i8* @stack_PopResult()
  %5 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %7, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %8 = load i16, i16* %MinMax.addr, align 2
  %conv = zext i16 %8 to i32
  %9 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call11 = call zeroext i16 @st_Min(%struct.st* %9)
  %conv12 = zext i16 %call11 to i32
  %cmp = icmp sge i32 %conv, %conv12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.10
  %10 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %11, i32 0, i32 0
  %12 = load %struct.subst*, %struct.subst** %subst, align 8
  %call14 = call i32 @subst_Match(%struct.binding* %10, %struct.subst* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.10
  %13 = phi i1 [ false, %for.cond.10 ], [ %tobool15, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call16 = call i32 @st_IsLeaf(%struct.st* %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call19 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %16, %struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %tobool21 = icmp ne %struct.LIST_HELP* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  %20 = bitcast %struct.LIST_HELP* %call23 to i8*
  call void @stack_Push(i8* %20)
  call void @cont_StartBinding()
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  call void @cont_StopAndStartBinding()
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %21 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes27 = getelementptr inbounds %struct.st, %struct.st* %21, i32 0, i32 1
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes27, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %CurrentList, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call28 to %struct.st*
  store %struct.st* %24, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.18, %land.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %CurrentList, align 8
  %call30 = call i32 @cont_BackTrackAndStart()
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @st_GetInstance(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  %4 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %5 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call2 = call %struct.LIST_HELP* @st_TraverseTreeInstance(%struct.binding* %4, %struct.st* %5)
  store %struct.LIST_HELP* %call2, %struct.LIST_HELP** %Result, align 8
  call void @cont_Reset()
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %6
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @st_TraverseTreeInstance(%struct.binding* %IndexContext, %struct.st* %StIndex) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Save = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Save, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %CurrentList, align 8
  call void @cont_StartBinding()
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %call3 = call i32 @cont_StopAndBackTrack()
  %3 = load i32, i32* %Save, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %4

if.end:                                           ; preds = %if.then
  %call7 = call i8* @stack_PopResult()
  %5 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %7, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %8 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %9 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %9, i32 0, i32 0
  %10 = load %struct.subst*, %struct.subst** %subst, align 8
  %call11 = call i32 @subst_MatchReverse(%struct.binding* %8, %struct.subst* %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.10
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call13 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call16 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %13, %struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call16, %struct.LIST_HELP** %Result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %15 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %15)
  %tobool18 = icmp ne %struct.LIST_HELP* %call17, null
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.else
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call20 to i8*
  call void @stack_Push(i8* %17)
  call void @cont_StartBinding()
  br label %if.end.22

if.else.21:                                       ; preds = %if.else
  call void @cont_StopAndStartBinding()
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.19
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %18 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes24 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 1
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes24, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %CurrentList, align 8
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call25 to %struct.st*
  store %struct.st* %21, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.15, %for.cond.10
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %22)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call i32 @cont_BackTrackAndStart()
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define %struct.LIST_HELP* @st_GetInstancePreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %FirstDomain = alloca i32, align 4
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %call = call i32 @symbol_FirstIndexVariable()
  store i32 %call, i32* %FirstDomain, align 4
  %0 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %1 = load i32, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call1 = call i32 @cont_CreateBinding(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* %3)
  %4 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %5 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call2 = call i32 @term_ComputeSize(%struct.term* %6)
  %conv = trunc i32 %call2 to i16
  %call3 = call %struct.LIST_HELP* @st_TraverseTreeInstancePreTest(%struct.binding* %4, %struct.st* %5, i16 zeroext %conv)
  store %struct.LIST_HELP* %call3, %struct.LIST_HELP** %Result, align 8
  call void @cont_Reset()
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.LIST_HELP* @st_TraverseTreeInstancePreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, i16 zeroext %MinMax) #0 {
entry:
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %MinMax.addr = alloca i16, align 2
  %Save = alloca i32, align 4
  %Result = alloca %struct.LIST_HELP*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store i16 %MinMax, i16* %MinMax.addr, align 2
  %call = call i32 @stack_Bottom()
  store i32 %call, i32* %Save, align 4
  %call1 = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call1, %struct.LIST_HELP** %Result, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %1, %struct.LIST_HELP** %CurrentList, align 8
  call void @cont_StartBinding()
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call2 = call i32 @list_Empty(%struct.LIST_HELP* %2)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %for.cond
  %call3 = call i32 @cont_StopAndBackTrack()
  %3 = load i32, i32* %Save, align 4
  %call4 = call i32 @stack_Empty(i32 %3)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  ret %struct.LIST_HELP* %4

if.end:                                           ; preds = %if.then
  %call7 = call i8* @stack_PopResult()
  %5 = bitcast i8* %call7 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %5, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %for.cond
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call9 = call i8* @list_Car(%struct.LIST_HELP* %6)
  %7 = bitcast i8* %call9 to %struct.st*
  store %struct.st* %7, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.end.8
  %8 = load i16, i16* %MinMax.addr, align 2
  %conv = zext i16 %8 to i32
  %9 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call11 = call zeroext i16 @st_Max(%struct.st* %9)
  %conv12 = zext i16 %call11 to i32
  %cmp = icmp sle i32 %conv, %conv12
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.10
  %10 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %11, i32 0, i32 0
  %12 = load %struct.subst*, %struct.subst** %subst, align 8
  %call14 = call i32 @subst_MatchReverse(%struct.binding* %10, %struct.subst* %12)
  %tobool15 = icmp ne i32 %call14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.10
  %13 = phi i1 [ false, %for.cond.10 ], [ %tobool15, %land.rhs ]
  br i1 %13, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %14 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call16 = call i32 @st_IsLeaf(%struct.st* %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %17 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call19 = call %struct.LIST_HELP* @list_Append(%struct.LIST_HELP* %16, %struct.LIST_HELP* %17)
  store %struct.LIST_HELP* %call19, %struct.LIST_HELP** %Result, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call20 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %18)
  %tobool21 = icmp ne %struct.LIST_HELP* %call20, null
  br i1 %tobool21, label %if.then.22, label %if.else.24

if.then.22:                                       ; preds = %if.else
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call23 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %19)
  %20 = bitcast %struct.LIST_HELP* %call23 to i8*
  call void @stack_Push(i8* %20)
  call void @cont_StartBinding()
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  call void @cont_StopAndStartBinding()
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.24, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %21 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes27 = getelementptr inbounds %struct.st, %struct.st* %21, i32 0, i32 1
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes27, align 8
  store %struct.LIST_HELP* %22, %struct.LIST_HELP** %CurrentList, align 8
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %23)
  %24 = bitcast i8* %call28 to %struct.st*
  store %struct.st* %24, %struct.st** %CurrentNode, align 8
  br label %for.cond.10

for.end:                                          ; preds = %if.then.18, %land.end
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %25)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %CurrentList, align 8
  %call30 = call i32 @cont_BackTrackAndStart()
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define void @st_CancelExistRetrieval() #0 {
entry:
  %0 = load i32, i32* @st_CURRENT_RETRIEVAL, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @st_STACKSAVE, align 4
  call void @st_StackSetBottom(i32 %1)
  %2 = load i32, i32* @st_WHICH_CONTEXTS, align 4
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.then
  call void @cont_Reset()
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.then
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fflush(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i32 0, i32 0), i32 1217)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i32 0, i32 0))
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call3 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %5)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  store i32 0, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 1, i32* @st_WHICH_CONTEXTS, align 4
  store %struct.binding* null, %struct.binding** @st_INDEX_CONTEXT, align 8
  store i16 0, i16* @st_EXIST_MINMAX, align 2
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @st_StackSetBottom(i32 %Pointer) #1 {
entry:
  %Pointer.addr = alloca i32, align 4
  store i32 %Pointer, i32* %Pointer.addr, align 4
  %0 = load i32, i32* %Pointer.addr, align 4
  store i32 %0, i32* @st_STACKPOINTER, align 4
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare void @misc_ErrorReport(i8*, ...) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @misc_DumpCore() #1 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %0)
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

; Function Attrs: nounwind uwtable
define i8* @st_ExistUnifier(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.binding* %TermContext, %struct.term* %Term) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %TermContext.addr = alloca %struct.binding*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FirstDomain = alloca i32, align 4
  %Result = alloca i8*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.binding* %TermContext, %struct.binding** %TermContext.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Exist(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 0, i32* @st_WHICH_CONTEXTS, align 4
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %1, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call1 = call i32 @st_StackBottom()
  store i32 %call1, i32* @st_STACKSAVE, align 4
  %call2 = call i32 @symbol_FirstIndexVariable()
  store i32 %call2, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load i32, i32* %FirstDomain, align 4
  %4 = load %struct.binding*, %struct.binding** %TermContext.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @cont_CreateBinding(%struct.binding* %2, i32 %3, %struct.binding* %4, %struct.term* %5)
  call void @cont_StartBinding()
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 1
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %8 = bitcast %struct.LIST_HELP* %7 to i8*
  call void @st_StackPush(i8* %8)
  call void @cont_StartBinding()
  %9 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call4 = call i8* @st_TraverseForExistUnifier(%struct.binding* %9)
  store i8* %call4, i8** %Result, align 8
  %10 = load i8*, i8** %Result, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @st_CancelExistRetrieval()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load i8*, i8** %Result, align 8
  store i8* %11, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_Exist(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %cmp = icmp ne %struct.st* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call = call i32 @st_IsLeaf(%struct.st* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %2 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call1 = call i32 @st_IsInner(%struct.st* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %3 = phi i1 [ true, %land.rhs ], [ %tobool2, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %4 = phi i1 [ false, %entry ], [ %3, %lor.end ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_StackBottom() #1 {
entry:
  %0 = load i32, i32* @st_STACKPOINTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @st_StackPush(i8* %Entry) #1 {
entry:
  %Entry.addr = alloca i8*, align 8
  store i8* %Entry, i8** %Entry.addr, align 8
  %0 = load i8*, i8** %Entry.addr, align 8
  %1 = load i32, i32* @st_STACKPOINTER, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @st_STACKPOINTER, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [1000 x i8*], [1000 x i8*]* @st_STACK, i32 0, i64 %idxprom
  store i8* %0, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i8* @st_TraverseForExistUnifier(%struct.binding* %IndexContext) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CurrentList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @cont_StopAndBackTrack()
  %1 = load i32, i32* @st_STACKSAVE, align 4
  %call3 = call i32 @st_StackEmpty(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i8* @st_StackPopResult()
  %2 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call8 to %struct.st*
  store %struct.st* %4, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.7
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 0
  %7 = load %struct.subst*, %struct.subst** %subst, align 8
  %call10 = call i32 @subst_Unify(%struct.binding* %5, %struct.subst* %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.9
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  %call13 = call i32 @list_Exist(%struct.LIST_HELP* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  %10 = bitcast %struct.LIST_HELP* %call16 to i8*
  call void @st_StackPush(i8* %10)
  call void @cont_StartBinding()
  br label %if.end.17

if.else:                                          ; preds = %for.body
  call void @cont_StopAndStartBinding()
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call18 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %14 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @st_StackPush(i8* %14)
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries22 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries22, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  store i8* %call23, i8** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %17 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 1
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %CurrentList, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call25 to %struct.st*
  store %struct.st* %20, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call i32 @cont_BackTrackAndStart()
  br label %for.cond

return:                                           ; preds = %if.then.20, %if.then.5
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i8* @st_ExistGen(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FirstDomain = alloca i32, align 4
  %Result = alloca i8*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Exist(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 2, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 0, i32* @st_WHICH_CONTEXTS, align 4
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %1, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call1 = call i32 @st_StackBottom()
  store i32 %call1, i32* @st_STACKSAVE, align 4
  %call2 = call i32 @symbol_FirstIndexVariable()
  store i32 %call2, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load i32, i32* %FirstDomain, align 4
  %call3 = call %struct.binding* @cont_InstanceContext()
  %4 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @cont_CreateBinding(%struct.binding* %2, i32 %3, %struct.binding* %call3, %struct.term* %4)
  call void @cont_StartBinding()
  %5 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %5, i32 0, i32 1
  %6 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %7 = bitcast %struct.LIST_HELP* %6 to i8*
  call void @st_StackPush(i8* %7)
  call void @cont_StartBinding()
  %8 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call5 = call i8* @st_TraverseForExistGen(%struct.binding* %8)
  store i8* %call5, i8** %Result, align 8
  %9 = load i8*, i8** %Result, align 8
  %cmp = icmp eq i8* %9, null
  br i1 %cmp, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  call void @st_CancelExistRetrieval()
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %10 = load i8*, i8** %Result, align 8
  store i8* %10, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %11 = load i8*, i8** %retval
  ret i8* %11
}

; Function Attrs: nounwind uwtable
define internal i8* @st_TraverseForExistGen(%struct.binding* %IndexContext) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CurrentList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @cont_StopAndBackTrack()
  %1 = load i32, i32* @st_STACKSAVE, align 4
  %call3 = call i32 @st_StackEmpty(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i8* @st_StackPopResult()
  %2 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call8 to %struct.st*
  store %struct.st* %4, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.7
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 0
  %7 = load %struct.subst*, %struct.subst** %subst, align 8
  %call10 = call i32 @subst_Match(%struct.binding* %5, %struct.subst* %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.9
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  %call13 = call i32 @list_Exist(%struct.LIST_HELP* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  %10 = bitcast %struct.LIST_HELP* %call16 to i8*
  call void @st_StackPush(i8* %10)
  call void @cont_StartBinding()
  br label %if.end.17

if.else:                                          ; preds = %for.body
  call void @cont_StopAndStartBinding()
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call18 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %14 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @st_StackPush(i8* %14)
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries22 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries22, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  store i8* %call23, i8** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %17 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 1
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %CurrentList, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call25 to %struct.st*
  store %struct.st* %20, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call i32 @cont_BackTrackAndStart()
  br label %for.cond

return:                                           ; preds = %if.then.20, %if.then.5
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i8* @st_ExistGenPreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FirstDomain = alloca i32, align 4
  %Result = alloca i8*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Exist(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 0, i32* @st_WHICH_CONTEXTS, align 4
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %1, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call1 = call i32 @st_StackBottom()
  store i32 %call1, i32* @st_STACKSAVE, align 4
  %call2 = call i32 @symbol_FirstIndexVariable()
  store i32 %call2, i32* %FirstDomain, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_ComputeSize(%struct.term* %2)
  %conv = trunc i32 %call3 to i16
  store i16 %conv, i16* @st_EXIST_MINMAX, align 2
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %4 = load i32, i32* %FirstDomain, align 4
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @cont_CreateBinding(%struct.binding* %3, i32 %4, %struct.binding* %5, %struct.term* %6)
  call void @cont_StartBinding()
  %7 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 1
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %9 = bitcast %struct.LIST_HELP* %8 to i8*
  call void @st_StackPush(i8* %9)
  call void @cont_StartBinding()
  %10 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call5 = call i8* @st_TraverseForExistGenPreTest(%struct.binding* %10)
  store i8* %call5, i8** %Result, align 8
  %11 = load i8*, i8** %Result, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  call void @st_CancelExistRetrieval()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load i8*, i8** %Result, align 8
  store i8* %12, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal i8* @st_TraverseForExistGenPreTest(%struct.binding* %IndexContext) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CurrentList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @cont_StopAndBackTrack()
  %1 = load i32, i32* @st_STACKSAVE, align 4
  %call3 = call i32 @st_StackEmpty(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i8* @st_StackPopResult()
  %2 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call8 to %struct.st*
  store %struct.st* %4, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.7
  %5 = load i16, i16* @st_EXIST_MINMAX, align 2
  %conv = zext i16 %5 to i32
  %6 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call10 = call zeroext i16 @st_Min(%struct.st* %6)
  %conv11 = zext i16 %call10 to i32
  %cmp = icmp sge i32 %conv, %conv11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %7 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %8 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %8, i32 0, i32 0
  %9 = load %struct.subst*, %struct.subst** %subst, align 8
  %call13 = call i32 @subst_Match(%struct.binding* %7, %struct.subst* %9)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %10 = phi i1 [ false, %for.cond.9 ], [ %tobool14, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  %call16 = call i32 @list_Exist(%struct.LIST_HELP* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call19 to i8*
  call void @st_StackPush(i8* %13)
  call void @cont_StartBinding()
  br label %if.end.20

if.else:                                          ; preds = %for.body
  call void @cont_StopAndStartBinding()
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %14 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call21 = call i32 @st_IsLeaf(%struct.st* %14)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.20
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call24 to i8*
  call void @st_StackPush(i8* %17)
  %18 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries25 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 2
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries25, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %19)
  store i8* %call26, i8** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %20 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %20, i32 0, i32 1
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %CurrentList, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call28 to %struct.st*
  store %struct.st* %23, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.end:                                          ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %CurrentList, align 8
  %call30 = call i32 @cont_BackTrackAndStart()
  br label %for.cond

return:                                           ; preds = %if.then.23, %if.then.5
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define i8* @st_ExistInstance(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FirstDomain = alloca i32, align 4
  %Result = alloca i8*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Exist(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 4, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 0, i32* @st_WHICH_CONTEXTS, align 4
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %1, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call1 = call i32 @st_StackBottom()
  store i32 %call1, i32* @st_STACKSAVE, align 4
  %call2 = call i32 @symbol_FirstIndexVariable()
  store i32 %call2, i32* %FirstDomain, align 4
  %2 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %3 = load i32, i32* %FirstDomain, align 4
  %4 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %5 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @cont_CreateBinding(%struct.binding* %2, i32 %3, %struct.binding* %4, %struct.term* %5)
  call void @cont_StartBinding()
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 1
  %7 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %8 = bitcast %struct.LIST_HELP* %7 to i8*
  call void @st_StackPush(i8* %8)
  call void @cont_StartBinding()
  %9 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call4 = call i8* @st_TraverseForExistInstance(%struct.binding* %9)
  store i8* %call4, i8** %Result, align 8
  %10 = load i8*, i8** %Result, align 8
  %cmp = icmp eq i8* %10, null
  br i1 %cmp, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @st_CancelExistRetrieval()
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %11 = load i8*, i8** %Result, align 8
  store i8* %11, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: nounwind uwtable
define internal i8* @st_TraverseForExistInstance(%struct.binding* %IndexContext) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CurrentList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @cont_StopAndBackTrack()
  %1 = load i32, i32* @st_STACKSAVE, align 4
  %call3 = call i32 @st_StackEmpty(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i8* @st_StackPopResult()
  %2 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call8 to %struct.st*
  store %struct.st* %4, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.7
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %6, i32 0, i32 0
  %7 = load %struct.subst*, %struct.subst** %subst, align 8
  %call10 = call i32 @subst_MatchReverse(%struct.binding* %5, %struct.subst* %7)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.9
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call12 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %8)
  %call13 = call i32 @list_Exist(%struct.LIST_HELP* %call12)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %for.body
  %9 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call16 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %9)
  %10 = bitcast %struct.LIST_HELP* %call16 to i8*
  call void @st_StackPush(i8* %10)
  call void @cont_StartBinding()
  br label %if.end.17

if.else:                                          ; preds = %for.body
  call void @cont_StopAndStartBinding()
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.15
  %11 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call18 = call i32 @st_IsLeaf(%struct.st* %11)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  %12 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call21 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %13)
  %14 = bitcast %struct.LIST_HELP* %call21 to i8*
  call void @st_StackPush(i8* %14)
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries22 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries22, align 8
  %call23 = call i8* @list_Car(%struct.LIST_HELP* %16)
  store i8* %call23, i8** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %17 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 1
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %CurrentList, align 8
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call25 = call i8* @list_Car(%struct.LIST_HELP* %19)
  %20 = bitcast i8* %call25 to %struct.st*
  store %struct.st* %20, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call26 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %21)
  store %struct.LIST_HELP* %call26, %struct.LIST_HELP** %CurrentList, align 8
  %call27 = call i32 @cont_BackTrackAndStart()
  br label %for.cond

return:                                           ; preds = %if.then.20, %if.then.5
  %22 = load i8*, i8** %retval
  ret i8* %22
}

; Function Attrs: nounwind uwtable
define i8* @st_ExistInstancePreTest(%struct.binding* %IndexContext, %struct.st* %StIndex, %struct.term* %Term) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %StIndex.addr = alloca %struct.st*, align 8
  %Term.addr = alloca %struct.term*, align 8
  %FirstDomain = alloca i32, align 4
  %Result = alloca i8*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store %struct.term* %Term, %struct.term** %Term.addr, align 8
  call void @cont_Check()
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Exist(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 5, i32* @st_CURRENT_RETRIEVAL, align 4
  store i32 0, i32* @st_WHICH_CONTEXTS, align 4
  %1 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  store %struct.binding* %1, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call1 = call i32 @st_StackBottom()
  store i32 %call1, i32* @st_STACKSAVE, align 4
  %call2 = call i32 @symbol_FirstIndexVariable()
  store i32 %call2, i32* %FirstDomain, align 4
  %2 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call3 = call i32 @term_ComputeSize(%struct.term* %2)
  %conv = trunc i32 %call3 to i16
  store i16 %conv, i16* @st_EXIST_MINMAX, align 2
  %3 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %4 = load i32, i32* %FirstDomain, align 4
  %5 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %6 = load %struct.term*, %struct.term** %Term.addr, align 8
  %call4 = call i32 @cont_CreateBinding(%struct.binding* %3, i32 %4, %struct.binding* %5, %struct.term* %6)
  call void @cont_StartBinding()
  %7 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 1
  %8 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %9 = bitcast %struct.LIST_HELP* %8 to i8*
  call void @st_StackPush(i8* %9)
  call void @cont_StartBinding()
  %10 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %call5 = call i8* @st_TraverseForExistInstancePreTest(%struct.binding* %10)
  store i8* %call5, i8** %Result, align 8
  %11 = load i8*, i8** %Result, align 8
  %cmp = icmp eq i8* %11, null
  br i1 %cmp, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  call void @st_CancelExistRetrieval()
  br label %if.end

if.end:                                           ; preds = %if.then.7, %if.then
  %12 = load i8*, i8** %Result, align 8
  store i8* %12, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal i8* @st_TraverseForExistInstancePreTest(%struct.binding* %IndexContext) #0 {
entry:
  %retval = alloca i8*, align 8
  %IndexContext.addr = alloca %struct.binding*, align 8
  %CurrentList = alloca %struct.LIST_HELP*, align 8
  %CurrentNode = alloca %struct.st*, align 8
  store %struct.binding* %IndexContext, %struct.binding** %IndexContext.addr, align 8
  %call = call %struct.LIST_HELP* @list_Nil()
  store %struct.LIST_HELP* %call, %struct.LIST_HELP** %CurrentList, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %0 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %0)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.7

if.then:                                          ; preds = %for.cond
  %call2 = call i32 @cont_StopAndBackTrack()
  %1 = load i32, i32* @st_STACKSAVE, align 4
  %call3 = call i32 @st_StackEmpty(i32 %1)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call6 = call i8* @st_StackPopResult()
  %2 = bitcast i8* %call6 to %struct.LIST_HELP*
  store %struct.LIST_HELP* %2, %struct.LIST_HELP** %CurrentList, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %for.cond
  %3 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call8 = call i8* @list_Car(%struct.LIST_HELP* %3)
  %4 = bitcast i8* %call8 to %struct.st*
  store %struct.st* %4, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.7
  %5 = load i16, i16* @st_EXIST_MINMAX, align 2
  %conv = zext i16 %5 to i32
  %6 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call10 = call zeroext i16 @st_Max(%struct.st* %6)
  %conv11 = zext i16 %call10 to i32
  %cmp = icmp sle i32 %conv, %conv11
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.9
  %7 = load %struct.binding*, %struct.binding** %IndexContext.addr, align 8
  %8 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %8, i32 0, i32 0
  %9 = load %struct.subst*, %struct.subst** %subst, align 8
  %call13 = call i32 @subst_MatchReverse(%struct.binding* %7, %struct.subst* %9)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.9
  %10 = phi i1 [ false, %for.cond.9 ], [ %tobool14, %land.rhs ]
  br i1 %10, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call15 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %11)
  %call16 = call i32 @list_Exist(%struct.LIST_HELP* %call15)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %for.body
  %12 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call19 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %12)
  %13 = bitcast %struct.LIST_HELP* %call19 to i8*
  call void @st_StackPush(i8* %13)
  call void @cont_StartBinding()
  br label %if.end.20

if.else:                                          ; preds = %for.body
  call void @cont_StopAndStartBinding()
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.18
  %14 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %call21 = call i32 @st_IsLeaf(%struct.st* %14)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.27

if.then.23:                                       ; preds = %if.end.20
  %15 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %call24 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %16)
  %17 = bitcast %struct.LIST_HELP* %call24 to i8*
  call void @st_StackPush(i8* %17)
  %18 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %entries25 = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 2
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries25, align 8
  %call26 = call i8* @list_Car(%struct.LIST_HELP* %19)
  store i8* %call26, i8** %retval
  br label %return

if.end.27:                                        ; preds = %if.end.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %20 = load %struct.st*, %struct.st** %CurrentNode, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %20, i32 0, i32 1
  %21 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %21, %struct.LIST_HELP** %CurrentList, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call28 = call i8* @list_Car(%struct.LIST_HELP* %22)
  %23 = bitcast i8* %call28 to %struct.st*
  store %struct.st* %23, %struct.st** %CurrentNode, align 8
  br label %for.cond.9

for.end:                                          ; preds = %land.end
  %24 = load %struct.LIST_HELP*, %struct.LIST_HELP** %CurrentList, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %24)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %CurrentList, align 8
  %call30 = call i32 @cont_BackTrackAndStart()
  br label %for.cond

return:                                           ; preds = %if.then.23, %if.then.5
  %25 = load i8*, i8** %retval
  ret i8* %25
}

; Function Attrs: nounwind uwtable
define i8* @st_NextCandidate() #0 {
entry:
  %retval = alloca i8*, align 8
  %Result = alloca %struct.LIST_HELP*, align 8
  %NewResult = alloca i8*, align 8
  %call = call i8* @st_StackPopResult()
  %0 = bitcast i8* %call to %struct.LIST_HELP*
  store %struct.LIST_HELP* %0, %struct.LIST_HELP** %Result, align 8
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call1 = call i32 @list_Exist(%struct.LIST_HELP* %1)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call2 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %2)
  %3 = bitcast %struct.LIST_HELP* %call2 to i8*
  call void @st_StackPush(i8* %3)
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Result, align 8
  %call3 = call i8* @list_Car(%struct.LIST_HELP* %4)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  store i8* null, i8** %NewResult, align 8
  %5 = load i32, i32* @st_WHICH_CONTEXTS, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.4, label %if.else.17

if.then.4:                                        ; preds = %if.else
  %6 = load i32, i32* @st_CURRENT_RETRIEVAL, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.6
    i32 3, label %sw.bb.8
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.then.4
  %7 = load %struct.binding*, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call5 = call i8* @st_TraverseForExistUnifier(%struct.binding* %7)
  store i8* %call5, i8** %NewResult, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then.4
  %8 = load %struct.binding*, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call7 = call i8* @st_TraverseForExistGen(%struct.binding* %8)
  store i8* %call7, i8** %NewResult, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.then.4
  %9 = load %struct.binding*, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call9 = call i8* @st_TraverseForExistGenPreTest(%struct.binding* %9)
  store i8* %call9, i8** %NewResult, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.4
  %10 = load %struct.binding*, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call11 = call i8* @st_TraverseForExistInstance(%struct.binding* %10)
  store i8* %call11, i8** %NewResult, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.then.4
  %11 = load %struct.binding*, %struct.binding** @st_INDEX_CONTEXT, align 8
  %call13 = call i8* @st_TraverseForExistInstancePreTest(%struct.binding* %11)
  store i8* %call13, i8** %NewResult, align 8
  br label %sw.default

sw.default:                                       ; preds = %if.then.4, %sw.bb.12
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %12)
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i32 0, i32 0), i32 1577)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i32 0, i32 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call16 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %14)
  call void @misc_DumpCore()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.10, %sw.bb.8, %sw.bb.6, %sw.bb
  br label %if.end

if.else.17:                                       ; preds = %if.else
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call18 = call i32 @fflush(%struct._IO_FILE* %15)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i32 0, i32 0), i32 1582)
  call void (i8*, ...) @misc_ErrorReport(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i32 0, i32 0))
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call20 = call i32 @fputs(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %17)
  call void @misc_DumpCore()
  br label %if.end

if.end:                                           ; preds = %if.else.17, %sw.epilog
  %18 = load i8*, i8** %NewResult, align 8
  %cmp21 = icmp eq i8* %18, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end
  call void @st_CancelExistRetrieval()
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.end
  %19 = load i8*, i8** %NewResult, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @st_StackPopResult() #1 {
entry:
  %0 = load i32, i32* @st_STACKPOINTER, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* @st_STACKPOINTER, align 4
  %idxprom = sext i32 %dec to i64
  %arrayidx = getelementptr inbounds [1000 x i8*], [1000 x i8*]* @st_STACK, i32 0, i64 %idxprom
  %1 = load i8*, i8** %arrayidx, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define void @st_Print(%struct.st* %StIndex, void (i8*)* %Print) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  %Print.addr = alloca void (i8*)*, align 8
  %Scan = alloca %struct.LIST_HELP*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  store void (i8*)* %Print, void (i8*)** %Print.addr, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call = call i32 @st_Empty(%struct.st* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 @puts(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call2 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call3 = call zeroext i16 @st_Max(%struct.st* %2)
  %conv = zext i16 %call3 to i32
  %3 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call4 = call zeroext i16 @st_Min(%struct.st* %3)
  %conv5 = zext i16 %call4 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 %conv, i32 %conv5)
  %4 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %4, i32 0, i32 0
  %5 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Print(%struct.subst* %5)
  %call7 = call i32 @putchar(i32 10)
  %6 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %call8 = call i32 @st_IsLeaf(%struct.st* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.else.22

if.then.10:                                       ; preds = %if.end
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  %tobool12 = icmp ne void (i8*)* %8, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  %9 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %9, i32 0, i32 2
  %10 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  store %struct.LIST_HELP* %10, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %cmp = icmp ne %struct.LIST_HELP* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call15 = call i32 @putchar(i32 32)
  %12 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  %13 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call16 = call i8* @list_Car(%struct.LIST_HELP* %13)
  call void %12(i8* %call16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call17 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %14)
  store %struct.LIST_HELP* %call17, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.21

if.else:                                          ; preds = %if.then.10
  %15 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries18 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 2
  %16 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries18, align 8
  %call19 = call i32 @list_Length(%struct.LIST_HELP* %16)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %call19)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %for.end
  br label %if.end.31

if.else.22:                                       ; preds = %if.end
  %17 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %17, i32 0, i32 1
  %18 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %18, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.28, %if.else.22
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %cmp24 = icmp ne %struct.LIST_HELP* %19, null
  br i1 %cmp24, label %for.body.26, label %for.end.30

for.body.26:                                      ; preds = %for.cond.23
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call27 = call i8* @list_Car(%struct.LIST_HELP* %20)
  %21 = bitcast i8* %call27 to %struct.st*
  %22 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  call void @st_PrintHelp(%struct.st* %21, i32 2, void (i8*)* %22)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.26
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call29 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call29, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.23

for.end.30:                                       ; preds = %for.cond.23
  br label %if.end.31

if.end.31:                                        ; preds = %for.end.30, %if.end.21
  %call32 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.31, %if.then
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_Empty(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %cmp = icmp eq %struct.st* %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call = call i32 @st_IsLeaf(%struct.st* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs
  %2 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call1 = call i32 @st_IsInner(%struct.st* %2)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %3 = phi i1 [ false, %lor.rhs ], [ %lnot, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %entry
  %4 = phi i1 [ true, %entry ], [ %3, %land.end ]
  %lor.ext = zext i1 %4 to i32
  ret i32 %lor.ext
}

declare i32 @puts(i8*) #2

declare i32 @printf(i8*, ...) #2

declare void @subst_Print(%struct.subst*) #2

declare i32 @putchar(i32) #2

declare i32 @list_Length(%struct.LIST_HELP*) #2

; Function Attrs: nounwind uwtable
define internal void @st_PrintHelp(%struct.st* %St, i32 %Position, void (i8*)* %Print) #0 {
entry:
  %St.addr = alloca %struct.st*, align 8
  %Position.addr = alloca i32, align 4
  %Print.addr = alloca void (i8*)*, align 8
  %i = alloca i32, align 4
  %Scan = alloca %struct.LIST_HELP*, align 8
  %Scan44 = alloca %struct.LIST_HELP*, align 8
  store %struct.st* %St, %struct.st** %St.addr, align 8
  store i32 %Position, i32* %Position.addr, align 4
  store void (i8*)* %Print, void (i8*)** %Print.addr, align 8
  %0 = load %struct.st*, %struct.st** %St.addr, align 8
  %cmp = icmp eq %struct.st* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.53

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %Position.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call i32 @putchar(i32 32)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call2 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.7, %for.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %Position.addr, align 4
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body.5, label %for.end.9

for.body.5:                                       ; preds = %for.cond.3
  %call6 = call i32 @putchar(i32 32)
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.body.5
  %6 = load i32, i32* %i, align 4
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, i32* %i, align 4
  br label %for.cond.3

for.end.9:                                        ; preds = %for.cond.3
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call10 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %7)
  %8 = load %struct.st*, %struct.st** %St.addr, align 8
  %call11 = call zeroext i16 @st_Max(%struct.st* %8)
  %conv = zext i16 %call11 to i32
  %9 = load %struct.st*, %struct.st** %St.addr, align 8
  %call12 = call zeroext i16 @st_Min(%struct.st* %9)
  %conv13 = zext i16 %call12 to i32
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i32 %conv, i32 %conv13)
  %10 = load %struct.st*, %struct.st** %St.addr, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %10, i32 0, i32 0
  %11 = load %struct.subst*, %struct.subst** %subst, align 8
  call void @subst_Print(%struct.subst* %11)
  %call15 = call i32 @putchar(i32 10)
  %12 = load %struct.st*, %struct.st** %St.addr, align 8
  %call16 = call i32 @st_IsLeaf(%struct.st* %12)
  %tobool = icmp ne i32 %call16, 0
  br i1 %tobool, label %if.then.17, label %if.else.43

if.then.17:                                       ; preds = %for.end.9
  store i32 0, i32* %i, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.23, %if.then.17
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %Position.addr, align 4
  %cmp19 = icmp slt i32 %13, %14
  br i1 %cmp19, label %for.body.21, label %for.end.25

for.body.21:                                      ; preds = %for.cond.18
  %call22 = call i32 @putchar(i32 32)
  br label %for.inc.23

for.inc.23:                                       ; preds = %for.body.21
  %15 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %15, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond.18

for.end.25:                                       ; preds = %for.cond.18
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call26 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %16)
  %17 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  %tobool27 = icmp ne void (i8*)* %17, null
  br i1 %tobool27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.end.25
  %18 = load %struct.st*, %struct.st** %St.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %18, i32 0, i32 2
  %19 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  store %struct.LIST_HELP* %19, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.35, %if.then.28
  %20 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %cmp30 = icmp ne %struct.LIST_HELP* %20, null
  br i1 %cmp30, label %for.body.32, label %for.end.37

for.body.32:                                      ; preds = %for.cond.29
  %call33 = call i32 @putchar(i32 32)
  %21 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  %22 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call34 = call i8* @list_Car(%struct.LIST_HELP* %22)
  call void %21(i8* %call34)
  br label %for.inc.35

for.inc.35:                                       ; preds = %for.body.32
  %23 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan, align 8
  %call36 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %23)
  store %struct.LIST_HELP* %call36, %struct.LIST_HELP** %Scan, align 8
  br label %for.cond.29

for.end.37:                                       ; preds = %for.cond.29
  br label %if.end.41

if.else:                                          ; preds = %for.end.25
  %24 = load %struct.st*, %struct.st** %St.addr, align 8
  %entries38 = getelementptr inbounds %struct.st, %struct.st* %24, i32 0, i32 2
  %25 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries38, align 8
  %call39 = call i32 @list_Length(%struct.LIST_HELP* %25)
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 %call39)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else, %for.end.37
  %call42 = call i32 @putchar(i32 10)
  br label %if.end.53

if.else.43:                                       ; preds = %for.end.9
  %26 = load %struct.st*, %struct.st** %St.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %26, i32 0, i32 1
  %27 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  store %struct.LIST_HELP* %27, %struct.LIST_HELP** %Scan44, align 8
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.50, %if.else.43
  %28 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan44, align 8
  %cmp46 = icmp ne %struct.LIST_HELP* %28, null
  br i1 %cmp46, label %for.body.48, label %for.end.52

for.body.48:                                      ; preds = %for.cond.45
  %29 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan44, align 8
  %call49 = call i8* @list_Car(%struct.LIST_HELP* %29)
  %30 = bitcast i8* %call49 to %struct.st*
  %31 = load i32, i32* %Position.addr, align 4
  %add = add nsw i32 %31, 2
  %32 = load void (i8*)*, void (i8*)** %Print.addr, align 8
  call void @st_PrintHelp(%struct.st* %30, i32 %add, void (i8*)* %32)
  br label %for.inc.50

for.inc.50:                                       ; preds = %for.body.48
  %33 = load %struct.LIST_HELP*, %struct.LIST_HELP** %Scan44, align 8
  %call51 = call %struct.LIST_HELP* @list_Cdr(%struct.LIST_HELP* %33)
  store %struct.LIST_HELP* %call51, %struct.LIST_HELP** %Scan44, align 8
  br label %for.cond.45

for.end.52:                                       ; preds = %for.cond.45
  br label %if.end.53

if.end.53:                                        ; preds = %if.then, %for.end.52, %if.end.41
  ret void
}

declare i8* @memory_Malloc(i32) #2

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
define internal i32 @symbol_LastIndexVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_INDEXVARCOUNTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_CreateIndexVariable() #1 {
entry:
  %0 = load i32, i32* @symbol_INDEXVARCOUNTER, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @symbol_INDEXVARCOUNTER, align 4
  ret i32 %inc
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @symbol_NextIndexVariable(i32 %Variable) #1 {
entry:
  %Variable.addr = alloca i32, align 4
  store i32 %Variable, i32* %Variable.addr, align 4
  %0 = load i32, i32* %Variable.addr, align 4
  %add = add nsw i32 %0, 1
  ret i32 %add
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_VarIsUsed(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %call = call %struct.binding* @cont_ContextBindingContext(%struct.binding* %0, i32 %1)
  %cmp = icmp ne %struct.binding* %call, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.binding* @cont_ContextBindingContext(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load i32, i32* %Var.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %arrayidx = getelementptr inbounds %struct.binding, %struct.binding* %1, i64 %idxprom
  %context = getelementptr inbounds %struct.binding, %struct.binding* %arrayidx, i32 0, i32 3
  %2 = load %struct.binding*, %struct.binding** %context, align 8
  ret %struct.binding* %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_CreateBindingHelp(%struct.binding* %C, i32 %Var, %struct.binding* %CTerm, %struct.term* %Term) #1 {
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
define internal %struct.binding* @cont_Binding(%struct.binding* %C, i32 %Var) #1 {
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
define internal %struct.LIST_HELP* @st_Entries(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 2
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @subst_Exist(%struct.subst* %S) #1 {
entry:
  %S.addr = alloca %struct.subst*, align 8
  store %struct.subst* %S, %struct.subst** %S.addr, align 8
  %0 = load %struct.subst*, %struct.subst** %S.addr, align 8
  %call = call %struct.subst* @subst_Nil()
  %cmp = icmp ne %struct.subst* %0, %call
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @subst_CloseVariables(%struct.binding*, %struct.subst*) #2

declare i32 @subst_MatchTops(%struct.binding*, %struct.subst*) #2

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
define internal i32 @cont_CreateClosedBinding(%struct.binding* %C, i32 %Var) #1 {
entry:
  %C.addr = alloca %struct.binding*, align 8
  %Var.addr = alloca i32, align 4
  store %struct.binding* %C, %struct.binding** %C.addr, align 8
  store i32 %Var, i32* %Var.addr, align 4
  %0 = load %struct.binding*, %struct.binding** %C.addr, align 8
  %1 = load i32, i32* %Var.addr, align 4
  %2 = load %struct.binding*, %struct.binding** %C.addr, align 8
  call void @cont_CreateBindingHelp(%struct.binding* %0, i32 %1, %struct.binding* %2, %struct.term* null)
  %3 = load i32, i32* @cont_BINDINGS, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* @cont_BINDINGS, align 4
  ret i32 %inc
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
define internal i32 @symbol_GetInitialIndexVarCounter() #1 {
entry:
  ret i32 2000
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

declare i32 @list_DeleteFromList(%struct.LIST_HELP**, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @st_NodeMergeWithSon(%struct.st* %StIndex) #0 {
entry:
  %StIndex.addr = alloca %struct.st*, align 8
  %SubNode = alloca %struct.st*, align 8
  store %struct.st* %StIndex, %struct.st** %StIndex.addr, align 8
  %0 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  %call = call i8* @list_Car(%struct.LIST_HELP* %1)
  %2 = bitcast i8* %call to %struct.st*
  store %struct.st* %2, %struct.st** %SubNode, align 8
  %3 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes1 = getelementptr inbounds %struct.st, %struct.st* %3, i32 0, i32 1
  %4 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes1, align 8
  call void @list_Delete(%struct.LIST_HELP* %4)
  %5 = load %struct.st*, %struct.st** %SubNode, align 8
  %subst = getelementptr inbounds %struct.st, %struct.st* %5, i32 0, i32 0
  %6 = load %struct.subst*, %struct.subst** %subst, align 8
  %7 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst2 = getelementptr inbounds %struct.st, %struct.st* %7, i32 0, i32 0
  %8 = load %struct.subst*, %struct.subst** %subst2, align 8
  %call3 = call %struct.subst* @subst_Merge(%struct.subst* %6, %struct.subst* %8)
  %9 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subst4 = getelementptr inbounds %struct.st, %struct.st* %9, i32 0, i32 0
  store %struct.subst* %call3, %struct.subst** %subst4, align 8
  %10 = load %struct.st*, %struct.st** %SubNode, align 8
  %entries = getelementptr inbounds %struct.st, %struct.st* %10, i32 0, i32 2
  %11 = load %struct.LIST_HELP*, %struct.LIST_HELP** %entries, align 8
  %12 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %entries5 = getelementptr inbounds %struct.st, %struct.st* %12, i32 0, i32 2
  store %struct.LIST_HELP* %11, %struct.LIST_HELP** %entries5, align 8
  %13 = load %struct.st*, %struct.st** %SubNode, align 8
  %subnodes6 = getelementptr inbounds %struct.st, %struct.st* %13, i32 0, i32 1
  %14 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes6, align 8
  %15 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %subnodes7 = getelementptr inbounds %struct.st, %struct.st* %15, i32 0, i32 1
  store %struct.LIST_HELP* %14, %struct.LIST_HELP** %subnodes7, align 8
  %16 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %17 = load %struct.st*, %struct.st** %SubNode, align 8
  %call8 = call zeroext i16 @st_Max(%struct.st* %17)
  call void @st_SetMax(%struct.st* %16, i16 zeroext %call8)
  %18 = load %struct.st*, %struct.st** %StIndex.addr, align 8
  %19 = load %struct.st*, %struct.st** %SubNode, align 8
  %call9 = call zeroext i16 @st_Min(%struct.st* %19)
  call void @st_SetMin(%struct.st* %18, i16 zeroext %call9)
  %20 = load %struct.st*, %struct.st** %SubNode, align 8
  %subst10 = getelementptr inbounds %struct.st, %struct.st* %20, i32 0, i32 0
  %21 = load %struct.subst*, %struct.subst** %subst10, align 8
  call void @subst_Delete(%struct.subst* %21)
  %22 = load %struct.st*, %struct.st** %SubNode, align 8
  call void @st_Free(%struct.st* %22)
  ret void
}

declare %struct.subst* @subst_Merge(%struct.subst*, %struct.subst*) #2

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
define internal i32 @stack_Bottom() #1 {
entry:
  %0 = load i32, i32* @stack_POINTER, align 4
  ret i32 %0
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StopAndBackTrack() #1 {
entry:
  %call = call i32 @cont_StackPopResult()
  store i32 %call, i32* @cont_BINDINGS, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* @cont_BINDINGS, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @cont_BackTrackLastBinding()
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret i32 0
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

declare i32 @subst_Unify(%struct.binding*, %struct.subst*) #2

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
define internal void @cont_StopAndStartBinding() #1 {
entry:
  %call = call i32 @cont_StackTop()
  %0 = load i32, i32* @cont_BINDINGS, align 4
  %add = add nsw i32 %call, %0
  call void @cont_StackRplacTop(i32 %add)
  store i32 0, i32* @cont_BINDINGS, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_BackTrackAndStart() #1 {
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
  ret i32 0
}

declare %struct.LIST_HELP* @list_Copy(%struct.LIST_HELP*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @cont_StackRplacTop(i32 %Entry) #1 {
entry:
  %Entry.addr = alloca i32, align 4
  store i32 %Entry, i32* %Entry.addr, align 4
  %0 = load i32, i32* %Entry.addr, align 4
  %1 = load i32, i32* @cont_STACKPOINTER, align 4
  %sub = sub nsw i32 %1, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  store i32 %0, i32* %arrayidx, align 4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @cont_StackTop() #1 {
entry:
  %0 = load i32, i32* @cont_STACKPOINTER, align 4
  %sub = sub nsw i32 %0, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @cont_STACK, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  ret i32 %1
}

declare i32 @subst_Match(%struct.binding*, %struct.subst*) #2

declare i32 @subst_MatchReverse(%struct.binding*, %struct.subst*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_IsInner(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %call = call %struct.LIST_HELP* @st_Subnodes(%struct.st* %0)
  %call1 = call i32 @list_Empty(%struct.LIST_HELP* %call)
  %tobool = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  ret i32 %lnot.ext
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.LIST_HELP* @st_Subnodes(%struct.st* %ST) #1 {
entry:
  %ST.addr = alloca %struct.st*, align 8
  store %struct.st* %ST, %struct.st** %ST.addr, align 8
  %0 = load %struct.st*, %struct.st** %ST.addr, align 8
  %subnodes = getelementptr inbounds %struct.st, %struct.st* %0, i32 0, i32 1
  %1 = load %struct.LIST_HELP*, %struct.LIST_HELP** %subnodes, align 8
  ret %struct.LIST_HELP* %1
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @st_StackEmpty(i32 %Pointer) #1 {
entry:
  %Pointer.addr = alloca i32, align 4
  store i32 %Pointer, i32* %Pointer.addr, align 4
  %0 = load i32, i32* @st_STACKPOINTER, align 4
  %1 = load i32, i32* %Pointer.addr, align 4
  %cmp = icmp eq i32 %0, %1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
